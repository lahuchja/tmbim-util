# tmbim-util

Utility bash script for testing wireless modules controlled by MBIM.

Most frequently used testing procedures are implemented in these scripts.
Calls to `mbimcli` and other utilities are wrapped by easy-to-rememeber CLI actions and options.
Simple bash completions are provided as well.

- tmbim-util: Common test operations using MBIM by calling `mbimcli`
- dh-util: Calling DHCP client to configure IP and DNS
- if-cfg: Configure IP, IPv6, and DNS settings manually

## Installation

Sync the project to a local folder.

Open a terminal, switch to the local folder, and run `install.sh`.

Symbolic links to executable scripts will be created to your home folder at `~/bin`.
Symbolic links to Bash completion scripts will be created to your home folder at `~/.local/share/bash-completion/completions`.

## Default Settings

- The script searches for available WDM device with naming `/dev/cdc-wdm`n. If there are multiple devices the 1st one returned by system will be used.
- The actual `mbimcli` commands being used and responses are recorded into the log file `tmbim-util.log` under your home folder.
- Default command line arguments can be put into the config file `tmbim-util.conf` under `~/bin` folder. An example `tmbim-util.conf.example` is provided for your reference.

## Examples

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

Release module connection

```
tmbim-util disconnect
```

, or

```
tmbim-util release
```