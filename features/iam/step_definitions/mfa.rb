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

def create_virtual_mfa_device(options = {})
  name = "RubyTest-#{Time.now.to_f}"
  @result = @mfa_device = @iam.virtual_mfa_devices.create(name, options)
  @created_mfa_devices << @mfa_device
end

When /^I create an IAM virtual MFA device$/ do
  create_virtual_mfa_device
end

Then /^the result should be an MFA device$/ do
  @result.should be_an(IAM::VirtualMfaDevice)
end

Given /^I create (\d+) IAM virtual MFA devices$/ do |n|
  n.to_i.times { create_virtual_mfa_device }
end

When /^I list IAM virtual MFA devices with a limit of (\d+) and a batch size of (\d+)$/ do |limit, batch|
  @result = @iam.virtual_mfa_devices.enumerator(:limit => limit.to_i,
                                                :batch_size => batch.to_i).to_a
end

When /^I enable the virtual MFA device for the user$/ do
  require 'rotp'
  @totp = ROTP::TOTP.new(@mfa_device.base_32_string_seed)
  auth1 = @totp.now
  sleep 30
  auth2 = @totp.now
  @mfa_device.enable(@user, auth1, auth2)
end

Then /^the list of MFA devices for the user should include the device I created$/ do
  @user.mfa_devices.should include(@mfa_device)
end
