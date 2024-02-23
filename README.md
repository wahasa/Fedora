
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Fedora on Termux Android

---
• Install Apps on Android
- [x] [Termux](https://apkcombo.com/id/termux/com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation
Copy and paste this commands to Termux
> pkg update

<details><summary><b><code>Install Fedora</code></b></summary>

#### Fedora 40 (Container Image)
Rootfs : Arm64, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/Fedora40.sh ; chmod +x Fedora40.sh ; ./Fedora40.sh
```

#### Fedora 36 (Container Image)
Rootfs : Armhf, Arm64, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/Fedora36.sh ; chmod +x Fedora36.sh ; ./Fedora36.sh
```

#### Fedora 41 (Development)
Rootfs : Arm64, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/FedoraDev.sh ; chmod +x FedoraDev.sh ; ./FedoraDev.sh
```

#### List Fedora | [Click Here >](https://github.com/wahasa/Fedora/tree/main/Install)

---
</details>

Note :</br>
If any "Upgrade Failed to Unpacking Filesystem-3.xx-x.fcx", just ignore it.
</br>

* Start Fedora
```
fedora
```

* Stop Fedora
```
exit
```

* Delete Fedora
```
chmod -R 775 fedora-fs ; rm -rf fedora-fs
```

---
Basic commands Fedora
> dnf update : Update list package.</br>
> dnf upgrade : Upgrade package.</br>
> dnf search (pkg) : Search package.</br>
> dnf install (pkg) : Install package.</br>
> dnf autoremove (pkg) : Delete pkg.</br>
> dnf -h : Help all commands.

---
## Desktop Environments

on Fedora, run this commands
> dnf update
<details><summary><b><code>Install Xfce Desktop</code></b></summary>

![xfce](https://github.com/wahasa/Fedora/assets/69626847/4703d88a-1725-4007-9d58-8882ae6c5c28)
```
dnf install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details><summary><b><code>Install Lxde Desktop</code></b></summary>

![lxde](https://github.com/wahasa/Fedora/assets/69626847/60cd51ed-a2ca-4611-ad5e-6891354f6b7b)
```
dnf install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-lxde.sh ; chmod +x de-lxde.sh ; ./de-lxde.sh
```
</details>

<details><summary><b><code>Install Lxqt Desktop</code></b></summary>

![lxqt](https://github.com/wahasa/Fedora/assets/69626847/5e7ca264-fd6e-4d09-a015-774362736d46)
```
dnf install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details><summary><b><code>Install Kde Desktop</code></b></summary>

![kde](https://github.com/wahasa/Fedora/assets/69626847/f9cae4c0-669b-40f4-9200-40c64e0f2800)
```
dnf install wget -y ; wget https://raw.githubusercontent.com/wahasa/Fedora/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```
</details>

---
Feature
- [x] Fixed Sound
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Fixed Browser Crash  | Click Here >
- [x] Install Applications | Click Here >

Visit problems now in : [Issues](https://github.com/wahasa/Fedora/issues)

---
## VNC Viewer
<details></br>
<summary><b><code>VNC Viewer Android</code></b></summary>

* Start VNC Server

on Fedora, run this command to start
```
vnc-start
```

* Open Vnc Viewer

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

* Stop VNC Server

on Fedora, run this command to stop
```
vnc-stop
```
</details>

---
## Termux-x11
<details></br>
<summary><b><code>Termux-x11 Android</code></b></summary>

> Click Here <
</details>
</br>

---
<p align="center">Good Luck</p>

---
