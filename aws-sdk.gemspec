Gem::Specification.new do |s|
  s.name = 'aws-sdk'
  s.version = AWS::VERSION
  s.summary = 'AWS SDK for Ruby'
  s.description = s.summary
  s.license = 'Apache 2.0'
  s.author = 'Amazon Web Services'
  s.homepage = 'http://aws.amazon.com/sdkforruby'

  s.add_dependency('uuidtools', '~> 2.1')
  s.add_dependency('httparty', '~> 0.7')
  s.add_dependency('nokogiri', '>= 1.4.4')
  s.add_dependency('json', '~> 1.4')

  s.files = FileList[
    'ca-bundle.crt',
    'rails/init.rb',    # for compatability with older versions of rails
    'lib/**/*.rb',
    'lib/**/*.yml',
    '.yardopts',
    'README.rdoc',
    'NOTICE.txt',
    'LICENSE.txt',
  ]
end
