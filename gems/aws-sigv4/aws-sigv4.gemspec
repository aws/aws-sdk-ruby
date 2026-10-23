# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'aws-sigv4'
  spec.version     = File.read(File.expand_path('VERSION', __dir__))
  spec.summary     = 'AWS Signature Version 4 library.'
  spec.description = 'Amazon Web Services Signature Version 4 request signing library. ' \
                     'This gem is part of the official AWS SDK for Ruby.'
  spec.author      = 'Amazon Web Services'
  spec.homepage    = 'https://github.com/aws/aws-sdk-ruby'
  spec.license     = 'Apache-2.0'
  spec.files       = Dir['CHANGELOG.md', 'VERSION', 'lib/**/*.rb', 'sig/**/*.rbs']

  spec.required_ruby_version = '>= 3.1'
end
