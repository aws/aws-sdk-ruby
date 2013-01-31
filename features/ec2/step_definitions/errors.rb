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

When /^(.*) rescuing "([^\"]*)":$/ do |i_do_something, class_name, string|
  error = AWS.module_eval(class_name)
  begin
    step i_do_something, string
  rescue error => e
    @error = e
  end
end

When /^(.*) rescuing "([^\"]*)"$/ do |i_do_something, class_name|
  error = AWS.module_eval(class_name)
  begin
    step i_do_something
  rescue error => e
    @error = e
  end
end

Then /^I should rescue the error with code "([^\"]*)"$/ do |code|
  @error.should_not be_nil
  @error.code.should == code
end
