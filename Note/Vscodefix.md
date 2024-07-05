### Visual Studio Code on Fedora
![Screenshot_2024-03-19-09-51-51-880_com realvnc viewer android](https://github.com/wahasa/Parrot/assets/69626847/30b7bdaa-78d7-4b04-91bd-a8e4713fec43)

Requirements
- [x] Linux can access Sdcard
- [x] Download file vscode

---
* Download File Vs-Code

- [x] [Link Download](https://code.visualstudio.com/download)

Note :</br>
• X64 (X86_64/Amd64)</br>
• Arm32 (Armv7/6/Armhf)</br>
• Arm64 (Aarch64/Armv8)

---
#### Commands in Fedora
> dnf install nano -y

* Move files
```
cd /sdcard/Download
```
```
cp (Name file).rpm ~/
```
```
cd
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

![Screenshot_2024-03-19-10-04-12-456_com termux](https://github.com/wahasa/Parrot/assets/69626847/dd388f76-8c13-47b3-b4de-3dbb31a9e430)

* You can open vscode now.
</br>

---
<p align="center">Good Luck</p>

---
