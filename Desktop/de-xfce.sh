#!/bin/bash
#Get the necessary components
dnf update
dnf install nano sudo -y
dnf install @xfce-desktop-environment -y
dnf install tigervnc-server dbus -y

#Get the extra components
dnf install xfburn parole ristretto -y

#Setup the necessary files
mkdir -p ~/.vnc
echo "#!/bin/bash
export PULSE_SERVER=127.0.0.1
xrdb $HOME/.Xresources
startxfce4" > ~/.vnc/xstartup
echo "vncserver -geometry 1600x900 -name remote-desktop :1" > /usr/local/bin/vnc-start
echo "vncserver -kill :1" > /usr/local/bin/vnc-stop

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-launch startxfce4" > /usr/local/bin/vncstart
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
   echo ""
   echo "Start Vnc Server, run vnc-start"
   echo "Stop  Vnc Server, run vnc-stop"
   echo ""
rm de-xfce.sh
