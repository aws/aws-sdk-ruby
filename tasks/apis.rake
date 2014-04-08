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

namespace :api do

  desc "Lists the supported services and their API versions"
  task :versions do
    require 'aws/core'
    AWS.api_versions.each_pair do |svc,api_versions|
      api_versions.each do |api_version|
        puts("%-40s\t%s" % [svc, api_version])
      end
    end
  end

end
