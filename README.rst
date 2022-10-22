What you will need on debian bullseye:

Enable IP forwarding if not already enabled
sysctl -w net.ipv4.ip_forward=1

newer systemd:
sudo apt-get install -y systemd/bullseye-backports

newer systemd-container
sudo apt-get install -y systemd-container/bullseye-backports

newer mkosi
sudo apt-get install -y mkosi/bullsye-backports

To build a base image:

make all
