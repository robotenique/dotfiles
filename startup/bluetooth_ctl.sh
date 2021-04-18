#!/bin/bash
# This script unpairs my own bluetooth speaker, wait some time and then reconnects again
# Manjaro + Windows hibernate weird interaction. This is a startup script
BLUETOOTH_SPEAKER_MACADDR="7C:96:D2:63:11:A5"
# unpair speaker
echo -e "remove $BLUETOOTH_SPEAKER_MACADDR\n" | bluetoothctl
# wait 5 seconds
sleep 5
# pair with blueooth speaker again
echo -e "pair $BLUETOOTH_SPEAKER_MACADDR\n" | bluetoothctl
# wait 2 seconds
sleep 2
# connect with blueooth speaker again
echo -e "connect $BLUETOOTH_SPEAKER_MACADDR\n" | bluetoothctl
