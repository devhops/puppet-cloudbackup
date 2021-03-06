puppet-cloudbackup
==================

Rackspace Cloud Backup Puppet Module
Debian version, forked from https://github.com/avatarnewyork/puppet-cloudbackup

## Module Installation

* Add the 'cloudbackup' folder into your module path
* Include the class and configure the relevant variables for your Rackspace Cloud Backup account:
* __username__ - your rackspace cloud username
* __api_key__ - found under Your Account > API Access here: https://manage.rackspacecloud.com/APIAccess.do

### EXAMPLE

```ruby
class { 'cloudbackup':
username => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
api_key  => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
}
```

### Build Status
The build should satisfy the following:

* puppet-lint tests
* rspec tests defined under the rspec dir

The current status is: 

[![Build Status](https://secure.travis-ci.org/avatarnewyork/puppet-cloudbackup.png?branch=master)](http://travis-ci.org/avatarnewyork/puppet-cloudbackup)
