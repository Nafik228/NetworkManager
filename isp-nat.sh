#!/bin/bash
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE && systemctl enable iptabes && iptables-save >/etc/sysconfig/iptables