Gem::Specification.new do |spec|
  spec.name          = 'aws-partitions'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'Provides information about AWS partitions, regions, and services.'
  spec.description   = 'Provides interfaces to enumerate AWS partitions, regions, and services.'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'http://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = ['partitions.json'] + Dir['lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-partitions',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-partitions/CHANGELOG.md',
  }
end
