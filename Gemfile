# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'http-2'
gem 'jmespath'

# faster xml libraries
unless ENV['PURE_RUBY']
  gem 'nokogiri', '>= 1.6.8.1'
  gem 'oga'

  unless defined?(JRUBY_VERSION)
    gem 'libxml-ruby'
    gem 'ox'
  end
end

# faster json library
gem 'oj' unless ENV['PURE_RUBY'] && defined?(JRUBY_VERSION)

group :test do
  gem 'addressable'
  gem 'cucumber'
  gem 'webmock'

  gem 'multipart-post'
  gem 'rspec'
end

group :build do
  gem 'kramdown'
  gem 'mustache'
end

group :docs do
  gem 'rdiscount', platforms: :ruby
  gem 'yard', '~> 0'
  gem 'yard-sitemap', '~> 1.0'
end

group :repl do
  gem 'byebug'
  gem 'pry'
end

group :development do
  gem 'rubocop', '0.81.0'
end
