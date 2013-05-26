# Public: Install JMeter
#
# Examples
#
#   include jmeter
class jmeter {
  include homebrew

  homebrew::formula { 'jmeter':
    before => Package['boxen/brews/jmeter'],
  }

  package { 'boxen/brews/jmeter':
    ensure => '2.9-boxen1',
  }
}
