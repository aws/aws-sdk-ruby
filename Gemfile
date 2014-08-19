source 'https://rubygems.org'

%w(
  aws-sdk-core
  aws-sdk-resources
  aws-sdk
).each do |gem_name|
  gemspec "#{gem_name}/#{gem_name}.gemspec"
end

gem 'rake', require: false

gem 'oj' if ENV['OJ']
gem 'ox' if ENV['OX']
gem 'nokogiri' if ENV['NOKOGIRI']

group :test do
  gem 'rspec', '~> 3.0.0'
  gem 'cucumber'
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'coveralls', require: false
  gem 'json-schema'
end

group :docs do
  gem 'yard'
  gem 'yard-sitemap', '~> 1.0'
  gem 'rdiscount', require: false
end

group :release do
  gem 'octokit'
end

group :repl do
  gem 'pry'
end
