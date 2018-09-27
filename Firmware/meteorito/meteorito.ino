/*******************************************************
Meteorito.ino
Ejemplo de Estacion Meteorologica con ESP32 
para redmet.org y Meteorito
Andres Sabas @ The Inventor's House
Brando Are @ Electronic Cats
Fecha Original de Creación: 28 de Octubre del 2017
Ultima Actualizacion: 26 Septiembre 2018

Este ejemplo demuestra la conexion y envio de datos 
con un modulo ESP32 a la plataforma 
http://redmet.org

Entorno de Desarrollo Especifico:  
  IDE: Arduino 1.8.4
  Plataforma de Hardware:
    - ESP32 WEMOS D1 Mini
    - DHT22
    - VEML6070
    - Fotoresistencia
    - BMP180
  o Tarjeta de desarrollo Meteorito por Electronic Cats

Este código es beerware; si me ves 
(o cualquier otro miembro de Electronic Cats) 
por tu localidad, y ha encontrado útil nuestro código,
¡por favor cómprenos una ronda!

Distribuido tal cual; no se otorga ninguna garantía. 
Bajo Licencia MIT
************************************************************/
//Incluir la biblioteca WiFi
#include <WiFi.h>
#include "configuracion.h"
//Incluir la biblioteca BLE
#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEServer.h>
#include <BLE2902.h>
//Incluir la biblioteca Sensores
#include  <DHT.h>
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BMP085_U.h>

Adafruit_BMP085_Unified bmp = Adafruit_BMP085_Unified(10085);

sensors_event_t event;

int dhtpin = 23;
float temperature;
float temperatura;
float humedad;
   
/*Variables Anemometro*/
const int pinAnemometro = 25;
unsigned long tiempoAntes;
unsigned long  tiempo=0;
unsigned long sumaTiempo=0;
byte contador=0;
bool bandera=0;
float velocidad=0;

/*Variables uv*/
const byte pinRayosUV = 12;         //pin Analogico

/*Variables Nubosidad*/
const byte pinNubosidad = 13;

/*Variables Direccion de Viento*/
int sumaVeleta=0, i=0;      
const byte pinDireccion = 14;       //pin Analógico 
int direccion = 0;
const int tiempoEnvio=30;

//variables manejo de proceso precipitacion
float precipitacion = 0;
const byte pinPluviometro = 33;  //pin digital
unsigned long tiempoAntesDos;
unsigned long  tiempoDos=0;
unsigned long sumaTiempoDos=0;
byte contadorDos=0;
const int capacidadTotal=10;   //capacidad combinada de ambos lados en mL


DHT dht (dhtpin,DHT22);

bool _BLEClientConnected = false;

#define MeteoritoService BLEUUID((uint16_t)0x181A)
BLECharacteristic TemperaturaCharacteristics(BLEUUID((uint16_t)0x2A6E), BLECharacteristic::PROPERTY_READ );
BLECharacteristic HumedadCharacteristics(BLEUUID((uint16_t)0x2A6F), BLECharacteristic::PROPERTY_READ);
BLECharacteristic PresionCharacteristics(BLEUUID((uint16_t)0x2A6D), BLECharacteristic::PROPERTY_READ);
BLECharacteristic UvCharacteristics(BLEUUID((uint16_t)0x2A76), BLECharacteristic::PROPERTY_READ);
//BLECharacteristic DireccionVientoCharacteristics(BLEUUID((uint16_t)0x2A73), BLECharacteristic::PROPERTY_READ);
BLECharacteristic NubosidadCharacteristics(BLEUUID((uint16_t)0x2A58), BLECharacteristic::PROPERTY_READ);
//BLECharacteristic VelocidadVientoCharacteristics(BLEUUID((uint16_t) 0x2A72), BLECharacteristic::PROPERTY_READ);
//BLECharacteristic PrecipitacionCharacteristics(BLEUUID((uint16_t) 0x2A78), BLECharacteristic::PROPERTY_READ);
//BLECharacteristic AltitudCharacteristics(BLEUUID((uint16_t) 0x2A6C), BLECharacteristic::PROPERTY_READ);

BLEDescriptor TemperaturaDescriptor(BLEUUID((uint16_t)0x290C));
BLEDescriptor HumedadDescriptor(BLEUUID((uint16_t)0x290C));
BLEDescriptor PresionDescriptor(BLEUUID((uint16_t)0x290C));
BLEDescriptor UvDescriptor(BLEUUID((uint16_t)0x290C));
//BLEDescriptor DireccionVientoDescriptor(BLEUUID((uint16_t)0x290C));
BLEDescriptor NubosidadDescriptor(BLEUUID((uint16_t)0x290C));
//BLEDescriptor VelocidadVientoDescriptor(BLEUUID((uint16_t)0x290C));
//BLEDescriptor PrecipitacionDescriptor(BLEUUID((uint16_t)0x290C));
//BLEDescriptor AltitudDescriptor(BLEUUID((uint16_t)0x290C));

