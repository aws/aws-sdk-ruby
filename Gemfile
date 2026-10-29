# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-crt' if ENV['CRT']
gem 'base64'
gem 'bigdecimal'
gem 'csv'
gem 'http-2'
gem 'jmespath'
if defined?(JRUBY_VERSION)
  gem 'irb'
  gem 'rdoc'
  gem 'jruby-openssl'
else
  gem 'irb'
  gem 'rdoc'
end

# protocol parsers
gem 'json'
gem 'nokogiri'
gem 'oga'
gem 'rexml'
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
  gem 'yard'
  gem 'yard-sitemap'
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
