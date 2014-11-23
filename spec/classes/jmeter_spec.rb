require 'spec_helper'

describe 'jmeter' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  shared_examples 'it installs jmeter' do
    it { should contain_class('homebrew') }
    it { should contain_package('jmeter') }
  end

  context 'with no parameters' do
    it_behaves_like 'it installs jmeter'
    it { should contain_package('jmeter').with(:ensure => '2.12') }
  end

  context 'with a version' do
    let(:params) { { :version => '3.00' } }

    it_behaves_like 'it installs jmeter'
    it { should contain_package('jmeter').with(:ensure => '3.00') }
  end
end
