#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : JsPhantom
# (C) Copyright 2023
# =========================================
P='\e[0;35m'
B='\033[0;36m'
N='\e[0m'
clear
echo -e "\e[36m╔============================================╗\033[0m"
echo -e " \e[0;35m          XRAY Trojan TCP XTLS MENU         \033[0m"
echo -e "\e[36m╚============================================╝\033[0m

 [\033[1;36m•1 \033[0m]  Add XRAY Trojan TCP XTLS Account
 [\033[1;36m•2 \033[0m]  Add Trial XRAY Trojan TCP XTLS Account
 [\033[1;36m•3 \033[0m]  Check User Login XRAY Trojan TCP XTLS
 [\033[1;36m•4 \033[0m]  Delete XRAY Trojan TCP XTLS Account
 [\033[1;36m•5 \033[0m]  Renew XRAY Trojan TCP XTLS Account
 [\033[1;36m•6 \033[0m]  Check XRAY Trojan TCP XTLS Config

 [\033[1;36m•0 \033[0m]  Back To Main Menu"
echo ""
echo -e " \033[1;37mPress [ Ctrl+C ] • To-Exit-Script\033[0m"
echo ""
echo -ne "Select menu : "; read x
if [[ $(cat /opt/.ver) = $serverV ]] > /dev/null 2>&1; then
    if [[ $x -eq 1 ]]; then
       add-xrt
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 2 ]]; then
       trial-xrt
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 3 ]]; then
       cek-xrt
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 4 ]]; then
       del-xrt
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 5 ]]; then
       renew-xrt
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 6 ]]; then
       user-xrt
       read -n1 -r -p "Press any key to continue..."
       menu
    elif [[ $x -eq 0 ]]; then
       clear
       menu
    else
       clear
       menu-xrt
    fi
fi�
