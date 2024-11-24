<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Fedora Distro on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Patch/Fedora.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation
Copy and paste this commands to Termux

Install Fedora (Distro)
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
> dnf update : Update list package.</br>
> dnf upgrade : Upgrade package.</br>
> dnf search (pkg) : Search package.</br>
> dnf install (pkg) : Install package.</br>
> dnf autoremove (pkg) : Delete pkg.</br>

---
Feature

<details><summary><b><code>Fixed Sound Output</code></b></summary></br>

In Termux, run this commands
> apt update

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
> rm $PREFIX/bin/fedora

---
In Fedora, run this command
```
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc
```

---
</details>

<details><summary><b><code>Add Username Fedora</code></b></summary></br>

In Linux, run this commands
> dnf install sudo

- Add Username
```
adduser <username>
```
```
passwd <username>
```
```
echo "<username>    ALL=(ALL)       ALL" >> /etc/sudoers
```

</br>
Note :</br>
(username) : Replace with your username.

In Termux, run this commands
> apt install nano

```
nano $PREFIX/bin/fedora
```

- Edit Script

> proot-distro login --user <username> fedora --shared-tmp

Save : ctrl + x, click y enter.

---
- Login Fedora
> fedora

- Logout Fedora
> exit

- Remove Fedora
> rm $PREFIX/bin/fedora

---
</details>

- [x] [Install Desktop Environments](https://github.com/wahasa/Fedora/tree/main#install-desktop-environments)

- [x] [Run Desktop Environments](https://github.com/wahasa/Fedora/tree/main#run-desktop-environments)
</br>

---
<p align="center">Good Luck</p>

---
