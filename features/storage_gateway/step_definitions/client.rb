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


When /^I use the client to list gateways with a limit of (\d+)$/ do |limit|
  @response = @storage_gateway_client.list_gateways(:limit => limit.to_i)
end

Then /^the result should have an array of gateways$/ do
  @response[:gateways].should be_an(Array)
end

When /^I use the client to describe a non\-existent gateway$/ do
  begin
    arn = "arn:aws:storagegateway:us-east-1:111122223333:gateway/mygateway"
    @response = @storage_gateway_client.describe_gateway_information(:gateway_arn => arn)
  rescue => @error
  end
end
