lsmod

ls /lib/modules/$(uname -r)

# cd /lib/modules/..../kernel/net/rionet.ko

sudo insmod rionet

lsmod

modinfo rionet

lsmod
