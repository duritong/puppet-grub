class grub::first_default::centos {
  require grub
  augeas{'grub_first_default':
    context => '/files/etc/grub.conf',
    changes => 'set default 0',
  }
}
