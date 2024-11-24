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
### Install Desktop Environments
In Fedora, run this commands
> dnf update

<details><summary><b><code>Xfce Desktop</code></b></summary></br>

```
dnf install @xfce-desktop-environment tigervnc-server dbus -y
```
```
dnf install xfburn parole ristretto gst-libav -y
```
</details>

<details><summary><b><code>Lxde Desktop</code></b></summary></br>

```
dnf install @lxde-desktop-environment tigervnc-server dbus -y
```
```
mv /usr/bin/lxpolkit /usr/bin/lxpolkit.bak
```
</details>

<details><summary><b><code>Lxqt Desktop</code></b></summary></br>

```
dnf install @lxqt-desktop-environment tigervnc-server dbus -y
```
</details>

<details><summary><b><code>Kde- Desktop</code></b></summary></br>

~~dnf install @kde-desktop-environment tigervnc-server dbus -y~~
</details>

---
Feature
- [x] Fixed Sound Output
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Add New Username     | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Patch/AddUser.md#add-username-on-fedora)
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Apps/Firefoxfix.md#fixed-firefox-on-fedora)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Fedora/tree/main/Apps#list-applications)

Visit problems now in : [Issues](https://github.com/wahasa/Fedora/issues)

---
### Run Desktop Environments
- [x] With Termux-X11  | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Patch/Termux-X11.md#termux-x11-on-fedora)
- [x] With Rvnc Viewer | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Patch/RvncViewer.md#rvnc-viewer-on-fedora)
- [x] With Bvnc Viewer | [Click Here >](https://github.com/wahasa/Fedora/blob/main/Patch/BvncViewer.md#bvnc-viewer-on-fedora)
</br>

---
<p align="center">Good Luck</p>

---
