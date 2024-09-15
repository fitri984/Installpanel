#!/bin/bash

# Color
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e ""
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${BLUE}                                                 ${NC}"
  echo -e "${BLUE}                AUTO INSTALLER PANEL             ${NC}"
  echo -e "${BLUE}                  MUDAH BY KAYZEN                 ${NC}"
  echo -e "${BLUE}                                                 ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e ""
  echo -e ""
  sleep 4
}

#Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${BLUE}     BUY TOKEN DULU SANA SAMA KAYZEN             ${NC}"
  echo -e "${BLUE}       WHATSAPP : 0858-1001-8405                 ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e "                                                       "

  echo -e "${RED}TOKEN :${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "kayzen" ]; then
    echo -e "${GREEN}AKSES SUKSES${NC}}"
  else
    echo -e "${GREEN}GAGAL COBA LAGI${NC}"
    exit 1
  fi
  clear
}


# Install theme
install_panel() {
  while true; do
    echo -e "                                                       "
    echo -e "${RED} =============================================== ${NC}"
    echo -e "${BLUE}            APAKAH INGIN MELANJUTKAN             ${NC}"
    echo -e "${RED} =============================================== ${NC}"
    echo -e "                                                       "
    echo -e "Ingin melanjutkan ke proses penginstalan? (y/n)"
    read -r INSTAL_THOMZ
    case "$INSTAL_THOMZ" in
      y) 
     echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${BLUE}              MASUKAN SUBDOMAIN KAMU             ${NC}"
  echo -e "${BLUE}              (panel.kayzen.my.id)             ${NC}"
  echo -e "${BLUE}                    ©Kayzen                    ${NC}"
  echo -e "${RED} =============================================== ${NC}"
    read Domain
    
bash <(curl -s https://raw.githubusercontent.com/guldkage/Pterodactyl-Installer/main/autoinstall.sh) $Domain true admin@kayzen.com admin admin admin 1 true
  echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e ""
  sleep 2
    break
        ;;
      Y) 
     echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${BLUE}              MASUKAN SUBDOMAIN KAMU             ${NC}"
  echo -e "${BLUE}              (panel.kayzen.my.id)             ${NC}"
  echo -e "${BLUE}                    ©Kayzen                    ${NC}"
  echo -e "${RED} =============================================== ${NC}"
    read Domain
    
bash <(curl -s https://raw.githubusercontent.com/guldkage/Pterodactyl-Installer/main/autoinstall.sh) $Domain true admin@kayzen.com admin admin admin 1 true
  echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e ""
  sleep 2
    break
        ;;
      n)
        return
        ;;
      *)
        echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
  }
  #uninstall_panel
uninstall_panel() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                 UNINSTALL PANEL                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "


bash <(curl -s https://pterodactyl-installer.se) <<EOF
y
y
y
y
EOF


  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]              UNINSTALL PANEL SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
# Main script
display_welcome
check_token

while true; do
  clear
  echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${BLUE}                   SELECT OPTION                 ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e "                                                       "
  echo -e "SELECT OPTION :"
  echo "1. Install panel"
  echo "2. Uninstall Panel"
  echo "x. Exit"
  echo -e "Masukkan pilihan (1/2/x):"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_panel
      ;;
    2)
      uninstall_panel
      ;;
    x)
      echo "Keluar dari skrip."
      exit 0
      ;;
    *)
      echo "Pilihan tidak valid, silahkan coba lagi."
      ;;
  esac
done
