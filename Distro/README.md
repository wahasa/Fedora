
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
### Fedora Distro on Termux Android

* Install Fedora
```
pkg install proot-distro -y ; proot-distro install fedora
```

---
* Start Fedora
```
pd login fedora --shared-tmp
```

* Stop Fedora
```
exit
```

* Remove Fedora
```
pd remove alpine
```

---
<details></br><summary><b><code>Add Username</code></b></summary>

```
adduser (username)
```
```
passwd (username)
```
```
echo "(username)    ALL=(ALL)       ALL" >> /etc/sudoers
```

* Login Username
```
pd login fedora --user (username) --shared-tmp
```

</br>
Note :</br>
(username) : Replace with your username.

---
</details>

<details><summary><b><code>Fix Sound Output</code></b></summary>

* In Termux
```
nano $PREFIX/bin/fedora
```
```
#!/bin/bash
proot-distro login fedora --shared-tmp
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
```
```
chmod +x $PREFIX/bin/fedora
```

* In Fedora
```
echo "export PULSE_SERVER=127.0.0.1" >> ~/.bashrc
```

---
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
pd remove alpine ; rm $PREFIX/bin/fedora
```

---
</details>

<details></br><summary><b><code>Fixed Browser Crash</code></b></summary>
</details>

<details></br><summary><b><code>Install Desktop Fedora</code></b></summary>

[> Click Here <](https://github.com/wahasa/Fedora/tree/main?tab=readme-ov-file#desktop-environments)
</details>

<details></br><summary><b><code>Install Applications</code></b></summary>

> Click Here <
</details>

<details></br><summary><b><code>Run VNC Viewer Android</code></b></summary>

[> Click Here <](https://github.com/wahasa/Fedora/tree/main?tab=readme-ov-file#vnc-viewer)
</details>

<details></br><summary><b><code>Run Termux-x11 Android</code></b></summary>

[> Click Here <](https://github.com/wahasa/Fedora/tree/main?tab=readme-ov-file#termux-x11)
</details>
</br>

---
<p align="center">Good Luck</p>

---
