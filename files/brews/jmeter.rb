require 'formula'

class Jmeter < Formula
  homepage 'http://jmeter.apache.org/'
  url 'http://mirror.tcpdiag.net/apache//jmeter/binaries/apache-jmeter-2.11.tgz'
  sha1 'f3f853c8f79734580a199efd7a2f0a11'
  version '2.11-boxen1'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]
    prefix.install_metafiles
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/jmeter'
  end
end