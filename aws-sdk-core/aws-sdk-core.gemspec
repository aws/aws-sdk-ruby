version = File.read(File.expand_path('../../VERSION', __FILE__)).strip

Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-core'
  spec.version       = version
  spec.summary       = 'AWS SDK for Ruby - Core'
  spec.description   = 'A newer version of this gem is available, please upgrade to version 3.'\
                       'Provides API clients for AWS. This gem is part of the official AWS SDK for Ruby.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache 2.0'
  spec.email         = ['trevrowe@amazon.com']

  spec.require_paths = ['lib']

  spec.files = ['endpoints.json', 'service-models.json', 'ca-bundle.crt']
  spec.files += Dir['lib/**/*.rb']
  spec.files += Dir['apis/**/**/*.json'].select { |p| !p.match(/\/docs/) }

  spec.bindir = 'bin'
  spec.executables << 'aws.rb'

  spec.add_dependency('jmespath', '~> 1.0')
  spec.add_dependency('aws-sigv4', '~> 1.0')

  spec.post_install_message = 'NEWER VERSION AVAILABLE: Please upgrade to AWS SDK For Ruby V3'
end
