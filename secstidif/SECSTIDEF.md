# secstidef - Sensors, Controlled Sensors, Timers: Default operation without WIFI

7/13/21

<s> Allow microcontroller operation in the absense of wifi.</s> Builds on code in secsti

Changes:

sched.cpp 
* 155 - change 0 to i
* checkRelays - srs.cs[ici.idx] -> srs.cs[i]
reqs.cpp   
* rewrote Reqs::pubState(int hc)