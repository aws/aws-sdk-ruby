version = File.read(File.expand_path('../../VERSION', __FILE__)).strip

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-resources'
  spec.version       = version
  spec.summary       = 'AWS SDK for Ruby - Resources'
  spec.description   = 'AWS SDK For Ruby V2 has been marked as deprecated. Please upgrade to AWS SDK For Ruby V3.'\
                       'Provides resource oriented interfaces and other higher-level abstractions for many AWS services. This gem is part of the official AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.email         = ['trevrowe@amazon.com']
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache 2.0'
  spec.require_paths = ['lib']

  spec.files = Dir['lib/**/*.rb']

  spec.add_dependency('aws-sdk-core', version)

  spec.post_install_message = 'AWS SDK For Ruby V2 has been marked as deprecated. Please upgrade to AWS SDK For Ruby V3.'
end
