class systemd::params {

  case $facts['osfamily']
  {
    'redhat' :
    {
      case $facts['operatingsystemrelease']
      {
        /^7.*$/:
        {
        }
        default: { fail('Unsupported RHEL/CentOS version!')  }
      }
    }
    'debian' : { }
    default  : { fail('Unsupported OS!') }
  }
}
