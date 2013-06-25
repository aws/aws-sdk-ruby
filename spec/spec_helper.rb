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

begin
  require 'simplecov'
  SimpleCov.start do
    add_filter 'spec/'
    add_filter 'vendor/'

    lib_directories = Dir.glob('lib/aws/*/').map{|dir_name| dir_name[0..-2]}
    lib_directories.each do |dir|
      add_group dir.split('/').last, dir
    end
  end
rescue LoadError
end if ENV['COVERAGE']

$: << File.join(File.dirname(File.dirname(__FILE__)), "lib")

%w(AWS AMAZON).each do |prefix|
  ENV.delete("#{prefix}_REGION")
  ENV.delete("#{prefix}_ACCESS_KEY_ID")
  ENV.delete("#{prefix}_SECRET_ACCESS_KEY")
end

require 'rspec'
require 'aws-sdk'

RSpec.configure do |c|
  c.filter_run_excluding :ruby => lambda {|version|
    !(RUBY_VERSION.to_s =~ /^#{version.to_s}/)
  }
end

# require all _examples.rb files in spec/shared/
Dir.glob("#{File.dirname(__FILE__)}/shared/**/*_examples.rb").each do |file|
  require file
end

class String
  def xml_cleanup
    gsub(/^\s*|\s*|\n$/m, '')
  end
end
