hostname=$(hostname); number=$(echo "$hostname" | sed 's/tj_host-//'); ip_address="30.1.1.$number/24"; ip addr add $ip_address dev eth1