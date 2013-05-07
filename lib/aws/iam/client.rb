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

module AWS
  class IAM

    # Client class for AWS Identity and Access Management (IAM).
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[
        :get_group,
        :get_group_policy,
        :get_instance_profile,
        :get_role_policy,
        :list_groups,
        :list_group_policies,
        :list_groups_for_user,
        :list_instance_profiles,
        :list_instance_profiles_for_role,
        :list_role_policies,
        :list_roles,
        :list_server_certificates,
        :list_virtual_mfa_devices,
      ]

      # client methods #

      # @!method add_role_to_instance_profile(options = {})
      # Calls the AddRoleToInstanceProfile API operation.
      # @param [Hash] options
      #   * `:instance_profile_name` - *required* - (String) Name of the
      #     instance profile to update.
      #   * `:role_name` - *required* - (String) Name of the role to add.
      # @return [Core::Response]

      # @!method add_user_to_group(options = {})
      # Calls the AddUserToGroup API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group to update.
      #   * `:user_name` - *required* - (String) Name of the user to add.
      # @return [Core::Response]

      # @!method change_password(options = {})
      # Calls the ChangePassword API operation.
      # @param [Hash] options
      #   * `:old_password` - *required* - (String)
      #   * `:new_password` - *required* - (String)
      # @return [Core::Response]

      # @!method create_access_key(options = {})
      # Calls the CreateAccessKey API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) The user name that the new key will belong
      #     to.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:access_key` - (Hash)
      #     * `:user_name` - (String)
      #     * `:access_key_id` - (String)
      #     * `:status` - (String)
      #     * `:secret_access_key` - (String)
      #     * `:create_date` - (Time)

      # @!method create_account_alias(options = {})
      # Calls the CreateAccountAlias API operation.
      # @param [Hash] options
      #   * `:account_alias` - *required* - (String) Name of the account alias
      #     to create.
      # @return [Core::Response]

      # @!method create_group(options = {})
      # Calls the CreateGroup API operation.
      # @param [Hash] options
      #   * `:path` - (String) The path to the group. For more information
      #     about paths, see Identifiers for IAM Entities in Using AWS Identity
      #     and Access Management. This parameter is optional. If it is not
      #     included, it defaults to a slash (/).
      #   * `:group_name` - *required* - (String) Name of the group to create.
      #     Do not include the path in this value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:group` - (Hash)
      #     * `:path` - (String)
      #     * `:group_name` - (String)
      #     * `:group_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)

      # @!method create_instance_profile(options = {})
      # Calls the CreateInstanceProfile API operation.
      # @param [Hash] options
      #   * `:instance_profile_name` - *required* - (String) Name of the
      #     instance profile to create.
      #   * `:path` - (String) The path to the instance profile. For more
      #     information about paths, see Identifiers for IAM Entities in Using
      #     AWS Identity and Access Management. This parameter is optional. If
      #     it is not included, it defaults to a slash (/).
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instance_profile` - (Hash)
      #     * `:path` - (String)
      #     * `:instance_profile_name` - (String)
      #     * `:instance_profile_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:roles` - (Array<Hash>)
      #       * `:path` - (String)
      #       * `:role_name` - (String)
      #       * `:role_id` - (String)
      #       * `:arn` - (String)
      #       * `:create_date` - (Time)
      #       * `:assume_role_policy_document` - (String)

      # @!method create_login_profile(options = {})
      # Calls the CreateLoginProfile API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user to create a
      #     password for.
      #   * `:password` - *required* - (String) The new password for the user
      #     name.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:login_profile` - (Hash)
      #     * `:user_name` - (String)
      #     * `:create_date` - (Time)

      # @!method create_role(options = {})
      # Calls the CreateRole API operation.
      # @param [Hash] options
      #   * `:path` - (String) The path to the role. For more information about
      #     paths, see Identifiers for IAM Entities in Using AWS Identity and
      #     Access Management. This parameter is optional. If it is not
      #     included, it defaults to a slash (/).
      #   * `:role_name` - *required* - (String) Name of the role to create.
      #   * `:assume_role_policy_document` - *required* - (String) The policy
      #     that grants an entity permission to assume the role.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:role` - (Hash)
      #     * `:path` - (String)
      #     * `:role_name` - (String)
      #     * `:role_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:assume_role_policy_document` - (String)

      # @!method create_user(options = {})
      # Calls the CreateUser API operation.
      # @param [Hash] options
      #   * `:path` - (String) The path for the user name. For more information
      #     about paths, see Identifiers for IAM Entities in Using AWS Identity
      #     and Access Management. This parameter is optional. If it is not
      #     included, it defaults to a slash (/).
      #   * `:user_name` - *required* - (String) Name of the user to create.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:user` - (Hash)
      #     * `:path` - (String)
      #     * `:user_name` - (String)
      #     * `:user_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)

      # @!method create_virtual_mfa_device(options = {})
      # Calls the CreateVirtualMFADevice API operation.
      # @param [Hash] options
      #   * `:path` - (String) The path for the virtual MFA device. For more
      #     information about paths, see Identifiers for IAM Entities in Using
      #     AWS Identity and Access Management. This parameter is optional. If
      #     it is not included, it defaults to a slash (/).
      #   * `:virtual_mfa_device_name` - *required* - (String) The name of the
      #     virtual MFA device. Use with path to uniquely identify a virtual
      #     MFA device.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_mfa_device` - (Hash)
      #     * `:serial_number` - (String)
      #     * `:base_32_string_seed` - (String)
      #     * `:qr_code_png` - (String)
      #     * `:user` - (Hash)
      #       * `:path` - (String)
      #       * `:user_name` - (String)
      #       * `:user_id` - (String)
      #       * `:arn` - (String)
      #       * `:create_date` - (Time)
      #     * `:enable_date` - (Time)

      # @!method deactivate_mfa_device(options = {})
      # Calls the DeactivateMFADevice API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user whose MFA
      #     device you want to deactivate.
      #   * `:serial_number` - *required* - (String) The serial number that
      #     uniquely identifies the MFA device. For virtual MFA devices, the
      #     serial number is the device ARN.
      # @return [Core::Response]

      # @!method delete_access_key(options = {})
      # Calls the DeleteAccessKey API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user whose key you want to
      #     delete.
      #   * `:access_key_id` - *required* - (String) The Access Key ID for the
      #     Access Key ID and Secret Access Key you want to delete.
      # @return [Core::Response]

      # @!method delete_account_alias(options = {})
      # Calls the DeleteAccountAlias API operation.
      # @param [Hash] options
      #   * `:account_alias` - *required* - (String) Name of the account alias
      #     to delete.
      # @return [Core::Response]

      # @!method delete_account_password_policy(options = {})
      # Calls the DeleteAccountPasswordPolicy API operation.
      # @param [Hash] options
      # @return [Core::Response]

      # @!method delete_group(options = {})
      # Calls the DeleteGroup API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group to delete.
      # @return [Core::Response]

      # @!method delete_group_policy(options = {})
      # Calls the DeleteGroupPolicy API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group the policy
      #     is associated with.
      #   * `:policy_name` - *required* - (String) Name of the policy document
      #     to delete.
      # @return [Core::Response]

      # @!method delete_instance_profile(options = {})
      # Calls the DeleteInstanceProfile API operation.
      # @param [Hash] options
      #   * `:instance_profile_name` - *required* - (String) Name of the
      #     instance profile to delete.
      # @return [Core::Response]

      # @!method delete_login_profile(options = {})
      # Calls the DeleteLoginProfile API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user whose
      #     password you want to delete.
      # @return [Core::Response]

      # @!method delete_role(options = {})
      # Calls the DeleteRole API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) Name of the role to delete.
      # @return [Core::Response]

      # @!method delete_role_policy(options = {})
      # Calls the DeleteRolePolicy API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) Name of the role the
      #     associated with the policy.
      #   * `:policy_name` - *required* - (String) Name of the policy document
      #     to delete.
      # @return [Core::Response]

      # @!method delete_server_certificate(options = {})
      # Calls the DeleteServerCertificate API operation.
      # @param [Hash] options
      #   * `:server_certificate_name` - *required* - (String) The name of the
      #     server certificate you want to delete.
      # @return [Core::Response]

      # @!method delete_signing_certificate(options = {})
      # Calls the DeleteSigningCertificate API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user the signing certificate
      #     belongs to.
      #   * `:certificate_id` - *required* - (String) ID of the signing
      #     certificate to delete.
      # @return [Core::Response]

      # @!method delete_user(options = {})
      # Calls the DeleteUser API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user to delete.
      # @return [Core::Response]

      # @!method delete_user_policy(options = {})
      # Calls the DeleteUserPolicy API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user the policy is
      #     associated with.
      #   * `:policy_name` - *required* - (String) Name of the policy document
      #     to delete.
      # @return [Core::Response]

      # @!method delete_virtual_mfa_device(options = {})
      # Calls the DeleteVirtualMFADevice API operation.
      # @param [Hash] options
      #   * `:serial_number` - *required* - (String) The serial number that
      #     uniquely identifies the MFA device. For virtual MFA devices, the
      #     serial number is the same as the ARN.
      # @return [Core::Response]

      # @!method enable_mfa_device(options = {})
      # Calls the EnableMFADevice API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user for whom you
      #     want to enable the MFA device.
      #   * `:serial_number` - *required* - (String) The serial number that
      #     uniquely identifies the MFA device. For virtual MFA devices, the
      #     serial number is the device ARN.
      #   * `:authentication_code_1` - *required* - (String) An authentication
      #     code emitted by the device.
      #   * `:authentication_code_2` - *required* - (String) A subsequent
      #     authentication code emitted by the device.
      # @return [Core::Response]

      # @!method get_account_password_policy(options = {})
      # Calls the GetAccountPasswordPolicy API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:password_policy` - (Hash)
      #     * `:minimum_password_length` - (Integer)
      #     * `:require_symbols` - (Boolean)
      #     * `:require_numbers` - (Boolean)
      #     * `:require_uppercase_characters` - (Boolean)
      #     * `:require_lowercase_characters` - (Boolean)
      #     * `:allow_users_to_change_password` - (Boolean)

      # @!method get_account_summary(options = {})
      # Calls the GetAccountSummary API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:summary_map` - (Hash<String,Integer>)

      # @!method get_group(options = {})
      # Calls the GetGroup API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of user names you want in the response.
      #     If there are additional user names beyond the maximum you specify,
      #     the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:group` - (Hash)
      #     * `:path` - (String)
      #     * `:group_name` - (String)
      #     * `:group_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #   * `:users` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:user_name` - (String)
      #     * `:user_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method get_group_policy(options = {})
      # Calls the GetGroupPolicy API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group the policy
      #     is associated with.
      #   * `:policy_name` - *required* - (String) Name of the policy document
      #     to get.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:group_name` - (String)
      #   * `:policy_name` - (String)
      #   * `:policy_document` - (String)

      # @!method get_instance_profile(options = {})
      # Calls the GetInstanceProfile API operation.
      # @param [Hash] options
      #   * `:instance_profile_name` - *required* - (String) Name of the
      #     instance profile to get information about.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instance_profile` - (Hash)
      #     * `:path` - (String)
      #     * `:instance_profile_name` - (String)
      #     * `:instance_profile_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:roles` - (Array<Hash>)
      #       * `:path` - (String)
      #       * `:role_name` - (String)
      #       * `:role_id` - (String)
      #       * `:arn` - (String)
      #       * `:create_date` - (Time)
      #       * `:assume_role_policy_document` - (String)

      # @!method get_login_profile(options = {})
      # Calls the GetLoginProfile API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user whose login
      #     profile you want to retrieve.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:login_profile` - (Hash)
      #     * `:user_name` - (String)
      #     * `:create_date` - (Time)

      # @!method get_role(options = {})
      # Calls the GetRole API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) Name of the role to get
      #     information about.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:role` - (Hash)
      #     * `:path` - (String)
      #     * `:role_name` - (String)
      #     * `:role_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:assume_role_policy_document` - (String)

      # @!method get_role_policy(options = {})
      # Calls the GetRolePolicy API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) Name of the role associated
      #     with the policy.
      #   * `:policy_name` - *required* - (String) Name of the policy document
      #     to get.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:role_name` - (String)
      #   * `:policy_name` - (String)
      #   * `:policy_document` - (String)

      # @!method get_server_certificate(options = {})
      # Calls the GetServerCertificate API operation.
      # @param [Hash] options
      #   * `:server_certificate_name` - *required* - (String) The name of the
      #     server certificate you want to retrieve information about.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:server_certificate` - (Hash)
      #     * `:server_certificate_metadata` - (Hash)
      #       * `:path` - (String)
      #       * `:server_certificate_name` - (String)
      #       * `:server_certificate_id` - (String)
      #       * `:arn` - (String)
      #       * `:upload_date` - (Time)
      #     * `:certificate_body` - (String)
      #     * `:certificate_chain` - (String)

      # @!method get_user(options = {})
      # Calls the GetUser API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user to get information about.
      #     This parameter is optional. If it is not included, it defaults to
      #     the user making the request.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:user` - (Hash)
      #     * `:path` - (String)
      #     * `:user_name` - (String)
      #     * `:user_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)

      # @!method get_user_policy(options = {})
      # Calls the GetUserPolicy API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user who the
      #     policy is associated with.
      #   * `:policy_name` - *required* - (String) Name of the policy document
      #     to get.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:user_name` - (String)
      #   * `:policy_name` - (String)
      #   * `:policy_document` - (String)

      # @!method list_access_keys(options = {})
      # Calls the ListAccessKeys API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user.
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of keys you want in the
      #     response. If there are additional keys beyond the maximum you
      #     specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:access_key_metadata` - (Array<Hash>)
      #     * `:user_name` - (String)
      #     * `:access_key_id` - (String)
      #     * `:status` - (String)
      #     * `:create_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_account_aliases(options = {})
      # Calls the ListAccountAliases API operation.
      # @param [Hash] options
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of account aliases you want in the
      #     response. If there are additional account aliases beyond the
      #     maximum you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:account_aliases` - (Array<String>)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_group_policies(options = {})
      # Calls the ListGroupPolicies API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) The name of the group to list
      #     policies for.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of policy names you want in the
      #     response. If there are additional policy names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:policy_names` - (Array<String>)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_groups(options = {})
      # Calls the ListGroups API operation.
      # @param [Hash] options
      #   * `:path_prefix` - (String) The path prefix for filtering the
      #     results. For example: /division_abc/subdivision_xyz/, which would
      #     get all groups whose path starts with
      #     /division_abc/subdivision_xyz/. This parameter is optional. If it
      #     is not included, it defaults to a slash (/), listing all groups.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of groups you want in the response. If
      #     there are additional groups beyond the maximum you specify, the
      #     IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:groups` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:group_name` - (String)
      #     * `:group_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_groups_for_user(options = {})
      # Calls the ListGroupsForUser API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) The name of the user to list
      #     groups for.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of groups you want in the response. If
      #     there are additional groups beyond the maximum you specify, the
      #     IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:groups` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:group_name` - (String)
      #     * `:group_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_instance_profiles(options = {})
      # Calls the ListInstanceProfiles API operation.
      # @param [Hash] options
      #   * `:path_prefix` - (String) The path prefix for filtering the
      #     results. For example: /application_abc/component_xyz/, which would
      #     get all instance profiles whose path starts with
      #     /application_abc/component_xyz/. This parameter is optional. If it
      #     is not included, it defaults to a slash (/), listing all instance
      #     profiles.
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of user names you want in
      #     the response. If there are additional user names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instance_profiles` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:instance_profile_name` - (String)
      #     * `:instance_profile_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:roles` - (Array<Hash>)
      #       * `:path` - (String)
      #       * `:role_name` - (String)
      #       * `:role_id` - (String)
      #       * `:arn` - (String)
      #       * `:create_date` - (Time)
      #       * `:assume_role_policy_document` - (String)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_instance_profiles_for_role(options = {})
      # Calls the ListInstanceProfilesForRole API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) The name of the role to list
      #     instance profiles for.
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of user names you want in
      #     the response. If there are additional user names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:instance_profiles` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:instance_profile_name` - (String)
      #     * `:instance_profile_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:roles` - (Array<Hash>)
      #       * `:path` - (String)
      #       * `:role_name` - (String)
      #       * `:role_id` - (String)
      #       * `:arn` - (String)
      #       * `:create_date` - (Time)
      #       * `:assume_role_policy_document` - (String)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_mfa_devices(options = {})
      # Calls the ListMFADevices API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user whose MFA devices you want
      #     to list.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of MFA devices you want in the
      #     response. If there are additional MFA devices beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:mfa_devices` - (Array<Hash>)
      #     * `:user_name` - (String)
      #     * `:serial_number` - (String)
      #     * `:enable_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_role_policies(options = {})
      # Calls the ListRolePolicies API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) The name of the role to list
      #     policies for.
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of user names you want in
      #     the response. If there are additional user names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:policy_names` - (Array<String>)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_roles(options = {})
      # Calls the ListRoles API operation.
      # @param [Hash] options
      #   * `:path_prefix` - (String) The path prefix for filtering the
      #     results. For example: /application_abc/component_xyz/, which would
      #     get all roles whose path starts with
      #     /application_abc/component_xyz/. This parameter is optional. If it
      #     is not included, it defaults to a slash (/), listing all roles.
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of user names you want in
      #     the response. If there are additional user names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:roles` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:role_name` - (String)
      #     * `:role_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #     * `:assume_role_policy_document` - (String)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_server_certificates(options = {})
      # Calls the ListServerCertificates API operation.
      # @param [Hash] options
      #   * `:path_prefix` - (String) The path prefix for filtering the
      #     results. For example: /company/servercerts would get all server
      #     certificates for which the path starts with /company/servercerts.
      #     This parameter is optional. If it is not included, it defaults to a
      #     slash (/), listing all server certificates.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of server certificates you want in the
      #     response. If there are additional server certificates beyond the
      #     maximum you specify, the IsTruncated response element will be set
      #     to `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:server_certificate_metadata_list` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:server_certificate_name` - (String)
      #     * `:server_certificate_id` - (String)
      #     * `:arn` - (String)
      #     * `:upload_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_signing_certificates(options = {})
      # Calls the ListSigningCertificates API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) The name of the user.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of certificate IDs you want in the
      #     response. If there are additional certificate IDs beyond the
      #     maximum you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:certificates` - (Array<Hash>)
      #     * `:user_name` - (String)
      #     * `:certificate_id` - (String)
      #     * `:certificate_body` - (String)
      #     * `:status` - (String)
      #     * `:upload_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_user_policies(options = {})
      # Calls the ListUserPolicies API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) The name of the user to list
      #     policies for.
      #   * `:marker` - (String) Use this only when paginating results, and
      #     only in a subsequent request after you've received a response where
      #     the results are truncated. Set it to the value of the Marker
      #     element in the response you just received.
      #   * `:max_items` - (Integer) Use this only when paginating results to
      #     indicate the maximum number of policy names you want in the
      #     response. If there are additional policy names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:policy_names` - (Array<String>)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_users(options = {})
      # Calls the ListUsers API operation.
      # @param [Hash] options
      #   * `:path_prefix` - (String) The path prefix for filtering the
      #     results. For example: /division_abc/subdivision_xyz/, which would
      #     get all user names whose path starts with
      #     /division_abc/subdivision_xyz/. This parameter is optional. If it
      #     is not included, it defaults to a slash (/), listing all user
      #     names.
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of user names you want in
      #     the response. If there are additional user names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:users` - (Array<Hash>)
      #     * `:path` - (String)
      #     * `:user_name` - (String)
      #     * `:user_id` - (String)
      #     * `:arn` - (String)
      #     * `:create_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method list_virtual_mfa_devices(options = {})
      # Calls the ListVirtualMFADevices API operation.
      # @param [Hash] options
      #   * `:assignment_status` - (String) The status (unassigned or assigned)
      #     of the devices to list. If you do not specify an AssignmentStatus,
      #     the action defaults to Any which lists both assigned and unassigned
      #     virtual MFA devices. Valid values include:
      #     * `Assigned`
      #     * `Unassigned`
      #     * `Any`
      #   * `:marker` - (String) Use this parameter only when paginating
      #     results, and only in a subsequent request after you've received a
      #     response where the results are truncated. Set it to the value of
      #     the Marker element in the response you just received.
      #   * `:max_items` - (Integer) Use this parameter only when paginating
      #     results to indicate the maximum number of user names you want in
      #     the response. If there are additional user names beyond the maximum
      #     you specify, the IsTruncated response element is `true` .
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:virtual_mfa_devices` - (Array<Hash>)
      #     * `:serial_number` - (String)
      #     * `:base_32_string_seed` - (String)
      #     * `:qr_code_png` - (String)
      #     * `:user` - (Hash)
      #       * `:path` - (String)
      #       * `:user_name` - (String)
      #       * `:user_id` - (String)
      #       * `:arn` - (String)
      #       * `:create_date` - (Time)
      #     * `:enable_date` - (Time)
      #   * `:is_truncated` - (Boolean)
      #   * `:marker` - (String)

      # @!method put_group_policy(options = {})
      # Calls the PutGroupPolicy API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group to
      #     associate the policy with.
      #   * `:policy_name` - *required* - (String) Name of the policy document.
      #   * `:policy_document` - *required* - (String) The policy document.
      # @return [Core::Response]

      # @!method put_role_policy(options = {})
      # Calls the PutRolePolicy API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) Name of the role to associate
      #     the policy with.
      #   * `:policy_name` - *required* - (String) Name of the policy document.
      #   * `:policy_document` - *required* - (String) The policy document.
      # @return [Core::Response]

      # @!method put_user_policy(options = {})
      # Calls the PutUserPolicy API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user to associate
      #     the policy with.
      #   * `:policy_name` - *required* - (String) Name of the policy document.
      #   * `:policy_document` - *required* - (String) The policy document.
      # @return [Core::Response]

      # @!method remove_role_from_instance_profile(options = {})
      # Calls the RemoveRoleFromInstanceProfile API operation.
      # @param [Hash] options
      #   * `:instance_profile_name` - *required* - (String) Name of the
      #     instance profile to update.
      #   * `:role_name` - *required* - (String) Name of the role to remove.
      # @return [Core::Response]

      # @!method remove_user_from_group(options = {})
      # Calls the RemoveUserFromGroup API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group to update.
      #   * `:user_name` - *required* - (String) Name of the user to remove.
      # @return [Core::Response]

      # @!method resync_mfa_device(options = {})
      # Calls the ResyncMFADevice API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user whose MFA
      #     device you want to resynchronize.
      #   * `:serial_number` - *required* - (String) Serial number that
      #     uniquely identifies the MFA device.
      #   * `:authentication_code_1` - *required* - (String) An authentication
      #     code emitted by the device.
      #   * `:authentication_code_2` - *required* - (String) A subsequent
      #     authentication code emitted by the device.
      # @return [Core::Response]

      # @!method update_access_key(options = {})
      # Calls the UpdateAccessKey API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user whose key you want to
      #     update.
      #   * `:access_key_id` - *required* - (String) The Access Key ID of the
      #     Secret Access Key you want to update.
      #   * `:status` - *required* - (String) The status you want to assign to
      #     the Secret Access Key. Active means the key can be used for API
      #     calls to AWS, while Inactive means the key cannot be used. Valid
      #     values include:
      #     * `Active`
      #     * `Inactive`
      # @return [Core::Response]

      # @!method update_account_password_policy(options = {})
      # Calls the UpdateAccountPasswordPolicy API operation.
      # @param [Hash] options
      #   * `:minimum_password_length` - (Integer)
      #   * `:require_symbols` - (Boolean)
      #   * `:require_numbers` - (Boolean)
      #   * `:require_uppercase_characters` - (Boolean)
      #   * `:require_lowercase_characters` - (Boolean)
      #   * `:allow_users_to_change_password` - (Boolean)
      # @return [Core::Response]

      # @!method update_assume_role_policy(options = {})
      # Calls the UpdateAssumeRolePolicy API operation.
      # @param [Hash] options
      #   * `:role_name` - *required* - (String) Name of the role to update.
      #   * `:policy_document` - *required* - (String) The policy that grants
      #     an entity permission to assume the role.
      # @return [Core::Response]

      # @!method update_group(options = {})
      # Calls the UpdateGroup API operation.
      # @param [Hash] options
      #   * `:group_name` - *required* - (String) Name of the group to update.
      #     If you're changing the name of the group, this is the original
      #     name.
      #   * `:new_path` - (String) New path for the group. Only include this if
      #     changing the group's path.
      #   * `:new_group_name` - (String) New name for the group. Only include
      #     this if changing the group's name.
      # @return [Core::Response]

      # @!method update_login_profile(options = {})
      # Calls the UpdateLoginProfile API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user whose
      #     password you want to update.
      #   * `:password` - (String) The new password for the user name.
      # @return [Core::Response]

      # @!method update_server_certificate(options = {})
      # Calls the UpdateServerCertificate API operation.
      # @param [Hash] options
      #   * `:server_certificate_name` - *required* - (String) The name of the
      #     server certificate that you want to update.
      #   * `:new_path` - (String) The new path for the server certificate.
      #     Include this only if you are updating the server certificate's
      #     path.
      #   * `:new_server_certificate_name` - (String) The new name for the
      #     server certificate. Include this only if you are updating the
      #     server certificate's name.
      # @return [Core::Response]

      # @!method update_signing_certificate(options = {})
      # Calls the UpdateSigningCertificate API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user the signing certificate
      #     belongs to.
      #   * `:certificate_id` - *required* - (String) The ID of the signing
      #     certificate you want to update.
      #   * `:status` - *required* - (String) The status you want to assign to
      #     the certificate. Active means the certificate can be used for API
      #     calls to AWS, while Inactive means the certificate cannot be used.
      #     Valid values include:
      #     * `Active`
      #     * `Inactive`
      # @return [Core::Response]

      # @!method update_user(options = {})
      # Calls the UpdateUser API operation.
      # @param [Hash] options
      #   * `:user_name` - *required* - (String) Name of the user to update. If
      #     you're changing the name of the user, this is the original user
      #     name.
      #   * `:new_path` - (String) New path for the user. Include this
      #     parameter only if you're changing the user's path.
      #   * `:new_user_name` - (String) New name for the user. Include this
      #     parameter only if you're changing the user's name.
      # @return [Core::Response]

      # @!method upload_server_certificate(options = {})
      # Calls the UploadServerCertificate API operation.
      # @param [Hash] options
      #   * `:path` - (String) The path for the server certificate. For more
      #     information about paths, see Identifiers for IAM Entities in Using
      #     AWS Identity and Access Management. This parameter is optional. If
      #     it is not included, it defaults to a slash (/).
      #   * `:server_certificate_name` - *required* - (String) The name for the
      #     server certificate. Do not include the path in this value.
      #   * `:certificate_body` - *required* - (String) The contents of the
      #     public key certificate in PEM-encoded format.
      #   * `:private_key` - *required* - (String) The contents of the private
      #     key in PEM-encoded format.
      #   * `:certificate_chain` - (String) The contents of the certificate
      #     chain. This is typically a concatenation of the PEM-encoded public
      #     key certificates of the chain.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:server_certificate_metadata` - (Hash)
      #     * `:path` - (String)
      #     * `:server_certificate_name` - (String)
      #     * `:server_certificate_id` - (String)
      #     * `:arn` - (String)
      #     * `:upload_date` - (Time)

      # @!method upload_signing_certificate(options = {})
      # Calls the UploadSigningCertificate API operation.
      # @param [Hash] options
      #   * `:user_name` - (String) Name of the user the signing certificate is
      #     for.
      #   * `:certificate_body` - *required* - (String) The contents of the
      #     signing certificate.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:certificate` - (Hash)
      #     * `:user_name` - (String)
      #     * `:certificate_id` - (String)
      #     * `:certificate_body` - (String)
      #     * `:status` - (String)
      #     * `:upload_date` - (Time)

      # end client methods #

      define_client_methods('2010-05-08')

    end
  end
end
