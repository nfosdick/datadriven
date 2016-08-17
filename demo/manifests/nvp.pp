#
class demo::nvp {
  $nvp_config          = $::demo::nvp_config
  $nvp_config_defaults = $::demo::params::nvp_config_defaults

  $nvp_config_merged = deep_merge($nvp_config_defaults, $nvp_config)

  file { '/tmp/example.nvp':
    ensure  => file,
    content => template("${module_name}/nvp.erb"),
  }
}
