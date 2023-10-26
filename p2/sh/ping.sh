hostname=$(hostname)
number=$(echo "$hostname" | sed 's/tj_host-//')
remote=$((3-$number))
ip_remote="30.1.1.$remote"
ping -c 3 $ip_remote