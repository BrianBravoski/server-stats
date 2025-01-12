# Bash script to display server stats

echo '------Server Stats------'
echo "Logged in Users: "`who | wc -l`
echo "Current user: " `whoami` 
echo --------------------------
echo "Uptime:" `uptime`
echo ---------------------------
echo "Device and OS info"
hostnamectl
echo ---------------------------
echo "Top 5 Processes by CPU usage:" 
ps -eo pid,comm,%cpu --sort=-%cpu| head -n 6 
echo --------------------------
echo "Top 5 Processes by Memory usage:" 
ps -eo pid,comm,%mem --sort=-%mem| head -n 6 
echo --------------------------
echo "Memory usage"
free -m 
echo --------------------------
echo "Disk Usage"
free
echo -------------------------
echo "Failed logins"
faillog 
echo -------------------------