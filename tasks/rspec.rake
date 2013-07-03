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

def execute_cmd cmd
  puts cmd if Rake.application.options.trace
  system(cmd)
  raise "Command failed with status (#{$?.to_i}): #{cmd}" if $?.to_i != 0
end

desc 'Run RSpec code examples'
task :spec => [:loading_tests] do
  opts = ['rspec', '-c']
  if ENV['DEBUG']
    $DEBUG = true
    opts += ['-d']
  end
  opts += FileList["spec/**/*_spec.rb"].sort
  execute_cmd(opts.join(' '))
end

task :loading_tests do
  execute_cmd("ruby spec/require_test_1.rb")
  execute_cmd("ruby spec/require_test_2.rb")
  execute_cmd("ruby spec/require_test_3.rb")
end

task :spec_isolate do
  # execute rspec tests, one file at a time
  spec_files = FileList["spec/**/*_spec.rb"]
  spec_files.each do |spec_file|
    execute_cmd("bundle exec rspec #{spec_file}")
  end
end
