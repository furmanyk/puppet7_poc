class role::puppet::db {

  include profile::base

  class { 'puppetdb::database::postgresql':
    listen_addresses => $::fqdn,
  }

  class { 'puppetdb::server':
    database_host => $::fqdn,
  }

}

