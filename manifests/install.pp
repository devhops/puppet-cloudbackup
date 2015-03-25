# Configures repos and things for clouddrive install
class cloudbackup::install {
  file { '/etc/apt/sources.list.d/driveclient.list':
  source => 'puppet://puppet:/site-modules/photoventureuk/files/driveclient.list',
  ensure => present;
      '/etc/apt/trusted.gpg':
  source => 'puppet://puppet:/site-modules/photoventureuk/files/trusted.gpg',
  }
  
  exec { '/usr/bin/apt-get update':
     alias       => 'updatedrivecloud',
     require     => [ File['/etc/apt/sources.list.d/driveclient.list'], File['/etc/apt/trusted.gpg'] ],
     subscribe   => [ File['/etc/apt/sources.list.d/driveclient.list'], File['/etc/apt/trusted.gpg'] ],
     refreshonly => true;
}

  package {'driveclient':
    ensure  => latest,
    require => Exec['updatedrivecloud'];
  }

  exec {'driveclient --configure':
    command     => "/usr/local/bin/driveclient --configure -u ${cloudbackup::username} -k ${cloudbackup::api_key}",
    unless			=> "/bin/grep IsRegistered /etc/driveclient/bootstrap.json | /bin/grep -q true",	
  }
}
