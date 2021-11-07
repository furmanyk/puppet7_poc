class profile::puppet::server (
  $puppetdb = 'puppetdb'
){

  # PuppetDB
  class { 'puppetdb::master::config':
    puppetdb_server => $puppetdb,
  }

}

