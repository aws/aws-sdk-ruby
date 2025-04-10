# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-code-generator'
  spec.version       = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.summary       = 'AWS SDK for Ruby - Code Generator'
  spec.description   = 'Generates the service code for the AWS SDK for Ruby'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = Dir['LICENSE', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb']

  spec.add_dependency('smithy', '2.0.0.pre0')

  spec.required_ruby_version = '>= 3.3'
end
