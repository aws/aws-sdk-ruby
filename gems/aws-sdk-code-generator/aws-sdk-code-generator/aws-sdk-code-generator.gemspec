Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-code-generator'
  spec.version       = '0.1.0.pre'
  spec.summary       = 'AWS SDK for Ruby Code Generator'
  spec.description   = 'Given a JSON API model, generates code for the services.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache 2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files = Dir['lib/**/*.rb']
end
