
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---

### Fedora Distro on Termux Android

<b>Install Fedora</b>
```
pkg install proot-distro -y ; proot-distro install fedora
```

<b>Login Fedora</b>
```
proot-distro login fedora
```

<b>Logout Fedora</b>
```
exit
```

```
nano $PREFIX/bin/fedora
```
```
#!/bin/bash
proot-distro login fedora --user wahasa --shared-tmp
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
```
```
chmod +x $PREFIX/bin/fedora
```
