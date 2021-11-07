class role::puppet::db {

  include profile::base

  # puppetdb can't detect correct version of postgresql through dfn
  class { 'puppetdb::database::postgresql':
    manage_package_repo => false,
  }

  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }

  # class { 'postgresql::globals':
  #   manage_package_repo => true,
  #   version             => '9.6',
  # }

  # class { 'postgresql::server':
  # }

  # class { 'puppetdb::database::postgresql':
  #   listen_addresses => $::fqdn,
  # }

  # class { 'puppetdb::server':
  #   database_host => $::fqdn,
  # }

}

