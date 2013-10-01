class motd (
   $motd = "/etc/motd"
) {

   concat { $motd:
     owner => root,
     group => root,
     mode  => '0644',
   }

   # Add base info
   concat::fragment{"motd_header":
     target  => $motd,
     content => template('motd/header.erb'),
     order   => 01,
   }

}

