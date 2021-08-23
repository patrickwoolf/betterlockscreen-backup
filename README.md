# betterlockscreen backup
## 🗄️ file system
* `lock.sh`, example script calling i3lock-color
* `i3lock`, functional script downloaded from official github
* `betterlockscreen/`, cloned from functional official github
* `systemd/`, system service allowing lock on suspend/sleep
## 🗿 installation
### i3lock-color
* copy `i3lock` to `$HOME/bin/` or `$HOME/.local/bin/`
* you can add keyboard shortcut to run `$HOME/<this github folder>/lock.sh` directly to lock
* edit file locations in `lock` to meet your need
* to run i3lock on suspend, copy `systemd/lock@.service` to `/lib/systemd/system/`, and copy `lock` to `$HOME/.local/bin/`; afterwhich run the following command
```shell
systemctl enable lock@<your user name>
```
### betterlockscreen
* run `betterlockscreen/install.sh`
* to enable on suspend, copy `systemd/lock@service` to `/lib/systemd/system/`, uncomment the lines for betterlockscreen and comment its counterpart.
