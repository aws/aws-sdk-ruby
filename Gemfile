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

gemspec

group :repl do
  gem 'pry'
end

group :documentation do
  gem 'yard', '>= 0.8.7', '< 1.0'
  gem 'rdiscount'
  gem 'rdoc', '= 3.9.4'
end

group :test do
  gem 'rspec', '= 2.12'
  gem 'cucumber'
  gem 'simplecov', :require => false
  gem 'rvm-tester'
  gem 'net-ssh', '~> 2.1'
  gem 'multipart-post'
  gem 'rotp', '~> 1.3.0'
end

