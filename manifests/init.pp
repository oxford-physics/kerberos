class kerberos ( $krb5conf_location = $kerberos::params::krb5conf_location ,
                 $authorized_creds = $kerberos::params::authorized_creds ) inherits kerberos::params
{
    ensure_packages ( ["pam_krb5"]  )
    #Making it secret, it does give a few things away
    file { '/etc/krb5.conf':
      ensure  => present,
      source  => $krb5conf_location,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
    }
    
    kerberos::root_cred { $authorized_creds : }

}
