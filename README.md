# JMeter Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-jmeter.png?branch=master)](https://travis-ci.org/boxen/puppet-jmeter)

## Usage

```puppet
include jmeter
```

You can specify a version:

``` puppet
class { 'jmeter': version => '3.00' }
```

...or in Hiera...

``` yaml
jmeter::version: '3.00'
```

## Required Puppet Modules

* `boxen`
* `stdlib`
* `homebrew`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
