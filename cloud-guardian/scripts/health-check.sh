#!/usr/bin/env bash

echo "======================================"
echo "       CLOUD GUARDIAN MONITOR"
echo "======================================"
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo

echo "------ SYSTEM INFORMATION ------"

if command -v uptime >/dev/null 2>&1; then
    uptime
fi

echo
echo "------ CPU LOAD ------"

if [ -r /proc/loadavg ]; then
    cat /proc/loadavg
else
    echo "CPU load information is unavailable in this environment."
fi

echo
echo "------ MEMORY USAGE ------"

if command -v free >/dev/null 2>&1; then
    free -h
else
    echo "Memory statistics are unavailable in this environment."
fi

echo
echo "------ DISK USAGE ------"

if command -v df >/dev/null 2>&1; then
    df -h
else
    echo "Disk statistics are unavailable."
fi

echo
echo "Health check completed."
echo "======================================"
