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

Given /^I am logged in as "([^\"]*)"$/ do |user|
  page.driver.extend(Module.new do
                       define_method(:env) do
                         super.merge("REMOTE_USER" => user)
                       end
                     end)
end

Then /^I should see the following text:$/ do |table|
  #pp page.all(:xpath, "//*").map {|e| [e.inspect, e.text]}
  table.rows_hash.each do |selector, text|
    page.should have_selector(selector)
    find(selector).should have_content(text)
  end
end

When /^I click the "([^\"]*)" link$/ do |name|
  pending # doesn't seem to work for JS links
  When %{I follow "#{name}"}
end
