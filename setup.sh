#!/bin/bash
echo ''
clear
echo ''
echo '  ____ _____ _____ ____ _   _      ____ ___ ____ ___ _  __  '
echo ' / ___|_   _| ____/ ___| | | |    |  _ \_ _|  _ \_ _| |/ /  '
echo '| |     | | |  _|| |   | |_| |    | | | | || | | | || ' /  ''
echo '| |___  | | | |__| |___|  _  |    | |_| | || |_| | || . \ '''
echo ' \____| |_| |_____\____|_| |_|    |____/___|____/___|_|\_\  '
echo '                 Free Script untuk semua!                   '
echo ''
echo '                    Haram Untuk Dijual                      '
echo '                 Siapa beli, dia kena scam                  '
echo ''
echo ' .......................................................... '
echo '                 Autoscript By CTech Didik'
echo '                 Original Script by SamVPN                  '
echo '                        Menu by RARE                        '
echo ''
echo '                       Build in 2021                        '
echo ''
echo '                    Youtube: CTechDidik                     '
echo '                Like dan Subscribe sekarang                 '
echo ''
echo ''
echo '                         Telegram                           '
echo '              Telegram Channel t.me/ctechdidik              '
echo '             Telegram Owner CTech Didik? rahsia             '
echo '                  Telegram SamVPN @sam_sfx                  '
echo '                 Telegram SamVPN @kedairare                 '
echo ''
echo ''
echo ''
echo '                       Tunggu 5 Saat!                       '
echo ' .......................................................... '
sleep 5
clear
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo '============================================='
echo '          Sila Tunggu sebentar '
echo 'Process Update & Upgrade Sedang Dijalankan '
echo '============================================='
sleep 2
apt update && apt upgrade -y
clear
echo '============================================='
echo '      Process Update&Upgrade Selesai '
echo '============================================='
sleep 2
clear
echo '============================================='
echo '        Process Seterusnya Sila Tunggu '
echo '============================================='
sleep 2
mkdir /etc/v2ray
mkdir /var/lib/premium-script;
mkdir /var/lib/crot-script;
clear
echo '============================================='
echo "Sila Masukkan DOMAIN, Jika TIADA KLIK Enter"
echo '============================================='
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
echo "IP=$host" >> /var/lib/crot-script/ipvps.conf
echo "$host" >> /etc/v2ray/domain
clear
echo '============================================='
echo '        Installing SSH & OPENVPN '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
echo '============================================='
echo '        Installing SSTP '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
echo '============================================='
echo '        Installing ssr '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
echo '============================================='
echo '        Installing shadowsocksobfs '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
echo '============================================='
echo '        Installing WIREGUARD '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
echo '============================================='
echo '        Installing V2RAY '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
echo '============================================='
echo '        Installing ipsec '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
echo '        Installing XRAY '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/install-xray.sh && chmod +x install-xray.sh && screen -S v2ray ./install-xray.sh
echo '============================================='
echo '        Installing Websocket '
echo '============================================='
wget https://raw.githubusercontent.com/muhamadparizan/ahahk/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh


rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/install-xray.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
echo "1.1" > /home/ver

echo "echo '                Dibina oleh CTechDidik             '" >> .profile
echo "echo ''" >> .profile
echo "echo '                 Youtube: CTech Didik              '" >> .profile
echo "echo '     Telegram Channel: https://t.me/ctechdidik     '" >> .profile
echo "echo ''" >> .profile
echo "echo '              Raw Script oleh @sam_sfx             '" >> .profile
echo "echo '             Menu Style oleh @kedairare            '" >> .profile
echo "echo ''" >> .profile
echo "echo '       Sila Type: 'menu', untuk ke menu utama      '" >> .profile
echo "echo ''" >> .profile
echo "echo '    Sila Type: 'info', untuk melihat info skrip    '" >> .profile
echo "echo ''" >> .profile
clear
echo " "
echo '============================================='
echo "       Installation has been completed!!"
echo '============================================='
sleep 3
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 443, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - XRAY DIRECT             : 6769"  | tee -a log-install.txt
echo "   - XRAY SPLICE             : 6769"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Malaysia (UTC +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 UTC +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo ""
echo "   - 1st Dev/Main            : CTechDidik"  | tee -a log-install.txt
echo "   - 1st Dev/Youtube         : CTech Didik -Subscribe Now!"  | tee -a log-install.txt
echo "   - 2nd Dev/ Telegram       : @sam_sfx"  | tee -a log-install.txt
echo "   - Menu Dev/ Telegram      : @kedairare"  | tee -a log-install.txt
echo ""
echo "                         Haram Untuk Dijual                                 " | tee -a log-install.txt
echo "                       Siapa beli, dia kena scam                            " | tee -a log-install.txt
echo "------------------Script Created By CTechDidik & SamVPN---------------------" | tee -a log-install.txt

sleep 3
echo '============================================='
echo '      SISTEM AKAN REBOOT SEBENTAR LAGI'
echo '============================================='
echo ""
rm -f /root/setup.sh
rm -f /root/.bash_history
echo " Reboot 15 Sec, Setelah ON type menu"
sleep 15
reboot
