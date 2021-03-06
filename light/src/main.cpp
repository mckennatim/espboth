#include <Arduino.h>
#include <EEPROM.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <Wire.h>
#include <BH1750.h>
#include <DHT.h>
#include <PubSubClient.h>
#include "CONST.h"
#include "config.h"
#include "MQclient.h"


ESP8266WebServer server;
BH1750 lightMeter;

OneWire oneWirea(inpo.DS18B20a);
DallasTemperature DS18B20a(&oneWirea);

OneWire oneWireb(inpo.DS18B20b);
DallasTemperature DS18B20b(&oneWireb);

#define DHTTYPE DHT22 
#define DHTPIN inpo.Dht11
DHT dht(inpo.Dht11, DHT11);



WiFiClient espClient;
PubSubClient client(espClient);
Console console(devid, client);
//Reqs req(devid, client);
MQclient mq(devid, owner, pwd);


void initShit(){
  pinMode(inpo.Dht11, INPUT);
  for (int i=0;i<SE.len;i++){
    Serial.println(SE.se[i].model);
    if(strcmp(SE.se[i].model, "BH1750")==0){
      Wire.begin();
      lightMeter.begin();
      Serial.println(F("BH1750 light begin"));
    }
    if(strcmp(SE.se[i].model, "DHT11")==0){
      dht.begin();
      Serial.println(F("DHT11 temp/hum begin"));
    }    
  }  
}

void readSensors(){
  int senvals[SE.numsens];
  for(int i=0;i<SE.len;i++){
    Serial.println(SE.se[i].model);
    if(strcmp(SE.se[i].model, "DS18B20a")==0){
      for(int j=0;j<SE.se[i].nums;j++) {
        DS18B20a.requestTemperatures(); 
        int sr = SE.se[i].ids[j];
        senvals[sr] = (int)DS18B20a.getTempFByIndex(j);
        printf("Temp%d: %d degrees \n",sr, senvals[sr]);
      }
    }else if(strcmp(SE.se[i].model, "DS18B20b")==0){
      for(int j=0;j<SE.se[i].nums;j++) {
        int sr = SE.se[i].ids[j];
        DS18B20b.requestTemperatures(); 
        senvals[sr] = (int)DS18B20b.getTempFByIndex(j);
        printf("Temp%d: %d degrees \n",sr, senvals[sr]);
      }
    }else if(strcmp(SE.se[i].model, "BH1750")==0){
      int lux = (int)lightMeter.readLightLevel();
      int sr = SE.se[i].ids[0];
      senvals[sr] = lux;
      printf("Light%d: %d lux \n",sr, senvals[sr]);
    }else if(strcmp(SE.se[i].model, "DHT22")==0){
      int srt = SE.se[i].ids[0];
      int srh = SE.se[i].ids[1];      
      senvals[srt] = (int)(dht.readTemperature(true));
      senvals[srh] = (int)dht.readHumidity();
      printf("Temp%d: %d degrees, port: %d \n",srt, senvals[srt], DHTPIN);
      printf("Humidity%d: %d percent \n",srh, senvals[srh]);
    }else if(strcmp(SE.se[i].model, "DHT11")==0){
      int srt = SE.se[i].ids[0];
      int srh = SE.se[i].ids[1];      
      senvals[srt] = (int)dht.readTemperature(true);
      senvals[srh] = (int)dht.readHumidity();
      printf("Temp%d: %d degrees, port: %d \n",srt, senvals[srt], DHTPIN);
      printf("Humidity%d: %d percent \n",srh, senvals[srh]);
    }
  }
}

void setup(){
  Serial.begin(115200);
  EEPROM.begin(512);
  initShit();
  getOnline();//config.cpp
  dht.begin();
  Serial.println(la.scribedTo[0]);
  client.setServer(mqtt_server, atoi(mqtt_port));
  client.setCallback(handleCallback); //in Req.cpp
}


void loop() {
  if(!client.connected()){
    Serial.println(owner);
     mq.reconn(client);
  }else{
    client.loop();
  }  
  readSensors();
  delay(2000);
}