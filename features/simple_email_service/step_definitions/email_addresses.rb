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

When /^I ask to verify the email address "([^"]*)"$/ do |email_address|
  @ses.email_addresses.verify(email_address)
end

When /^I ask to delete the email address "([^"]*)"$/ do |email_address|
  @ses.email_addresses.delete(email_address)
end

When /^I enumerate verified email addresses$/ do
  @ses.email_addresses.to_a
end
