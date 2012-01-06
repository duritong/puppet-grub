class grub::first_default::centos {
  require grub
  augeas{'grub_first_default':
    context => '/files/boot/grub/menu.lst',
    changes => 'set default 0',
    onlyif => 'get default != 0',
  }
}
