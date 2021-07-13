#include <Arduino.h>
#include <Wire.h>
#include <SPI.h>
#include "Adafruit_MAX31855.h"

// Example creating a thermocouple instance with software SPI on any three
// digital IO pins.
#define MAXDO   12
#define MAXCS   15
#define MAXCLK  14

// initialize the Thermocouple
// Adafruit_MAX31855 thermocouple(MAXCLK, MAXCS, MAXDO);
Adafruit_MAX31855 thermocouple(MAXCS);

void setup() {
  Serial.begin(115200);
  

  while (!Serial) delay(1); // wait for Serial on Leonardo/Zero, etc

  Serial.println("MAX31855 test");
  // wait for MAX chip to stabilize
  delay(500);
}

void loop() {
  // basic readout test, just print the current temp
   Serial.print("Internal Temp = ");
   Serial.println(thermocouple.readInternal());

   double c = thermocouple.readCelsius();
   if (isnan(c)) {
     Serial.println("Something wrong with thermocouple!");
   } else {
     Serial.print("C = ");
     Serial.println(c);
   }
  //  Serial.print("F = ");
  //  Serial.println(thermocouple.readFahrenheit());

   delay(1000);
}