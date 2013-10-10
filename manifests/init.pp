class motd (
  $motd    = '/etc/motd',
  $headers = false,
) {

  concat { $motd:
    owner => root,
    group => root,
    mode  => '0644',
  }

  # Add base info if necessary
  if($headers)
  {
    concat::fragment{'motd_header':
      target  => $motd,
      content => template('motd/header.erb'),
      order   => 01,
    }
  }

}

