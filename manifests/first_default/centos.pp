# set first kernel as default
class grub::first_default::centos {
  augeas{'grub_first_default':
    context => '/files/boot/grub/menu.lst',
    changes => 'set default 0',
    onlyif  => 'get default != 0',
  }
}
