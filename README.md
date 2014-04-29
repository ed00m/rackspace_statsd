statsd Cookbook
===============
This is a simple cookbook to install statsd via git. It leverages runit and nodejs to run the service.

* Supports
 - `centos/rhel 6+`
 - `ubuntu 12.04`

Requirements
------------
#### cookbooks
- `nodejs`
- `runit`

#### packages
- `git` - git packages required to install statsd

Attributes
----------
This cookbook uses a pure config hash to configure statsd. The base hash is provided at `node['rackspace_statsd']['config']` and the default values are populated.

You can add any arbitrary directive (`key`) as ['rackspace_statsd']['config']['key'] = 'value'

- default['rackspace_statsd']['config']['graphitePort'] = '2003'
- default['rackspace_statsd']['config']['graphiteHost'] = '127.0.0.1'
- default['rackspace_statsd']['config']['debug'] = false
- default['rackspace_statsd']['config']['address'] = '0.0.0.0'
- default['rackspace_statsd']['config']['port'] = 8125
- default['rackspace_statsd']['config']['mgmt_port'] = 8126
- default['rackspace_statsd']['config']['title'] = 'statsd'
- default['rackspace_statsd']['config']['flushInterval'] = 60000
- default['rackspace_statsd']['config']['backends'] = [ "./backends/graphite" ]

* Template location overrides
- default['rackspace_statsd']['templates']['config.js'] = 'rackspace_statsd'


Recipes
-------
#### statsd::default
- installs and configures statsd

Usage
-----
#### statsd::default

e.g.
Just include `statsd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[statsd]"
  ]
}
```

Contributing & Testing
----------------------
Please see the guidelines [here](https://github.com/rackspace-cookbooks/contributing/blob/master/CONTRIBUTING.md)

License and Authors
-------------------
Authors
- Matthew Thode (<matthew.thode@rackspace.com>)
- Ryan Richard (<ryan.richard@rackspace.com>)
