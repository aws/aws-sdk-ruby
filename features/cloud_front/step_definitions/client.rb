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


When /^I use the client to list distributions$/ do
  @response = @cloud_front_client.list_distributions
end

Then /^the result should have an array of distributions$/ do
  @response[:items].should be_an(Array)
end

Then /^an integer value for quantity$/ do
  @response[:quantity].should be_an(Integer)
end

When /^I use the client to get a non\-existent distribution$/ do
  begin
    @cloud_front_client.get_distribution(:id => 'abc')
  rescue => @error
  end
end
