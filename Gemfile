source 'https://rubygems.org'

gem 'rake', require: false
gem 'jmespath'

group :test do

  gem 'rspec'
  gem 'cucumber'
  # webmock depends on addressable, but the latest version of addressable
  # has a dependency on ~> 2.0 of public_suffix which is not compatible
  # with Ruby 1.9.3
  gem 'addressable', '2.4.0'
  gem 'webmock'
  gem 'json-schema'
  gem 'multipart-post'

  # faster xml libraries
  gem 'ox' unless ENV['PURE_RUBY']
  gem 'libxml-ruby' unless ENV['PURE_RUBY']
  gem 'nokogiri' unless ENV['PURE_RUBY']
  gem 'oga'

  # faster json libraries
  if !ENV['PURE_RUBY']
    gem 'json', '1.8.3' if RUBY_VERSION == '1.9.3'
    if ENV['OLD_OJ']
      gem 'oj', '1.3.0'
    else
      gem 'oj'
    end
  end

end

group :build do
  gem 'kramdown' # using this to fix poorly formatted HTML in API docs
end

group :docs do
  gem 'yard', '0.9.5'
  gem 'yard-sitemap', '~> 1.0'
  gem 'rdiscount'
end

group :repl do
  gem 'pry'
end
