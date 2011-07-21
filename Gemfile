# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

source 'http://rubygems.org'

gem 'uuidtools', '~> 2.1'
gem 'httparty', '~> 0.7'
gem 'nokogiri', '~> 1.4'
gem 'json', '~> 1.4.6'

gem 'jruby-openssl', :platforms => :jruby
gem 'ruby-debug', :platforms => [:jruby, :mri_18]

group :autotest do
  gem 'ZenTest', '~> 4.4'
  gem 'autotest-fsevent', '~> 0.2.4'
  gem 'autotest-growl', '~> 0.2.9'
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem 'growl'
end

group :build do
  gem 'rspec', '2.5'
  gem 'rcov', '0.9.9'
  gem 'hanna', '0.1.12', :require => 'hanna/rdoctask'
  gem 'rspec', '2.5', :require => 'rspec/core/rake_task'
  gem 'ci_reporter', '~> 1.6', :require => 'ci/reporter/rake/rspec'
  gem 'flog', '~> 2.5'
  gem 'yard', '~> 0.6.8'
  gem 'chronic', '~> 0.5', :platforms => [:ruby]
end

group :profile do
  gem 'ruby-prof'
end

group :integration do
  gem 'cucumber', '~> 0.10.2', :require => 'cucumber/rake/task'
  gem 'bourne', '1.0'
  gem 'mocha', '0.9.8'
  gem 'net-ssh', '~> 2.1'
  gem 'multipart-post', '~> 1.1.2'
end

group :curb do
  gem 'curb', '~> 0.7'
end
