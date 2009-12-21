class grub::first_default{
  case $operatingsystem {
    centos,redhat,fedora: { include grub::first_default::centos }
    default: { info("No grub lense so far for $operatingsystem")}
  }
}
