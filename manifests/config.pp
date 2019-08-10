# @summary Manage chasquid configuration
class chasquid::config {
  file { $chasquid::config_path:
    ensure  => 'present',
    content => epp('chasquid/chasquid.conf.epp', {
      config => $chasquid::config,
    }),
  }
}
