# install openvpn

wget -O /etc/openvpn/openvpn.tar "https://raw.githubusercontent.com/shigeno143/OCSPanelCentos6/master/openvpn-centos.tar"

cd /etc/openvpn/

tar xf openvpn.tar

wget -O /etc/openvpn/1194.conf "https://raw.githubusercontent.com/shigeno143/OCSPanelCentos6/master/1194-centos.conf"

service openvpn restart

sysctl -w net.ipv4.ip_forward=1

sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf

iptables -t nat -I POSTROUTING -s 192.168.100.0/24 -o eth0 -j MASQUERADE

iptables-save > /etc/iptables_yg_baru_dibikin.conf

wget -O /etc/network/if-up.d/iptables "https://raw.githubusercontent.com/Clrkz/VPSAutoScrptz/master/iptables"

chmod +x /etc/network/if-up.d/iptables

service openvpn restart


# konfigurasi openvpn

cd /etc/openvpn/

wget -O /etc/openvpn/client.ovpn "https://raw.githubusercontent.com/shigeno143/OCSPanelCentos6/master/open-vpn.conf"

sed -i $MYIP2 /etc/openvpn/client.ovpn;

cp client.ovpn /home/vps/public_html/

