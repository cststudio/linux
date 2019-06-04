#!/bin/bash
 sudo tunctl -t tap0 -u `whoami`
 sudo brctl addif br0 tap0
 sudo ifconfig tap0 up

