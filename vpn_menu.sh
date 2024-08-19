#!/bin/bash

# Define colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
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

# Display information
echo -e "${GREEN}┌──────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}|${NC} ระบบปฏิบัติการ    : $OS"
echo -e "${GREEN}|${NC} หน่วยความจำแรม    : $RAM"
echo -e "${GREEN}|${NC} พื้นที่ Swap      : $SWAP"
echo -e "${GREEN}|${NC} เมือง             : $CITY"
echo -e "${GREEN}|${NC} ผู้ให้บริการอินเทอร์เน็ต : $ISP"
echo -e "${GREEN}|${NC} ไอพีแอดเดรส       : $IP"
echo -e "${GREEN}|${NC} โดเมน            : $DOMAIN"
echo -e "${GREEN}|${NC} ระยะเวลาทำงาน    : $UPTIME"
echo -e "${GREEN}└──────────────────────────────────────────────┘${NC}"

echo -e "${GREEN}┌──────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}|${NC} XRAY : เปิด | SSH-WS : เปิด | NGINX : เปิด | เสร็จสิ้น"
echo -e "${GREEN}└──────────────────────────────────────────────┘${NC}"

echo -e "${GREEN}┌──────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}|${NC} เวอร์ชั่น     : v2.0 LTS"
echo -e "${GREEN}|${NC} ผู้พัฒนา       : B-Liv VPN"
echo -e "${GREEN}|${NC} ชื่อผู้ใช้     : VIP"
echo -e "${GREEN}|${NC} วันหมดอายุ    : ${RED}$EXPIRY_DAYS วัน${NC}"
echo -e "${GREEN}└──────────────────────────────────────────────┘${NC}"

# Display menu options
echo -e "${GREEN}┌──────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}|${NC} 1.) SSH/OPENVPN"
echo -e "${GREEN}|${NC} 2.) XRAY"
echo -e "${GREEN}|${NC} 3.) TROJAN"
echo -e "${GREEN}|${NC} 4.) SS-Libev"
echo -e "${GREEN}|${NC} 5.) รีบูท"
echo -e "${GREEN}|${NC} 6.) คุณสมบัติ"
echo -e "${GREEN}|${NC} 7.) ใบรับรอง"
echo -e "${GREEN}|${NC} 8.) สำรองข้อมูล"
echo -e "${GREEN}|${NC} 9.) กู้คืนข้อมูล"
echo -e "${GREEN}|${NC} x.) ออกจากโปรแกรม"
echo -e "${GREEN}└──────────────────────────────────────────────┘${NC}"

# User input for menu selection
read -p "เลือกเมนู : " menu

# Example action based on menu selection
case $menu in
    1)
        echo "กำลังเปิด SSH/OPENVPN..."
        # Add command to launch SSH/OPENVPN
        ;;
    2)
        echo "กำลังเปิด XRAY..."
        # Add command to launch XRAY
        ;;
    3)
        echo "กำลังเปิด TROJAN..."
        # Add command to launch TROJAN
        ;;
    4)
        echo "กำลังเปิด SS-Libev..."
        # Add command to launch SS-Libev
        ;;
    5)
        echo "กำลังรีบูทระบบ..."
        reboot
        ;;
    6)
        echo "แสดงคุณสมบัติ..."
        # Add command to show features
        ;;
    7)
        echo "จัดการใบรับรอง..."
        # Add command for cert management
        ;;
    8)
        echo "กำลังสำรองข้อมูล..."
        # Add backup command
        ;;
    9)
        echo "กำลังกู้คืนข้อมูล..."
        # Add restore command
        ;;
    x)
        echo "กำลังออกจากโปรแกรม..."
        exit 0
        ;;
    *)
        echo "เมนูที่เลือกไม่ถูกต้อง!"
        ;;
esac
