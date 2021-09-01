# frozen_string_literal: true

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-core'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby - Core'
  spec.description   = 'Provides API clients for AWS. This gem is part of the official AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.require_paths = ['lib']
  spec.files         = Dir['LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb', 'ca-bundle.crt']

  spec.add_dependency('jmespath', '~> 1.0')
  spec.add_dependency('aws-partitions', '~> 1', '>= 1.239.0') # necessary for STS & S3 regional
  spec.add_dependency('aws-sigv4', '~> 1.3') # necessary for making Aws::STS API calls
  spec.add_dependency('aws-eventstream', '~> 1', '>= 1.0.2') # necessary for binary eventstream

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core/CHANGELOG.md'
  }

  spec.required_ruby_version = '>= 2.3'
end
