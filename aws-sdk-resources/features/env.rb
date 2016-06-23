$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', '..', 'aws-sdk-core', 'features')

require 'simplecov'
require 'aws-sdk-resources'
require 'features_helper'

SimpleCov.command_name('test:integration:aws-sdk-resources')
