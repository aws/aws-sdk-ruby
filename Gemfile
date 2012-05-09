# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
gem 'nokogiri', '>= 1.4.4'
gem 'json', '~> 1.4.6'

group :debug do
  gem 'ruby-debug', :platforms => :ruby_18
  gem 'ruby-debug19', :platforms => :ruby_19
  gem 'ruby-prof', :platforms => [:mri_18]
end

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
  gem 'yard'
  gem 'rspec', '2.5'
  gem 'rspec', '2.5', :require => 'rspec/core/rake_task'
  gem 'rcov', '0.9.9'
  gem 'ci_reporter', '~> 1.6', :require => 'ci/reporter/rake/rspec'
end

group :integration do
  gem 'cucumber', '~> 0.10.2', :require => 'cucumber/rake/task'
  gem 'bourne', '1.0'
  gem 'mocha', '0.9.8'
  gem 'net-ssh', '~> 2.1'
  gem 'multipart-post', '~> 1.1.2'
  gem 'rotp', '~> 1.3.0'
end

