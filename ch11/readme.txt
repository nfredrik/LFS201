sudo mkdir /mnt/tmpfs
sudo mount -t tmpfs none /mnt/tmpfs
df -h /mnt/tmpfs
sudo mount -t tmpfs -o size=300M none /mnt/tmpfs
sudo umount /mnt/tmpfs
df -h /dev/shm
df -h | grep tmpfs
