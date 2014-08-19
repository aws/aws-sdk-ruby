version = File.read(File.expand_path('../VERSION', __FILE__)).strip

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk'
  spec.version       = version
  spec.summary       = 'AWS SDK for Ruby - Version 2'
  spec.description   = 'Provides libraries for AWS.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-core-ruby'
  spec.license       = 'Apache 2.0'

  spec.require_paths = ['lib']
  spec.files += Dir['lib/**/*.rb']

  spec.add_dependency('aws-sdk-resources', version)

end
