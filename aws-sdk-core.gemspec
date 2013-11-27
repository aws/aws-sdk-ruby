lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'aws/version'

Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-core'
  spec.version       = Aws::VERSION
  spec.summary       = 'AWS SDK Core'
  spec.description   = 'Provides client libraries for AWS.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-core-ruby'
  spec.license       = 'Apache 2.0'
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ['lib', 'vendor/seahorse/lib']
  spec.add_dependency('multi_json', '~> 1.0')
  spec.add_dependency('multi_xml', '~> 0.5')
  spec.add_dependency('builder', '~> 3.0')
  spec.add_dependency('jamespath')
end
