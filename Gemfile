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
gem 'nokogiri' unless ENV['PURE_RUBY']
gem 'oga'

group :test do
  gem 'rspec'
  gem 'cucumber'
  gem 'webmock'
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
