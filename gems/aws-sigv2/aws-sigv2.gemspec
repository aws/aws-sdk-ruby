Gem::Specification.new do |spec|
  spec.name          = 'aws-sigv2'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS Signature Version 2 library.'
  spec.description   = 'Amazon Web Services Signature Version 2 signing ligrary. Generates sigv2 signature for HTTP requests.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = Dir['lib/**/*.rb']
end
