Script started on sön 22 nov 2015 18:47:18
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ cat /proc/swaps 
Filename				Type		Size	Used	Priority
/dev/sda5                               partition	522236	278908	-1
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ free -o
             total       used       free     shared    buffers     cached
Mem:        500988     345368     155620        864      14532     106416
Swap:       522236     278908     243328
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ ehco[K[K[Kcho "kenr[K[Krnel memory n ve[K[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[K
[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cn ever swapped ot[Kut"
kernel memory never swapped out
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ quotacheck
The program 'quotacheck' is currently not installed. You can install it by typing:
sudo apt-get install quota
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo apt-get install  quota
[sudo] password for fredrik: 
Reading package lists... 0%Reading package lists... 100%Reading package lists... Done
Building dependency tree... 0%Building dependency tree... 0%Building dependency tree... 1%Building dependency tree... 50%Building dependency tree... 50%Building dependency tree       
Reading state information... 0%Reading state information... 0%Reading state information... Done
Suggested packages:
  libnet-ldap-perl rpcbind portmap default-mta mail-transport-agent
The following NEW packages will be installed:
  quota
0 upgraded, 1 newly installed, 0 to remove and 186 not upgraded.
Need to get 542 kB of archives.
After this operation, 1 438 kB of additional disk space will be used.
0% [Working]            Get:1 http://se.archive.ubuntu.com/ubuntu/ trusty/main quota amd64 4.01-3 [542 kB]
            0% [1 quota 0 B/542 kB 0%]                          100% [Working]              Fetched 542 kB in 0s (2 290 kB/s)
Preconfiguring packages ...
Selecting previously unselected package quota.
(Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 169118 files and directories currently installed.)
Preparing to unpack .../quota_4.01-3_amd64.deb ...
Unpacking quota (4.01-3) ...
Processing triggers for ureadahead (0.100.0-16) ...
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...
Setting up quota (4.01-3) ...
Processing triggers for ureadahead (0.100.0-16) ...
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo apt-get install qquota[A]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ [11Pquotacheck
[K[A[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C
Bad number of arguments.
Utility for checking and repairing quota files.
quotacheck [-gucbfinvdmMR] [-F <quota-format>] filesystem|-a

-u, --user                check user files
-g, --group               check group files
-c, --create-files        create new quota files
-b, --backup              create backups of old quota files
-f, --force               force check even if quotas are enabled
-i, --interactive         interactive mode
-n, --use-first-dquot     use the first copy of duplicated structure
-v, --verbose             print more information
-d, --debug               print even more messages
-m, --no-remount          do not remount filesystem read-only
-M, --try-remount         try remounting filesystem read-only,
                          continue even if it fails
-R, --exclude-root        exclude root when checking all filesystems
-F, --format=formatname   check quota files of specific format
-a, --all                 check all filesystems
-h, --help                display this message and exit
-V, --version             display version information and exit

Bugs to jack@suse.cz
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ quotacheck -a
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ hi
    1  dd if/dev/zero of=/tmp/imagefile bs=1M count=250
    2  dd if=/dev/zero of=/tmp/imagefile bs=1M count=250
    3  sudo mkfs -t ext4 -v /tmp/imagefile 
    4  sudo mkfs -t ext4 -b 2048 -v /tmp/imagefile 
    5  sudo mkfs -t ext4 -b 4096 -v /tmp/imagefile 
    6  sudo mkdir /mnt/tempdir
    7  rmdir  /mnt/tempdir
    8  rm -fr   /mnt/tempdir
    9  mount | grep temp
   10  lsattr /mnt/tempdir
   11  sudo rm -fr   /mnt/tempdir
   12  sudo mkdir /mnt/tempdir
   13  sudo mount -o loop /tmp/imagefile /mnt/tempdir
   14  mount | grep tempdir
   15  sudo umount /mnt/tempdir
   16  sudo mount -o ro, loop /tmp/imagefile /mnt/tempdir
   17  ls
   18  cat /proc/swaps 
   19  free -o
   20  echo "kernel memory never swapped out"
   21  quotacheck
   22  sudo apt-get install quota
   23  quotacheck
   24  quotacheck -a
   25  hi
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ 
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ emacs [K[K[K[K[K /etc/fstab
[?1049h[?12;25h[?1h=[H[2J[23d[K[?1l>[?12l[?25h[?1049l[39;49m[?1049h[?12;25h[?1h=[H[2J[22d[?25l[7m-UUU:----F1  [0m[39;49m[27m[7m[1m*scratch*   [0m[39;49m[27m[7m   All L1     (Fundamental) ----------[0m[39;49m[27m
[A[2d[?12l[?25h[?12;25h[23d[?25lLoading 00debian-vars...[K[H
[?12l[?25h[?12;25h[23;25H[?25ldone[H
[?12l[?25h[?12;25h[23d[?25lce)...[K[H[7mFile Edit Options Buffers Tools Help                           [0m[39;49m[27m
[A
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[7m-UUU:----F1  [0m[39;49m[27m[7m[1m*scratch*   [0m[39;49m[27m[7m   All L1     (Fundamental) ----------[0m[39;49m[27m
[A
Loading /etc/emacs/site-start.d/50dictionaries-common.el (sour\
[A[2d[?12l[?25h[?12;25h[23d[?25l (source)...[Avar/cache/dictionaries-common/emacsen-ispell-dicts.el[H
[?12l[?25h[?12;25h[23d[?25lariable is void: debian-aspell-only-dictionary-alist[AError while loading 50dictionaries-common: Symbol's value as v[H
[?12l[?25h[?12;25h[>0c[23d[?25lariable is void: debian-aspell-only-dictionary-alist[K[H[7mFile Edit Options Buffers Tools Lisp-Interaction Help          [0m[39;49m[27m
[A
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[7m-UUU:----F1  [0m[39;49m[27m[7m[1m*scratch*   [0m[39;49m[27m[7m   All L1     (Lisp Interaction) -----[0m[39;49m[27m
[A
Error while loading 50dictionaries-common: Symbol's value as v\
[A[2d[?12l[?25h[?12;25h[23d[?25l-a.[K[AFor information about GNU Emacs and the GNU system, type C-h C[H
[?12l[?25h[?12;25h[23d[K[A[?25lNote: file is write protected[K[H
[?12l[?25h[?12;25h[23d[?25lNote: file is write protected[K[H[7mFile Edit Options Buffers Tools Conf Help                      [0m[39;49m[27m
[A
[31m# /etc/fstab: static file system information.                  [39;49m
[A
[31m#                                                              [39;49m
[A
[31m# Use 'blkid' to print the universally unique identifier for a[39;49m[K
[31m# device; this may be used with UUID= as a more robust way to [39;49m\
[A
[31mname devices                                                   [39;49m
[A
[31m# that works even if disks are added and removed. See fstab(5)[39;49m\
[A
[31m.                                                              [39;49m
[A
[31m#                                                              [39;49m
[A
[31m# <file system> <mount point>   <type>  <options>       <dump>[39;49m\
[A
[31m  <pass>                                                       [39;49m
[A
[31m# / was on /dev/sda1 during installation                       [39;49m
[A
[33mUUID=798f4bdd-c488-43ff-be84-4df0529d3226[39;49m /               ext4\
[A
    errors=remount-ro 0       1[K
[31m# swap was on /dev/sda5 during installation                    [39;49m
[A
[33mUUID=2c787c90-fcfd-439c-bef7-97e470052895[39;49m none            swap\
[A
    sw              0       0[K
[K
[K
[K
[K
[7m-UU-:%%--F1  [0m[39;49m[27m[7m[1mfstab       [0m[39;49m[27m[7m   All L1     (Conf[Space]) ----------[0m[39;49m[27m
[A[2d[?12l[?25h[?12;25h[23d[K[22;34H[?25l[7m2[0m[39;49m[27m[H

[?12l[?25h[?12;25h[22;34H[?25l[7m3[0m[39;49m[27m[4;1H[?12l[?25h[?12;25h[22;34H[?25l[7m4[0m[39;49m[27m[5;1H[?12l[?25h[?12;25h
[22;34H[?25l[7m5[0m[39;49m[27m[7;1H[?12l[?25h[?12;25h
[22;34H[?25l[7m6[0m[39;49m[27m[9;1H[?12l[?25h[?12;25h[22;34H[?25l[7m7[0m[39;49m[27m[10;1H[?12l[?25h[?12;25h
[22;34H[?25l[7m8[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[22;34H[?25l[7m9[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h
[23d[K[?1l>[?12l[?25h[?1049l[39;49m
[1]+  Stopped                 emacs -nw /etc/fstab
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ mount
/dev/sda1 on / type ext4 (rw,errors=remount-ro)
proc on /proc type proc (rw,noexec,nosuid,nodev)
sysfs on /sys type sysfs (rw,noexec,nosuid,nodev)
none on /sys/fs/cgroup type tmpfs (rw)
none on /sys/fs/fuse/connections type fusectl (rw)
none on /sys/kernel/debug type debugfs (rw)
none on /sys/kernel/security type securityfs (rw)
udev on /dev type devtmpfs (rw,mode=0755)
devpts on /dev/pts type devpts (rw,noexec,nosuid,gid=5,mode=0620)
tmpfs on /run type tmpfs (rw,noexec,nosuid,size=10%,mode=0755)
none on /run/lock type tmpfs (rw,noexec,nosuid,nodev,size=5242880)
none on /run/shm type tmpfs (rw,nosuid,nodev)
none on /run/user type tmpfs (rw,noexec,nosuid,nodev,size=104857600,mode=0755)
none on /sys/fs/pstore type pstore (rw)
systemd on /sys/fs/cgroup/systemd type cgroup (rw,noexec,nosuid,nodev,none,name=systemd)
gvfsd-fuse on /run/user/1000/gvfs type fuse.gvfsd-fuse (rw,nosuid,nodev,user=fredrik)
/home/fredrik/LFS201/ch10/imagefile on /home/fredrik/LFS201/ch10/mnt type ext4 (rw)
none on /mnt/tmpfs type tmpfs (rw)
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ quoa [K[Kt -a[K[K[Ka -a
quota: invalid option -- 'a'
quota: Usage: quota [-guqvswim] [-l | [-Q | -A]] [-F quotaformat]
	quota [-qvswim] [-l | [-Q | -A]] [-F quotaformat] -u username ...
	quota [-qvswim] [-l | [-Q | -A]] [-F quotaformat] -g groupname ...
	quota [-qvswugQm] [-F quotaformat] -f filesystem ...

-u, --user                display quota for user
-g, --group               display quota for group
-q, --quiet               print more terse message
-v, --verbose             print more verbose message
-s, --human-readable      display numbers in human friendly units (MB, GB...)
    --always-resolve      always try to translate name to id, even if it is
			  composed of only digits
-w, --no-wrap             do not wrap long lines
-p, --raw-grace           print grace time in seconds since epoch
-l, --local-only          do not query NFS filesystems
-Q, --quiet-refuse        do not print error message when NFS server does
                          not respond
-i, --no-autofs           do not query autofs mountpoints
-F, --format=formatname   display quota of a specific format
-f, --filesystem-list     display quota information only for given filesystems
-A, --nfs-all             display quota for all NFS mountpoints
-m, --no-mixed-pathnames  trim leading slashes from NFSv4 mountpoints
    --show-mntpoint       show mount point of the file system in output
    --hide-device         do not show file system device in output
-h, --help                display this help message and exit
-V, --version             display version information and exit

Bugs to: jack@suse.cz
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo quota
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo quota -a
quota: invalid option -- 'a'
quota: Usage: quota [-guqvswim] [-l | [-Q | -A]] [-F quotaformat]
	quota [-qvswim] [-l | [-Q | -A]] [-F quotaformat] -u username ...
	quota [-qvswim] [-l | [-Q | -A]] [-F quotaformat] -g groupname ...
	quota [-qvswugQm] [-F quotaformat] -f filesystem ...

-u, --user                display quota for user
-g, --group               display quota for group
-q, --quiet               print more terse message
-v, --verbose             print more verbose message
-s, --human-readable      display numbers in human friendly units (MB, GB...)
    --always-resolve      always try to translate name to id, even if it is
			  composed of only digits
-w, --no-wrap             do not wrap long lines
-p, --raw-grace           print grace time in seconds since epoch
-l, --local-only          do not query NFS filesystems
-Q, --quiet-refuse        do not print error message when NFS server does
                          not respond
-i, --no-autofs           do not query autofs mountpoints
-F, --format=formatname   display quota of a specific format
-f, --filesystem-list     display quota information only for given filesystems
-A, --nfs-all             display quota for all NFS mountpoints
-m, --no-mixed-pathnames  trim leading slashes from NFSv4 mountpoints
    --show-mntpoint       show mount point of the file system in output
    --hide-device         do not show file system device in output
-h, --help                display this help message and exit
-V, --version             display version information and exit

Bugs to: jack@suse.cz
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo quota -a[Ku
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo quota -u[K[Kfredrik
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ df -hT
Filesystem     Type      Size  Used Avail Use% Mounted on
/dev/sda1      ext4      7,3G  3,9G  3,1G  56% /
none           tmpfs     4,0K     0  4,0K   0% /sys/fs/cgroup
udev           devtmpfs  235M  4,0K  235M   1% /dev
tmpfs          tmpfs      49M  936K   49M   2% /run
none           tmpfs     5,0M     0  5,0M   0% /run/lock
none           tmpfs     245M   76K  245M   1% /run/shm
none           tmpfs     100M   84K  100M   1% /run/user
/dev/loop1     ext4      976M  1,3M  908M   1% /home/fredrik/LFS201/ch10/mnt
none           tmpfs     245M     0  245M   0% /mnt/tmpfs
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ ls
readme.txt
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ less readme.txt 
[?1049h[?1h=Script started on sön 22 nov 2015 18:47:18
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ cat /proc/swaps 
Filename                                Type            Size
    Used    Priority
/dev/sda5                               partition       522236
  278908  -1
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ free -o
             total       used       free     shared    buffers      cached
Mem:        500988     345368     155620        864      14532      106416
Swap:       522236     278908     243328
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ ehc[7mESC[27m[[7mESC[27m[[7mESC[27m[Kcho "ken[7mESC[27m[[7mESC[27m[Krn el memory n [7m^M[27mv[7mESC[27m[K[7m^MESC[27m[K[7mESC[27m[A[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m [C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m [C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[K
[7mreadme.txt[27m[K[K[?1l>[?1049l]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ exit
There are stopped jobs.
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ fg
emacs -nw /etc/fstab
[?1049h[?12;25h[?1h=[23;1H[K[H[?25l[7mFile Edit Options Buffers Tools Conf Help                      [0m[39;49m[27m
[A
[31m# /etc/fstab: static file system information.                  [39;49m
[A
[31m#                                                              [39;49m
[A
[31m# Use 'blkid' to print the universally unique identifier for a[39;49m[K
[31m# device; this may be used with UUID= as a more robust way to [39;49m\
[A
[31mname devices                                                   [39;49m
[A
[31m# that works even if disks are added and removed. See fstab(5)[39;49m\
[A
[31m.                                                              [39;49m
[A
[31m#                                                              [39;49m
[A
[31m# <file system> <mount point>   <type>  <options>       <dump>[39;49m\
[A
[31m  <pass>                                                       [39;49m
[A
[31m# / was on /dev/sda1 during installation                       [39;49m
[A
[33mUUID=798f4bdd-c488-43ff-be84-4df0529d3226[39;49m /               ext4\
[A
    errors=remount-ro 0       1[K
[31m# swap was on /dev/sda5 during installation                    [39;49m
[A
[33mUUID=2c787c90-fcfd-439c-bef7-97e470052895[39;49m none            swap\
[A
    sw              0       0[K
[K
[K
[K
[K
[7m-UU-:%%--F1  [0m[39;49m[27m[7m[1mfstab       [0m[39;49m[27m[7m   All L9     (Conf[Space]) ----------[0m[39;49m[27m
[A[14d[?12l[?25h[?12;25h[23d[?25l(No files need saving)[14;1H[?12l[?25h[?12;25h[23d[K[?1l>[?12l[?25h[?1049l[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ fg
bash: fg: current: no such job
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ ls
readme.txt
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ less readme.txt 
[?1049h[?1h=Script started on sön 22 nov 2015 18:47:18
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ cat /proc/swaps 
Filename                                Type            Size
    Used    Priority
/dev/sda5                               partition       522236
  278908  -1
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ free -o
             total       used       free     shared    buffers      cached
Mem:        500988     345368     155620        864      14532      106416
Swap:       522236     278908     243328
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ ehc[7mESC[27m[[7mESC[27m[[7mESC[27m[Kcho "ken[7mESC[27m[[7mESC[27m[Krn el memory n [7m^M[27mv[7mESC[27m[K[7m^MESC[27m[K[7mESC[27m[A[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m [C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m [C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[K
[7mreadme.txt[27m[K[K[7m^MESC[27m[K[7mESC[27m[A[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m [C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m [C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C[7mESC[27m[C
[7mESC[27m[C[7mESC[27m[Cn [7m^M[27mever swapped o[7mESC[27m[Kut"
kernel memory never swapped out
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ quotacheck
The program 'quotacheck' is currently not installed. You can in stall it by typing:
sudo apt-get install quota
[7mESC[27m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[7m^G[27mfredrik@fredri k-VirtualBox:~/LFS201/ch13$ sudo apt-get install  [7m^M[27mquota
[sudo] password for fredrik: 
[7m^M[27mReading package lists... 0%[7m^M^M[27mReading package lists... 100%
[7m^M^M[27mReading package lists... Done[7m^M[27m
[7m^M[27mBuilding dependency tree... 0%[7m^M^M[27mBuilding dependency tree...  0%[7m^M^M[27mBuilding dependency tree... 1%[7m^M^M[27mBuilding dependency tr ee... 50%[7m^M^M[27mBuilding dependency tree... 50%[7m^M^M[27mBuilding depend ency tree       [7m^M[27m
[7m^M[27mReading state information... 0%[7m^M^M[27mReading state information. :[K[K.. 0%[7m^M^M[27mReading state information... Done[7m^M[27m
Suggested packages:
  libnet-ldap-perl rpcbind portmap default-mta mail-transport-a gent
The following NEW packages will be installed:
  quota
0 upgraded, 1 newly installed, 0 to remove and 186 not upgraded .
Need to get 542 kB of archives.
After this operation, 1 438 kB of additional disk space will be  used.
[7m^M^M[27m0% [Working][7m^M[27m            [7m^M[27mGet:1 http://se.archive.ubuntu. com/ubuntu/ trusty/main quota amd64 4.01-3 [542 kB]
[7m^M[27m            [7m^M[27m0% [1 quota 0 B/542 kB 0%][7m^M[27m                           [7m^M[27m100% [Working][7m^M[27m              [7m^M[27mFetched 542 kB in 0s ( 2 290 kB/s)
Preconfiguring packages ...
Selecting previously unselected package quota.
(Reading database ... [7m^M[27m(Reading database ... 5%[7m^M[27m(Reading data base ... 10%[7m^M[27m(Reading database ... 15%[7m^M[27m(Reading database ...  20%[7m^M[27m(Reading database ... 25%[7m^M[27m(Reading database ... 30%[7m^M[27m(Rea ding database ... 35%[7m^M[27m(Reading database ... 40%[7m^M[27m(Reading data :[K[K[?1l>[?1049l]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ [K]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ ls
readme.txt
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ ema[K[K er[K[Kreadme.txt 
[?1049h[?12;25h[?1h=[H[2J[22d[K[?1l>[?12l[?25h[?1049l[39;49m[?1049h[?12;25h[?1h=[H[2J[21d[?25l[7m-UUU:----F1  [0m[39;49m[27m[7m[1m*scratch*   [0m[39;49m[27m[7m   All L1     (Fundamental) ------------[0m[39;49m[27m
[A[2d[?12l[?25h[?12;25h[22d[?25lLoading 00debian-vars...[K[H
[?12l[?25h[?12;25h[22;25H[?25ldone[H
[?12l[?25h[?12;25h[22d[?25l)...[K[H[7mFile Edit Options Buffers Tools Help                             [0m[39;49m[27m
[A
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[7m-UUU:----F1  [0m[39;49m[27m[7m[1m*scratch*   [0m[39;49m[27m[7m   All L1     (Fundamental) ------------[0m[39;49m[27m
[A
Loading /etc/emacs/site-start.d/50dictionaries-common.el (source\
[A[2d[?12l[?25h[?12;25h[22d[?25lsource)...[Avar/cache/dictionaries-common/emacsen-ispell-dicts.el ([H
[?12l[?25h[?12;25h[22d[?25liable is void: debian-aspell-only-dictionary-alist[AError while loading 50dictionaries-common: Symbol's value as var[H
[?12l[?25h[?12;25h[>0c[22d[?25liable is void: debian-aspell-only-dictionary-alist[K[H[7mFile Edit Options Buffers Tools Lisp-Interaction Help            [0m[39;49m[27m
[A
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[K
[7m-UUU:----F1  [0m[39;49m[27m[7m[1m*scratch*   [0m[39;49m[27m[7m   All L1     (Lisp Interaction) -------[0m[39;49m[27m
[A
Error while loading 50dictionaries-common: Symbol's value as var\
[A[2d[?12l[?25h[?12;25h[22d[?25l.[K[AFor information about GNU Emacs and the GNU system, type C-h C-a[H
[?12l[?25h[?12;25h[22d[K[A[?25lLoading vc-git...[K[H
[?12l[?25h[?12;25h[21;18H[?25ldone[H
[?12l[?25h[?12;25h[22d[?25lLoading vc-git...done[K[H[7mFile Edit Options Buffers Tools Help                             [0m[39;49m[27m
[A
Script started on sön 22 nov 2015 18:47:18[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ cat /proc/swaps [31m^M[39;49m[K
Filename                                Type            Size    \
[A
Used    Priority[31m^M[39;49m[K
/dev/sda5                               partition       522236  \
[A
278908  -1[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ free -o[31m^M[39;49m[K
             total       used       free     shared    buffers  \
[A
   cached[31m^M[39;49m[K
Mem:        500988     345368     155620        864      14532  \
[A
   106416[31m^M[39;49m[K
Swap:       522236     278908     243328[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ ehco[31m^H^[[39;49m[K[31m^H^[[39;49m[K[31m^H^[[39;49m[Kcho "kenr[31m^H^[[39;49m[K[31m^[39;49m\
[A
[31mH^[[39;49m[Krnel memory n [31m^M[39;49mve[31m^H^[[39;49m[K[31m^M^[[39;49m[K[31m^[[39;49m[A[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m\
[A
[31m[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m\
[A
[31m[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m\
[A
[7m-UUU:----F1  [0m[39;49m[27m[7m[1mreadme.txt  [0m[39;49m[27m[7m   Top L1     (Text) -------------------[0m[39;49m[27m
[A[2d[?12l[?25h[?12;25h[22d[K[21;34H[?25l[7m2[0m[39;49m[27m[H

[?12l[?25h[?12;25h
[21;34H[?25l[7m3[0m[39;49m[27m[5;1H[?12l[?25h[?12;25h
[21;34H[?25l[7m4[0m[39;49m[27m[7;1H[?12l[?25h[?12;25h
[21;34H[?25l[7m5[0m[39;49m[27m[9;1H[?12l[?25h[?12;25h
[21;34H[?25l[7m6[0m[39;49m[27m[11;1H[?12l[?25h[?12;25h
[21;34H[?25l[7m7[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h
[21;34H[?25l[7m8[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;34H[?25l[7m9[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h
[17;64H


[H
[?25l   cached[31m^M[39;49m[K
Mem:        500988     345368     155620        864      14532  
   106416[31m^M[39;49m[K
Swap:       522236     278908     243328[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
VirtualBox:~/LFS201/ch13$ ehco[31m^H^[[39;49m[K[31m^H^[[39;49m[K[31m^H^[[39;49m[Kcho "kenr[31m^H^[[39;49m[K[31m^[39;49m
[31mH^[[39;49m[Krnel memory n [31m^M[39;49mve[31m^H^[[39;49m[K[31m^M^[[39;49m[K[31m^[[39;49m[A[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m\
[31m[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m
[31m[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m\
[31m[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[39;49m
[31m[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[K[31m^M[39;49m
[31m^M^[[39;49m[K[31m^[[39;49m[A[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m
[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m\
[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m\
[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m
[Cn [31m^M[39;49mever swapped ot[31m^H^[[39;49m[Kut"[31m^M[39;49m[K
kernel memory never swapped out[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-
VirtualBox:~/LFS201/ch13$ quotacheck[31m^M[39;49m[K[21;29H[7m 2%[0m[39;49m[27m[11;64H[?12l[?25h[?12;25h[21;34H[?25l[7m10[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h



[21;35H[?25l[7m1[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m2[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h
[1;20r[4;1H[9M[1;22r[2;1H[?25l[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C\
[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[K[31m^M[39;49m[K[12;1HThe program 'quotacheck' is currently not installed. You can ins\
[A
tall it by typing:[31m^M[39;49m[K
sudo apt-get install quota[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ sudo apt-get install  [31m^M[39;49mquota[31m^M[39;49m[K
[sudo] password for fredrik: [31m^M[39;49m[K
[31m^M[39;49mReading package lists... 0%[31m^M^M[39;49mReading package lists... 100%[31m^M[39;49m\
[A
[31m^M[39;49mReading package lists... Done[31m^M^M[39;49m[K
[31m^M[39;49mBuilding dependency tree... 0%[31m^M^M[39;49mBuilding dependency tree... \
[A[21;30H[7m4% L13[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m4[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;35H[?25l[7m5[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m6[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m8[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25l0%[31m^M^M[39;49mBuilding dependency tree... 1%[31m^M^M[39;49mBuilding dependency tree\
[A
... 50%[31m^M^M[39;49mBuilding dependency tree... 50%[31m^M^M[39;49mBuilding dependenc\
[A
y tree       [31m^M^M[39;49m[K
[31m^M[39;49mReading state information... 0%[31m^M^M[39;49mReading state information..\
[A
. 0%[31m^M^M[39;49mReading state information... Done[31m^M^M[39;49m[K
Suggested packages:[31m^M[39;49m[K
  libnet-ldap-perl rpcbind portmap default-mta mail-transport-ag\
[A
ent[31m^M[39;49m[K
The following NEW packages will be installed:[31m^M[39;49m[K[21;30H[7m5[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h

[21;35H[?25l[7m9[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h
[21;34H[?25l[7m20[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m1[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m2[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25l  quota[31m^M[39;49m[K
0 upgraded, 1 newly installed, 0 to remove and 186 not upgraded.\
[A
[31m^M[39;49m[K
Need to get 542 kB of archives.[31m^M[39;49m[K
After this operation, 1 438 kB of additional disk space will be \
[A
used.[31m^M[39;49m[K
[31m^M^M[39;49m0% [Working][31m^M[39;49m            [31m^M[39;49mGet:1 http://se.archive.ubuntu.c\
[A
om/ubuntu/ trusty/main quota amd64 4.01-3 [542 kB][31m^M[39;49m[K
[31m^M[39;49m            [31m^M[39;49m0% [1 quota 0 B/542 kB 0%][31m^M[39;49m                    \
[A[21;30H[7m7% L23[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m4[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m5[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m6[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m7[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m8[0m[39;49m[27m[A[?12l[?25h[?12;25h[2d[?25lThe following NEW packages will be installed:[31m^M[39;49m[K
  quota[31m^M[39;49m[K
0 upgraded, 1 newly installed, 0 to remove and 186 not upgraded.
[31m^M[39;49m[K
Need to get 542 kB of archives.[31m^M[39;49m[K
After this operation, 1 438 kB of additional disk space will be \
used.[31m^M[39;49m[K
[31m^M^M[39;49m0% [Working][31m^M[39;49m            [31m^M[39;49mGet:1 http://se.archive.ubuntu.c
om/ubuntu/ trusty/main quota amd64 4.01-3 [542 kB][31m^M[39;49m
[31m^M[39;49m            [31m^M[39;49m0% [1 quota 0 B/542 kB 0%][31m^M[39;49m                    \
[C[C    [31m^M[39;49m100% [Working][31m^M[39;49m              [31m^M[39;49mFetched 542 kB in 0s (2 \
290 kB/s)[31m^M[39;49m[K
Preconfiguring packages ...[31m^M[39;49m
Selecting previously unselected package quota.[31m^M[39;49m
(Reading database ... [31m^M[39;49m(Reading database ... 5%[31m^M[39;49m(Reading datab
ase ... 10%[31m^M[39;49m(Reading database ... 15%[31m^M[39;49m(Reading database ... 20\
%[31m^M[39;49m(Reading database ... 25%[31m^M[39;49m(Reading database ... 30%[31m^M[39;49m(Readin
g database ... 35%[31m^M[39;49m(Reading database ... 40%[31m^M[39;49m(Reading database\
 ... 45%[31m^M[39;49m(Reading database ... 50%[31m^M[39;49m(Reading database ... 55%[31m^M[39;49m[21;30H[7m9[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m9[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;34H[?25l[7m30[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m1[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h



[1;20r[2;1H[9M[1;22r[12;1H[?25l(Reading database ... 60%[31m^M[39;49m(Reading database ... 65%[31m^M[39;49m(Reading d\
[A
atabase ... 70%[31m^M[39;49m(Reading database ... 75%[31m^M[39;49m(Reading database ..\
[A
. 80%[31m^M[39;49m(Reading database ... 85%[31m^M[39;49m(Reading database ... 90%[31m^M[39;49m(Re\
[A
ading database ... 95%[31m^M[39;49m(Reading database ... 100%[31m^M[39;49m(Reading dat\
[A
abase ... 169118 files and directories currently installed.)[31m^M[39;49m[K
Preparing to unpack .../quota_4.01-3_amd64.deb ...[31m^M[39;49m[K
Unpacking quota (4.01-3) ...[31m^M[39;49m[K
Processing triggers for ureadahead (0.100.0-16) ...[31m^M[39;49m[K
Processing triggers for man-db (2.6.7.1-1ubuntu1) ...[31m^M[39;49m[K[21;29H[7m10[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h



[21;35H[?25l[7m2[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m3[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m4[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m5[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25lSetting up quota (4.01-3) ...[31m^M[39;49m[K
Processing triggers for ureadahead (0.100.0-16) ...[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ sudo apt-get install q[31m^M[39;49mquota[31m^[[39;49m[A[31m^M^[[39;49m]\
[A
0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-Vir\
[A
tualBox:~/LFS201/ch13$ [31m^[[39;49m[11Pquotacheck[31m^M[39;49m[K
[31m^M^[[39;49m[K[31m^[[39;49m[A[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m\
[A
[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m\
[A
[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m\
[A[21;30H[7m2% L36[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[21;35H[?25l[7m8[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h


[21;35H[?25l[7m9[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h

[1;20r[2;1H[9M[1;22r[12;1H[?25l[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^[[39;49m[C[31m^M[39;49m[K
Bad number of arguments.[31m^M[39;49m[K
Utility for checking and repairing quota files.[31m^M[39;49m[K
quotacheck [-gucbfinvdmMR] [-F <quota-format>] filesystem|-a[31m^M[39;49m[K
[31m^M[39;49m[K
-u, --user                check user files[31m^M[39;49m[K
-g, --group               check group files[31m^M[39;49m[K
-c, --create-files        create new quota files[31m^M[39;49m[K
-b, --backup              create backups of old quota files[31m^M[39;49m[K[21;30H[7m4[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;34H[?25l[7m40[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[21;35H[?25l[7m1[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;35H[?25l[7m2[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m3[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;35H[?25l[7m4[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m5[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m6[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25l-f, --force               force check even if quotas are enabled\
[A
[31m^M[39;49m[K
-i, --interactive         interactive mode[31m^M[39;49m[K
-n, --use-first-dquot     use the first copy of duplicated struc\
[A
ture[31m^M[39;49m[K
-v, --verbose             print more information[31m^M[39;49m[K
-d, --debug               print even more messages[31m^M[39;49m[K
-m, --no-remount          do not remount filesystem read-only[31m^M[39;49m[K
-M, --try-remount         try remounting filesystem read-only,[31m^M[39;49m[K[21;30H[7m6% L48[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m9[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;34H[?25l[7m50[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m1[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m2[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m3[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m4[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25l                          continue even if it fails[31m^M[39;49m[K
-R, --exclude-root        exclude root when checking all filesys\
[A
tems[31m^M[39;49m[K
-F, --format=formatname   check quota files of specific format[31m^M[39;49m[K
-a, --all                 check all filesystems[31m^M[39;49m[K
-h, --help                display this message and exit[31m^M[39;49m[K
-V, --version             display version information and exit[31m^M[39;49m[K
[31m^M[39;49m[K
Bugs to jack@suse.cz[31m^M[39;49m[K[21;30H[7m7% L55[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m6[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m7[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m8[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;35H[?25l[7m9[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;34H[?25l[7m60[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m1[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m2[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25l[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ quotacheck -a[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
[A
VirtualBox:~/LFS201/ch13$ hi[31m^M[39;49m[K
    1  dd if/dev/zero of=/tmp/imagefile bs=1M count=250[31m^M[39;49m[K
    2  dd if=/dev/zero of=/tmp/imagefile bs=1M count=250[31m^M[39;49m[K
    3  sudo mkfs -t ext4 -v /tmp/imagefile [31m^M[39;49m[K
    4  sudo mkfs -t ext4 -b 2048 -v /tmp/imagefile [31m^M[39;49m[K
    5  sudo mkfs -t ext4 -b 4096 -v /tmp/imagefile [31m^M[39;49m[K[21;30H[7m9% L63[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m4[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m5[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;35H[?25l[7m6[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m8[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m9[0m[39;49m[27m[A[?12l[?25h[?12;25h[1;20r[2;1H[9M[1;22r[12;1H[?25l    6  sudo mkdir /mnt/tempdir[31m^M[39;49m[K
    7  rmdir  /mnt/tempdir[31m^M[39;49m[K
    8  rm -fr   /mnt/tempdir[31m^M[39;49m[K
    9  mount | grep temp[31m^M[39;49m[K
   10  lsattr /mnt/tempdir[31m^M[39;49m[K
   11  sudo rm -fr   /mnt/tempdir[31m^M[39;49m[K
   12  sudo mkdir /mnt/tempdir[31m^M[39;49m[K
   13  sudo mount -o loop /tmp/imagefile /mnt/tempdir[31m^M[39;49m[K
   14  mount | grep tempdir[31m^M[39;49m[K
[7m21% L70[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m1[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[21;35H[?25l[7m2[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;35H[?25l[7m3[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m4[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;35H[?25l[7m5[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m6[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m8[0m[39;49m[27m[A[?12l[?25h[?12;25h[2d[?25l    6  sudo mkdir /mnt/tempdir[31m^M[39;49m
    7  rmdir  /mnt/tempdir[31m^M[39;49m[K
    8  rm -fr   /mnt/tempdir[31m^M[39;49m[K
    9  mount | grep temp[31m^M[39;49m[K
   10  lsattr /mnt/tempdir[31m^M[39;49m[K[7;4H11  sudo rm -fr   /mnt/tempdir[31m^M[39;49m[K[8;4H12  sudo mkdir /mnt/tempdir[31m^M[39;49m[K[9;4H13  sudo mount -o loop /tmp/imagefile /mnt/tempdir[31m^M[39;49m[10;4H14  mount | grep tempdir[31m^M[39;49m[K[11;4H15  sudo umount /mnt/tempdir[31m^M[39;49m[K[12;4H16  sudo mount[27@ -o ro, loop /tmp/imagefile[13;4H17  ls[31m^M[39;49m[K[14;4H18  cat /proc/swaps [31m^M[39;49m[K[15;4H19  free -o[31m^M[39;49m[K[16;4H20  echo "kernel memory never swapped out"[31m^M[39;49m[17;4H21  quotacheck[31m^M[39;49m[K[18;4H22  sudo apt-get install quota[31m^M[39;49m[19;4H23  quotacheck[31m^M[39;49m[K[20;4H24  quotacheck -a[31m^M[39;49m[K[21;30H[7m2% L79[0m[39;49m[27m[11;1H[?12l[?25h[?12;25h[21;34H[?25l[7m80[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m1[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[21;35H[?25l[7m2[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;35H[?25l[7m3[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m4[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;35H[?25l[7m5[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;35H[?25l[7m6[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m8[0m[39;49m[27m[A[?12l[?25h[?12;25h[2;4H[?25l16  sudo mount[27@ -o ro, loop /tmp/imagefile[3;4H17  ls[31m^M[39;49m[K[4;4H18  cat /proc/swaps [31m^M[39;49m[K[5;4H19  free -o[31m^M[39;49m[K[6;4H20  echo "kernel memory never swapped out"[31m^M[39;49m[7;4H21  quotacheck[31m^M[39;49m[K[8;4H22  sudo apt-get install quota[31m^M[39;49m[9;4H23  quotacheck[31m^M[39;49m[K[10;4H24  quotacheck -a[31m^M[39;49m[K[11;4H25  hi[31m^M[39;49m[K
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
VirtualBox:~/LFS201/ch13$ [31m^M[39;49m
[31m^[[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13[31m^G[39;49mfredrik@fredrik-\
VirtualBox:~/LFS201/ch13$ emacs [31m^H^[[39;49m[K[31m^H^[[39;49m[K[31m^H^[[39;49m[K[31m^H^[[39;49m[K[31m^H^[[39;49m[K /\
etc/fs[31m^G[39;49mtab[31m^M[39;49m[K
[31m^[[39;49m[?1049h[31m^[[39;49m[?12;25h[31m^[[39;49m[?1h[31m^[[39;49m=[31m^[[39;49m[H[31m^[[39;49m[2J[31m^[[39;49m[23d[31m^[[39;49m[K[31m^[[39;49m[?1l[31m^[[39;49m>[31m^[[39;49m[?12l[31m^[39;49m\
[31m[[39;49m[?25h[31m^[[39;49m[?1049l[31m^[[39;49m[39;49m[31m^M^[[39;49m[?1049h[31m^[[39;49m[?12;25h[31m^[[39;49m[?1h[31m^[[39;49m=[31m^[[39;49m[H[31m^[[39;49m[2J[31m^[39;49m\
[31m[[39;49m[22d[31m^[[39;49m[?25l[31m^[[39;49m[7m-UUU:----F1  [31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^[[39;49m[7m[31m^[[39;49m[1m*scr\
atch*   [31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^[[39;49m[7m   All L1     (Fundamental) ---\
[21;30H[7m4% L89[0m[39;49m[27m[11;1H[?12l[?25h[?12;25h[21;34H[?25l[7m90[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m1[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h

[21;35H[?25l[7m2[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[17;64H


[1;20r[2;1H[9M[1;22r[12;1H[?25l-------[31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^M[39;49m[K
[31m^[[39;49m[A[31m^[[39;49m[2d[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23d[31m^[[39;49m[?25lLoading 00debian-v\
[A
ars...[31m^[[39;49m[K[31m^[[39;49m[H[K
[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23;25H[31m^[[39;49m[?25ldone[31m^[[39;49m[H[K
[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23d[31m^[[39;49m[?25lce)...[31m^[[39;49m[K[31m^[[39;49m[H[31m^[[39;49m[7mFile Edi\
[A
t Options Buffers Tools Help                           [31m^[[39;49m[0m[31m^[[39;49m[3\
[A
9;49m[31m^[[39;49m[27m[31m^M[39;49m[K
[31m^[[39;49m[A[K
[31m^[[39;49m[K[K[21;30H[7m5[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m3[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h
[21;35H[?25l[7m4[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;35H[?25l[7m5[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h

[21;35H[?25l[7m6[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;35H[?25l[7m7[0m[39;49m[27m[A[?12l[?25h[?12;25h[2d[?25latch*   [31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^[[39;49m[7m   All L1     (Fundamental) ---\
-------[31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^M[39;49m[K
[31m^[[39;49m[A[31m^[[39;49m[2d[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23d[31m^[[39;49m[?25lLoading 00debian-v\
ars...[31m^[[39;49m[K[31m^[[39;49m[H[K
[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23;25H[31m^[[39;49m[?25ldone[31m^[[39;49m[H[K
[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23d[31m^[[39;49m[?25lce)...[31m^[[39;49m[K[31m^[[39;49m[H[31m^[[39;49m[7mFile Edi\
t Options Buffers Tools Help                           [31m^[[39;49m[0m[31m^[[39;49m[3
9;49m[31m^[[39;49m[27m[31m^M[39;49m[K
[31m^[[39;49m[A[K
[31m^[[39;49m[K[K
[31m^[[39;49m[K[K
K[K
[31m^[[39;49m[K[K
K[K
K[K
[31m^[[39;49m[K[K
[31m^[[39;49m[K[K
K[21;30H[7m6% L98[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;35H[?25l[7m9[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[21;34H[?25l[7m100[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;36H[?25l[7m1[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;36H[?25l[7m2[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;36H[?25l[7m3[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;36H[?25l[7m4[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;36H[?25l[7m5[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;36H[?25l[7m6[0m[39;49m[27m[A[?12l[?25h[?12;25h[2d[?25l[31m^[[39;49m[K[K
[31m^[[39;49m[K[K
K[K
[31m^[[39;49m[K[K
K[K
K[K
[31m^[[39;49m[K[K
[31m^[[39;49m[K[K
K[20;4H7m-UUU:----F1  [31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^[[39;49m[7m[31m^[[39;49m[1m*scratch*   [31m^[[39;49m[0\
[21;30H[7m8% L107[0m[39;49m[27m[11;1H[?12l[?25h[?12;25h[21;36H[?25l[7m8[0m[39;49m[27m[12;1H[?12l[?25h[?12;25h[21;36H[?25l[7m9[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[21;35H[?25l[7m10[0m[39;49m[27m[14;1H[?12l[?25h[?12;25h[21;36H[?25l[7m1[0m[39;49m[27m[15;1H[?12l[?25h[?12;25h[21;36H[?25l[7m2[0m[39;49m[27m[16;1H[?12l[?25h[?12;25h[21;36H[?25l[7m3[0m[39;49m[27m[17;1H[?12l[?25h[?12;25h[21;36H[?25l[7m4[0m[39;49m[27m[18;1H[?12l[?25h[?12;25h[21;36H[?25l[7m5[0m[39;49m[27m[19;1H[?12l[?25h[?12;25h[21;36H[?25l[7m6[0m[39;49m[27m[A[?12l[?25h[?12;25h[10;4H[?25l7m-UUU:----F1  [31m^[[39;49m[0m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^[[39;49m[7m[31m^[[39;49m[1m*scratch*   [31m^[[39;49m[0\
m[31m^[[39;49m[39;49m[31m^[[39;49m[27m[31m^[[39;49m[7m   All L1     (Fundamental) ----------[31m^[[39;49m[0m\
[12;4H39;49m[31m^[[39;49m[27m[31m^M[39;49m[13;4HA
Loading /etc/emacs/site-start.d/50dictionaries-common.el (sour\[31m^[39;49m\
[31mM[39;49m[K[16;4HA[31m^[[39;49m[2d[31m^[[39;49m[?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23d[31m^[[39;49m[?25l (source)...[31m^[[39;49m[A[31m^H[39;49m\
[C[31mH^H[39;49mvar/cache/dictionaries-common/emacsen-ispell-dicts.el[31m^[[39;49m[H[18;4H?12l[31m^[[39;49m[?25h[31m^[[39;49m[?12;25h[31m^[[39;49m[23d[31m^[[39;49m[?25lariable is void: debian-asp\
ell-only-dictionary-alist[31m^M^[[39;49m[AError while loading 50dictionarie\
s-common: Symbol's value as v[31m^[[39;49m[H[K[11;1H[?12l[?25h[?12;25h
[21;36H[?25l[7m7[0m[39;49m[27m[13;1H[?12l[?25h[?12;25h[22d[?25l(No files need saving)[13;1H[?12l[?25h[?12;25h[22d[K[?1l>[?12l[?25h[?1049l[39;49m]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ scritps[K[K[Kpts lab1[K13.txt
No command 'scripts' found, did you mean:
 Command 'script' from package 'bsdutils' (main)
scripts: command not found
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ cat scripts lab13.txt[C[C[C[C[C[C[1P lab13.txt
Script started, file is lab13.txt
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ cat /proc/swaps
Filename				Type		Size	Used	Priority
/dev/sda5                               partition	522236	272616	-1
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ dd if=/dev/zero of [K=swpf ile bs=1M count=1024
1024+0 records in
1024+0 records out
1073741824 bytes (1,1 GB) copied, 6,3819 s, 168 MB/s
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ mkswap swp[Kapfile
swapfile: No such file or directory
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ mkswap swapfile[K[K[K[K[K[Kpfile 
Setting up swapspace version 1, size = 1048572 KiB
no label, UUID=a84b4c2e-6082-4bca-9987-424de248c6c6
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sduo[K[K[Kudo swapon swpfile 
[sudo] password for fredrik: 
Sorry, try again.
[sudo] password for fredrik: 
Sorry, try again.
[sudo] password for fredrik: 
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ cat /proc/swaps 
Filename				Type		Size	Used	Priority
/dev/sda5                               partition	522236	272616	-1
/home/fredrik/LFS201/ch13/swpfile       file		1048572	0	-2
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sudo swapoff swpfile
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ sdi[K[Kudo rm swpfile
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ cat /etc/fstab
# /etc/fstab: static file system information.
#
# Use 'blkid' to print the universally unique identifier for a
# device; this may be used with UUID= as a more robust way to name devices
# that works even if disks are added and removed. See fstab(5).
#
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
# / was on /dev/sda1 during installation
UUID=798f4bdd-c488-43ff-be84-4df0529d3226 /               ext4    errors=remount-ro 0       1
# swap was on /dev/sda5 during installation
UUID=2c787c90-fcfd-439c-bef7-97e470052895 none            swap    sw              0       0
]0;fredrik@fredrik-VirtualBox: ~/LFS201/ch13fredrik@fredrik-VirtualBox:~/LFS201/ch13$ mout[Knt
/dev/sda1 on / type ext4 (rw,errors=remount-ro)
proc on /proc type proc (rw,noexec,no