class openmrs{
  
  exec { 'add-mysql-startup':
    command => '/usr/sbin/update-rc.d mysql enable',
    timeout => 5000,
  }
  
  class { 'mysql::config':
     bind_address  => '10.0.2.17',     
   }

  exec { 'add-mysql-startup':
    command => '/usr/sbin/update-rc.d tomcat6 disable',
    timeout => 5000,
  }   
  exec { 'restart-tomcat':
    command => '/etc/init.d/tomcat6 stop',
    timeout => 5000,
  }

}
