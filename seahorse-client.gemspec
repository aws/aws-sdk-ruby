lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'seahorse/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'seahorse-client'
  spec.version       = Seahorse::Client::VERSION
  spec.authors       = ['Amazon Web Services', 'Trevor Rowe']
  spec.email         = ['trevorrowe@gmail.com']
  spec.summary       = 'Client for Seahorse compatible web services.'
  spec.description   = 'Seahorse::Client is an extensible web service client that consumes Seahorse model descriptions.'
  spec.homepage      = 'http://github.com/seahorse/client'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('minitest')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('yard')
  spec.add_development_dependency('redcarpet')
end
