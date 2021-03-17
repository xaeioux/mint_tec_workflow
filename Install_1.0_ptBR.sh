#!/bin/bash
function ExecutarTudo {
 InstalarAnydesk
 InstalarCopyq
 InstalarDbeaver
 InstalarDeepinscreenshot
 InstalarDeepinterminal
 InstalarDeepinscreenrecorder
 InstalarFilezilla
 InstalarAtom
 InstalarPlank
 InstalarQbittorrent
 InstalarTeamviewer
 InstalarSkype
 InstalarVirtualbox
 InstalarNumixicons
 InstalarWine
 InstalarSpotify
 InstalarVlc
 InstalarWireshark
 InstalarChrome
 }
function InstalarAnydesk {
 wget https://download.anydesk.com/linux/anydesk_6.0.0-1_amd64.deb
 sudo dpkg -i anydesk_6.0.0-1_amd64.deb;
 CorrigeInstalacao;
 }
function InstalarCopyq {
 sudo apt install copyq -y;
 CorrigeInstalacao;
 }
function InstalarDbeaver {
 wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb;
 sudo dpkg -i dbeaver-ce_latest_amd64.deb;
 CorrigeInstalacao;
 }
 function InstalarDeepinscreenshot {
 sudo apt install deepin-screenshot -y;
 CorrigeInstalacao;
 }
 function InstalarDeepinscreenrecorder {
 sudo apt install deepin-screen-recorder -y;
 CorrigeInstalacao;
 }
 function InstalarDeepinterminal {
 sudo apt install deepin-terminal -y;
 CorrigeInstalacao;
 }
 function InstalarFilezilla {
 sudo apt install filezilla -y;
 CorrigeInstalacao;
 }
 function InstalarAtom {
 wget https://atom.io/download/deb;
 mv deb atom-amd64.deb;
 sudo dpkg -i atom-amd64.deb;
 CorrigeInstalacao;
 }
 function InstalarPlank {
 sudo apt install plank -y;
 CorrigeInstalacao;
 }
 function InstalarQbittorrent {
 sudo apt install qbittorrent -y;
 CorrigeInstalacao;
 }
 function InstalarTeamviewer {
 wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb;
 sudo dpkg -i teamviewer_amd64.deb;
 CorrigeInstalacao;
 }
 function InstalarSkype {
 wget https://go.skype.com/skypeforlinux-64.deb;
 sudo dpkg -i skypeforlinux-64.deb;
 CorrigeInstalacao;
 }
 function InstalarVirtualbox {
 sudo apt install virtualbox -y;
 CorrigeInstalacao;
 }
 function InstalarNumixicons {
 sudo add-apt-repository -y ppa:numix/ppa;
 sudo apt update -y;
 sudo apt install numix-icon-theme-circle -y;
 CorrigeInstalacao;
 }
 function InstalarWine {
 sudo apt install wine -y;
 CorrigeInstalacao;
 }
 function InstalarSpotify {
 sudo apt install spotify-client -y;
 CorrigeInstalacao;
 }
 function InstalarVlc {
 sudo apt install vlc -y;
 CorrigeInstalacao;
 }
 function InstalarWireshark {
 sudo apt install wireshark -y;
 CorrigeInstalacao;
 }
 function InstalarChrome {
 wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
 sudo dpkg -i google-chrome-stable_current_amd64.deb
 CorrigeInstalacao;
 }

