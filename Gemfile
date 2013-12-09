source 'https://rubygems.org'

gemspec

gem 'rake', require: false

gem 'oj' if ENV['OJ']
gem 'ox' if ENV['OX']
gem 'nokogiri' if ENV['NOKOGIRI']

group :test do
  gem 'rspec', github: 'rspec/rspec'
  gem 'rspec-core', github: 'rspec/rspec-core'
  gem 'rspec-mocks', github: 'rspec/rspec-mocks'
  gem 'rspec-expectations', github: 'rspec/rspec-expectations'
  gem 'rspec-support', github: 'rspec/rspec-support'
  gem 'cucumber'
  gem 'webmock'
  gem 'simplecov', require: false
end

group :docs do
  gem 'yard'
  gem 'yard-sitemap', '~> 1.0'
  gem 'rdiscount'
end

group :repl do
  gem 'pry'
end
