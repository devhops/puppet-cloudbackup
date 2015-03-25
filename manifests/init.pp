import '*'
# class to install clouddrive for Debian Rackspace servers
class cloudbackup($username, $apikey){
  class {'cloudbackup::install':}
  class {'cloudbackup::service':}
}
