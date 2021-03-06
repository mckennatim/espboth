#include "Reqs.h"
#include <PubSubClient.h>
#include <ArduinoJson.h>
#include "Sched.h"
#include <Arduino.h>
#include <TimeLib.h>
#include "config.h" //getOnline() readConfig()devid owner pwd

extern Sched sched;
extern char itopic[40];
extern char ipayload[250];
extern labels_t la;
extern flags_t f;
extern state_t sr;
extern prgs_t prgs;
extern ports_t po;

Reqs::Reqs(char* devid, PubSubClient& client ){
  cdevid = devid;
  cclient = client;
}

void Reqs::stime(){
	const char* dd = "the time is being requesrd";
	Serial.println(dd);
	char time[20];
	strcpy(time,cdevid);
	strcat(time,"/time");
  if (cclient.connected()){
    cclient.publish(time, dd, true);
  }		
}

//{"devtime", "cmd", "prg", "req", "set", "progs"}
void Reqs::processInc(){
  for (int i=0;i<la.numcmds;i++){
    if(strcmp(la.scribedTo[i], itopic)==0){
    	switch (i){
        case 0:
          Serial.println("in devtime");
          sched.deseriTime();
          sched.actTime();
          // Serial.print("temp1.aid=");
          // Serial.println(prgs.temp1.aid);
          // Serial.print("temp1.ev=");
          // Serial.println(prgs.temp1.ev);
          //pubPrg(1);
				  f.aUTOMA = 1;  
				  f.CKaLARM = 31; 
				  f.HAYsTATEcNG =31;          
          break;
        case 1://in cmd
          deseriCmd();
          Serial.println(ipayload);
          break;          
        case 2://in prg
          Serial.println(ipayload);
          sched.deseriProg(ipayload);
          break;          
        case 3://in req
          Serial.println(ipayload);
          deseriReq();
          break;          
        case 4://in set
          Serial.println("in set");
          //Serial.println(ipayload);
          reconfig(ipayload);
          delay(2000);
          saveConfig();
          delay(2000);
          //reset and try again, or maybe put it to deep sleep
          ESP.reset();
          break;          
        case 5:
          Serial.println("in progs(deprecated)");
          break;
        default: 
        	Serial.print(i);         
          Serial.println(": in processInc default");
          break;           
      }    		
  	}
  }
}

void Reqs::pubFlags(){
  char flags[20];
  strcpy(flags,cdevid);
  strcat(flags,"/flags"); 
  StaticJsonBuffer<500> jsonBuffer;
  JsonObject& root = jsonBuffer.createObject();
  root["aUTOMA"]=f.aUTOMA;
  root["fORCErESET"]=f.fORCErESET;  
  root["cREMENT"]=f.cREMENT;
  root["HAStIMR"]=f.HAStIMR; //11100(28) 4,8, and 16 have timers not temp
  root["IStIMERoN"]=f.IStIMERoN;//11100 assume some time left, timers with tleft>0 
  root["HAYpROG"]=f.HAYpROG;// = senrels with events>1
  root["HAYpROGcNG"]=f.HAYpROGcNG;// 11111(31 force report) g change root["or ext
  root["HAYsTATEcNG"]=f.HAYsTATEcNG; //11111(31 force report)state ch root["or ext
  root["CKaLARM"]=f.CKaLARM; //11111 assume alarm is set at start
  root["ISrELAYoN"]=f.ISrELAYoN;// = summary of relay states  
  JsonArray& tleft = root.createNestedArray("tIMElEFT");
  for(int i=0;i<5;i++){
    tleft.add(f.tIMElEFT[i]);
  }
  char ast[180];
  root.printTo(ast, sizeof(ast));
  clpub(flags,ast);  
}

void Reqs::pubTimr(){
  char timr[20];
  strcpy(timr,cdevid);
  strcat(timr,"/timr"); 
  StaticJsonBuffer<500> jsonBuffer;
  JsonObject& root = jsonBuffer.createObject();
  root["cREMENT"]=f.cREMENT;
  root["IStIMERoN"]=f.IStIMERoN;//11100 assume some time left, timers with tleft>0 
  root["ISrELAYoN"]=f.ISrELAYoN;// = summary of relay states  
  JsonArray& tleft = root.createNestedArray("tIMElEFT");
  for(int i=0;i<5;i++){
    tleft.add(f.tIMElEFT[i]);
  }
  char ast[180];
  root.printTo(ast, sizeof(ast));
  clpub(timr,ast);  
}

