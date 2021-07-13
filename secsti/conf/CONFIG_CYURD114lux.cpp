#include "CONFIG.h"

/*
hgbbbbbbbffgghbbbghhnth
*/

/*dev extern device variables*/
char devid[9]="CYURD114";
char owner[254]="tim@sitebuilt.net";
char pwd[24]="geniot";
char mqtt_server[60]="sitebuilt.net";
char mqtt_port[6]="1884";
/*dev*/

/*CONFIG extern const device variables*/
/*INCOMING const mqtt topics*/
const topics_t TPC {
  5,
  {"devtime", "cmd", "prg", "req", "set"}
};
/*PORTS for INPUT*/
const portsin_t inpo {
  0, //DS18b20a
  0, //DS18b20b
  0, //dht11
  0, //ANALOG
  0, //SPIdo
  0, //SPIcs
  0};//shares i2c D2 and D1
/*SE constant declarations*/  
const sen_t SE {
  1,//number of different sensor types
  1,//number of sensors(numsens)
  {
    {1, {0}, "light", "BH1750"},
  }
};
/*------------------------------------------------------
CONFIG extern structures (initial values, changeable)*/
/*srs extern data structure initalization
state of relays and sensors */ 
srs_t srs {
  1,//numsr
  1,//sumse
  {{0,45,1,0}},//assumes SCL is D1(5) and SDA is D2(4)
  0, //numcs
  {},
  0,//numti
  {}
};
/*prgs extern data structure initalization*/ 
prgs_t prgs{
  0,//numprgs
  { //sr,aid,ev,numdata,prg[[]],port,hms
    {},
  }
};
/*flags extern data structure*/
flags_t f {
  0,//aUTOMA
  0,//fORCErESET
  5,//cREMENT
  96,//HAStIMR 1100000 64+32=96
  0,//IStIMERoN
  198,//HAYpROG 11000010 =128+64+4=198
  1023,//HAYsTATEcNG
  0,//CKaLARM
  0,//ISrELAYoN
  {0}//tIMElEFT[10]/*MODIFY*/
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
