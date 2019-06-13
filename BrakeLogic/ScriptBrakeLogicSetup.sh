#Place in the papyrus workspace folder or edit the paths at will :-)

echo "Including libraries..."
ex -s -c '11i|#include <thread>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc
ex -s -c '12i|#include <iostream>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc
ex -s -c '13i|#include <chrono>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc
ex -s -c '14i|#include <cmath>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc 

echo "Executing make file..."
cd ./BrakeLogic_CDTProject/src
make -f Makefile

./TopMain
