#!/bin/bash

#Get the necessary components
dnf update
dnf install nano sudo -y
dnf install @xfce-desktop-environment -y
dnf install tigervnc dbus -y

#Get the extra components
dnf install xfburn parole mousepad ristretto -y

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-daemon --system
dbus-launch xfce4-session" > /usr/local/bin/vncstart
clear
chmod +x /usr/local/bin/vncstart

echo " "
echo "Installing browser,.."
echo " "
apk add firefox
clear
echo " "
echo "Vnc Server address will run at 127.0.0.1:5901"
echo " "
echo "In Termux"
echo "Start Vnc Server, run vncstart"
echo "Stop  Vnc Server, run vncstop"
echo " "
echo "In Linux"
echo "Start Vnc, run vncstart"
echo "Exit  Vnc, run ctrl+c"
echo " "

rm de-xfce.sh
