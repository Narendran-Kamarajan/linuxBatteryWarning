# linuxBatteryWarning
Project to get battery level warning

In some of the Linux distributions, the battery level warning application is not installed by default.
It isn't possible to overcharge a laptop battery. Leaving your computer plugged in after it is fully charged doesn't overcharge or damage the battery. However, keeping the battery consistently on the charger may not be the best idea if your goal is to optimize the battery life of your laptop. At times, the system will be shutdown with no prior notice due to critical battery level. 
To avoid both of these scenarios, I wanted to install an application to display the battery level warnings in the GUI.

Prerequisites:
  <br>-acpi</br>
  -yad

Download the zip file and extract to /opt
Add the batteryWarning.sh script to the startup Applications. (Custom command)

Now you will get the warning for every 30 sec on Full charge and battery level lower than 20%
