<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Visual Studio Code on Fedora

In Linux, run this commands
> dnf install wget nano

- [x] [Link Download](https://code.visualstudio.com/download)

Note :</br>
• X64 (X86_64/Amd64)</br>
• Arm32 (Armv7/6/Armhf)</br>
• Arm64 (Aarch64/Armv8)

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
