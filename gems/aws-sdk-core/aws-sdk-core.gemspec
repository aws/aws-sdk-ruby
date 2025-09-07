# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'aws-sdk-core'
  spec.version     = File.read(File.expand_path('VERSION', __dir__))
  spec.summary     = 'AWS SDK for Ruby - Core'
  spec.description = 'Provides base classes and utilities for generated AWS service clients. ' \
                     'This gem is part of the official AWS SDK for Ruby.'
  spec.author      = 'Amazon Web Services'
  spec.homepage    = 'https://github.com/aws/aws-sdk-ruby'
  spec.license     = 'Apache-2.0'
  spec.files       = Dir['CHANGELOG.md', 'VERSION', 'user_agent_metrics.json', 'lib/**/*.rb', 'sig/**/*.rbs']

  spec.add_dependency('base64')
  spec.add_dependency('logger')

  spec.add_dependency('aws-partitions', '2.0.0.pre0')
  spec.add_dependency('smithy-client', '1.0.0.pre1')

  spec.required_ruby_version = '>= 3.3'
end
