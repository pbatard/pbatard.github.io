core.img was created from the latest git source on 2018.06.12 from
  git://git.savannah.gnu.org/grub.git
on a Debian Stretch x64 system using the commands:
  ./autogen.sh
  # --enable-boot-time for Manjaro Linux
  ./configure --disable-nls --enable-boot-time
  make -j4
  cd grub-core
  ../grub-mkimage -v -O i386-pc -d. -p\(hd0,msdos1\)/boot/grub biosdisk part_msdos fat ntfs exfat -o core.img