class MyServerCallbacks : public BLEServerCallbacks {
    void onConnect(BLEServer* pServer) {
      _BLEClientConnected = true;
    };

    void onDisconnect(BLEServer* pServer) {
      _BLEClientConnected = false;
    }
};

void InitBLE() {
  BLEDevice::init("Estación metereológica");
  // Create the BLE Server
  BLEServer *pServer = BLEDevice::createServer();
  pServer->setCallbacks(new MyServerCallbacks());

  // Create the BLE Service
  BLEService *pMeteorito = pServer->createService(MeteoritoService);
//Caracteristica Temperatura
  pMeteorito->addCharacteristic(&TemperaturaCharacteristics);
  //TemperaturaDescriptor.setValue("Position 0 - 6");
  TemperaturaCharacteristics.addDescriptor(&TemperaturaDescriptor);
//Caracteristica Humedad
  pMeteorito->addCharacteristic(&HumedadCharacteristics);
  HumedadCharacteristics.addDescriptor(&HumedadDescriptor);
//Caracteristica Presión
 pMeteorito->addCharacteristic(&PresionCharacteristics);
  PresionCharacteristics.addDescriptor(&PresionDescriptor);
//Caracteristica Uv
 pMeteorito->addCharacteristic(&UvCharacteristics);
  UvCharacteristics.addDescriptor(&UvDescriptor);
 //Caracteristica Nubosidad
 pMeteorito->addCharacteristic(&NubosidadCharacteristics);
 NubosidadCharacteristics.addDescriptor(&NubosidadDescriptor);
//Caracteristica Dirección del viento
 //pHeart->addCharacteristic(&DireccionVientoCharacteristics);
  //DireccionVientoDescriptor.setValue("Position 0 - 6");
  //DireccionVientoCharacteristics.addDescriptor(&DireccionVientoDescriptor);
//Caracteristica Velocidad del viento
 //pHeart->addCharacteristic(&VelocidadVientoCharacteristics);
  //DireccionVientoDescriptor.setValue("Position 0 - 6");
  //DireccionVientoCharacteristics.addDescriptor(&VelocidadVientoDescriptor);
//Precipitacion
 //pHeart->addCharacteristic(&PrecipitacionCharacteristics);
  //PrecipitacionDescriptor.setValue("Position 0 - 6");
  //PrecipitacionCharacteristics.addDescriptor(&PrecipitacionDescriptor);
// pHeart->addCharacteristic(&AltitudCharacteristics);
//  AltitudCharacteristics.addDescriptor(&AltitudDescriptor);

  pServer->getAdvertising()->addServiceUUID(MeteoritoService);
  pMeteorito->start();

  // Start advertising
  pServer->getAdvertising()->start();
}

const char tipoNubosidad[5]={'C','M','N','P','D'};
  /* D - despejado
   * P - poco nuboso
   * N - nuboso
   * M - muy nuboso
   * C - cubierto
   * O - opcional
   */
//Formamos el header para enviar a la pagina
String httpHeader = "POST /api/device/metrics HTTP/1.1\r\n"
                    "Host: redmet.org\r\n" 
                    "Content-Type: application/json\r\n"
                    "Authorization: Basic "+ Token +"\r\n";

//Inicializar el WiFi cliente objeto
WiFiClient client;

/*Funcion para obtener direccion del viento */
int leerDireccion(int suma){
  suma=suma/tiempoEnvio;
  if(suma>=415 && suma< 440) return 0;
  if(suma>=440 && suma< 490) return 45;
  if(suma>=490 && suma< 510) return 90;
  if(suma>=540 && suma< 550) return 135;
  if(suma>=510 && suma< 525) return 18;
  if(suma>=525 && suma< 540) return 225;
  if(suma>=590 && suma< 615) return 270;
  if(suma>=615 && suma< 620) return 315;
}

/*Funcion para obtener la luz ultravioleta*/
int leerUV(){
  int uv =map(analogRead(pinRayosUV),0,4095,0,15);
  return uv;
}

/*Funcion para obtener nubosidad*/
char nubosidad() {
  int lecturaSensor=analogRead(pinNubosidad);
  char nubosidad = tipoNubosidad[map(lecturaSensor, 0, 4096, 0, 5)];
  Serial.print("Nubosidad: "); 
  Serial.println(nubosidad); 
  return nubosidad;
}

