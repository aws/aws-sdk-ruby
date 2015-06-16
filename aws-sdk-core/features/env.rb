$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-core'

SimpleCov.command_name('test:integration:aws-sdk-core')

cfg = './integration-test-config.json'

if ENV['AWS_INTEGRATION']
  # run integration tests, just don't read a configuration file from disk
else
  msg = <<-MSG

*** skipping aws-sdk-resource integration tests ***
  Export AWS_INTEGRATION=1 to enable integration tests

  MSG
  puts msg
  exit(0)
end
