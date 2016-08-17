#
class demo (
  $yaml_config = {},
  $nvp_config = {},
  $ini_config = {},
) inherits demo::params {

  include demo::yaml
  include demo::nvp
  include demo::ini
}
