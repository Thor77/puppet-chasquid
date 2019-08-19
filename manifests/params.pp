# @summary Default parameters
class chasquid::params {
  $package_name = 'chasquid'
  $package_version = 'installed'
  $service_name = 'chasquid'
  $config_directory = '/etc/chasquid'
  $config_path = "${config_directory}/chasquid.conf"
}
