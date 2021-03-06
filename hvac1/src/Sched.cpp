#include "Sched.h"
#include "STATE.h"
#include <Arduino.h>
#include <ArduinoJson.h>
#include <TimeLib.h>
#include <TimeAlarms.h>
#include "Reqs.h"

extern Reqs req;
extern flags_t f;
extern prgs_t prgs;
extern ports_t po;
extern state_t sr;
extern char ipayload[250];

void Sched::actTime(){
  //Serial.println(unix);
  Serial.println(LLLL);
  //Serial.println(zone);
  time_t datetime = unix + zone*60*60;
  //Serial.println(datetime); 
  setTime(datetime);
  setSyncInterval(4000000); 
  Serial.print(hour()); 
  Serial.print(":");  
  Serial.println(minute());
}

bool Sched::deseriTime(){
  StaticJsonBuffer<200> jsonBuffer;
  JsonObject& root = jsonBuffer.parseObject(ipayload);
  root.prettyPrintTo(Serial);
  unix = root["unix"];
  LLLL = root["LLLL"];
  zone = root["zone"];
  return root.success();
  //actTime();
}


void Sched::copyProg(prg_t& t, JsonArray& ev){
  t.ev=ev.size();
  // Serial.print("ev.size=");
  // Serial.println(ev.size());
  for(int h=0;h<ev.size();h++){
    JsonArray& aprg = ev[h];
    // aprg.printTo(Serial);
    for(int j=0;j<t.numdata+2;j++){
      t.prg[h][j] = aprg[j];
      // Serial.print(t.prg[h][j]);
    }
    // Serial.println("");
  }        
}

void Sched::deseriProg(char* kstr){
  Serial.println(kstr);
  StaticJsonBuffer<1000> jsonBuffer;
  JsonObject& rot = jsonBuffer.parseObject(kstr);
  int id = rot["id"];
  // Serial.print("id = ");
  // Serial.println(id);
  JsonArray& events = rot["pro"];
  switch(id){
    case 0:
      copyProg(prgs.temp1, events);
      f.CKaLARM=f.CKaLARM | 1;          
      break;
    case 4:
      copyProg(prgs.timr1, events);          
      f.CKaLARM=f.CKaLARM | 16;          
      break;
    default:
      Serial.print(id);
      Serial.println("in desirPrg default");
  }
}

//void Sched::repCur(int cur )
void Sched::setTleft(prg_t p, int cur, int nxt, int &tleft){
  int hr = hour();
  int min = minute(); 
  if(nxt==0){
    tleft = (23-hr)*60+(59-min) +1;
  }else{
    int nxthr = p.prg[nxt][0];
    int nxtmin = p.prg[nxt][1];
    if(nxtmin < min){//12:25 -> 14:05
      nxtmin=nxtmin+60;
      nxthr--;
    }
    tleft= (nxthr-hr)*60 + (nxtmin - min);
  }
}

void Sched::setCur(prg_t& p, int &cur, int &nxt){
  Serial.print("ev(size)=");
  Serial.println(p.ev);
  Serial.print(hour());
  Serial.print(":");
  Serial.println(minute());
  for(int j=0; j<p.ev;j++){
    if (hour() == p.prg[j][0]){
      if (minute() < p.prg[j][1]){
        cur = j-1;
        break;
      }
    }
    if (hour() < p.prg[j][0]){
      cur= j-1;
      break;
    }
    cur =j;
  }
  nxt = cur+1;
  if (nxt>=p.ev){
    nxt=0;
  }        
}

void Sched::adjHeat(int id, temp_t& te, int port){
  int bit =pow(2,id);
  int mask = 31-bit;  
  bool relayState = 0;
  relayState = te.state;
  if (te.temp >= te.hilimit){
    relayState=0;
  } else if (te.temp <= te.lolimit){
    relayState=1;
  }
  if (relayState != te.state){
    te.state = relayState;
    te.rec=1;
    int relayon = f.ISrELAYoN;
    if(te.state){
      relayon = relayon | bit;
    }else{
      relayon = relayon & mask;
    }
    if(relayon!=f.ISrELAYoN){
      f.ISrELAYoN = relayon;
      req.pubTimr();
    }
    digitalWrite(port, relayState); 
  }   
}

