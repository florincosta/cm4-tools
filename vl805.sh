#!/bin/sh
# Get firmware version of VL805

lspci -d 1106:3483 

if [ "$USER" != "root" ] 
then 
  echo Root needed to report version, use sudo!
#  exit 1
fi

lspci -d 1106:3483 -xxx | awk '/^50:/ { print "VL805 FW version: " $5 $4 $3 $2 }'




