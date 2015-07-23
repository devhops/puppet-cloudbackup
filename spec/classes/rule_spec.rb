require 'spec_helper'

describe 'cloudbackup' do
  let(:title) { 'test'}
  let(:params) { {:username => 'rackspace', :api_key => 'xxxxxxxxxx'} }
  let(:facts) { {:operatingsystem => ['Debian']}}

  it { should include_class('cloudbackup::install')}
  it { should include_class('cloudbackup::service')}

  context "On a Debian OS" do
    let :facts do
      {
        :osfamily => 'Debian'
      }
    end
    it {
      should contain_package('driveclient')
      should contain_service('driveclient')
    }
  end
end
