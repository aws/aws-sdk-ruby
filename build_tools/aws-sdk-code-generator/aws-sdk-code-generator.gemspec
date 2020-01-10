Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-code-generator'
  spec.version       = '0.1.0.pre'
  spec.summary       = 'AWS SDK for Ruby - Code Generator'
  spec.description   = 'Generates the service code for the AWS SDK for Ruby'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files = Dir['lib/**/*.rb']
end
