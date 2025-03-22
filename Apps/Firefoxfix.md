### Fixed Firefox on Fedora
<img src="https://raw.githubusercontent.com/wahasa/Fedora/refs/heads/main/Patch/Firefox.jpg">

* Install Firefox
> dnf install firefox

* Uninstall Firefox
> dnf remove firefox

---
#### Fixed firefox crash

* Open Firefox, fill address with :
```
about:config
```

* Click Button :
> Accept the Risk and Continue

* Search in box, fill with :
```
media.cubeb.sandbox
```

Click on the right to change 'true' to 'false'.

* Search in box again, fill with :
```
security.sandbox.content.level
```

Click edit on the right, change the number '4' to '0' and press again to save.

* Close and open again firefox.
</br>

---
<p align="center">Good Luck</p>

---
