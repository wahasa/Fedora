### Visual Studio Code on Fedora

In Linux, run this commands
> dnf install wget nano

Arm32 (Armv7/6/Armhf)
Arm64 (Aarch64/Armv8)
X64 (X86_64/Amd64)

- [x] List File | [Click Hare >](https://code.visualstudio.com/download)

---
* Install pkg
```
dnf install ~/code*
```

* Edit script
```
nano /usr/share/applications/code.desktop
```

* Add script
```
Exec=/usr/share/code/code --no-sandbox --unity-launch %F
```

Save : ctrl + x, click Y enter.

Example :
> Exec=/usr/share/code/code --unity-launch %F

To

> Exec=/usr/share/code/code --no-sandbox --unity-launch %F

* You can open vscode now.
</br>

---
<p align="center">Good Luck</p>

---
