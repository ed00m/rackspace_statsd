
# Install types accepted: git
default['rackspace_statsd']['install_type'] = 'git'

# Specific which revision, tag or branch to install
default['rackspace_statsd']['git']['branch'] = 'master'

# Settings for config file
default['rackspace_statsd']['config']['graphitePort'] = '2003'
default['rackspace_statsd']['config']['graphiteHost'] = '127.0.0.1'
default['rackspace_statsd']['config']['debug'] = false
default['rackspace_statsd']['config']['address'] = '0.0.0.0'
default['rackspace_statsd']['config']['port'] = 8125
default['rackspace_statsd']['config']['mgmt_port'] = 8126
default['rackspace_statsd']['config']['title'] = 'statsd'
default['rackspace_statsd']['config']['flushInterval'] = 60000 # rubocop: disable NumericLiterals
default['rackspace_statsd']['config']['backends'] = ['./backends/graphite']
