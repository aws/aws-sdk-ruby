$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-core'
require 'multi_json'

cfg = './integration-test-config.json'

if File.exist?(cfg)
  Aws.config = MultiJson.load(File.read(cfg), symbolize_keys: true)
elsif ENV['AWS_INTEGRATION']
  # run integration tests, just don't read a configuration file from disk
else
  msg = <<-MSG

*** skipping integration tests ***
  To enable integration tests, create a #{cfg} file or export AWS_INTEGRATION=1
  Please note, running integration tests requires AWS account credentials.

  MSG
  puts msg
  exit(0)
end

Aws.config[:raise_response_errors] = false
