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
    gem 'ox', " <= 2.14.6"
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
  gem 'rspec-mocks', '<= 3.10.2'
end

group :build do
  gem 'kramdown'
  gem 'mustache'
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

group :repl do
  gem 'pry'
end

group :development do
  gem 'rubocop', '0.81.0'
end