/*Funcion para obtener presion y altura*/
void presion(){
  /* Muestra los resultados (la presión barométrica se mide en hPa) */
  if (event.pressure)
  {
    /* Display atmospheric pressue in hPa */
    Serial.print("Presion:    ");
    Serial.print(event.pressure*0.1);
    Serial.println(" hPa");
    
    /* Calculating altitude with reasonable accuracy requires pressure    *
     * sea level pressure for your position at the moment the data is     *
     * converted, as well as the ambient temperature in degress           *
     * celcius.  If you don't have these values, a 'generic' value of     *
     * 1013.25 hPa can be used (defined as SENSORS_PRESSURE_SEALEVELHPA   *
     * in sensors.h), but this isn't ideal and will give variable         *
     * results from one day to the next.                                  *
     *                                                                    *
     * You can usually find the current SLP value by looking at weather   *
     * websites or from environmental information centers near any major  *
     * airport.                                                           *
     *                                                                    *
     * For example, for Paris, France you can check the current mean      *
     * pressure and sea level at: http://bit.ly/16Au8ol                   */
     
    /* Primero obtenemos la temperatura actual del BMP085 */
    float temperature;
    bmp.getTemperature(&temperature);
    Serial.print("Temperatura BMP180: ");
    Serial.print(temperature);
    Serial.println(" C");

    /* Luego convierte la presión atmosférica, y SLP a la altitud        */
    /* Actualice esta próxima línea con el SLP actual para obtener mejores resultados     */
    float seaLevelPressure = SENSORS_PRESSURE_SEALEVELHPA;
    Serial.print("Altitud:    "); 
    Serial.print(bmp.pressureToAltitude(seaLevelPressure,
                                        event.pressure)); 
    Serial.println(" m");
    Serial.println("");
  }
  else
  {
    Serial.println("Sensor error");
  }
}

/*
 *Función de envio de datos via WiFi
 */
static void envioDatosWiFi() {
  if (client.connect(Servidor, 80) <= 0)
  {
    Serial.println(F("Fallo conexion a servidor."));
    return;
  }
  Serial.println(F("Connected."));

  //Asignar parametros a enviar:
         /*clouds, humidity, pressure, rain, temp, uv, windDirection, windSpeed*/
  String clouds, humidity, pressure, rain, temp, indiceUV, windDirection, windSpeed;
  
  clouds = String(nubosidad());
  humidity = String(humedad);
  pressure = String(event.pressure*0.1);
  rain = String(precipitacion);
  temp = String(temperatura);
  indiceUV = String(leerUV());
  windDirection = String(direccion);
  windSpeed = String(velocidad);

//cargamos una cadena con los datos
  /*El formato es "{\"data\":{\"metrica\":valor}}"*/
  
  //Ejemplo con un solo valor constante
  //String dato="{\"data\":{\"temp\":15}}";

  //Ejemplo con todos los valores posibles constantes
  //String dato="{\"data\":{\"clouds\":\"D\",\"humidity\":95,\"pressure\":145,\"rain\":245,\"temp\":15,\"uv\":13,\"windDirection\":9,\"windSpeed\":340}}";
  
  //Lectura de todos los valores posibles
  String dato="{\"data\":{\"clouds\":\""+clouds+"\",\"humidity\":\""+humidity+"\",\"pressure\":\""+pressure+"\",\"rain\":\""+rain+"\",\"temp\":\""+temp+"\",\"uv\":\""+indiceUV+"\",\"windDirection\":\""+windDirection+"\",\"windSpeed\":\""+windSpeed+"\"}}";
  
  Serial.println(F("Enviando datos!"));
  Serial.println(dato);

  client.print(httpHeader);
  client.print("Content-Length: "); 
  client.println(dato.length());
  client.println();
  client.println(dato);

  unsigned long timeout = millis();
    while (client.available() == 0) {
        if (millis() - timeout > 5000) {
            Serial.println(">>> Client Timeout !");
            client.stop();
            return;
        }
    }

    // Read all the lines of the reply from server and print them to Serial
    while(client.available()) {
        String line = client.readStringUntil('\r');
        Serial.print(line);
    }
}
/*
 *Función de envio de datos via BLE
 */
static void envioDatosBLE(){
  
  //Temperatura
    uint8_t tempData[2];
    uint16_t tempValue;
    tempValue = (uint16_t)(temperatura *100);
    tempData[0] = tempValue;
    tempData[1] = tempValue>>8;
    TemperaturaCharacteristics.setValue(tempData,2);
    TemperaturaCharacteristics.notify(); 

  //Humedad 
  uint8_t humData[2];
  uint16_t humValue;
  humValue = (uint16_t)(humedad*100);
  humData[0] = humValue;
  humData[1] = humValue>>8;
  HumedadCharacteristics.setValue(humData,2);
  HumedadCharacteristics.notify(); 

 //Uvs
  uint8_t uvData[2];
  uint16_t uvValue;
  uvValue = (uint16_t)(leerUV()*100);
  uvData[0] = uvValue;
  uvData[1] = uvValue>>8;
  UvCharacteristics.setValue(uvData,2);
  UvCharacteristics.notify(); 
  
  //Presión
  uint8_t prData[2];
  uint16_t prValue;
  prValue = (uint16_t)(event.pressure*0.1*100);
  prData[0] = prValue;
  prData[1] = prValue>>8;
  PresionCharacteristics.setValue(prData,2);
  PresionCharacteristics.notify(); 
  
  //Nubosidad
  char nubo [5];
  dtostrf(nubosidad(),1,2,nubo);
  NubosidadCharacteristics.setValue(nubo);
  NubosidadCharacteristics.notify();


  //NubosidadDescriptor.setValue(nubosidad());
}

