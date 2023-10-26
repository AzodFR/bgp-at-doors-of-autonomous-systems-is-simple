hostname=$(hostname)
number=$(echo "$hostname" | sed 's/tj_routeur-//')
ip_address="10.1.1.$number/24"
ip addr add $ip_address dev eth0
ip link add name vxlan10 type vxlan id 10 dev eth0 group 239.1.1.1 dstport 4789
ip link set dev vxlan10 up
ip link add br0 type bridge
ip link set dev br0 up
brctl addif br0 eth1
brctl addif br0 vxlan10