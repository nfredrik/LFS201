set -x 
ping -c 1 -W 1 localhost

sysctl net.ipv4.icmp_echo_ignore_all=1

ping -c 1 -W 1 localhost


sysctl net.ipv4.icmp_echo_ignore_all=0

ping -c 1 -W 1 localhost

# Do the some on /etc/sysctl.conf  and sysctl -p

