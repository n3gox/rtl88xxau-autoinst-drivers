# rtl88xxau-autoinst-drivers
Tool written in bash to install rtl88xxau drivers for wifi hacking.

## Installation guide

Clone the repo:
```bash
git clone https://github.com/n3gox/rtl88xxau-autoinst-drivers.git
```
Make sure that the scripts have execution permissions.
```bash
chmod +x rtl88xxau_drivers_installation.sh
```
Execute the script:
```bash
./rtl88xxau_drivers_installation.sh
```

IMPORTANT NOTE

**Note:** If after rebooting, you system can't detect wlan0 interface, you may to unplug and plug another time to recognize the wlan interface. You can do **iwconfig** to detect wireless cards interfaces.
