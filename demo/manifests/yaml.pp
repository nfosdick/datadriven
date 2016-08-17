#
class demo::yaml {
  $yaml_config          = $::demo::yaml_config
  $yaml_config_defaults = $::demo::params::yaml_config_defaults

  $yaml_config_merged = deep_merge($yaml_config_defaults, $yaml_config)
  
  file { '/tmp/example.yaml':
    ensure  => file,
    content => template("${module_name}/yaml.erb"),
  }
}
