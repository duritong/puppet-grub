# make the default first
class grub::first_default{
  case $::operatingsystem {
    centos,redhat,fedora: {
      # so far this is only needed pre el7
      if $::operatingsystemmajrelease < 7 {
        include grub::first_default::centos
      }
    }
    debian: { /* this is not needed on debian based systems */ }
    default: { info("No grub lense so far for ${::operatingsystem}")}
  }
}
