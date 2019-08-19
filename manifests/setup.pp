# @summary Setup chasquid
class chasquid::setup {
  $chasquid::domains.each |$domain| {
    file { "${chasquid::config_directory}/domains/${domain}":
      ensure => 'directory',
    }
  }
}
