Add New Username

<b>In Linux, run this commands</b>
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

---
- Login Username
```
su <username>
```

- Logout Username
```
exit
```

- Remove Username
```
deluser <username>
```

---
<b>In Termux, run this commands</b>
> apt install nano

- Edit Script
```
nano $PREFIX/bin/fedora
```
</br>

> proot-distro login fedora --shared-tmp

To

```
proot-distro login --user <username> fedora --shared-tmp
```
Save : ctrl + x, click y enter.

</br>
Note :</br>
(username) : Replace with your username.

---
- Login Fedora
> fedora

- Logout Fedora
> exit

- Remove Fedora
```
rm $PREFIX/bin/fedora ; pd remove fedora
```
