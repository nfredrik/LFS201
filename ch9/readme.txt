dd if=/dev/zero of=imagefile bs=1M count=1024
mkfs.ext4 imagefile
mkdir mntpoint
sudo mount -o loop imagefile mntpoint
sudo fdisk -C 130 imagefile
sudo losetup -f
sudo losetup /dev/loop1 imagefile
sudo losetup -a
sudo parted -s /dev/loop1 mklabel msdos
sudo parted -s /dev/loop1 unit MB mkpart primary ext4 0 256
sudo fdisk -l /dev/loop1
ls -l /dev/loop1*
sudo mkfs.ext2 /dev/loop1p1 
sudo mount /dev/loop1p1  mnt1/
df -Th
sudo umount mnt1
rmdir mnt1
sudo losetup -d /dev/loop1
