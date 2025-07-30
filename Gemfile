# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-sdk-core', path: 'gems/aws-sdk-core'
gem 'aws-sigv4'
gem 'base64'
gem 'logger'

gem 'smithy', path: '../smithy-ruby/gems/smithy'
gem 'smithy-cbor', path: '../smithy-ruby/gems/smithy-cbor'
gem 'smithy-client', path: '../smithy-ruby/gems/smithy-client'
gem 'smithy-json', path: '../smithy-ruby/gems/smithy-json'
gem 'smithy-schema', path: '../smithy-ruby/gems/smithy-schema'
gem 'smithy-xml', path: '../smithy-ruby/gems/smithy-xml'

group :development do
  gem 'byebug', platforms: :ruby
  gem 'rubocop'
end

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end
