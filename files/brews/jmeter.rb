require 'formula'

class Jmeter < Formula
  homepage 'http://jmeter.apache.org/'
  url 'http://www.eu.apache.org/dist//jmeter/binaries/apache-jmeter-2.11.tgz'
  sha1 'e9b24f8b5f34565831aafcb046e72bdfa9537386'
  version '2.11-boxen1'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]
    prefix.install_metafiles
    libexec.install Dir['*']
    bin.write_exec_script libexec/'bin/jmeter'
  end
end
