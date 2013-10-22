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
  msg = "skipping integration tests - export AWS_INTEGRATION or create #{cfg}"
  puts "*** #{msg} ***"
  exit(0)
end
