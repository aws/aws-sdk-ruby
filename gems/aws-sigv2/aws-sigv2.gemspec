# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-sigv2'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS Signature Version 2 library.'
  spec.description   = 'Amazon Web Services Signature Version 2 signing library. Generates sigv2 signature for HTTP requests.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = Dir['lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sigv2',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sigv2/CHANGELOG.md'
  }
end
