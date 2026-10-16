#!/bin/bash
#Author: Athul
#date: 16-10-2026
#version: v1

#Task: This is a file used to monitor EC2 instance


echo "======================================"
echo "       SYSTEM MONITORING REPORT"
echo "======================================"


# Display running services
echo ""
echo "========== RUNNING SERVICES =========="
systemctl list-units --type=service --state=running

# Display CPU usage
echo ""
echo "========== CPU USAGE ================="
top -bn1 | grep "Cpu(s)"

# Display memory usage
echo ""
echo "========== MEMORY USAGE =============="
free -h

# Display disk usage
echo ""
echo "========== DISK USAGE ================"
df -h

echo ""
echo "======================================"
echo "       MONITORING COMPLETE"
echo "======================================"

