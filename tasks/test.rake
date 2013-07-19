# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

def execute_cmd cmd
  puts cmd if Rake.application.options.trace
  system(cmd)
  unless $?.to_i == 0
    $stderr.puts "Command failed (#{$?}): #{cmd}"
    exit($? >> 8)
  end
end

desc "Runs unit tests"
task :test do
  loader = `gem which rake/rake_test_loader`.strip
  opts = ['bundle exec ruby', '-Itest:lib', loader]
  opts += FileList[ENV['FILES'] || 'test/**/*_test.rb'].sort
  execute_cmd(opts.join(' '))
end

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  Rake::Task['test'].execute
end
