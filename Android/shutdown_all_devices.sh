#!/bin/bash -x

. "$(dirname "$0")"/get_connected_devices.sh
connected_devices=$(get_connected_devices)

echo "Shutting down android devices"

for device_name in $connected_devices;
do
  echo "adb -s  $device_name shell reboot -p"
  adb -s  $device_name shell reboot -p
done
