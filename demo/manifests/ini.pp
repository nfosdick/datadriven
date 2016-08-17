#
class demo::ini {
  $ini_config          = $::demo::ini_config
  $ini_config_defaults = $::demo::params::ini_config_defaults

  $ini_config_merged = deep_merge($ini_config_defaults, $ini_config)

  file { '/tmp/example.ini':
    ensure  => file,
    content => template("${module_name}/ini.erb"),
  }
}
