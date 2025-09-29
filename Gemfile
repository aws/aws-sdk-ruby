# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-partitions', path: 'gems/aws-partitions'
gem 'aws-sdk-core', path: 'gems/aws-sdk-core'
gem 'aws-sdk-sso', path: 'gems/aws-sdk-sso'
gem 'aws-sdk-ssooidc', path: 'gems/aws-sdk-ssooidc'
gem 'aws-sdk-sts', path: 'gems/aws-sdk-sts'
gem 'aws-sigv4', path: 'gems/aws-sigv4'
gem 'base64'
gem 'logger'
gem 'pry'

# Fetches smithy-ruby gems from GitHub assuming the same branch name as the current branch, defaulting to decaf.
smithy_ruby_git = 'https://github.com/smithy-lang/smithy-ruby/'
v4_branch = ENV.fetch('GITHUB_BRANCH', `git rev-parse --abbrev-ref HEAD`.strip)
branch_exists = `git ls-remote --heads #{smithy_ruby_git} refs/heads/#{v4_branch} | wc -l`.strip == '1'
smithy_ruby_branch = branch_exists ? v4_branch : 'decaf'
%w[smithy smithy-cbor smithy-client smithy-json smithy-schema smithy-xml].each do |gem_name|
  gem gem_name, git: smithy_ruby_git, branch: smithy_ruby_branch, glob: "gems/#{gem_name}/#{gem_name}.gemspec"
end

group :development do
  gem 'byebug', platforms: :ruby
  gem 'rubocop'
end

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end
