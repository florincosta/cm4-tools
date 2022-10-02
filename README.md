# CM4-tools
Raspberry Pi CM4 Tools

This repository contains:
 - flashrom v1.0.1, patched for VL805 support
 - some VL805 firmware files
 
> Firmware files must be padded to the maximum memory size before flashrom will happly program them!
 
## Build flashrom

You need to install some packages before building flashrom.

`sudo apt-get install build-essential libpci-dev libusb-dev libusb-1.0-0-dev linux-headers-generic`

Build using make

`cd flashrom-v1.0.1`

`make`

## Using flashrom

Write bin file

`sudo ./flashrom -p vl805 -w ../firmware/vl805_fw_0138a1_padded_8Mb.bin -V`


## Padding files

First, create a 128K file of all zeros:

`dd if=/dev/zero bs=1024 count=128 of=padded.bin`

Then, write the BIN to the file without truncating the result:

`dd if=file.bin of=padded.bin conv=notrunc`

