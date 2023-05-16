# tmbim-util

Utility bash script for testing wireless modules controlled by MBIM.

Most frequently used testing procedures are implemented in these scripts.
Calls to `mbimcli` and other utilities are wrapped by easy-to-rememeber CLI actions and options.
Simple bash completions are provided as well.

- tmbim-util: Test operations using MBIM by calling `mbimcli`
    - modem on / off
    - connect / disconnect
    - show modem status / conf
    - ...
- dh-util: Call DHCP client to configure IP and DNS
    - request
    - flush
- if-cfg: Configure IP, IPv6, and DNS settings manually
    - set IP address / gateway manually
    - trigger IPv6 autoconfig
    - flush
