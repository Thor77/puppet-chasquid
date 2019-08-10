# @summary Manage chasquid installation
class chasquid::install {
  package { $chasquid::package_name:
    ensure => $chasquid::package_version,
  }
}
