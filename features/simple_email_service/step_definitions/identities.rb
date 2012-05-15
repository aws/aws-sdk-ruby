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

When /^I ask to verify the identity "([^"]*)"$/ do |identity|
  @identity = @ses.identities.verify(identity)
  @created_identities << @identity
end

Then /^the identity should be "([^"]*)"$/ do |identity|
  @identity.identity.should == identity
end

Then /^the identity should not have a verification token$/ do
  @identity.verification_token.should == nil
end

Then /^the identity should have a verification token$/ do
  @identity.verification_token.should be_a(String)
end

When /^I delete the identity$/ do
  @identity.delete
end

Then /^the identity should exist$/ do
  eventually do
    @identity.exists?.should == true
  end
end

Then /^the identity should not exist$/ do
  eventually do
    @identity.exists?.should == false
  end
end

Then /^the identity should be in the identies collection$/ do
  eventually do
    @ses.identities.should include(@identity)
  end
end

Given /^I verify (\d+) identities$/ do |count|
  count.to_i.times do |i|
    @created_identities << @ses.identities.verify("foo#{i}@amazon.com")
  end
end

When /^I enumerate identities with a limit of (\d+) and batch size of (\d+)$/ do |limit, batch_size|
  @ses.identities.each(:limit => limit.to_i, :batch_size => batch_size.to_i) do |i|
    #...
  end
end
