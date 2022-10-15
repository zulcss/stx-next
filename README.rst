What you will need on debian bullseye:

newer systemd:
sudo apt-get install -y systemd/bullseye-backports

newer systemd-container
sudo apt-get install -y systemd-container/bullseye-backports

newer mkosi
sudo apt-get install -y mkosi/bullsye-backports

To build a base image:

make all
