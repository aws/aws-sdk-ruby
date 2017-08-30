# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-applicationautoscaling'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby - Application Auto Scaling'
  spec.description   = 'Official AWS Ruby gem for Application Auto Scaling. This gem is part of the AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-applicationautoscaling',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-applicationautoscaling/CHANGELOG.md'
  }

  spec.add_dependency('aws-sdk-core', '~> 3')
  spec.add_dependency('aws-sigv4', '~> 1.0')

end
