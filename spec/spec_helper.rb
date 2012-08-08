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

require 'simplecov'
SimpleCov.start

$: << File.join(File.dirname(File.dirname(__FILE__)), "lib")

require 'rspec'
require 'aws'

RSpec.configure do |c|
  c.filter_run_excluding :ruby => lambda {|version|
    !(RUBY_VERSION.to_s =~ /^#{version.to_s}/)
  }
end

# require all _examples.rb files in spec/shared/
Dir.glob("#{File.dirname(__FILE__)}/shared/**/*_examples.rb").each do |file|
  require file
end

AWS.eager_autoload!
