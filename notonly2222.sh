#!/bin/bash
iptables -t nat -A PREROUTING -p tcp --dport 2222 -i enp0s3 -j DNAT --to-destination 192.168.10.5:22
systemctl enable --now iptables 
iptables-save >/etc/sysconfig/iptables 
reboot
