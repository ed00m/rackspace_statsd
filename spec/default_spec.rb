# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_statsd::default' do
  let(:chef_run) { ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe) }

  it 'installs the package git' do
    expect(chef_run).to install_package('git')
  end

  it 'checkouts a statsd git repo' do
    expect(chef_run).to sync_git('/opt/statsd-v0.7.1')
  end

  it 'sets up config.js from template' do
    expect(chef_run).to create_template('/opt/statsd-v0.7.1/config.js').with(
      user: 'root',
      group: 'root',
      mode: 0644
    )
  end

  it 'includes the runit recipe' do
    expect(chef_run).to include_recipe('runit::default')
  end

  it 'includes the nodejs recipe' do
    expect(chef_run).to include_recipe('nodejs::default')
  end
end
