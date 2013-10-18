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


When /^I use the client to describe services$/ do
  @response = @support_client.describe_services
end

Then /^the result should contain service "(.*?)" with code "(.*?)"$/ do |name, code|
  service = @response[:services].find {|s| s[:name] == name && s[:code] == code }
  service[:name].should == name
  service[:code].should == code
end

When /^I use the client to create a case$/ do
  begin
    @support_client.create_case :subject => "Subject",
                                :service_code => "INVALID-CODE",
                                :category_code => "INVALID-CATEGORY",
                                :communication_body => "Communication"
  rescue => @error
  end
end
