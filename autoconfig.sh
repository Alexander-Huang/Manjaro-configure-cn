#!/bin/bash
#made_by_alexander

#check internet connection
ping -c 1 114.114.114.114 > /dev/null 2>&1
if [ $? -eq 0 ];then
     echo "Internet successful connected."
else
    	echo "Can't connect to internet."
    	exit
fi
#check root
ROOT_UID=0
if [ "$UID" -eq "$ROOT_UID" ]
then
	screenfetch
else
	echo "Please run it by root,not sudo."
	exit
fi

echo -e "Hello, ${y_name} \nThis shell script is used to configure Manjaro 18.\nLet's go step by step."
echo "Please select mirrors.tuna.tsinghua.edu.cn"
pacman-mirrors -i -c China -m rank
echo -e "\n[archlinuxcn]\nSigLevel = TrustAll\nServer = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch\n\n[antergos]\nSigLevel = TrustAll\nServer = https://mirrors.tuna.tsinghua.edu.cn/antergos/\$repo/\$arch\n"|sudo tee -a /etc/pacman.conf  #add reponsitory
pacman -Syy
pacman -S --noconfirm archlinuxcn-keyring antergos-keyring
pacman -S --noconfirm wqy-microhei #it can solve a large number of problems. ^_^
echo 'please press enter when asking for selection(I want them all.jpg<_<)'
pacman -S --noconfirm fcitx-im fcitx-configtool fcitx-googlepinyin materia-gtk-theme
#pacman -S --noconfirm fcitx-sogoupinyin
#For some problems,we can't use sogoupinyin normally.Sorry for that.
echo -e 'GTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nXMODIFIERS=@im=fcitx' >> /etc/environment #configure input
pacman -S --noconfirm thunderbird tlp tlpui axel lolcat gconf aurman zsh
pacman -S --noconfirm cowsay htop vim curl git yay
pacman -Rs --noconfirm hexchat #I don't think it's useful. >_<
pacman -S --noconfirm firefox-i18n-zh-cn thunderbird-i18n-zh-cn
pacman -S --noconfirm google-chrome wps-office netease-cloud-music #emmm,if you don't like,just add "#".
pacman --noconfirm -Syyu
sudo tlp start
sudo tlp-stat
echo "Now I'll bring you something you want." #emmm,guess what?
axel -o /tmp/ https://github.com/qingshuisiyuan/electron-ssr-backup/releases/download/v0.2.6/electron-ssr-0.2.6.pacman
pacman -U --noconfirm /tmp/electron-ssr-0.2.6.pacman  
echo "edit ~/.zshrc for more themes!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" #install oh-my-zsh 
