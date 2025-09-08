# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-crt' if ENV['CRT']
gem 'base64'
gem 'bigdecimal'
gem 'csv'
gem 'http-2'
gem 'irb'
gem 'jmespath'
gem 'jruby-openssl' if defined?(JRUBY_VERSION)
gem 'rdoc'

# protocol parsers
gem 'json', '>= 2.4.0' # due to load_file support, see: https://github.com/ruby/json/issues/696
gem 'nokogiri'
gem 'oga'
gem 'rexml'
gem 'ruby-ll', '2.1.3' # temporary
unless defined?(JRUBY_VERSION)
  gem 'libxml-ruby'
  gem 'oj'
  gem 'ox'
end

group :benchmark do
  gem 'memory_profiler'

  # required for uploading report/putting metrics
  gem 'aws-sdk-cloudwatch', require: false
  gem 'aws-sdk-lambda', require: false
  gem 'aws-sdk-s3', require: false
end

group :build do
  gem 'kramdown'
  gem 'mustache'
end

group :development do
  gem 'byebug', platforms: :ruby
  gem 'rubocop', '>= 1.75.0'
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
  gem 'multipart-post'
  gem 'opentelemetry-sdk'
  gem 'rspec'
  gem 'webmock'
end