void setup () {
  Serial.begin(9600);
  
  Serial.println("Iniciando Estacion Meteorito");
  Serial.println("por Electronic Cats");
 
  dht.begin();

  /* Initializar el sensor BMP180 */
  if(!bmp.begin())
  {
    /* Hubo un problema al detectar el BMP085 ... verifique sus conexiones */
    Serial.print("Ooops, no detectado BMP085 ... Checar tu cableado o I2C Direccion!");
    while(1);
  }

//verificación del modulo WiFi y la conexión a internet

  WiFi.begin(ssid, password);
  int cont = 0;
  while(cont<=10){
   (WiFi.status() != WL_CONNECTED); 
    delay(500);
    Serial.print(".");
    cont++;
    Serial.print(cont);
     
    }
   
//Tu estas conectado ahora
  Serial.println("Tu estas conectado a la red WiFi");
  
  printWifiStatus();

  InitBLE();

  //Iniciamos anemometro
  pinMode(pinAnemometro, INPUT);
  attachInterrupt(digitalPinToInterrupt(pinAnemometro), interrupcionViento,RISING );
  tiempoAntes=millis();

  //Iniciamos pluviometro
   pinMode(pinPluviometro, INPUT);
   attachInterrupt(digitalPinToInterrupt(pinPluviometro), interrupcionPrecipitacion,RISING );
   tiempoAntesDos=millis();
}

void loop () {
  temperatura = dht.readTemperature();
  humedad = dht.readHumidity();
     
  /* Obtener una nueva lectura del sensor BMP180 */ 
  bmp.getEvent(&event);
  
  presion();
  
  if(i<tiempoEnvio){
    sumaVeleta+=analogRead(pinDireccion);
    i++;
  }
  else{
     direccion=leerDireccion(sumaVeleta);
     sumaVeleta=0; 
     i=0; 
  }
 
  noInterrupts();
  envioDatosWiFi();
  envioDatosBLE();
  interrupts();
  
  Serial.println("");
  //Mostrar variables
  Serial.print("temperatura: ");
  Serial.println(temperatura);
  Serial.print(" humedad: ");
  Serial.println(humedad);
  Serial.print("UV nivel luz: "); 
  Serial.println(leerUV());
  Serial.print("Velocidad del viento: "); 
  Serial.print(velocidad);
  Serial.println("  Km/h");
  Serial.print("dirección: ");
  Serial.println(direccion);
  Serial.print(precipitacion);
  Serial.println(" mm/s");
  delay(500);
}

/*
 * Funcion que imprime status de WiFi, 
 * nombre de red, local IP e intensidad de señal
*/
void printWifiStatus()
{
  // imprime el SSID de la red a la que está conectado
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // imprime la dirección IP de tu estacion WiFi
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // imprime la intensidad de la señal recibida
  long rssi = WiFi.RSSI();
  Serial.print("Signal strength (RSSI):");
  Serial.print(rssi);
  Serial.println(" dBm");
}

void interrupcionViento() {
  if( millis()>(50+tiempoAntes)){
    bandera=!bandera;
    if(bandera==0){
      tiempo=(millis()-tiempoAntes);
      tiempoAntes=millis();
      sumaTiempo+=tiempo; 
      if(contador<=19){
        contador++;
        //Serial.println(contador);
      }else{
        contador=0;
        velocidad=(2*3.1416*0.05*3.6)/((sumaTiempo/1000.0)/20);
        //Serial.print(velocidad);
        //Serial.println("  Km/h");
        sumaTiempo=0;
      }
    }
  }
}

//interrupcion para precipitación
void interrupcionPrecipitacion() {
  if( millis()>(50+tiempoAntesDos)){
      tiempoDos=(millis()-tiempoAntesDos);
      tiempoAntesDos=millis();
      sumaTiempoDos+=tiempoDos; 
      if(contadorDos<=19){
        contadorDos++;
      }else{
        precipitacion=contadorDos*(((capacidadTotal*10)/(42.84))/(sumaTiempoDos/1000.0));
        contadorDos=0;
        sumaTiempoDos=0;
      }
  }
}
