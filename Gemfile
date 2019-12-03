source 'https://rubygems.org'

gemspec path: 'aws-sdk-core'

gem 'rake', require: false

if !ENV['PURE_RUBY']
  if ENV['OLD_OJ']
    gem 'oj', '1.3.0'
  elsif RUBY_VERSION != '1.9.3'
    gem 'oj'
  end

  # Ox after 2.4.12 has a change in default behavior. Test both.
  if ENV['OLD_OX']
    gem 'ox', '2.4.12'
  else
    gem 'ox'
  end
end

gem 'json', '1.8.3' if RUBY_VERSION == '1.9.3'
gem 'libxml-ruby' unless ENV['PURE_RUBY']
# nokogiri dropped support for Ruby <= 2.0.0 in version 1.7.0
gem 'nokogiri', '1.6.8.1' unless ENV['PURE_RUBY']
# oga dropped support for Ruby 1.9.3 on version 3
gem 'oga', '<~ 2'

group :test do

  if RUBY_VERSION == '1.9.3'
    # '3.8.3' fails 1.9.3 test suits
    gem 'rspec-expectations', '3.8.2'

    # webmock dropped support for Ruby 1.9.3 after version 2.2.0
    gem 'webmock', '2.2.0'
    # webmock depends on addressable, but the latest version of addressable
    # has a dependency on ~> 2.0 of public_suffix which is not compatible
    # with Ruby 1.9.3
    gem 'addressable', '2.4.0'
    # oj drop support for Ruby under 2.0 since 3.3.5
    gem 'oj', '<= 3.3.4'
    # cucumber drop support for Ruby under 2.0 after 3.0.0
    gem 'cucumber', '3.0.0'
  else
    gem 'webmock'
    gem 'addressable'
    gem 'cucumber'
  end
  gem 'simplecov', require: false
  gem 'coveralls', require: false if RUBY_VERSION > '1.9.3'

  gem 'rspec'

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
