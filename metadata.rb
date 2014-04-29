name             'rackspace_statsd'
maintainer       'Rackspace, Inc.'
maintainer_email 'rackspace-cookbooks@rackspace.com'
license          'Apache 2.0'
description      'Installs/Configures statsd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.2'

depends 'nodejs', '~> 1.3'
depends 'runit', '~> 1.5'
