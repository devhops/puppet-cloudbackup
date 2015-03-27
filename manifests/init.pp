import '*'
# class to install clouddrive for Debian Rackspace servers
class cloudbackup($username, $api_key){
  class {'cloudbackup::install':}
  class {'cloudbackup::service':}
}
