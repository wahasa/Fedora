#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot xz-utils pulseaudio -y
#termux-setup-storage
fedora=36
build=1.5
   echo ""
   neofetch --ascii_distro Fedora -L
folder=fedora-fs
if [ -d "$folder" ]; then
        first=1
        echo "Skipping Downloading"
fi
tarball="fedora-rootfs.tar.xz"
if [ "$first" != 1 ];then
        if [ ! -f $tarball ]; then
                echo "Download Rootfs, this may take a while base on your internet speed."
                case `dpkg --print-architecture` in
                aarch64)
                        archurl="aarch64" ;;
                #arm*)
                #       archurl="armhfp" ;;
                #i386)
                        #archurl="x86" ;;
                x86_64)
                        archurl="x86_64" ;;
                *)
                        echo "Unknown Architecture"; exit 1 ;;
                esac
                wget -q --show-progress "https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/${fedora}/Container/${archurl}/images/Fedora-Container-Base-${fedora}-${build}.${archurl}.tar.xz" -O $tarball
        fi
        cur=`pwd`
        mkdir -p "$folder"
        mkdir -p $folder/binds
        cd "$folder"
        echo "Decompressing Rootfs, please be patient."
        #proot --link2symlink \
        #  tar --warning=no-unknown-keyword \
        #      --delay-directory-restore --preserve-permissions \
        #      -xpf ~/${tarball} -C ~/$folder/ --strip-components=1 --exclude json --exclude VERSION --exclude='dev'||:
        proot --link2symlink tar -xpf ${cur}/${tarball} --strip-components=1 --exclude json --exclude VERSION --exclude='dev'||:
        tar -xpf layer.tar ; rm layer.tar
        cd "$cur"
   fi
   echo "localhost" > ~/$folder/etc/hostname
   echo "127.0.0.1 localhost" > ~/"$folder"/etc/hosts
   echo "nameserver 8.8.8.8" > ~/"$folder"/etc/resolv.conf
bin=.fedora
linux=fedora
echo ""
echo "writing launch script"
cat > $bin <<- EOM
#!/data/data/com.termux/files/usr/bin/bash
cd \$(dirname \$0)
## Start pulseaudio
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
## Unset LD_PRELOAD in case termux-exec is installed
unset LD_PRELOAD
command="proot"
command+=" --kill-on-exit"
command+=" --link2symlink"
command+=" -0"
command+=" -r $folder"
if [ -n "\$(ls -A $folder/binds)" ]; then
   for f in $folder/binds/* ;do
     . \$f
   done
fi
command+=" -b /dev"
command+=" -b /dev/null:/proc/sys/kernel/cap_last_cap"
command+=" -b /dev/null:/proc/stat"
command+=" -b /dev/urandom:/dev/random"
command+=" -b /proc"
command+=" -b /proc/self/fd:/dev/fd"
command+=" -b /proc/self/fd/0:/dev/stdin"
command+=" -b /proc/self/fd/1:/dev/stdout"
command+=" -b /proc/self/fd/2:/dev/stderr"
command+=" -b /sys"
command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"
#command+=" -b $folder/tmp:/dev/shm"
command+=" -b $folder/root:/dev/shm"
## Uncomment the following line to have access to the home directory of termux
command+=" -b /data/data/com.termux"
#command+=" -b /data/data/com.termux/files/home:/root"
## Uncomment the following line to mount /sdcard directly to /
command+=" -b /sdcard"
command+=" -b /mnt"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/bin:/usr/bin:/sbin:/usr/sbin"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=\$TERM"
#command+=" LANG=C.UTF-8"
command+=" LANG=en_US.UTF-8"
command+=" LC_ALL=C"
command+=" LANGUAGE=en_US"
command+=" /bin/sh --login"
com="\$@"
if [ -z "\$1" ];then
   exec \$command
else
   #\$command -c "\$@"
   \$command -c "\$com"
fi
EOM
    echo ""
    echo "Fixing shebang of $linux"
    termux-fix-shebang $bin
    echo "Making $linux executable"
    chmod +x $bin
    echo "Fixing permissions for $linux"
    chmod -R 755 $folder
    echo "Removing image for some space"
    #rm $tarball
    echo "export PULSE_SERVER=127.0.0.1" >> $folder/etc/skel/.bashrc
    echo '#!/bin/bash
    bash .fedora' > $PREFIX/bin/$linux
    chmod +x $PREFIX/bin/$linux
    clear
    echo ""
    echo "Add Fedora Package,.."
    echo ""
echo "#!/bin/bash
touch ~/.hushlogin
dnf install dialog nano sudo ncurses tzdata -y
ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
cp ~/.bashrc .bashrc.bak ; cp /etc/skel/.bashrc .
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
     bash $bin
     sleep 2
echo 'PRETTY_NAME="Fedora 36 (Container Image)"
NAME="Fedora"
VERSION_ID=36
VERSION="36.1.5 (Container Image)"
ID=fedora
ANSI_COLOR="0;38;2;60;110;180"
HOME_URL="https://fedoraproject.org"
SUPPORT_URL="https://ask.fedoraproject.org"
BUG_REPORT_URL="https://bugzilla.redhat.com"
REDHAT_BUGZILLA_PRODUCT="Fedora"
REDHAT_BUGZILLA_PRODUCT_VERSION=36
REDHAT_SUPPORT_PRODUCT="Fedora"
REDHAT_SUPPORT_PRODUCT_VERSION=36
VARIANT="Container Image"
VARIANT_ID=container
LOGO=fedora-logo' > ~/"$folder"/etc/os-release
    clear
    echo ""
    echo "You can login to Fedora with 'fedora' script next time"
    echo ""
    #rm fedora36.sh
#
## Script edited by 'WaHaSa', Script revision-5.
##
