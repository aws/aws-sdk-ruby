require 'simplecov'
require 'rspec'
require 'webmock/rspec'
require 'aws-sdk-resources'

SimpleCov.command_name('test:unit:aws-sdk-resources')

# Prevent the SDK unit tests from loading actual credentials while under test.
# By default the SDK attempts to load credentials from:
#
# * ENV, e.g. ENV['AWS_ACCESS_KEY_ID']
# * Shared credentials file, e.g. ~/.aws/credentials
# * EC2 instance metadata server running at 169.254.169.254
#
RSpec.configure do |config|
  config.before(:each) do

    stub_const('ENV', {})

    # disable loading credentials from shared file
    allow(Dir).to receive(:home).and_raise(ArgumentError)

    # disable instance profile credentials
    path = '/latest/meta-data/iam/security-credentials/'
    stub_request(:get, "http://169.254.169.254#{path}").to_raise(SocketError)

  end
end

def fixture_path(*parts)
  File.expand_path(File.join([
    File.dirname(__FILE__),
    'fixtures',
    *parts
  ]))
end

def new_resource_class(options = {})
  resource_class = Class.new(Aws::Resources::Resource)
  resource_class.client_class = options[:client_class]
  Array(options[:identifiers]).each do |identifier|
    resource_class.add_identifier(identifier)
  end
  resource_class

end
