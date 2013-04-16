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


When(/^I use the client to describe connections$/) do
  @response = @direct_connect.client.describe_connections
end

Then(/^the result should have an array of connections$/) do
  @response.data[:connections].should be_an(Array)
end

When(/^I use the client to describe a non\-existent connection$/) do
  begin
    @direct_connect.client.describe_connection_detail(:connection_id => 'abc')
  rescue => error
    @error = error
  end
end
