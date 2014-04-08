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

Before("@iam") do
  @iam = AWS::IAM.new
  @iam_client = @iam.client

  @created_users = []
  @created_user_policies = []
  @uploaded_signing_certificates = []
  @created_account_aliases = []
  @created_access_keys = []
  @set_account_password_policy = false

  @created_groups = []
  @numbered_groups = {}

  @created_server_certificates = []

  @created_mfa_devices = []

  @created_role_names = []

end

After("@iam") do

  @created_role_names.each do |role_name|
    begin
      @iam_client.delete_role(:role_name => role_name)
    rescue AWS::IAM::Errors::NoSuchEntity
    end
  end

  if @set_account_password_policy
    @iam.delete_account_password_policy
  end

  @created_access_keys.each do |access_key|
    begin
      access_key.delete
    rescue AWS::IAM::Errors::NoSuchEntity
      # some tests delete the access keys they create
    end
  end

  # iam only allows one account alias at a time, currently
  unless @created_account_aliases.empty?
    begin
      @iam.account_aliases.delete(@created_account_aliases.last)
    rescue AWS::IAM::Errors::NoSuchEntity
      # some tests delete the aliases they create
    end
  end

  @uploaded_signing_certificates.each do |sc|
    begin
      sc.delete
    rescue AWS::IAM::Errors::NoSuchEntity
      # some tests delete the aliases they create
    end
  end

  @created_user_policies.each do |user_policy|
    user_policy.delete
  end

  # empty the groups before deleting users or groups
  @created_groups.each do |group|
    begin
      group.users.clear
      group.policies.clear
    rescue AWS::IAM::Errors::NoSuchEntity
    end
  end

  @created_users.each do |user|
    begin
      user.policies.clear
      user.login_profile.delete if user.login_profile.exists?
      user.mfa_devices.clear
      user.delete
    rescue AWS::IAM::Errors::EntityTemporarilyUnmodifiable => e
      sleep 1
      retry
    rescue AWS::IAM::Errors::NoSuchEntity
      # some of the test delete the users they created themselves
    end
  end

  @created_groups.each { |g| g.delete rescue nil }

  # iam only allows one account alias at a time, currently
  unless @created_account_aliases.empty?
    begin
      @iam.account_aliases.delete(@created_account_aliases.last)
    rescue AWS::IAM::Errors::NoSuchEntity
      # some tests delete the aliases they create
    end
  end

  @created_server_certificates.each { |sc| sc.delete rescue nil }

  @created_mfa_devices.each { |d| d.delete rescue nil }

end
