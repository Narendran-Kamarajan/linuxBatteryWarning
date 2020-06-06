#!/bin/bash

while true
do
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    if on_ac_power; then
        if [ $battery_level -eq 100 ]; then
            yad --title="Battery Full" --image=/opt/linuxBatteryWarning-master/.batt_full.png --text="<span size=\"large\">Your laptop battery is fully charged-<i>$battery_level%</i>\nNow you can unplug AC power to avoid over-charging.</span>" --timeout-indicator=bottom --on-top --sticky --center --image-on-top --timeout=5 --no-buttons 
         fi
    else
         if [ $battery_level -lt 20 ]; then
            yad --title="Battery Low" --image=/opt/linuxBatteryWarning-master/.batt_low.png --text="<span size=\"large\">Your laptop is running on low battery level-<i>$battery_level%</i>\nBe quick to plug-in AC power to avoid shutdown.</span>" --timeout-indicator=bottom --on-top --sticky --center --image-on-top --timeout=5 --no-buttons
         fi
    fi

    sleep 30
done
