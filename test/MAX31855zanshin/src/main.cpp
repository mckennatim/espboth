#include <MAX31855.h> // Include MAX31855 Sensor library

const uint32_t SERIAL_SPEED     = 115200; 
const uint8_t  SPI_CHIP_SELECT  =      2; //D4
const uint8_t  SPI_MISO         =   MISO; //12 D6
const uint8_t  SPI_SYSTEM_CLOCK =    SCK; //14 D5

MAX31855_Class MAX31855; ///< Create an instance of MAX31855

void setup()
{
  Serial.begin(SERIAL_SPEED);
  Serial.println(F("Starting software SPI demo program for MAX31855"));
  Serial.print(F("Initializing MAX31855 sensor\n"));
  Serial.println(MISO);
  Serial.println(SCK);
  
  // while (!MAX31855.begin(SPI_CHIP_SELECT)) // hardware SPI for MAX31855
  while (!MAX31855.begin(SPI_CHIP_SELECT,SPI_MISO,SPI_SYSTEM_CLOCK)) {
    Serial.println(F("Unable to start MAX31855. Waiting 3 seconds."));
    delay(3000);
  } 
 Serial.println();
} 

void loop()
{
  int32_t ambientTemperature = MAX31855.readAmbient(); 
  int32_t probeTemperature   = MAX31855.readProbe();   
  uint8_t faultCode          = MAX31855.fault();       
  if ( faultCode )
  {
    Serial.print("Fault code ");
    Serial.print(faultCode);
    Serial.println(" returned.");
  }
  else
  {
    Serial.print("Ambient Temperature is ");
    Serial.print((float)ambientTemperature/1000,1);
    Serial.println("\xC2\xB0""C");
    Serial.print("Probe Temperature in Celsius   ");
    Serial.print((float)probeTemperature/1000,1);
    Serial.println("\xC2\xB0""C");
    Serial.print("Probe Temperature in Farenheit   ");
    Serial.print((float)probeTemperature/1000*9/5+32,1);
    Serial.println("\xC2\xB0""F\n");
  } 
  delay(5000);
} 