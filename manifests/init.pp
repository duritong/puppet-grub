class grub {
  case $::operatingsystem {
    debian,ubuntu: { include grub::debian }
    default: { include grub::base }
  }
}
