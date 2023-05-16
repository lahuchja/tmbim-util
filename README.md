# tmbim-util

Utility bash script for testing wireless modules controlled by MBIM.

Most frequently used testing procedures are implemented in these scripts.
Calls to `mbimcli` and other utilities are wrapped by easy-to-rememeber CLI action names and options.
Simple Bash completion scripts are provided as well.

- tmbim-util: Common test operations using MBIM by calling `mbimcli`
- dh-util: Calling DHCP client to configure IP address and DNS
  + DHCP client `dhclient` and `udhcpc` are supported
- if-cfg: Configure IP, IPv6, and DNS settings
  + Set IP address/mask manually
  + Trigger IPv6 autoconfig manually
  + Set DNS (IP or IPv6) manually. `resolvconf` and `resolvectl` are supported

## Installation

Sync the project to a local folder.

Open a terminal, switch to the local folder, and run `install.sh`.

Symbolic links to executable scripts will be created to your home folder at `~/bin`.
Symbolic links to Bash completion scripts will be created to your home folder at `~/.local/share/bash-completion/completions`.

## Default Settings

- The script searches for available WDM device with naming `/dev/cdc-wdm`n. If there are multiple devices the 1st one returned by system will be used.
- The actual `mbimcli` commands being used and responses are recorded into the log file `tmbim-util.log` under your home folder.
- Default command line arguments can be put into the config file `tmbim-util.conf` under `~/bin` folder. An example `tmbim-util.conf.example` is provided for your reference.

## Examples Usage of tmbim-util

Show module current status

```
tmbim-util
```

Show current status of a specific module by giving the device name

```
tmbim-util -d /dev/cdc-wdm1 status
```

Switch module to flight mode

```
tmbim-util off
```

Switch module to normal mode

```
tmbim-util on
```

Show module configuration

```
tmbim-util config
```

Make module connection using default APN and IP type settings

```
tmbim-util connect
```

Make module connection using APN `internet` with IPv4 only

```
tmbim-util --apn internet --ip-type 4 connect
```

Show IP address and DNS settings of the connection

```
tmbim-util ip
```

Retrieve IP address and DNS settings and do manual config (by calling script `if-cfg`)

```
tmbim-util ifcfg
```

Release module connection

```
tmbim-util disconnect
```

, or

```
tmbim-util release
```

## Examples Usage of if-cfg

Show current IP and DNS settings

```
if-cfg show
```

Config IPv4 address/mask and gateway

```
if-cfg ip4 25.117.174.145/30 25.117.174.146
```
NOTE: IP address/mask `25.117.174.145/30` and gateway IP address `25.117.174.146` can be retrieved from the response of `tmbmi-util ip`.

Trigger IPv6 autoconfig (i.e., let kernel get the prefix via SLAAC)

```
if-cfg 6
```

Configure DNS

```
if-cfg dns 168.95.1.1
```

Configure multiple DNS

```
if-cfg dns "168.95.1.1 2001:b000:168::1"
```
NOTE: IP or IPv6 DNS address can be retrieved from the response of `tmbmi-util ip`.

Flush IP, IPv6, and DNS settings

```
if-cfg flush
```

## Examples Usage of dh-util

Use `dhclient` to request IP address and DNS settings

```
dh-util request
```

Use `udhcpc` to request IP address and DNS settings

```
dh-util -u request
```

Stop DHCP client process and flush IP and DNS settings

```
dh-util flush
```