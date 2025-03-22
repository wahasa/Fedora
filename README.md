<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Fedora on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Patch/Fedora.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation

Copy and paste this commands to Termux
> apt update

Install Fedora

> apt install wget
- [x] Fedora 41

Rootfs : Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedora_41.sh ; chmod +x fedora_41.sh ; ./fedora_41.sh
```

- [x] Fedora 40

Rootfs : Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedora_40.sh ; chmod +x fedora_40.sh ; ./fedora_40.sh
```
- [x] Fedora 39

Rootfs : Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedora_39.sh ; chmod +x fedora_39.sh ; ./fedora_39.sh
```
- [x] Fedora 36

Rootfs : Armhf, Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedora_36.sh ; chmod +x fedora_36.sh ; ./fedora_36.sh
```
---
* Login Fedora
```
fedora
```

* Logout Fedora
```
exit
```

* Remove Fedora
```
chmod -R 775 fedora-fs ; rm -rf fedora-fs .fedora $PREFIX/bin/fedora
```

---
Basic commands Fedora
> dnf update : Update repo package.</br>
> dnf upgrade : Upgrade package.</br>
> dnf search (pkg) : Search package.</br>
> dnf install (pkg) : Install package.</br>
> dnf remove (pkg) : Delete package.</br>

---
### Install Desktop Environment
In Fedora, run this commands
> dnf update

<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Patch/Xfce.jpg">

- [x] Xfce Desktop

```
dnf install udisks2 @xfce-desktop xfburn parole ristretto gstreamer1-plugin-openh264 chromium tigervnc-server dbus -y
```
```
mv /usr/libexec/xfce-polkit /usr/libexec/xfce-polkit.bak
```

---
Feature
- [x] Fixed Sound Output
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Add New Username
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Apps/Chromiumfix.md#fixed-chromium-on-fedora)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Fedora/tree/main/Apps#list-applications)

Visit problems now in : [Issues](https://github.com/wahasa/Fedora/issues)

---
### Run Desktop Environment
- [x] With Termux-X11  | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Patch/Termux-X11.md#termux-x11-on-fedora)
- [x] With Rvnc Viewer | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Patch/RvncViewer.md#rvnc-viewer-on-fedora)
</br>

---
<p align="center">Good Luck</p>

---
