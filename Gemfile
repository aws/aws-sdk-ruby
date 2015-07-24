source 'https://rubygems.org'

gemspec path: 'aws-sdk-core'

gem 'rake', require: false

gem 'oj' unless ENV['PURE_RUBY']
gem 'ox' unless ENV['PURE_RUBY']
gem 'libxml-ruby' unless ENV['PURE_RUBY']
gem 'nokogiri' unless ENV['PURE_RUBY']
gem 'oga'

group :test do
  gem 'rspec', '~> 3.0.0'
  gem 'cucumber'
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'coveralls', require: false
  gem 'json-schema'
  gem 'rest-client' # used for presigned-post integration test
end

group :docs do

  gem 'yard', :git => 'https://github.com/trevorrowe/yard.git', branch: 'frameless'
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
