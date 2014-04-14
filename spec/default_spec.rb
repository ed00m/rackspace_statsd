# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_statsd::default' do
  let(:chef_run) { ChefSpec::Runner.new(platform: 'redhat', version: '6.5').converge(described_recipe) }

  it 'installs the package git' do
    expect(chef_run).to install_package('git')
  end

  it 'checkouts a statsd git repo' do
    expect(chef_run).to checkout_git('/opt/statsd')
  end

  it 'sets up config.js from template' do
    expect(chef_run).to create_template('/opt/statsd/config.js').with(
      user: 'root',
      group: 'root',
      mode: 0644
    )
  end

end
