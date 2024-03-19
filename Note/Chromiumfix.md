### Fixed Chromium Fedora
![Screenshot_2024-03-19-07-57-52-054_com realvnc viewer android](https://github.com/wahasa/Fedora/assets/69626847/42d79753-32ff-4cc5-b520-e3fce3cfa97f)

---
* Install Chromium
> dnf install chromium -y

* Uninstall Chromium
> dnf remove chromium -y

---
#### Fixed chromium can't be opened
on Fedora, run this commands

* Edit script
```
nano /usr/share/applications/chromium-browser.desktop
```

* Add script
```
Exec=/usr/bin/chromium-browser --no sandbox --test-type %U
```

Save : ctrl + x, click Y enter.

Example :

![Screenshot_2024-03-19-08-03-33-865_com termux](https://github.com/wahasa/Fedora/assets/69626847/8f0794b1-d40f-4e3e-bbdf-a31075ba6c02)

* You can open chromium now.
</br>

---
#### How to change search engine

* Click the three dots on the right
* Select settings
* Click search engine on the left
* Select manage search engines & site
* Click Add (search engine)

Add search engine
> Search engine
```
Google
```

> Shortcut
```
Google.com
```

> URL with %s in place of query
```
https://google.com/search?q=%s
```

* Search saved search engines
* Click the three dots
* Slect Make default
* Close Chromium and open again
</br>

---
<p align="center">Good Luck</p>

---
