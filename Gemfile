source 'https://rubygems.org'

if RUBY_VERSION == '1.9.3'
  # rake 12.3.0 drop support for Ruby < 2.0
  gem 'rake', '12.2.1', require: false
else
  gem 'rake', require: false
end

gem 'jmespath'

if RUBY_VERSION >= '2.1' && !ENV['NO_H2']
  # http 2 requires ruby version >= 2.1
  # over alpn with tls
  # requires ruby version >= 2.3 and openssl >=1.0.2
  gem 'http-2'
end

# faster xml libraries
unless ENV['PURE_RUBY']
  gem 'nokogiri', '>= 1.10.4'

  if RUBY_VERSION == '1.9.3'
    # oga syntax breaks for 1.9.3 on newer versions
    gem 'oga', '2.15'
  else
    gem 'oga'
  end

  unless defined?(JRUBY_VERSION)
    gem 'libxml-ruby'

    if ENV['OLD_OX']
      # As ox suggestion
      gem 'ox', '~> 2.8.1'
    else
      gem 'ox'
    end
  end
end

# faster json libraries
unless ENV['PURE_RUBY']
  gem 'json', '1.8.3' if RUBY_VERSION == '1.9.3'

  unless defined?(JRUBY_VERSION)
    if ENV['OLD_OJ']
      gem 'oj', '1.3.0'
    else
      if RUBY_VERSION == '1.9.3'
        # oj drop support for Ruby under 2.0 since 3.3.5
        gem 'oj', '<= 3.3.4'
      else
        gem 'oj'
      end
    end
  end
end

group :test do
  if RUBY_VERSION == '1.9.3'
    # '3.8.3' fails 1.9.3 test suits
    gem 'rspec-expectations', '3.8.2'
    # webmock depends on addressable, but the latest version of addressable
    # has a dependency on ~> 2.0 of public_suffix which is not compatible
    # with Ruby 1.9.3
    gem 'addressable', '2.4.0'
    # webmock dropped support for Ruby 1.9.3 after version 2.2.0
    gem 'webmock', '2.2.0'
    # cucumber drop support for Ruby under 2.1 after 3.0.0
    gem 'cucumber', '2.99.0'
    # hashdiff drop support for Ruby under 2.0 since 0.3.9
    gem 'hashdiff', '0.3.8'
  elsif RUBY_VERSION == '2.0.0'
    # public_suffix released 3.0.3 which support ruby >= 2.1
    gem 'public_suffix', '2.0.5'
    # addressable 2.6.0 relaxed version on public_suffix < 4
    gem 'addressable', '2.5.2'
    gem 'webmock'
    # cucumber drop support for Ruby under 2.2 after 3.0.0
    gem 'cucumber', '2.99.0'
  elsif RUBY_VERSION < '2.2'
    gem 'addressable'
    gem 'webmock'
    # cucumber drop support for Ruby under 2.2 after 3.0.0
    gem 'cucumber', '2.99.0'
  else
    gem 'addressable'
    gem 'webmock'
    gem 'cucumber'
  end

  gem 'multipart-post'
  gem 'rspec'
end

group :build do
  # using this to fix poorly formatted HTML in API docs
  gem 'kramdown', '1.14.0' # pinned to support Ruby 1.9.3
  gem 'mustache', '0.99.8' # pinned to support Ruby 1.9.3
end

group :docs do
  gem 'rdiscount', platforms: :ruby
  gem 'yard', '~> 0.9.11'
  gem 'yard-sitemap', '~> 1.0'
end

group :repl do
  gem 'pry'
end
