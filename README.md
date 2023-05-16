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

Symbolic links will be created under your personal folders.

## Examples

Switch module to flight mode

```
tmbim-util off
```

Switch module to normal mode

```
tmbim-util on
```

Connect module using default APN and IP type settings

```
tmbim-util connect
```

Release module connection

```
tmbim-util disconnect
```

or

```
tmbim-util release
```