void Reqs::creaJson(prg_t& p, char* astr){
  StaticJsonBuffer<2000> jsonBuffer;
  JsonObject& root = jsonBuffer.createObject();
  root["id"]= p.id;
  root["aid"] = p.aid;
  root["ev"] = p.ev;
  root["numdata"] = p.numdata;
  JsonArray& pro = root.createNestedArray("pro");
  for(int i=0;i<p.ev;i++){
    JsonArray& data = pro.createNestedArray();
    for (int j=0;j<p.numdata + 2;j++){
      data.add(p.prg[i][j]);
    }
  }
  char ast[200];
  root.printTo(ast, sizeof(ast));
  strcpy(astr,ast);
}

void Reqs::pubPrg(int ck){
  char sched[20];
  strcpy(sched,cdevid);
  strcat(sched,"/sched"); 
  //Serial.println(prog);	
  if((ck & 1) == 1){
    prg_t p = prgs.temp1;
    char astr[200];
    creaJson(p, astr);
    //Serial.println(astr);
    clpub(sched,astr);
  }
  if((ck & 16) == 16){
    prg_t p = prgs.timr1;
    char astr[200];
    creaJson(p, astr);
    //Serial.println(astr);
    clpub(sched,astr);
  }
}

void Reqs::clpub(char status[20], char astr[200]){
  if (cclient.connected()){
    cclient.publish(status, astr, true);
  }   
  Serial.print(status);
  Serial.println(astr);
}

void Reqs::pubState(int hc){
  // Serial.print("in publishState w: ");
  // Serial.println(hc);
  char srstate[20];
  strcpy(srstate,cdevid);
  strcat(srstate,"/srstate");  
  char astr[120];
  //sprintf(astr, "{\"id\":%d, \"darr\":[%d]}", 3, sr.timr2.state);
  if((hc & 1) == 1){
    sprintf(astr, "{\"id\":%d, \"darr\":[%d, %d, %d, %d], \"new\":%d}", 0, sr.temp1.temp, sr.temp1.state, sr.temp1.hilimit, sr.temp1.lolimit, sr.temp1.rec);
    clpub(srstate, astr);
    sr.temp1.rec=0;
  }
  if((hc & 16) == 16){
    sprintf(astr,   "{\"id\":%d, \"darr\":[%d], \"new\":%d}", 4, sr.timr1.state, sr.timr1.rec);
    clpub(srstate, astr);
    sr.timr1.rec=0;
  }
}

void Reqs::deseriReq(){
  StaticJsonBuffer<300> jsonBuffer;
  JsonObject& rot = jsonBuffer.parseObject(ipayload);
  int id = rot["id"];  
  switch(id){
   case 0://`{\"id\":0, \"req\":"srstates"}`
    f.HAYsTATEcNG = 31; 
    break;
   case 1://\"id\":1, \"req\":"sched"}
    Serial.println("in desiriReq 1=sched");
    pubPrg(31);
    break;
   case 2://\"id\":2, \"req\":"flags"}
    Serial.println("in desiriReq 2=flags");
    pubFlags();
    break;
   case 3://\"id\":2, \"req\":"timr"}
    Serial.println("in desiriReq 3=timr");
    pubTimr();
    break;
   default:
    Serial.println("in desiriReq default");
  }  
}

bool Reqs::deseriCmd(){
  Serial.println(ipayload);
  StaticJsonBuffer<1000> jsonBuffer;
  JsonObject& rot = jsonBuffer.parseObject(ipayload);
  int id = rot["id"];
  Serial.print("id = ");
  Serial.println(id);
  JsonArray& sra = rot["sra"];
  switch(id){
    case 0:
      copyHiLoState(id, sr.temp1, sra, po.temp1);
      break;
    case 4:
      copyTimrState(id, sr.timr1, sra, po.timr1);          
      break;
    default:
      Serial.println("in desirCmd default");
  }  
}

void Reqs::copyHiLoState(int id, temp_t& t, JsonArray& ev, int port){
  t.hilimit = ev[0];
  t.lolimit =ev[1];
  sched.adjHeat(id, t, port);
  int bit =pow(2,id);
  f.HAYsTATEcNG=f.HAYsTATEcNG | bit;
}
void Reqs::copyTimrState(int id, timr_t& t, JsonArray& ev, int port){
  t.state = ev[0];
  t.rec=1;
  int bit =pow(2,id);
  f.HAYsTATEcNG=f.HAYsTATEcNG | bit;
}