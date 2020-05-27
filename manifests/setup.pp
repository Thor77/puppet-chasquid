# @summary Setup chasquid
class chasquid::setup {
  $chasquid::domains.each |$domain, $params| {
    $domain_directory = "${chasquid::config_directory}/domains/${domain}"
    file { $domain_directory:
      ensure => 'directory',
    }
    if $params['dkim_key'] and $params['dkim_selector'] {
      file { "${domain_directory}/dkim_privkey.pem":
        content => $params['dkim_key'],
      }
      file { "${domain_directory}/dkim_selector":
        content => $params['dkim_selector'],
      }
    }
  }
}
