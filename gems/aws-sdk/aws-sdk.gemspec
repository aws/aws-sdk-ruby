Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby'
  spec.description   = 'The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.files         = Dir['lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/blob/code-generation/gems/aws-sdk',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/blob/code-generation/gems/aws-sdk/CHANGELOG.md'
  }

  # gem dependency
  spec.add_dependency('aws-sdk-resources', '~> 3')
  # end gem dependency

end
