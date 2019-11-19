$LOAD_PATH.unshift(File.expand_path('../../lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-sigv2/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-sigv4/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-eventstream/lib',  __FILE__))
$LOAD_PATH.unshift(File.expand_path('../../../aws-partitions/lib',  __FILE__))

require 'webmock/rspec'

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

    Aws.shared_config.fresh

  end
end
