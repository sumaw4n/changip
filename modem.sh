#!/bin/bash

username="admin"
password="admin"
router_ip="192.168.9.1"

echo "skript ganti ip su..."
echo "ojo di edit2 aq wes mumet gawe ne."
echo "lak eror moh aq benak ne"
echo "────────────────────────"
echo ""
python3 ip.py http://${username}:${password}@${router_ip}/
python3 band.py http://${username}:${password}@${router_ip}/ --mode 4g --lteband 8 > /dev/null 2>&1
echo "starting change ip..."
echo ""
python3 band.py http://${username}:${password}@${router_ip}/ --mode 4g --lteband 3 > /dev/null 2>&1
python3 ip.py http://${username}:${password}@${router_ip}/
echo "successful change ip..."
echo ""
echo "wes ngunu wae jon"