void Sched::ckAlarms(){
  if((f.CKaLARM & 1) == 1){
    prg_t *p = &prgs.temp1;
    temp_t *s = &sr.temp1;
    Alarm.free(p->aid);
    int id =0;
    int bit =pow(2,id);
    int cur, nxt;
    setCur(*p, cur, nxt);
    s->hilimit = p->prg[cur][2];
    s->lolimit = p->prg[cur][3];
    adjHeat(id, sr.temp1, po.temp1);
    f.HAYsTATEcNG=f.HAYsTATEcNG | bit;
    int asec = second()+id;        
    p->aid = Alarm.alarmOnce(p->prg[nxt][0],p->prg[nxt][1], asec, bm1);
  }
  if((f.CKaLARM & 16) == 16){
    prg_t *p = &prgs.timr1;
    timr_t *s = &sr.timr1;
    Alarm.free(p->aid);
    int id =4;
    int bit =pow(2,id);
    int mask = 31-bit;
    int cur, nxt;
    setCur(*p, cur, nxt);
    //for timers
    int tleft=0;//initialize
    s->state = p->prg[cur][2];
    if (s->state){ //if relay is on
      s->rec=1;
      f.ISrELAYoN = f.ISrELAYoN | bit;
      if (nxt != cur){ //don't countdown allday[[0,0,1]]
        setTleft(*p, cur, nxt, tleft);
        f.IStIMERoN = f.IStIMERoN | bit; //on here, shut off in deductCrement
      }else{ //shutoff timer if program only is a single ev, hold[[0,0,1]]
        f.IStIMERoN = f.IStIMERoN & mask;
      }
    }else {
      s->rec=0;
      f.ISrELAYoN = f.ISrELAYoN & mask;
      f.IStIMERoN = f.IStIMERoN & mask;
    }    
    f.tIMElEFT[id]=tleft*60;
    //end of timer specific code
    //f.HAYsTATEcNG=f.HAYsTATEcNG | bit; //turned off in loop
    int asec = second()+id;        
    p->aid = Alarm.alarmOnce(p->prg[nxt][0],p->prg[nxt][1], asec, bm16);
  }
}

void bm1(){
  f.CKaLARM=f.CKaLARM | 1;
}
void bm2(){
  f.CKaLARM=f.CKaLARM | 2;
}
void bm4(){
  Serial.print("timr1 8 begets: ");
  f.CKaLARM=f.CKaLARM | 4;
}
void bm8(){
  f.CKaLARM=f.CKaLARM | 8;
}
void bm16(){
  f.CKaLARM=f.CKaLARM | 16;
}

void Sched::deductCrement(int id){
  int mask = 31 - pow(2,id);
  int t = f.tIMElEFT[id];
  t = t - f.cREMENT;
  if(t<=0){
    t=0;
    f.IStIMERoN = f.IStIMERoN & mask; //11011
  }
  f.tIMElEFT[id] = t;
}

void Sched::updTimers(){
  for(int i=0;i<sizeOf(f.tIMElEFT);i++){
    if(f.tIMElEFT[i]>0){
      deductCrement(i);
    }
  }
}

void Sched::ckRelays(){
  //temp relays are checked in readTemps()
  if(sr.timr1.state != digitalRead(po.timr1)){
    digitalWrite(po.timr1, sr.timr1.state);
    sr.timr1.rec=1;
    int id =4;
    int bit =pow(2,id);
    f.HAYsTATEcNG=f.HAYsTATEcNG | bit;    
  }
  // Serial.print("sr.timr1.state(sr2)=");
  // Serial.print(sr.timr1.state);
  // Serial.print(" digitalRead(po.timr1)=");
  // Serial.println(digitalRead(po.timr1));
}

