define kerberos::root_cred($content="", $order=10) {

  if $name != 'undef' {
  include root_k5login
  realize Concat['/root/.k5login']
        concat::fragment{"$name":
          target  => "/root/.k5login",
          content => "$name\n",
        }
      }

}

