# frozen_string_literal: true

# This is generated code!

Gem::Specification.new do |spec|
  spec.name        = 'aws-sdk-lambda'
  spec.version     = '2.0.0.pre0'
  spec.summary     = 'Generated gem using Smithy'
  spec.authors     = ['Smithy Ruby']
  spec.files       = Dir['lib/**/*.rb', base: __dir__]

  spec.add_dependency('aws-sdk-core', '4.0.0.pre0')
  spec.add_dependency('smithy-json', '1.0.0.pre1')
  spec.add_dependency('smithy-client', '~> 1')

  spec.required_ruby_version = '>= 3.3'
end
