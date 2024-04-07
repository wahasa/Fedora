
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---

### Fedora Distro on Termux Android

* Install Fedora
```
pkg install proot-distro -y ; proot-distro install fedora
```

* Add new script
```
nano $PREFIX/bin/fedora
```
```
#!/bin/bash

pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
```
