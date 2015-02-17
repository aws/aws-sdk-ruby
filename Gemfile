# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

source 'https://rubygems.org'

gemspec :name => 'aws-sdk-v1'

gem 'rake'
gem 'nokogiri', '< 1.6'

group :repl do
  gem 'pry'
end

group :documentation do
  gem 'yard', :git => 'https://github.com/lsegal/yard.git', :branch => 'frameless'
  gem 'rdiscount', :github => 'lsegal/rdiscount', :branch => 'gfm-fenced-code'
  gem 'yard-sitemap', '~> 1.0'
  gem 'rdoc', '= 3.9.4'
end

group :test do
  gem 'rspec', '~> 2.12'
  gem 'cucumber'
  gem 'simplecov', :require => false
  gem 'net-ssh', '~> 2.1'
  gem 'multipart-post'
  gem 'rotp', '~> 1.3.0'
end

if RUBY_VERSION >= '1.9.2'
  group :release do
    gem 'octokit'
  end
end
