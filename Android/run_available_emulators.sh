#!/bin/bash -x

WAIT_TIME=60

. "$(dirname "$0")"/get_avd_emulator_devices.sh
emulator_devices_list=$(get_avd_emulator_devices)

for emulator_name in $emulator_devices_list;
do
    echo "Boot $emulator_name"
    emulator @"$emulator_name" &
    sleep $WAIT_TIME
done
echo "FINISHED"
