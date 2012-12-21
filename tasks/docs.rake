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

require 'yard'

namespace :docs do

  YARD::Rake::YardocTask.new(:yard)

  desc "Builds a distributable documentation zip file at ./pkg/aws-docs.zip"
  task :package => [:clobber, :yard, "pkg/aws-docs.zip"]

  task :clobber do
    rm_rf "doc"
    rm_rf "pkg/aws-docs.zip"
  end

  directory "pkg"
  file "pkg/aws-docs.zip" => ["pkg", "doc"] do |t|
    rm_f t.name
    sh "zip -r #{t.name} doc"
  end

end
