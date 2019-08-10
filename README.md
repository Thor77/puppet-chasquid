# puppet-chasquid

Module to manage [chasquid](https://blitiri.com.ar/p/chasquid/)

## Usage

```puppet
class { 'chasquid':
    config => {
        ...
    }
}
```

## Limitations

* currently only Debian is supported
* no tests
