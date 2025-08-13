# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false

gem 'aws-sdk-core', path: 'gems/aws-sdk-core'
gem 'aws-sigv4'
gem 'base64'
gem 'logger'

# Fetches smithy-ruby gems from GitHub assuming the same branch name as the current branch, defaulting to decaf.
smithy_ruby_git = 'https://github.com/smithy-lang/smithy-ruby/'
v4_branch = `git rev-parse --abbrev-ref HEAD`.strip
puts "LS-REMOTE OUTPUT: #{`git ls-remote --heads #{smithy_ruby_git} refs/heads/#{v4_branch} | wc -l`}"
branch_exists = `git ls-remote --heads #{smithy_ruby_git} refs/heads/#{v4_branch} | wc -l`.strip == '1'
branch = branch_exists ? v4_branch : 'decaf'
puts "BRANCH: #{branch}"
%w[smithy smithy-cbor smithy-client smithy-json smithy-schema smithy-xml].each do |gem_name|
  gem gem_name, git: smithy_ruby_git, branch: branch, glob: "gems/#{gem_name}/#{gem_name}.gemspec"
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
