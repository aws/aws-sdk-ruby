source 'https://rubygems.org'

gemspec path: 'aws-sdk-core'

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
  gem 'rdiscount'

  gem 'nanoc' # guide

  # guide - syntax highlight
  gem 'nokogiri'
  gem 'coderay'

  # guide - local preview
  gem 'adsf' # a dead simple fileserver
  gem 'guard-nanoc'

end

group :release do
  gem 'octokit'
end

group :repl do
  gem 'pry'
end
