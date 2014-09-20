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

def new_resource_class(options = {})
  resource_class = Class.new(Aws::Resources::Resource)
  resource_class.client_class = options[:client_class]
  Array(options[:identifiers]).each do |identifier|
    resource_class.add_identifier(identifier)
  end
  resource_class

end
