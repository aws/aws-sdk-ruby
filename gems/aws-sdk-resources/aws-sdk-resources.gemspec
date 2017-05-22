Gem::Specification.new do |spec|

  spec.name          = 'aws-sdk-resources'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS SDK for Ruby'
  spec.description   = 'Provides resource oriented interfaces and other higher-level abstractions for many AWS services. For Versions >= 3, please switch to `aws-sdk` or individual service gems.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['trevrowe@amazon.com']
  spec.files         = Dir['lib/**/*.rb']

  # gem dependency
  spec.add_dependency('aws-sdk', '3.0.0.rc7')
  # end gem dependency

end
