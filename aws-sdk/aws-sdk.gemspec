version = File.read(File.expand_path('../../VERSION', __FILE__)).strip

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk'
  spec.version       = version
  spec.summary       = 'AWS SDK for Ruby'
  spec.description   = 'AWS SDK For Ruby V2 has been marked as deprecated. Please upgrade to AWS SDK For Ruby V3.'\
                       'The official AWS SDK for Ruby. Provides both resource oriented interfaces and API clients for AWS services.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache 2.0'
  spec.email         = ['trevrowe@amazon.com']

  spec.require_paths = ['lib']
  spec.files += Dir['lib/**/*.rb']

  spec.add_dependency('aws-sdk-resources', version)

  spec.post_install_message = 'AWS SDK For Ruby V2 has been marked as deprecated. Please upgrade to AWS SDK For Ruby V3.'
end
