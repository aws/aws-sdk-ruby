$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'simplecov'
require 'aws-sdk-core'
require 'multi_json'

config_file = './integration-test-config.json'

Aws.config = MultiJson.load(File.read(config_file), symbolize_keys: true)
