#!/data/data/com.termux/files/usr/bin/bash

# প্রয়োজনীয় প্যাকেজ ইনস্টল
apt update && apt upgrade -y
apt install figlet toilet ruby curl git -y
gem install lolcat

# ব্যানার সেটআপ (Fixing EOF Error)
cat << 'EOF' > $PREFIX/etc/bash.bashrc
clear
figlet -f small "Cyber-24 UCA" | lolcat
echo -e "\e[1;33m=============================================\e[0m"
echo -e "\e[1;36m  USER     : \e[0m \e[1;32m$(whoami)\e[0m"
echo -e "\e[1;36m  DEVICE   : \e[0m \e[1;32mInfinix X6725B\e[0m"
echo -e "\e[1;36m  IP       : \e[0m \e[1;31m$(curl -s https://ifconfig.me)\e[0m"
echo -e "\e[1;33m=============================================\e[0m"
PS1='\e[1;32mCyber-24-UCA@Termux \e[1;34m\w \e[0m\e[1;32m$ \e[0m'
EOF

termux-setup-storage
echo -e "\e[1;32mSetup Success! Restart Termux.\e[0m"
