#!/bin/bash

#SETTINGS
NAME=YOURPROCESSNAME #YOUR PROCESS NAME
NICE=-19 #NICE VALUE (-20 Highest)
CHRT=99 #CHRT VALUE 
#SETTINGS END


PID=$(pidof $NAME) #IGNORE THIS
echo $NAME" PID: "$PID
sleep 1
echo "Priority setting script has been started!"
renice $NICE $PID
echo "Renice value has been set for: " $NAME
sleep 1
chrt -p $CHRT $PID
echo "Chrt value has been set for: " $NAME

# Created by: Labodi David - daveitservices.tk
