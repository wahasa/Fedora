
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Fedora on Termux Android

---
• Install Apps on Android
- [x] [Termux](https://apkcombo.com/id/termux/com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :
> pkg update && pkg upgrade

* Install Fedora
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/fedora/main/install.sh ; chmod +x install.sh ; ./install.sh
```

* Start Fedora
```
fedora
```

* Stop Fedora
```
exit
```

* Remove Fedora
```
rm -rf fedora-fs
```

---
Basic commands Fedora
> dnf update : Update list package.</br>
> dnf upgrade : Upgrade package.</br>
> dnf search (pkg) : Search package.</br>
> dnf install (pkg) : Install package.</br>
> dnf autoremove (pkg) : Delete package.</br>
> dnf -h : Help all commands.
---
## Desktop Environment

on Fedora, run this command :
> apt update && apt upgrade

<details></br>
<summary><b><code>Install Desktop Xfce</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Fedora/main/Images/xfce.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```

<details></br>
<summary><b><code>Install Desktop Lxde</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Fedora/main/Images/lxde.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-lxde.sh ; chmod +x de-lxde.sh ; ./de-lxde.sh
```

<details></br>
<summary><b><code>Install Desktop Lxqt</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Fedora/main/Images/lxqt.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```

<details></br>
<summary><b><code>Install Desktop Kde</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Fedora/main/Images/kde.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```

---
Note :
- [x] Sound fix
- [x] Browser fix [Click here,.](https://github.com/wahasa/fedora/issues/1#issuecomment-1396447589)

Visit problems now in : [Issues](https://github.com/wahasa/fedora/issues)

---
## VNC Viewer

1. Start VNC Server

on Fedora, run this command to start :
```
vnc-start
```

2. Open Vnc Viewer

Add (+) VNC Client to connect, fill with :

Address
```
localhost:1
```

Name
```
Fedora Desktop
```

To disconnect VNC Client, click (X) on the right.

3. Stop VNC Server

on Fedora, run this command to stop :
```
vnc-stop
```

</br>

---
<p align="center">Good Luck</p>

---
