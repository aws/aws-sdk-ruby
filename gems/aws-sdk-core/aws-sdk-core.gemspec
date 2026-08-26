# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sdk-core'
  spec.version       = File.read(File.expand_path('VERSION', __dir__)).strip
  spec.summary       = 'AWS SDK for Ruby - Core'
  spec.description   = 'Provides API clients for AWS. This gem is part of the official AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.require_paths = ['lib']
  spec.files         = Dir['LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb', 'sig/**/*.rbs', 'ca-bundle.crt']

  spec.add_dependency('aws-eventstream', '~> 1', '>= 1.3.0') # necessary for binary eventstream
  spec.add_dependency('aws-partitions', '~> 1', '>= 1.992.0') # necessary for new endpoint resolution
  spec.add_dependency('aws-sigv4', '~> 1.9') # necessary for s3 express auth/native sigv4a support

  spec.add_dependency('base64')
  spec.add_dependency('bigdecimal')
  spec.add_dependency('jmespath', '~> 1', '>= 1.6.1') # necessary for secure jmespath JSON parsing
  spec.add_dependency('logger')

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core',
    'changelog_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core/CHANGELOG.md'
  }

  spec.required_ruby_version = '>= 2.7'
end
