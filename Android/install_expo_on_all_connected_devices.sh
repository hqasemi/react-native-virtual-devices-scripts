#!/bin/bash -x

expo_apk_dir="$HOME/.expo/android-apk-cache/"
latest_expo_apk_path=$(ls $expo_apk_dir/*.apk -t | head -n 1)

. "$(dirname "$0")"/get_connected_devices.sh
connected_devices=$(get_connected_devices)

for device_name in $connected_devices;
do
  echo "Install expo ('$latest_expo_apk_path') on $device_name"
  adb -s $device_name install -r $latest_expo_apk_path
done