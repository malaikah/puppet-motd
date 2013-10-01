# Motd Module

This module will install a motd which is pluggable with other puppet module

## Usage

### Minimal configuration

```puppet
class { motd: }
```
This will do the typical install, using /etc/motd

### More configuration

```puppet
class { motd: 
  motd => '/etc/my_motd_file',
}
```

### Register a module

```puppet
motd::register { 'DHCP Server': }
```

## Limitations

* This module has been tested on Debian Wheezy, Squeeze.

## License

All the code is freely distributable under the terms of the LGPLv3 license.

## Contact

Need help ? contact@alkivi.fr

## Support

Please log tickets and issues at our [Github](https://github.com/alkivi-sas/)
