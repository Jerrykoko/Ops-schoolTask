vagrant ssh server1
sudo ip route del 208.86.224.90 via 192.168.100.10 dev enp0s8
sudo ip link set dev enp0s8 down
sudo ip link set dev enp0s8 up
