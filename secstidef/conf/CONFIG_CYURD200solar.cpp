#include "CONFIG.h"
/*INSTRUCTIONS
* be sure to modify FLAGS for HAYpROGS and HAYtIMRS
*/

/*CUSTOM CODE
Transformer D8 activated when either D5,D6 or D7 hi
srs.ti[0] (sr 0) onoff for D5
srs.ti[1] (sr 1) onoff for D6
srs.ti[2] (sr 2) onoff for D7
(see srs.ti_t and prgs.prg_t)
otherwise make some DUMMY custom function
*/
void customInit(){
  if(0==1){
    int dog =3;
  }
};
void customLoop() {
  if(0==1){
    int dog =3;
  }
};
 
// void customInit(){
//   pinMode(D8, OUTPUT);
//   digitalWrite(D8, HIGH);
// }
// void customLoop(){
//   int bef = digitalRead(D8);
//   if(srs.ti[0].onoff==1 || srs.ti[1].onoff==1 || srs.ti[2].onoff==1){
//     digitalWrite(D8, HIGH);
//   }else{
//     digitalWrite(D8, LOW);
//   }
//   int aft = digitalRead(D8);
//   if(aft != bef){
//     Serial.print("D8 is ");
//     Serial.println(aft);
//   }
// }


/*DESCRIPTION
Cascada 
Pond D5 OUT when on acivates lohi water circuit+relay
  and pond pumps relay (120V)
Garden D6 & D7 OUT irrigation activate (24V)
Transformer D8 activated when either D5,D6 or D7 hi
hay NO sensors connected to esp8266
CONFIG_CYURD116cascada running on espboth/secsti
has CUSTOM CODE
*/

/*LOCID 10-12ParleyVale
*/


/*SERVER
dev extern device variables*/
char devid[9]="CYURD200";
char owner[254]="tobinmckenna@gmail.com";
char pwd[24]="geniot";
char mqtt_server[60]="sitebuilt.net";
char mqtt_port[6]="1884";
/*dev*/

/*SPECS
CONFIG extern const device variables
INCOMING const mqtt topics*/
const topics_t TPC {
  5,
  {"devtime", "cmd", "prg", "req", "set"}
};
/*PORTS for INPUT*/
const portsin_t inpo {
  D2, //DS18b20a
  0, //DS18b20b
  0,//dht11
  0, //ANALOG
  0, //SPIdo
  0, //SPIcs
  0};//shares i2c D2 and D1
/*SE constant declarations*/  
const sen_t SE {
  1,//number of different sensor types
  3,//number of sensors(numsens)
  {
    {1, {0,1,2}, "temp", "DS18b20a"}
  }
};
/*------------------------------------------------------
CONFIG extern structures (initial values, changeable)*/
/*srs extern data structure initalization
state of relays and sensors */ 
srs_t srs {
  3,//numsr
  1,//sumse
  {{2,45,1,0}},//outdoor temp
  3,//numcs
  {
    {0,100,0,222,223,1,0}, //solardif
    {1,120,0,138,118,1,0}, //heatexch
    {1,121,0,140,120,1,0}  //tankles
  },
  0,//numti
  {}//{sr,onoff,rec,isnew}
};
/*prgs extern data structure initalization*/ 
prgs_t prgs{
  3,//numprgs
  { //sr,aid,ev,numdata,prg[[]],port,hms
    {0,255,1,2,{{0,0,322,323}},D1,1506}, //solardif
    {1,255,1,2,{{0,0,138,118}},D8,1504}, //hxch
    {1,255,1,2,{{0,0,140,120}},D7,1503}  //tankles
  }
};
/*flags extern data structure*/
flags_t f {//MODIFY HAYpROG and HAStIMR
  0,//aUTOMA
  0,//fORCErESET
  5,//cREMENT
  0,//HAStIMR 00000111 =1+2+4=7
  0,//IStIMERoN
  3,//HAYpROG 00000011 =1+2+4=7
  1023,//HAYsTATEcNG
  0,//CKaLARM
  0,//ISrELAYoN
  {0,0,0,0,0,0,0,0,0,0}//tIMElEFT[10]
};

// nxtalarr_t nxtal {
//   0,//num
//   {//sr,aid,hms (h*60+m)*20+sr
//     {0,255,29000},
//     {1,255,29000},
//     {2,255,29000},
//     {3,255,29000},
//     {99,255,29001},
//     {99,255,29002},
//     {99,255,29006},
//     {99,255,29004},
//     {99,255,29000},
//     {99,255,29000}
//   }
// };
    

// const srpos_t outpos {
//   3, //numpos
//   {{2,D0}, {7,D3}, {8,D4}} //pod.sr,pod.portnum
// };
