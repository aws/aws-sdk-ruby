source 'https://rubygems.org'

gemspec path: 'aws-sdk-core'

gem 'rake', require: false

if !ENV['PURE_RUBY']
  if ENV['OLD_OJ']
    gem 'oj', '1.3.0'
  else
    gem 'oj'
  end
end

gem 'json', '1.8.3' if RUBY_VERSION == '1.9.3'
gem 'ox' unless ENV['PURE_RUBY']
gem 'libxml-ruby' unless ENV['PURE_RUBY']
# nokogiri dropped support for Ruby <= 2.0.0 in version 1.7.0
gem 'nokogiri', '1.6.8.1' unless ENV['PURE_RUBY']
gem 'oga'

group :test do
  gem 'rspec'
  gem 'cucumber'
  # webmock dropped support for Ruby 1.9.3 after version 2.2.0
  gem 'webmock', '2.2.0'
  # webmock depends on addressable, but the latest version of addressable
  # has a dependency on ~> 2.0 of public_suffix which is not compatible
  # with Ruby 1.9.3
  gem 'addressable', '2.4.0'
  gem 'simplecov', require: false
  gem 'coveralls', require: false if RUBY_VERSION > '1.9.3'
  gem 'json-schema'
  gem 'multipart-post'
end

group :docs do
  gem 'yard', '0.9.5'
  gem 'yard-sitemap', '~> 1.0'
  gem 'rdiscount'
  gem 'kramdown' # using this to fix poorly formatted HTML in API docs
end

group :release do
  gem 'octokit'
end

group :repl do
  gem 'pry'
end
