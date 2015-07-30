$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.dirname(__FILE__)

require 'simplecov'
require 'aws-sdk-core'
require 'integration-test-config'

IntegrationTestConfig.load!

SimpleCov.command_name('test:integration:aws-sdk-core')
