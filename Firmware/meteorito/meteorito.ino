/*******************************************************
Meteorito.ino
Ejemplo de Estacion Meteorologica con ESP8266 
para redmet.org y Meteorito
Andres Sabas @ The Inventor's House
Fecha Original de Creación: 28 de Octubre del 2017

Este ejemplo demuestra la conexion y envio de datos 
con un modulo ESP8266 a la plataforma 
http://redmet.org

Entorno de Desarrollo Especifico:
  IDE: Arduino 1.8.4
  Plataforma de Hardware:
    - ESP8266 WEMOS D1 Mini
    - DHT22
    - VEML6070
    - Fotoresistencia
  or Tarjeta de desarrollo Meteorito por Electronic Cats

Este código es beerware; si me ves 
(o cualquier otro miembreo de The Inventors House) 
por tu localidad, y ha encontrado útil nuestro código,
¡por favor cómprenos una ronda!

Distribuido tal cual; no se otorga ninguna garantía. 
Bajo Licencia MIT
************************************************************/
//Incluir la biblioteca WiFi
#include <ESP8266WiFi.h>
#include "configuracion.h"
#include  <DHT.h>
#include <Wire.h>
#include "Adafruit_VEML6070.h"

Adafruit_VEML6070 uv = Adafruit_VEML6070();

int sensor = D4;
float temperatura;
float humedad;
DHT dht (sensor,DHT22);

const char tipoNubosidad[6]={'C','M','N','P','D','O'};
  /* D - despejado
   * P - poco nuboso
   * N - nuboso
   * M - muy nuboso
   * C - cubierto
   * O - 
   */

//Formamos el header para enviar a la pagina
String httpHeader = "POST /api/device/metrics HTTP/1.1\r\n"
                    "Host: redmet.org\r\n" 
                    "Content-Type: application/json\r\n"
                    "Authorization: Basic "+ Token +"\r\n";

//Inicializar el WiFi cliente objeto
WiFiClient client;


char nubosidad() {
  int lecturaSensor=analogRead(A0);
  char nubosidad = tipoNubosidad[map(lecturaSensor, 0, 1023, 0, 6)];
  Serial.print("Nubosidad: "); 
  Serial.println(nubosidad); 
  return nubosidad;
}

/*
 *Función de envio de datos 
 */
static void envioDatos () {
  if (client.connect(Servidor, 80) <= 0)
  {
    Serial.println(F("Fallo conexion a servidor."));
    return;
  }
  Serial.println(F("Connected."));

  //Asignar parametros a enviar:
         /*clouds, humidity, pressure, rain, temp, uv, windDirection, windSpeed*/
  String clouds, humidity, pressure, rain, temp, ultrav, windDirection, windSpeed;
  
  clouds = String(nubosidad());
  humidity = String(humedad);
  pressure = String(random(0,150));
  rain = String(random(0,250));
  temp = String(temperatura);
  ultrav = String(uv.readUV());
  windDirection = String(random(0,10));
  windSpeed = String(random(0,360));

//cargamos una cadena con los datos
  /*El formato es "{\"data\":{\"metrica\":valor}}"*/
  
  //Ejemplo con un solo valor constante
  //String dato="{\"data\":{\"temp\":15}}";

  //Ejemplo con todos los valores posibles constantes
  //String dato="{\"data\":{\"clouds\":\"D\",\"humidity\":95,\"pressure\":145,\"rain\":245,\"temp\":15,\"uv\":13,\"windDirection\":9,\"windSpeed\":340}}";
  
  //Lectura de todos los valores posibles
  String dato="{\"data\":{\"clouds\":\""+clouds+"\",\"humidity\":\""+humidity+"\",\"pressure\":\""+pressure+"\",\"rain\":\""+rain+"\",\"temp\":\""+temp+"\",\"uv\":\""+ultrav+"\",\"windDirection\":\""+windDirection+"\",\"windSpeed\":\""+windSpeed+"\"}}";
  
  Serial.println(F("Enviando datos!"));
  //Serial.println(dato.length());

  client.print(httpHeader);
  client.print("Content-Length: "); 
  client.println(dato.length());
  client.println();
  client.println(dato);

  // available() will return the number of characters
  // currently in the receive buffer.
  while (client.available())
    Serial.write(client.read()); // read() gets the FIFO char

  // connected() is a boolean return value - 1 if the
  // connection is active, 0 if it's closed.
  if (client.connected())
    client.stop(); // stop() closes a TCP connection.
}

void setup () {
  Serial.begin(9600);
  uv.begin(VEML6070_1_T);  // pass in the integration time constant
  dht.begin();
  
  Serial.println("\n Iniciando ejemplo de Envio");

//verificación del modulo WiFi y la conexión a internet
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
    }
//Tu estas conectado ahora
  Serial.println("Tu estas conectado a la red WiFi");
  
  printWifiStatus();
}

void loop () {
  temperatura = dht.readTemperature();
  humedad = dht.readHumidity();
 
  envioDatos();

//Recibe respuesta del servidor
  while (client.available()) {
   char c = client.read();
   Serial.write(c);
}
    Serial.println("");
   //Mostrar variables
   Serial.print("temperatura: ");
   Serial.println(temperatura);
   Serial.print(" humedad: ");
   Serial.println(humedad);
   Serial.print("UV nivel luz: "); 
   Serial.println(uv.readUV());
   delay(100);
}

/*
 * Funcion que imprime status de WiFi, 
 * nombre de red, local IP e intensidad de señal
*/
void printWifiStatus()
{
  // print the SSID of the network you're attached to
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // print your WiFi shield's IP address
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // print the received signal strength
  long rssi = WiFi.RSSI();
  Serial.print("Signal strength (RSSI):");
  Serial.print(rssi);
  Serial.println(" dBm");
}
