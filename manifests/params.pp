class kerberos::params (){

   $krb5conf_location = hiera ("kerberos::params::krb5conf_location", "puppet:///site_files/pp_local/authconfig/krb5.conf")
   $authorized_creds = hiera_array ("kerberos::params::authorized_creds",[])
}
