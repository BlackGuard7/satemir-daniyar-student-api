#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")/../" && pwd)"
LOG_FILE="$BASE_DIR/logs/Satemir_Daniyar_system_report.log"

{
echo "====================================="
echo "Student full name : Daniyar Satemir"
echo "Date and time     : $(date '+%Y-%m-%d %H:%M:%S')"
echo "Current user      : $(whoami)"

if [ "$(uname)" = "Darwin" ]; then
    # Для macOS
    echo "Operating system  : $(sw_vers -productName) $(sw_vers -productVersion)"
    echo "CPU model         : $(sysctl -n machdep.cpu.brand_string)"
    echo "Memory info       : $(vm_stat | grep 'free' | head -1)"
else
    # Для Linux
    echo "Operating system  : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '\"')"
    echo "Memory info       : $(free -h | grep Mem)"
fi

echo "Disk usage        : $(df -h / | awk 'NR==2 {print $3 " used"}')"
echo "Available space   : $(df -h / | awk 'NR==2 {print $4 " free"}')"
echo "====================================="
} | tee -a "$LOG_FILE"
