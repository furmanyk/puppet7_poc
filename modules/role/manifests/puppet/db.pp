class role::puppet::db {

  include profile::base

  class { 'puppetdb': }
  
  class { 'puppetdb::master::config': }

}

