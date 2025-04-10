# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'base64'
gem 'logger'

gem 'smithy', github: 'smithy-lang/smithy-ruby', branch: 'decaf', glob: 'gems/smithy/smithy.gemspec'
gem 'smithy-client', github: 'smithy-lang/smithy-ruby', branch: 'decaf', glob: 'gems/smithy-client/smithy-client.gemspec'
gem 'smithy-cbor', github: 'smithy-lang/smithy-ruby', branch: 'decaf', glob: 'gems/smithy-cbor/smithy-cbor.gemspec'
gem 'smithy-schema', github: 'smithy-lang/smithy-ruby', branch: 'decaf', glob: 'gems/smithy-schema/smithy-schema.gemspec'

group :development do
  gem 'byebug', platforms: :ruby
  gem 'rubocop'
end
