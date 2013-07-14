$:.unshift(File.dirname(__FILE__) + '/lib')

require 'aws/core'

Gem::Specification.new do |s|
  s.name = 'aws-sdk'
  s.version = AWS::VERSION
  s.summary = 'AWS SDK for Ruby'
  s.description = s.summary
  s.license = 'Apache 2.0'
  s.author = 'Amazon Web Services'
  s.homepage = 'http://aws.amazon.com/sdkforruby'

  s.add_dependency('uuidtools', '~> 2.1')
  s.add_dependency('nokogiri', '~> 1.6.0')
  s.add_dependency('json', '~> 1.4')

  s.files = [
    'ca-bundle.crt',
    'rails/init.rb',    # for compatability with older versions of rails
    '.yardopts',
    'README.md',
    'LICENSE.txt',
  ]
  s.files += Dir['lib/**/*.rb']
  s.files += Dir['lib/**/*.yml']

  s.bindir = 'bin'
  s.executables << 'aws-rb'
end
