#!/bin/bash

echo "========================================="
echo "        SYSTEM INFORMATION REPORT"
echo "========================================="
echo ""

echo "--- KERNEL & SYSTEM ---"
uname -a
echo ""

echo "--- CURRENT USER ---"
whoami
id
echo ""

echo "--- ALL USERS ---"
cat /etc/passwd | cut -d: -f1,3,7
echo ""

echo "--- RUNNING PROCESSES ---"
ps aux --no-headers | wc -l
echo "processes running"
echo ""

echo "--- MEMORY USAGE ---"
free -h
echo ""

echo "--- DISK USAGE ---"
df -h
echo ""

echo "--- NETWORK INTERFACES ---"
ip a
echo ""

echo "--- IMPORTANT LOG EVENTS ---"
sudo journalctl -n 10 --no-pager | grep -i "sudo\|session\|failed"
echo ""

echo "--- PATH ---"
echo $PATH
echo ""

echo "--- FILESYSTEM ROOT ---"
ls /
echo ""

echo "--- SUID BINARIES ---"
find / -perm -4000 2>/dev/null
echo ""

echo "========================================="
echo "        END OF REPORT"
echo "========================================="
