define motd::register($content='', $order=10) {
  if($content == '')
  {
    $body = "    -- ${name}\n"
  }
  else
  {
    $body = $content
  }

  concat::fragment{"motd_fragment_${name}":
    target  => $motd::motd,
    content => $body,
  }
}
