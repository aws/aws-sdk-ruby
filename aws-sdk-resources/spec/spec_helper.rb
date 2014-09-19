require 'simplecov'
require 'rspec'
require 'aws-sdk-resources'

SimpleCov.command_name('test:unit:aws-sdk-resources')

def fixture_path(*parts)
  File.expand_path(File.join([
    File.dirname(__FILE__),
    'fixtures',
    *parts
  ]))
end
