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

root = File.dirname(__FILE__)
tasks_dir = File.join(root, "tasks")
$:.unshift(tasks_dir)
$:.unshift(File.join(root, "lib"))

require 'aws/core' # for the version number

Dir[File.join(tasks_dir, "**", "*.rake")].each do |task_file|
  load task_file
end

# Vendor tasks
Dir[File.join(root, 'vendor', '*', 'Rakefile')].each do |vendor_rakefile|
  load vendor_rakefile
end

task :default => :spec
