# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sigv4'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS Signature Version 4 library.'
  spec.description   = 'Amazon Web Services Signature Version 4 signing library. Generates sigv4 signature for HTTP requests.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = Dir['lib/**/*.rb']

  spec.add_dependency('aws-eventstream', '~> 1', '>= 1.0.2') # For signing event stream events

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sigv4',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sigv4/CHANGELOG.md'
  }
end
