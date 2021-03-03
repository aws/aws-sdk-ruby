# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'aws-eventstream'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary       = 'AWS Event Stream Library'
  spec.description   = 'Amazon Web Services event stream library. Decodes and encodes binary stream under `vnd.amazon.event-stream` content-type'
  spec.author        = 'Amazon Web Services'
  spec.homepage      = 'https://github.com/aws/aws-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.files         = Dir['LICENSE.txt', 'CHANGELOG.md', 'VERSION', 'lib/**/*.rb']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-eventstream',
    'changelog_uri'   => 'https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-eventstream/CHANGELOG.md'
  }
end
