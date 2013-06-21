$:.unshift(File.dirname(__FILE__) + '/lib')

require 'seahorse/client/version'

Gem::Specification.new do |s|
  s.name = 'seahorse-client'
  s.version = Seahorse::Client::VERSION
  s.summary = 'Client for Seahorse compatible web services.'
  s.description = 'Seahorse::Client is an extensible web service client that consumes Seahorse model descriptions.'
  s.license = 'Apache 2.0'
  s.authors = ['Trevor Rowe']
  s.email = 'trevorrowe@gmail.com'
  s.homepage = 'http://github.com/seahorse/client'
  s.files = [
    'LICENSE.txt',
  ]
  s.files += Dir['lib/**/*.rb']
end
