$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'aws-sdk-core'
require 'json'
require 'simplecov'

SimpleCov.command_name('test:integration:aws-sdk-core')

cfg = './integration-test-config.json'

if File.exist?(cfg)
  Aws.config = JSON.parse(File.read(cfg), symbolize_names: true)
elsif ENV['AWS_INTEGRATION']
  # run integration tests, just don't read a configuration file from disk
else
  msg = <<-MSG

*** skipping aws-sdk-core integration tests ***
  To enable integration tests, create a #{cfg} file or export AWS_INTEGRATION=1

  MSG
  puts msg
  exit(0)
end
