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

When /^I create a key pair$/ do
  name = "ruby-integration-text-#{Time.now.to_i}"
  step "I create a key pair named \"#{name}\""
end

When /^I create a key pair named "([^\"]*)"$/ do |name|
  @key_pair = @ec2.key_pairs.create(name)
  @created_key_pairs << @key_pair
end

When /^I list key pairs$/ do
  @key_pairs = @ec2.key_pairs.to_a
end

Then /^The list should contain the key pair$/ do
  @key_pairs.should include(@key_pair)
end

When /^I delete the key pair$/ do
  @key_pair.delete
end

Then /^The list should not contain the key pair$/ do
  @key_pairs.should_not include(@key_pair)
end

Given /^I import a key pair named "([^\"]*)" with the public key:$/ do |name, public_key|
  @key_pair = @ec2.key_pairs.import(name, public_key.strip)
  @created_key_pairs << @key_pair
end

When /^I get the key pair named "([^\"]*)"$/ do |name|
  @result = @key_pair = @ec2.key_pairs[name]
end

Then /^It should have the fingerprint:$/ do |fingerprint|
  @key_pair.fingerprint.should == fingerprint.strip
end

Then /^the result should be an key pair object$/ do
  @result.should be_an(EC2::KeyPair)
end

When /^I ask if the key pair exists$/ do
  @result = @key_pair.exists?
end

When /^I compute a map of key name to key fingerprint$/ do
  @ec2.key_pairs.inject({}) do |hash, key_pair|
    hash[key_pair.name] = key_pair.fingerprint
    hash
  end
end

When /^I count the key pairs in my account$/ do
  @ec2.key_pairs.inject(0) { |count, key_pair| count + 1 }
end

When /^I get the key pair fingerprint$/ do
  @result = @key_pair.fingerprint
end
