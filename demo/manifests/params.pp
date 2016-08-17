#
class demo::params {

  $nvp_config_defaults = {
                          'acceptCount'          => '100',
                          'connectionTimeout'    => '20000',
                          'executor'             => 'tomcatThreadPool',
                          'maxKeepAliveRequests' => '15',
  }

  $yaml_config_defaults = {
    'systemLog' =>
    {
      'destination' => 'file',
      'path'        => '/var/log/mongo/service.log',
      'logAppend'   => true,
    },
    'processManagement' =>
    {
      'fork'        => true,
      'pidFilePath' => '/var/run/mongo/service.pid'
    },
    'net' =>
    {
      'bindIp' => '0.0.0.0',
      'port'   => '27017',
      'http'   => { 'enabled' => false }
    }
  }

  $ini_config_defaults = {
    'systemLog' =>
    {
      'destination' => 'file',
      'path'        => '/var/log/mongo/service.log',
      'logAppend'   => true,
    },
    'processManagement' =>
    {
      'fork'        => true,
      'pidFilePath' => '/var/run/mongo/service.pid',
    },
    'net' =>
    {
      'bindIp' => '0.0.0.0',
      'port'   => '27017',
    }
  }

} 
