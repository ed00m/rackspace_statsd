# encoding: UTF-8

require 'spec_helper'

describe 'rackspace_statsd::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs the package git' do
    expect(chef_run).to install_package('git')
  end
end
