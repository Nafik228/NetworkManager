#!/bin/bash
iptables -t nat -A PREROUTING -p tcp --dport 2222 -d 192.168.10.5 -j DNAT --to-destination 192.168.10.5:22 
iptables -A FORWARD -p tcp --dport 22 -d 192.168.10.5 -m conntrack ! --ctstate DNAT -j DROP 
iptables -S 
iptables -t nat -S 
systemctl enable --now iptables 
iptables-save >/etc/sysconfig/iptables 
reboot
