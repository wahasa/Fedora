<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Visual Studio Code on Fedora

In Linux, run this commands
> dnf install wget nano

Arm32 (Armv7/6/Armhf)
```
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1a4fb101478ce6ec82fe9627c43efbf9e98c813/code-1.95.3-1731512114.el8.armv7hl.rpm
```

Arm64 (Aarch64/Armv8)
```
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1a4fb101478ce6ec82fe9627c43efbf9e98c813/code-1.95.3-1731512119.el8.aarch64.rpm
```

X64 (X86_64/Amd64)
```
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1a4fb101478ce6ec82fe9627c43efbf9e98c813/code-1.95.3-1731513157.el8.x86_64.rpm
```

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
