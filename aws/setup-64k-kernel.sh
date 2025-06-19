sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:canonical-kernel-team/proposed -y
sudo apt-get update
sudo apt install -y linux-aws-64k
echo "GRUB_FLAVOUR_ORDER=linux-aws-64k" | sudo tee /etc/default/grub.d/local-order.cfg
sudo update-grub
sudo reboot

