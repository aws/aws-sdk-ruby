# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-sigv4'
gem 'base64'
gem 'logger'

gem 'smithy', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'defaults', glob: 'gems/smithy/smithy.gemspec'
gem 'smithy-cbor', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'defaults', glob: 'gems/smithy-cbor/smithy-cbor.gemspec'
gem 'smithy-client', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'defaults', glob: 'gems/smithy-client/smithy-client.gemspec'
gem 'smithy-json',  git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'defaults', glob: 'gems/smithy-json/smithy-json.gemspec'
gem 'smithy-schema', git: 'https://github.com/smithy-lang/smithy-ruby/', branch: 'defaults', glob: 'gems/smithy-schema/smithy-schema.gemspec'

group :development do
  gem 'byebug', platforms: :ruby
  gem 'rubocop'
end

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end
