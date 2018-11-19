# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-s3control'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby - AWS S3 Control'
  spec.description   = 'Official AWS Ruby gem for AWS S3 Control. This gem is part of the AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-s3control',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-s3control/CHANGELOG.md'
  }

  spec.add_dependency('aws-sigv4', '~> 1.0')
  spec.add_dependency('aws-sdk-core', '~> 3', '>= 3.39.0')

end
