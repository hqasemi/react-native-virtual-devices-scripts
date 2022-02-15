#!/bin/bash -x


get_avd_emulator_devices(){
    local emulator_devices=$(emulator -list-avds)
    echo "$emulator_devices"
}