# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'aws-partitions'
  spec.version     = File.read(File.expand_path('VERSION', __dir__))
  spec.summary     = 'Provides information about AWS partitions.'
  spec.description = 'Provides interfaces to enumerate AWS partitions. ' \
                     'This gem is part of the official AWS SDK for Ruby.'
  spec.author      = 'Amazon Web Services'
  spec.homepage    = 'https://github.com/aws/aws-sdk-ruby'
  spec.license     = 'Apache-2.0'
  spec.files       = Dir['CHANGELOG.md', 'VERSION', 'partitions.json', 'lib/**/*.rb', 'sig/**/*.rbs']

  spec.required_ruby_version = '>= 3.3'
end
