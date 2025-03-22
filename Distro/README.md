<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Fedora Distro on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Distro/Fedora-Distro.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation
Copy and paste this commands to Termux

- [x] Install Fedora (Distro)
> apt update

```
apt install proot-distro -y ; proot-distro install fedora
```

* Login Fedora
> proot-distro login fedora
* Logout Fedora
> exit

---
- Reinstall : proot-distro reset fedora
- Uninstall : proot-distro remove fedora

---
Basic commands Fedora
> dnf update : Update repo package.</br>
> dnf upgrade : Upgrade package.</br>
> dnf search (pkg) : Search package.</br>
> dnf install (pkg) : Install package.</br>
> dnf remove (pkg) : Delete pkg.</br>

---
Feature

<details><summary><b><code>Fixed Sound Output</code></b></summary></br>

<b>In Termux, run this commands</b>
> apt update

- Edit Script
```
apt install pulseaudio nano -y
```
```
nano $PREFIX/bin/fedora
```

- Copy Script
```
#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login fedora --shared-tmp
```
Save : ctrl + x, click y enter.

- Activate script
```
chmod +x $PREFIX/bin/fedora
```

---
- Login Fedora
> fedora

- Logout Fedora
> exit

- Remove Fedora
```
rm $PREFIX/bin/fedora ; pd remove fedora
```

---
<b>In Linux, run this command</b>
```
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc
```

---
</details>

---
- [x] [Install Desktop Environment](https://github.com/wahasa/Fedora/tree/main#install-desktop-environment)

- [x] [Run Desktop Environment](https://github.com/wahasa/Fedora/tree/main#run-desktop-environment)
</br>

---
<p align="center">Good Luck</p>

---
