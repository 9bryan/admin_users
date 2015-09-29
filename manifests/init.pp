class admin_users (
  $userlist = [ 'temp' ]
){

  case $::osfamily {
    'RedHat': {
      user { $userlist:
        ensure     => present,
        password   => '$1$v4K9E8Wj$gZIHJ5JtQL5ZGZXeqSSsd0',
        groups     => ['wheel'],
        managehome => true,
      }
    }

    'windows': {
      user { $userlist:
        ensure   => present,
        password => 'puppet',
        groups   => ['Administrators'],
      }
    }
  }

}
