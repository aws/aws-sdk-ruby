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


When /^I use the client to list jobs$/ do
  @response = @import_export_client.list_jobs
end

Then /^the result should have an array of jobs$/ do
  @response[:jobs].should be_an(Array)
end

Then /^a boolean value for truncated$/ do
  [true,false].should include(@response[:is_truncated])
end

When /^I use the client to get status on a non\-existent job$/ do
  begin
    @import_export_client.get_status(:job_id => 'abc')
  rescue => @error
  end
end
