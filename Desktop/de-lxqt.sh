#!/bin/bash
#Get the necessary components
dnf update
dnf install sudo -y
dnf install @lxqt-desktop-environment -y
dnf install tigervnc-server dbus -y

#Setup the necessary files
mkdir -p ~/.vnc
echo "#!/bin/bash
export PULSE_SERVER=127.0.0.1
xrdb $HOME/.Xresources
startlxqt" > ~/.vnc/xstartup
echo "vncserver -geometry 1600x900 -name remote-desktop :1" > /usr/local/bin/vnc-start
echo "vncserver -kill :1" > /usr/local/bin/vnc-stop

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-launch startlxqt" > /usr/local/bin/vncstart
chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/*
   clear
   echo ""
   echo "Installing browser,.."
   echo ""
   dnf install firefox -y
   clear
   echo ""
   echo "Vnc Server address will run at 127.0.0.1:5901"
   echo "Start Vnc Server, run vnc-start"
   echo "Stop  Vnc Server, run vnc-stop"
   echo " "
rm de-lxqt.sh
