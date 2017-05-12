# CarND-Controls-PID-Docker-Ubuntu16.04
## Install
1) Clone this repo
```
git clone https://github.com/AndreaIncertiDelmonte/CarND-Controls-PID-Docker-Ubuntu16.04.git
```
2) Cd into repo folder
```
cd CarND-Controls-PID-Docker-Ubuntu16.04
```
3) Clone uWebSocket repo 
```
git clone https://github.com/uWebSockets/uWebSockets
```
4) Build Docker Image
```
docker build -t <imagename>:<imagetag> .
```
5) Run image <br>
Port 4567 is used to talk with the simulator.
```
docker run -it -p 4567:4567 -v <path to your project code>:/src/second_term <imagename>:<imagetag> bash
```
