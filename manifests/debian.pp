class grub::debian inherits grub::base {
  package{'grub-common':
    ensure => installed,
    require => Package['grub'],
  }
}
