# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

# SDK feature dependencies
gem 'aws-crt' if ENV['CRT']
gem 'http-2'
gem 'jmespath'
if defined?(JRUBY_VERSION)
  # get the latest jruby-openssl to support sigv4a
  # see: https://github.com/jruby/jruby-openssl/issues/30
  gem 'jruby-openssl'
end

# protocol parsers
gem 'json'
gem 'nokogiri', '>= 1.6.8.1'
gem 'oga'
gem 'rexml'
# These protocol parsers do not have java gems
unless defined?(JRUBY_VERSION)
  gem 'libxml-ruby'
  gem 'oj'
  gem 'ox'
end

group :benchmark do
  gem 'memory_profiler'

  # required for uploading report/putting metrics
  gem 'aws-sdk-cloudwatch'
  gem 'aws-sdk-s3'
end

group :build do
  gem 'kramdown'
  gem 'mustache'
end

group :development do
  gem 'rubocop', '1.28.0'
end

group :docs do
  gem 'rdiscount', platforms: :ruby
  # When updating yard, override app.js from upstream to:
  # doc-src/templates/default/fulldoc/html/js/app.js
  # and add patch from PR https://github.com/lsegal/yard/pull/1399
  # to support jQuery 3.6.0+
  gem 'yard', '>= 0.9.26'
  gem 'yard-sitemap', '~> 1.0'
end

group :rbs do
  gem 'rbs', platforms: :ruby
end

group :repl do
  gem 'pry'
end

group :test do
  gem 'addressable'
  gem 'cucumber'
  gem 'webmock'
  gem 'multipart-post'
  gem 'rspec'
  gem 'opentelemetry-sdk'
end
