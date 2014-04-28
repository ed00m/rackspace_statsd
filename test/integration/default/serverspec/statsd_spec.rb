require 'spec_helper'

describe port(8125) do
  it { should be_listening}
end

describe port(8126) do
  it { should be_listening}
end

describe process('statsd') do
  it { should be_running }
end
