require 'spec_helper'

describe 'jmeter' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class('homebrew')

    should contain_homebrew__formula('jmeter')

    should contain_package('boxen/brews/jmeter').with({
      :ensure => '2.9-boxen1'
    })
  end
end
