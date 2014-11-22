# == Class: motd
#
# configures concat target file with, optionally, a header.
#
# == parameters
#
# [*motd*]
#  The path to our motd file
#
# [*headers*]
#  If true, create a header file at the top of the concatted motd file.
#  Defaults to false
#
# [*template*]
#  Template to use to create headers.
#  Defaults to a rather fetching graphic.
#
class motd (
  $motd     = '/etc/motd',
  $headers  = false,
  $template = 'motd/header.erb',
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
      content => template($template),
      order   => 01,
    }
  }

}

