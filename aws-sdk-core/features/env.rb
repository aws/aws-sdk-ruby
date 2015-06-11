$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-core'

SimpleCov.command_name('test:integration:aws-sdk-core')

cfg = './integration-test-config.json'

if File.exist?(cfg)
  Aws.config = Aws::Json.load_file(cfg).inject({}) do |h, (k, v)|
    h[k.to_sym] = v; h
  end
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
