#!/bin/bash

# Define colors
GREEN='\033[1;32m'
RED='\033[1;31m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Get system information
OS=$(lsb_release -d | awk -F"\t" '{print $2}')
RAM=$(free -m | awk 'NR==2{printf "%s MB", $2}')
SWAP=$(free -m | awk 'NR==4{printf "%s MB", $2}')
CITY="สิงคโปร์"  # Hardcoded or use an API to get this info
ISP="Google LLC"  # Example, change as necessary
IP=$(curl -s ifconfig.me)
DOMAIN="example.com"  # Replace with your domain
UPTIME=$(uptime -p | cut -d " " -f 2-)

# Define the expiry
EXPIRY_DAYS=27995

clear

# Display header
echo -e "${BLUE}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${WHITE}             ระบบจัดการ VPN               ${BLUE}║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════╝${NC}"

# Display system information
echo -e "${GREEN}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║${WHITE} ระบบปฏิบัติการ    : $OS                     ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} หน่วยความจำแรม    : $RAM                     ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} พื้นที่ Swap      : $SWAP                    ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} เมือง             : $CITY                  ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} ผู้ให้บริการอินเทอร์เน็ต : $ISP           ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} ไอพีแอดเดรส       : $IP                      ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} โดเมน            : $DOMAIN                ${GREEN}║${NC}"
echo -e "${GREEN}║${WHITE} ระยะเวลาทำงาน    : $UPTIME                ${GREEN}║${NC}"
echo -e "${GREEN}╚═══════════════════════════════════════════════╝${NC}"

# Display status
echo -e "${YELLOW}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${YELLOW}║${WHITE} XRAY : เปิด | SSH-WS : เปิด | NGINX : เปิด ${YELLOW}║${NC}"
echo -e "${YELLOW}╚═══════════════════════════════════════════════╝${NC}"

# Display version and expiry information
echo -e "${RED}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${RED}║${WHITE} เวอร์ชั่น       : 20.04 LTS         ${RED}║${NC}"
echo -e "${RED}║${WHITE} ผู้พัฒนา      : เจฟ.เจฟ             ${RED}║${NC}"
echo -e "${RED}║${WHITE} ชื่อผู้ใช้       :  VIP              ${RED}║${NC}"
echo -e "${RED}║${WHITE} วันหมดอายุ    : ${RED}$EXPIRY_DAYS 200 วัน${NC}                ${RED}║${NC}"
echo -e "${RED}╚═══════════════════════════════════════════════╝${NC}"

# Display menu options
echo -e "${BLUE}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${WHITE} 1.) สร้าง OPNE/SSH               ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 2.) XRAY                                     ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 3.) TROJAN                                   ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 4.) ติดตั้งเว็บ                                 ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 5.) รีบูท                                    ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 6.) คุณสมบัติ                                ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 7.) ใบรับรอง                                 ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 8.) สำรองข้อมูล                              ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} 9.) กู้คืนข้อมูล                              ${BLUE}║${NC}"
echo -e "${BLUE}║${WHITE} x.) ออกจากโปรแกรม                           ${BLUE}║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════╝${NC}"

# User input for menu selection
echo -ne "${GREEN}เลือกเมนู : ${NC}"
read -r menu

# Example action based on menu selection
case $menu in
    1)
        echo -e "${YELLOW}กำลังเปิด SSH/OPENVPN...${NC}"
        # Add command to launch SSH/OPENVPN
        ;;
    2)
        echo -e "${YELLOW}กำลังเปิด XRAY...${NC}"
        # Add command to launch XRAY
        ;;
    3)
        echo -e "${YELLOW}กำลังเปิด TROJAN...${NC}"
        # Add command to launch TROJAN
        ;;
    4)
        echo -e "${YELLOW}กำลังเปิด SS-Libev...${NC}"
        # Add command to launch SS-Libev
        ;;
    5)
        echo -e "${YELLOW}กำลังรีบูทระบบ...${NC}"
        reboot
        ;;
    6)
        echo -e "${YELLOW}แสดงคุณสมบัติ...${NC}"
        # Add command to show features
        ;;
    7)
        echo -e "${YELLOW}จัดการใบรับรอง...${NC}"
        # Add command for cert management
        ;;
    8)
        echo -e "${YELLOW}กำลังสำรองข้อมูล...${NC}"
        # Add backup command
        ;;
    9)
        echo -e "${YELLOW}กำลังกู้คืนข้อมูล...${NC}"
        # Add restore command
        ;;
    x)
        echo -e "${YELLOW}กำลังออกจากโปรแกรม...${NC}"
        exit 0
        ;;
    *)
        echo -e "${RED}เมนูที่เลือกไม่ถูกต้อง!${NC}"
        ;;
esac
