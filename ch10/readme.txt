
LUKS => Linux Unified Key Setup

cryptsetup
sudo apt-get install cryptsetup
sudo cryptsetup luksFormat /dev/sda4
sudo emacs -nw /etc/crypttab 
