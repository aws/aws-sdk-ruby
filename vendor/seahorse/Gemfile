source 'http://rubygems.org'

gemspec

gem 'rake', require: false

group :test do
  gem 'rspec', github: 'rspec/rspec'
  gem 'rspec-core', github: 'rspec/rspec-core'
  gem 'rspec-mocks', github: 'rspec/rspec-mocks'
  gem 'rspec-expectations', github: 'rspec/rspec-expectations'

  gem 'webmock'
  gem 'simplecov', require: false
end

group :docs do
  gem 'yard'
  gem 'rdiscount', github: 'lsegal/rdiscount', branch: 'gfm-fenced-code'
end
