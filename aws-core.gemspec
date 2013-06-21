$:.unshift(File.dirname(__FILE__) + '/lib')

require 'aws/core/version'

Gem::Specification.new do |s|
  s.name = 'aws-core'
  s.version = Aws::Core::VERSION
  s.summary = 'AWS Core'
  s.description = 'Provides client libraries for AWS.'
  s.license = 'Apache 2.0'
  s.author = 'Amazon Web Services'
  s.email = 'trevorrowe@gmail.com'
  s.homepage = 'http://github.com/aws/aws-core-rb'

  s.files = [
    'LICENSE.txt',
  ]
  s.files += Dir['lib/**/*.rb']

  s.add_dependency('seahorse-client')
  s.add_development_dependency('minitest')
  s.add_development_dependency('simplecov')

end
