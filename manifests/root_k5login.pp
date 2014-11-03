class kerberos::root_k5login {

       @concat {'/root/.k5login':
            owner => root,
            group => root,
             mode  => '0644',
            }
  }

