
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---

### Fedora Distro on Termux Android

* Install Fedora
```
pkg install proot-distro -y ; proot-distro install fedora
```

* Login Fedora
```
pd login fedora --shared-tmp
```

* Logout Fedora
```
exit
```

---
* Add User Name
```
adduser wahasa
```
```
passwd wahasa
```
```
echo "wahasa    ALL=(ALL)       ALL" >> /etc/sudoers
```

* Login User Name
```
pd login fedora --user wahasa --shared-tmp
```

### Fix Sound Output
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
rm -rf parrot-* $PREFIX/bin/fedora
```

---
<p align="center">Good Luck</p>

---
