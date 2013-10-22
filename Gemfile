source 'https://rubygems.org'

gemspec

gem 'rake', require: false

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

group :tasks do
  gem 'json'
end

group :docs do
  gem 'yard'
  gem 'yard-sitemap', '~> 1.0'
  gem 'rdiscount', github: 'lsegal/rdiscount', branch: 'gfm-fenced-code'
end

group :bin do
  gem 'pry'
end
