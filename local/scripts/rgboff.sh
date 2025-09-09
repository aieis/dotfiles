#!/bin/bash

bus=$1
reg=$2

i2cset -y $bus $reg 0xe1 0x01 &

i2cset -y $bus $reg 0xe2 0x01 &

i2cset -y $bus $reg 0xe1 0x02 &

i2cset -y $bus $reg 0xe1 0x03 & 
