#Place in the papyrus workspace folder or edit the paths at will :-)

if grep -q "cmath" "./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc";
then
	echo "Libraries are already included, skipping this step!"
else
	echo "Including libraries..."
	ex -s -c '9i|#include <thread>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc
	ex -s -c '10i|#include <iostream>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc
	ex -s -c '11i|#include <chrono>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc
	ex -s -c '12i|#include <cmath>' -c x ./BrakeLogic_CDTProject/src/BrakeLogicUnit.cc 
fi

echo "Executing make file..."
cd ./BrakeLogic_CDTProject/src
make -f Makefile

./TopMain
