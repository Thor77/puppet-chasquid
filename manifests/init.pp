# @summary Chasquid module init class
# @param config [Hash] chasquid configuration
# @param package_name [String] name of the chasquid package
# @param package_version [String] target version/state of the chasquid package resource
# @param service_name [String] name of the chasquid service
# @param config_path [String] path to chasquid config file
class chasquid (
  Hash $config = {},
  String $package_name = $chasquid::params::package_name,
  String $package_version = $chasquid::params::package_version,
  String $service_name = $chasquid::params::service_name,
  String $config_path = $chasquid::params::config_path,
) inherits chasquid::params {
  contain chasquid::install
  contain chasquid::config
  contain chasquid::service
}
