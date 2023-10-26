hostname=$(hostname)
number=$(echo "$hostname" | sed 's/tj_routeur-//')
remote=$((3-$number))
ip_address="10.1.1.$number/24"
ip_remote="10.1.1.$remote/24"
ip addr add $ip_address dev eth0
ip link add name vxlan10 type vxlan id 10 dev eth0 local $ip_address remote $ip_remote dstport 4789
ip link set dev vxlan10 up
ip link add br0 type bridge
ip link set dev br0 up
brctl addif br0 eth1
brctl addif br0 vxlan10