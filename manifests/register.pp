# == Define: motd::register
#
# Can be used to add snippets to our motd file.
#
# == Parameters
#
# [*content*]
#  The content of our fragment.
#  Defaults to the name/title of the resource, prepended by '--'.
#  Useful for listing things like applied classes. 
#
# [*order*]
#  The order in which our fragment should appear in the target file.
#  Defaults to '10'.
#
define motd::register(
  $content = "    -- ${name}\n", 
  $order = '10',
) {

  include ::motd
  concat::fragment{"motd_fragment_${name}":
    target  => $motd::motd,
    content => $content,
    order   => $order,
  }
  
}
