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

<details><summary><b><code>Install Fedora</code></b></summary></br>

> apt install wget
- [x] Fedora 41 (Latest-release)

Rootfs : Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedora41.sh ; chmod +x fedora41.sh ; ./fedora41.sh
```

- [x] Fedora 36 (Old-release)

Rootfs : Armhf, Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedora36.sh ; chmod +x fedora36.sh ; ./fedora36.sh
```
- [x] Fedora 42 (Development)

Rootfs : Arm64, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Fedora/main/Install/fedoradev.sh ; chmod +x fedoradev.sh ; ./fedoradev.sh
```

- [x] List Fedora | [Click Hare >](https://github.com/wahasa/Fedora/tree/main/Install)
</details>

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
> dnf update : Update list package.</br>
> dnf upgrade : Upgrade package.</br>
> dnf search (pkg) : Search package.</br>
> dnf install (pkg) : Install package.</br>
> dnf autoremove (pkg) : Delete pkg.</br>

---
### Install Desktop Environment
In Fedora, run this commands
> dnf update

<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Patch/Xfce.jpg">

- [x] Xfce Desktop

```
dnf install udisks2 @xfce-desktop xfburn parole ristretto gstreamer1-plugin-openh264 pulseaudio chromium tigervnc-server dbus -y
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
