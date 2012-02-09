class grub::first_default{
  case $::operatingsystem {
    centos,redhat,fedora: { include grub::first_default::centos }
    debian: { /* this is not needed on debian based systems */ }
    default: { info("No grub lense so far for $operatingsystem")}
  }
}
