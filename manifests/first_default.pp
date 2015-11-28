# make the default first
class grub::first_default{
  # so far this is only needed pre el7
  if ($::operatingsystem == 'CentOS') and versioncmp($::operatingsystemmajrelease,'7') < 0 {
    include ::grub::first_default::centos
  }
}