function AtualizaGeral {
echo $PASS | sudo -S apt update && sudo -S apt upgrade && sudo -S apt full-upgrade && sudo -S apt dist-upgrade && sudo -S apt autoremove && sudo -S apt autoclean && sudo -S apt clean;
}
function CorrigeInstalacao {
echo S | sudo apt install -f
}
function RemoverApps {
sudo apt remove --purge pix pix-data -y;
sudo apt remove --purge celluloid -y;
sudo apt remove --purge transmission-gtk transmission-common -y;
sudo apt remove --purge warpinator -y;
sudo apt remove --purge hexchat hexchat-common -y;
sudo apt remove --purge gnote -y;
sudo apt remove --purge rhythmbox -y;
}
#CUEIO
echo "  . .    .  .  . .  .   . .   .  .  .  " >> ~/.cueio
echo " . .  (\_/)    .   .  . .  .    .      " >> ~/.cueio
echo "  .  =( -.-)=     .  . .    NANI!? .   " >> ~/.cueio
echo " _____( >¥<)__________________________ " >> ~/.cueio
#CRIA DIRETORIOS
cd ~
mkdir .apps;
cd .apps;
#INTERFACE
whiptail --title "MASTER BLASTER SCRIPT DE APLICATIVOS" --textbox ~/.cueio 10 43
# SENHA DO LINUX
PASS=$(whiptail --title "SENHA" --passwordbox "Digite sua senha para iniciar:" --fb 10 50 3>&1 1>&2 2>&3)
AtualizaGeral
#INSTALAÇÃO
if whiptail --title "ESCOLHA O TIPO DE INSTALAÇÃO" --yes-button "Completa" --no-button "Personalizada" --yesno "Escolha o tipo de instalação desejada" --fb 10 50
 then
 ExecutarTudo
 else
 whiptail --title "APLICATIVOS" --checklist --separate-output "Quais aplicativos você quer instalar?" 25 40 19 \
 "1" "Anydesk" OFF \
 "2" "CopyQ" OFF \
 "3" "DBeaver" OFF \
 "4" "Deepin Screenshot" OFF \
 "5" "Deepin Screen Recorder" OFF \
 "6" "Deepin Terminal" OFF \
 "7" "Filezilla" OFF \
 "8" "Atom" OFF \
 "9" "Plank" OFF \
 "10" "Qbittorrent" OFF \
 "11" "TeamViewer" OFF \
 "12" "Skype" OFF \
 "13" "Virtualbox" OFF \
 "14" "Numix Icons" OFF \
 "15" "Wine" OFF \
 "16" "Spotify" OFF \
 "17" "VLC" OFF \
 "18" "Wireshark" OFF \
 "19" "Google Chrome" OFF 2>resultado

 while read aplicacoes
 do
    case $aplicacoes in
  1)
  InstalarAnydesk;;
  2)
  InstalarCopyq;;
  3)
  InstalarDbeaver;;
  4)
  InstalarDeepinscreenshot;;
  5)
  InstalarDeepinscreenrecorder;;
  6)
  InstalarDeepinterminal;;
  7)
  InstalarFilezilla;;
  8)
  InstalarAtom;;
  9)
  InstalarPlank;;
  10)
  InstalarQbittorrent;;
  11)
  InstalarTeamviewer;;
  12)
  InstalarSkype;;
  13)
  InstalarVirtualbox;;
  14)
  InstalarNumixicons;;
  15)
  InstalarWine;;
  16)
  InstalarSpotify;;
  17)
  InstalarVlc;;
  18)
  InstalarWireshark;;
  19)
  InstalarChrome;;
  *)
  ;;
 esac
done < resultado
fi
# BACKUP
if whiptail --title "PENSE BEM" --yes-button "Sim" --no-button "Nunca" --yesno "Você quer fazer BACKUP?" --fb 10 50
 then
 MEGAA=$(whiptail --title "EMAIL DO MEGA" --inputbox "Digite o nome do usuário do mega:" --fb 10 50 3>&1 1>&2 2>&3)
 MEGAP=$(whiptail --title "SENHA DO MEGA" --passwordbox "Digite a senha do usuário do mega:" --fb 10 50 3>&1 1>&2 2>&3)
 #sudo apt install postfix -y;
 sudo apt install megatools -y;
 cd ~
 megaget /Root/bkp_trabalho.tar.gz /home/ -u $MEGAA -p $MEGAP
 tar -zxvf bkp_trabalho.tar.gz;
 echo "55 11 * * * cd /usr/bin/ && ./backup.sh" >> crontabs
 echo "55 17 * * * cd /usr/bin/ && ./backup.sh" >> crontabs
  USERN=`whoami`
  crontab -u $USERN crontabs;
  rm crontabs;
# INSTALAÇÃO DO BKP
  touch backup.sh;
  echo "cd ~" >> backup.sh;
  echo "rm bkp_trabalho.tar.gz;" >> backup.sh;
  echo "tar -zcvf bkp_trabalho.tar.gz Trabalho/ -R;" >> backup.sh;
  echo "megarm /Root/bkp_trabalho.tar.gz -u $MEGAA -p $MEGAP;" >> backup.sh;
  echo "megaput bkp_trabalho.tar.gz -u $MEGAA -p '$MEGAP';" >> backup.sh;
  echo "XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send BELEZA 'BACKUP ENVIADO PARA O MEGA';" >> backup.sh;
 chmod 777 backup.sh;
 sudo mv backup.sh /usr/bin/
 rm .cueio
 else
 whiptail --title "BAD CHOICE!!!" --msgbox "               =(ò.ó)=" --fb 10 43
 rm .cueio
fi
if whiptail --title "WOOTING" --yes-button "Sim" --no-button "Não" --yesno "Você possui um teclado Wooting?" --fb 10 50
 then
  sudo apt install numlockx -y;
  sudo touch wooting.rules;
  echo '# Wooting One' >> wooting.rules;
  echo 'SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff01", MODE:="0660", GROUP="input"'  >> wooting.rules;
  echo '# Wooting One update mode'  >> wooting.rules;
  echo 'SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="2402", MODE:="0660", GROUP="input"'  >> wooting.rules;
  sudo udevadm control --reload-rules && sudo udevadm trigger;
  sudo mv wooting.rules /etc/udev/rules.d/
 else
 whiptail --title "Sem Problemas!!!" --msgbox "               =(ô.õ)=" --fb 10 43
fi
RemoverApps
AtualizaGeral
rm -rf .apps
