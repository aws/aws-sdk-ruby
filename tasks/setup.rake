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

desc "Performs initial setup work"
task :setup do
  target = 'vendor/seahorse'
  if Dir.exists?(target)
    puts "#{target} directory already exists"
  else
    sh "mkdir -p #{target}"
    sh "git clone https://github.com/aws/seahorse.git vendor/seahorse"
  end
  chdir(target) { sh "bundle install" }
  sh "bundle install"
end
