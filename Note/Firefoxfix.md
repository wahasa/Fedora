### Fixed Firefox Fedora
![Screenshot_2024-03-19-07-00-51-893_com realvnc viewer android](https://github.com/wahasa/Fedora/assets/69626847/8e951f34-2a72-40f2-b5da-bc143ec4b178)

---
* Install Firefox
> dnf install firefox-esr -y

* Uninstall Firefox
> dnf autoremove firefox-esr -y

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

