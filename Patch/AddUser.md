### Add Username on Fedora
<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Patch/Username.jpg">

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
echo "<username>  ALL=(ALL:ALL) ALL" >> /etc/sudoers
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
</br>

---
<p align="center">Good Luck</p>

---
