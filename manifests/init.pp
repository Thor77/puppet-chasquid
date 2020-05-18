# @summary Chasquid module init class
# @param config [Hash] chasquid configuration
# @param domains [Array] list of domains to create config directories for
# @param package_name [String] name of the chasquid package
# @param package_version [String] target version/state of the chasquid package resource
# @param service_name [String] name of the chasquid service
# @param config_path [String] path to chasquid config file
class chasquid (
  Hash $config,
  Array $domains,
  String $package_name,
  String $package_version,
  String $service_name,
  String $config_directory,
  String $config_path,
) {
  contain chasquid::install
  contain chasquid::config
  contain chasquid::service
  contain chasquid::setup
}
