class admin_users (
  $userlist = [ "temp" ]
){

  case $::osfamily {
    'RedHat': {
      user { $userlist:
        ensure     => present,
        groups     => ['wheel'],
        managehome => true,
      }
    }

    'windows': {
      user { $userlist:
        ensure   => present,
        groups   => ['Administrators'],
      }
    }
  }

}
