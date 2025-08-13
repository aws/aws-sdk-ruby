# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-sdk-core', path: 'gems/aws-sdk-core'
gem 'aws-sigv4'
gem 'base64'
gem 'logger'

if ENV['CI']
  gem 'smithy', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'decaf', glob: 'gems/smithy/smithy.gemspec'
  gem 'smithy-cbor', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'decaf', glob: 'gems/smithy-cbor/smithy-cbor.gemspec'
  gem 'smithy-client', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'decaf', glob: 'gems/smithy-client/smithy-client.gemspec'
  gem 'smithy-json', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'decaf', glob: 'gems/smithy-json/smithy-json.gemspec'
  gem 'smithy-schema', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'decaf',glob: 'gems/smithy-schema/smithy-schema.gemspec'
  gem 'smithy-xml', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'decaf', glob: 'gems/smithy-xml/smithy-xml.gemspec'
else
  gem 'smithy', path: '../smithy-ruby/gems/smithy'
  gem 'smithy-cbor', path: '../smithy-ruby/gems/smithy-cbor'
  gem 'smithy-client', path: '../smithy-ruby/gems/smithy-client'
  gem 'smithy-json', path: '../smithy-ruby/gems/smithy-json'
  gem 'smithy-schema', path: '../smithy-ruby/gems/smithy-schema'
  gem 'smithy-xml', path: '../smithy-ruby/gems/smithy-xml'
end

group :development do
  gem 'byebug', platforms: :ruby
  gem 'rubocop'
end

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end
