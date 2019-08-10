# @summary Manage chasquid service
class chasquid::service {
  service { $chasquid::service_name:
    ensure    => 'running',
    enable    => true,
    subscribe => File[$chasquid::config_path],
  }
}
