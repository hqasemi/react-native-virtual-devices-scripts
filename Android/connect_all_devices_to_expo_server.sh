#!/bin/bash -x
# how to use: ./connect_all_devices_to_expo_server <expo_server_ip:expo_server_port>

expo_server_addr=${1:-'exp://localhost:19000'}
WAIT_TIME=10

. "$(dirname "$0")"/get_connected_devices.sh
connected_devices=$(get_connected_devices)

for device_name in $connected_devices;
do
  echo "Connect '$device_name' to the expo server '$expo_server_addr'"
  adb -s  $device_name shell am start -a android.intent.action.VIEW -d $expo_server_addr
  sleep $WAIT_TIME
done