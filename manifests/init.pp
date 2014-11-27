# Public: Install JMeter
#
# Examples
#
#   include jmeter
#
#       or
#   class { 'jmeter': version => '3.00', }
#
class jmeter (
  $version = '2.12',
) {
  include homebrew

  package { 'jmeter':
    ensure => $version,
  }
}
