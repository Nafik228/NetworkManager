<h1>TUI Network Manager for Linux</h1>

1. Создать Alt Server, Alt Workstation

2. Alt Server: 
echo “nameserver 8.8.8.8” > /etc/resolv.conf
apt-get update
apt-get install NetworkManager-tui –y
rm –rf /etc/net/ifaces
poweroff

3. Alt Workstation:
su - 
apt-get update 
poweroff

4. Склонировать машины

5. Настроить сетевые интерфейсы

6. hostnamectl set-hostname <name>; exec bash

7. domainname на филиалах

8. настроить адресацию

9. /etc/net/sysctl.conf forwarding = 1 и sysctl net.ipv4.ip_forward = 1 на ISP, HQ,-R, BR-R, systemctl restart network

10. ISP: iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE && systemctl enable --now iptabes && iptables-save >/etc/sysconfig/iptables, reboot

11. nano /etc/systemd/resolved.conf ставим днс на HQ-R и BR-R, systemctl enable --now systemd-resolved.service 

12. на роутерах: качаем frr, /etc/frr/daemons - ospfd=yes, вкл в автозапуск, vtysh > conf t > router ospf > настройка > exit > write, перегазурка frr, ip r

13. ставим DHCP

14. СОЗДАНИЕ ЮЗЕРОВ

15. iperf3

16. backup script

17. ssh 2222:
HQ-R:
iptables -t nat -A PREROUTING -p tcp --dport 2222 -i enp0s3 -j DNAT --to-destination 192.168.100.5:22

18. Все кроме CLI по ssh: 

на HQ-R:
iptables -A FORWARD -p tcp --dport 22 -i enp0s3 -s 192.168.111.2/32 -j DROP
iptables-save >/etc/sysconfig/iptables