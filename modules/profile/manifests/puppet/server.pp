class profile::puppet::server (
  $puppetdb = 'localhost'
){

  # PuppetDB
  class { 'puppetdb::master::config':
    puppetdb_server => $puppetdb,
  }

}

