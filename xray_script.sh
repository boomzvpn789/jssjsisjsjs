#!/bin/bash

# กำหนดสี
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # ไม่มีสี

# ฟังก์ชั่นเพื่อแสดงข้อมูลระบบ
show_info() {
    echo -e "${CYAN}******************************************************${NC}"
    echo -e "${CYAN}***********${WHITE} สวัสดีสมาชิกทุกท่าน ${CYAN}************${NC}"
    echo -e "${CYAN}***********${WHITE} จัดทำโดย เจฟ.เจฟ ${CYAN}***************${NC}"
    echo -e "${CYAN}******************************************************${NC}"
    echo -e "${YELLOW}ข้อมูลเซิร์ฟเวอร์${NC}"
    echo -e "${GREEN}TIME        : ${WHITE}$(date +"%T")${NC}"
    echo -e "${GREEN}DAY         : ${WHITE}$(date +"%A")${NC}"
    echo -e "${GREEN}DATE        : ${WHITE}$(date +"%d-%B-%Y")${NC}"
    echo -e "${GREEN}SERVER      : ${WHITE}Siamdata Communication Co.,Ltd.${NC}"
    echo -e "${GREEN}City        : ${WHITE}Mueang Nonthaburi${NC}"
    echo -e "${GREEN}IP VPS      : ${WHITE}45.154.26.92${NC}"
    echo -e "${GREEN}DOMAIN      : ${WHITE}th-1.boomzvpn.cloud${NC}"
    echo -e "${CYAN}******************************************************${NC}"
    echo
}

# ฟังก์ชั่นสำหรับเมนูต่างๆ
menu() {
    echo -e "${CYAN}******************************************************${NC}"
                                            เมนู         
    echo -e "${CYAN}******************************************************${NC}"
    echo -e "${GREEN}1.${WHITE} สร้างบัญชี"
    echo -e "${GREEN}2.${WHITE} จัดการบริการทั้งหมด"
    echo -e "${GREEN}3.${WHITE} ตรวจสอบพอร์ต"
    echo -e "${GREEN}4.${WHITE} ตรวจสอบบริการ"
    echo -e "${GREEN}5.${WHITE} ตั้งค่า"
    echo -e "${GREEN}6.${WHITE} ออก"
    echo -e "${CYAN}******************************************************${NC}"
                                         FB.เจฟ เจฟ
    echo -e "${CYAN}******************************************************${NC}"
    echo -ne "${YELLOW}โปรดเลือก [ 1 - 6 ] : ${NC}"
    read choice
    case $choice in
        1) create_account ;;
        2) manage_services ;;
        3) check_ports ;;
        4) check_services ;;
        5) settings ;;
        6) exit 0 ;;
        *) echo -e "${RED}ตัวเลือกไม่ถูกต้อง!${NC}"; menu ;;
    esac
}

# ฟังก์ชั่นตัวอย่างสำหรับการสร้างบัญชี
create_account() {
    echo -e "${BLUE}สร้างบัญชี...${NC}"
    # เพิ่มโค้ดสำหรับการสร้างบัญชีที่นี่
    menu
}

# ฟังก์ชั่นตัวอย่างสำหรับการจัดการบริการทั้งหมด
manage_services() {
    echo -e "${BLUE}จัดการบริการทั้งหมด...${NC}"
    # เพิ่มโค้ดสำหรับการจัดการบริการที่นี่
    menu
}

# ฟังก์ชั่นตัวอย่างสำหรับการตรวจสอบพอร์ต
check_ports() {
    echo -e "${BLUE}ตรวจสอบพอร์ต...${NC}"
    # เพิ่มโค้ดสำหรับการตรวจสอบพอร์ตที่นี่
    menu
}

# ฟังก์ชั่นตัวอย่างสำหรับการตรวจสอบบริการ
check_services() {
    echo -e "${BLUE}ตรวจสอบบริการ...${NC}"
    # เพิ่มโค้ดสำหรับการตรวจสอบบริการที่นี่
    menu
}

# ฟังก์ชั่นตัวอย่างสำหรับการตั้งค่า
settings() {
    echo -e "${BLUE}ตั้งค่า...${NC}"
    # เพิ่มโค้ดสำหรับการตั้งค่าที่นี่
    menu
}

# เริ่มต้นโปรแกรม
clear
show_info
menu
