#!/bin/bash -x


get_connected_devices(){
    local connected_devices=$(adb devices | tail -n +2 | cut -sf 1)
    echo "$connected_devices"
}