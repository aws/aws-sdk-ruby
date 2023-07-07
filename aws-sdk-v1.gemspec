Gem::Specification.new do |s|
  s.name = 'aws-sdk-v1'
  s.version = File.read(File.expand_path('../VERSION', __FILE__)).strip
  s.summary = 'AWS SDK for Ruby V1'
  s.description = <<-DESCRIPTION.strip
Version 1 of the AWS SDK for Ruby. Available as both `aws-sdk` and `aws-sdk-v1`.
Use `aws-sdk-v1` if you want to load v1 and v2 of the Ruby SDK in the same
application.
  DESCRIPTION
  s.license = 'Apache 2.0'
  s.author = 'Amazon Web Services'
  s.homepage = 'http://aws.amazon.com/sdkforruby'

  s.add_dependency('nokogiri', '~> 1')
  s.add_dependency('json')

  s.files = [
    'ca-bundle.crt',
    'rails/init.rb',    # for compatibility with older versions of rails
    'endpoints.json',
    '.yardopts',
    'README.md',
    'LICENSE.txt',
  ]
  s.files += Dir['lib/**/*.rb'] - ['lib/aws-sdk.rb']
  s.files += Dir['lib/**/*.yml']

  s.bindir = 'bin'
  s.executables << 'aws-rb'
end
