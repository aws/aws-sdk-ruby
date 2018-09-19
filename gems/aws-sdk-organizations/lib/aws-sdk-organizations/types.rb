# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Organizations
  module Types

    # @note When making an API call, you may pass AcceptHandshakeRequest
    #   data as a hash:
    #
    #       {
    #         handshake_id: "HandshakeId", # required
    #       }
    #
    # @!attribute [rw] handshake_id
    #   The unique identifier (ID) of the handshake that you want to accept.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AcceptHandshakeRequest AWS API Documentation
    #
    class AcceptHandshakeRequest < Struct.new(
      :handshake_id)
      include Aws::Structure
    end

    # @!attribute [rw] handshake
    #   A structure that contains details about the accepted handshake.
    #   @return [Types::Handshake]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AcceptHandshakeResponse AWS API Documentation
    #
    class AcceptHandshakeResponse < Struct.new(
      :handshake)
      include Aws::Structure
    end

    # Contains information about an AWS account that is a member of an
    # organization.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the account.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address associated with the AWS account.
    #
    #   The [regex pattern][1] for this parameter is a string of characters
    #   that represents a standard Internet email address.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the account.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the account in the organization.
    #   @return [String]
    #
    # @!attribute [rw] joined_method
    #   The method by which the account joined the organization.
    #   @return [String]
    #
    # @!attribute [rw] joined_timestamp
    #   The date the account became a part of the organization.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Account AWS API Documentation
    #
    class Account < Struct.new(
      :id,
      :arn,
      :email,
      :name,
      :status,
      :joined_method,
      :joined_timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         target_id: "PolicyTargetId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The unique identifier (ID) of the policy that you want to attach to
    #   the target. You can get the ID for the policy by calling the
    #   ListPolicies operation.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier (ID) of the root, OU, or account that you want
    #   to attach the policy to. You can get the ID by calling the
    #   ListRoots, ListOrganizationalUnitsForParent, or ListAccounts
    #   operations.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AttachPolicyRequest AWS API Documentation
    #
    class AttachPolicyRequest < Struct.new(
      :policy_id,
      :target_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelHandshakeRequest
    #   data as a hash:
    #
    #       {
    #         handshake_id: "HandshakeId", # required
    #       }
    #
    # @!attribute [rw] handshake_id
    #   The unique identifier (ID) of the handshake that you want to cancel.
    #   You can get the ID from the ListHandshakesForOrganization operation.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CancelHandshakeRequest AWS API Documentation
    #
    class CancelHandshakeRequest < Struct.new(
      :handshake_id)
      include Aws::Structure
    end

    # @!attribute [rw] handshake
    #   A structure that contains details about the handshake that you
    #   canceled.
    #   @return [Types::Handshake]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CancelHandshakeResponse AWS API Documentation
    #
    class CancelHandshakeResponse < Struct.new(
      :handshake)
      include Aws::Structure
    end

    # Contains a list of child entities, either OUs or accounts.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of this child entity.
    #
    #   The [regex pattern][1] for a child ID string requires one of the
    #   following:
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that contains the OU) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of this child entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Child AWS API Documentation
    #
    class Child < Struct.new(
      :id,
      :type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccountRequest
    #   data as a hash:
    #
    #       {
    #         email: "Email", # required
    #         account_name: "AccountName", # required
    #         role_name: "RoleName",
    #         iam_user_access_to_billing: "ALLOW", # accepts ALLOW, DENY
    #       }
    #
    # @!attribute [rw] email
    #   The email address of the owner to assign to the new member account.
    #   This email address must not already be associated with another AWS
    #   account. You must use a valid email address to complete account
    #   creation. You can't access the root user of the account or remove
    #   an account that was created with an invalid email address.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The friendly name of the member account.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   (Optional)
    #
    #   The name of an IAM role that AWS Organizations automatically
    #   preconfigures in the new member account. This role trusts the master
    #   account, allowing users in the master account to assume the role, as
    #   permitted by the master account administrator. The role has
    #   administrator permissions in the new member account.
    #
    #   If you don't specify this parameter, the role name defaults to
    #   `OrganizationAccountAccessRole`.
    #
    #   For more information about how to use this role to access the member
    #   account, see [Accessing and Administering the Member Accounts in
    #   Your Organization][1] in the *AWS Organizations User Guide*, and
    #   steps 2 and 3 in [Tutorial: Delegate Access Across AWS Accounts
    #   Using IAM Roles][2] in the *IAM User Guide*.
    #
    #   The [regex pattern][3] that is used to validate this parameter is a
    #   string of characters that can consist of uppercase letters,
    #   lowercase letters, digits with no spaces, and any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html
    #   [3]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] iam_user_access_to_billing
    #   If set to `ALLOW`, the new account enables IAM users to access
    #   account billing information *if* they have the required permissions.
    #   If set to `DENY`, only the root user of the new account can access
    #   account billing information. For more information, see [Activating
    #   Access to the Billing and Cost Management Console][1] in the *AWS
    #   Billing and Cost Management User Guide*.
    #
    #   If you don't specify this parameter, the value defaults to `ALLOW`,
    #   and IAM users and roles with the required permissions can access
    #   billing information for the new account.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccountRequest AWS API Documentation
    #
    class CreateAccountRequest < Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing)
      include Aws::Structure
    end

    # @!attribute [rw] create_account_status
    #   A structure that contains details about the request to create an
    #   account. This response structure might not be fully populated when
    #   you first receive it because account creation is an asynchronous
    #   process. You can pass the returned `CreateAccountStatus` ID as a
    #   parameter to DescribeCreateAccountStatus to get status about the
    #   progress of the request at later times. You can also check the AWS
    #   CloudTrail log for the `CreateAccountResult` event. For more
    #   information, see [Monitoring the Activity in Your Organization][1]
    #   in the *AWS Organizations User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html
    #   @return [Types::CreateAccountStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccountResponse AWS API Documentation
    #
    class CreateAccountResponse < Struct.new(
      :create_account_status)
      include Aws::Structure
    end

    # Contains the status about a CreateAccount request to create an AWS
    # account in an organization.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) that references this request. You get
    #   this value from the response of the initial CreateAccount request to
    #   create the account.
    #
    #   The [regex pattern][1] for an create account request ID string
    #   requires "car-" followed by from 8 to 32 lower-case letters or
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The account name given to the account when it was created.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] requested_timestamp
    #   The date and time that the request was made for the account
    #   creation.
    #   @return [Time]
    #
    # @!attribute [rw] completed_timestamp
    #   The date and time that the account was created and the request
    #   completed.
    #   @return [Time]
    #
    # @!attribute [rw] account_id
    #   If the account was created successfully, the unique identifier (ID)
    #   of the new account.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the request failed, a description of the reason for the failure.
    #
    #   * ACCOUNT\_LIMIT\_EXCEEDED: The account could not be created because
    #     you have reached the limit on the number of accounts in your
    #     organization.
    #
    #   * EMAIL\_ALREADY\_EXISTS: The account could not be created because
    #     another AWS account with that email address already exists.
    #
    #   * INVALID\_ADDRESS: The account could not be created because the
    #     address you provided is not valid.
    #
    #   * INVALID\_EMAIL: The account could not be created because the email
    #     address you provided is not valid.
    #
    #   * INTERNAL\_FAILURE: The account could not be created because of an
    #     internal failure. Try again later. If the problem persists,
    #     contact Customer Support.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccountStatus AWS API Documentation
    #
    class CreateAccountStatus < Struct.new(
      :id,
      :account_name,
      :state,
      :requested_timestamp,
      :completed_timestamp,
      :account_id,
      :failure_reason)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         feature_set: "ALL", # accepts ALL, CONSOLIDATED_BILLING
    #       }
    #
    # @!attribute [rw] feature_set
    #   Specifies the feature set supported by the new organization. Each
    #   feature set supports different levels of functionality.
    #
    #   * *CONSOLIDATED\_BILLING*\: All member accounts have their bills
    #     consolidated to and paid by the master account. For more
    #     information, see [Consolidated Billing][1] in the *AWS
    #     Organizations User Guide*.
    #
    #   * *ALL*\: In addition to all the features supported by the
    #     consolidated billing feature set, the master account can also
    #     apply any type of policy to any member account in the
    #     organization. For more information, see [All features][2] in the
    #     *AWS Organizations User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only
    #   [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationRequest AWS API Documentation
    #
    class CreateOrganizationRequest < Struct.new(
      :feature_set)
      include Aws::Structure
    end

    # @!attribute [rw] organization
    #   A structure that contains details about the newly created
    #   organization.
    #   @return [Types::Organization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationResponse AWS API Documentation
    #
    class CreateOrganizationResponse < Struct.new(
      :organization)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOrganizationalUnitRequest
    #   data as a hash:
    #
    #       {
    #         parent_id: "ParentId", # required
    #         name: "OrganizationalUnitName", # required
    #       }
    #
    # @!attribute [rw] parent_id
    #   The unique identifier (ID) of the parent root or OU in which you
    #   want to create the new OU.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name to assign to the new OU.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationalUnitRequest AWS API Documentation
    #
    class CreateOrganizationalUnitRequest < Struct.new(
      :parent_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] organizational_unit
    #   A structure that contains details about the newly created OU.
    #   @return [Types::OrganizationalUnit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationalUnitResponse AWS API Documentation
    #
    class CreateOrganizationalUnitResponse < Struct.new(
      :organizational_unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePolicyRequest
    #   data as a hash:
    #
    #       {
    #         content: "PolicyContent", # required
    #         description: "PolicyDescription", # required
    #         name: "PolicyName", # required
    #         type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #       }
    #
    # @!attribute [rw] content
    #   The policy content to add to the new policy. For example, if you
    #   create a [service control policy][1] (SCP), this string must be JSON
    #   text that specifies the permissions that admins in attached accounts
    #   can delegate to their users, groups, and roles. For more information
    #   about the SCP syntax, see [Service Control Policy Syntax][2] in the
    #   *AWS Organizations User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [2]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description to assign to the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name to assign to the policy.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of policy to create.
    #
    #   <note markdown="1"> In the current release, the only type of policy that you can create
    #   is a service control policy (SCP).
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreatePolicyRequest AWS API Documentation
    #
    class CreatePolicyRequest < Struct.new(
      :content,
      :description,
      :name,
      :type)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A structure that contains details about the newly created policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreatePolicyResponse AWS API Documentation
    #
    class CreatePolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeclineHandshakeRequest
    #   data as a hash:
    #
    #       {
    #         handshake_id: "HandshakeId", # required
    #       }
    #
    # @!attribute [rw] handshake_id
    #   The unique identifier (ID) of the handshake that you want to
    #   decline. You can get the ID from the ListHandshakesForAccount
    #   operation.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeclineHandshakeRequest AWS API Documentation
    #
    class DeclineHandshakeRequest < Struct.new(
      :handshake_id)
      include Aws::Structure
    end

    # @!attribute [rw] handshake
    #   A structure that contains details about the declined handshake. The
    #   state is updated to show the value `DECLINED`.
    #   @return [Types::Handshake]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeclineHandshakeResponse AWS API Documentation
    #
    class DeclineHandshakeResponse < Struct.new(
      :handshake)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteOrganizationalUnitRequest
    #   data as a hash:
    #
    #       {
    #         organizational_unit_id: "OrganizationalUnitId", # required
    #       }
    #
    # @!attribute [rw] organizational_unit_id
    #   The unique identifier (ID) of the organizational unit that you want
    #   to delete. You can get the ID from the
    #   ListOrganizationalUnitsForParent operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the
    #   ID of the root that contains the OU) followed by a second "-" dash
    #   and from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeleteOrganizationalUnitRequest AWS API Documentation
    #
    class DeleteOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The unique identifier (ID) of the policy that you want to delete.
    #   You can get the ID from the ListPolicies or ListPoliciesForTarget
    #   operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The unique identifier (ID) of the AWS account that you want
    #   information about. You can get the ID from the ListAccounts or
    #   ListAccountsForParent operations.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeAccountRequest AWS API Documentation
    #
    class DescribeAccountRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   A structure that contains information about the requested account.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeAccountResponse AWS API Documentation
    #
    class DescribeAccountResponse < Struct.new(
      :account)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCreateAccountStatusRequest
    #   data as a hash:
    #
    #       {
    #         create_account_request_id: "CreateAccountRequestId", # required
    #       }
    #
    # @!attribute [rw] create_account_request_id
    #   Specifies the `operationId` that uniquely identifies the request.
    #   You can get the ID from the response to an earlier CreateAccount
    #   request, or from the ListCreateAccountStatus operation.
    #
    #   The [regex pattern][1] for an create account request ID string
    #   requires "car-" followed by from 8 to 32 lower-case letters or
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeCreateAccountStatusRequest AWS API Documentation
    #
    class DescribeCreateAccountStatusRequest < Struct.new(
      :create_account_request_id)
      include Aws::Structure
    end

    # @!attribute [rw] create_account_status
    #   A structure that contains the current status of an account creation
    #   request.
    #   @return [Types::CreateAccountStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeCreateAccountStatusResponse AWS API Documentation
    #
    class DescribeCreateAccountStatusResponse < Struct.new(
      :create_account_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHandshakeRequest
    #   data as a hash:
    #
    #       {
    #         handshake_id: "HandshakeId", # required
    #       }
    #
    # @!attribute [rw] handshake_id
    #   The unique identifier (ID) of the handshake that you want
    #   information about. You can get the ID from the original call to
    #   InviteAccountToOrganization, or from a call to
    #   ListHandshakesForAccount or ListHandshakesForOrganization.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeHandshakeRequest AWS API Documentation
    #
    class DescribeHandshakeRequest < Struct.new(
      :handshake_id)
      include Aws::Structure
    end

    # @!attribute [rw] handshake
    #   A structure that contains information about the specified handshake.
    #   @return [Types::Handshake]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeHandshakeResponse AWS API Documentation
    #
    class DescribeHandshakeResponse < Struct.new(
      :handshake)
      include Aws::Structure
    end

    # @!attribute [rw] organization
    #   A structure that contains information about the organization.
    #   @return [Types::Organization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganizationResponse AWS API Documentation
    #
    class DescribeOrganizationResponse < Struct.new(
      :organization)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOrganizationalUnitRequest
    #   data as a hash:
    #
    #       {
    #         organizational_unit_id: "OrganizationalUnitId", # required
    #       }
    #
    # @!attribute [rw] organizational_unit_id
    #   The unique identifier (ID) of the organizational unit that you want
    #   details about. You can get the ID from the
    #   ListOrganizationalUnitsForParent operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the
    #   ID of the root that contains the OU) followed by a second "-" dash
    #   and from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganizationalUnitRequest AWS API Documentation
    #
    class DescribeOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id)
      include Aws::Structure
    end

    # @!attribute [rw] organizational_unit
    #   A structure that contains details about the specified OU.
    #   @return [Types::OrganizationalUnit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganizationalUnitResponse AWS API Documentation
    #
    class DescribeOrganizationalUnitResponse < Struct.new(
      :organizational_unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The unique identifier (ID) of the policy that you want details
    #   about. You can get the ID from the ListPolicies or
    #   ListPoliciesForTarget operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribePolicyRequest AWS API Documentation
    #
    class DescribePolicyRequest < Struct.new(
      :policy_id)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A structure that contains details about the specified policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribePolicyResponse AWS API Documentation
    #
    class DescribePolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         target_id: "PolicyTargetId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The unique identifier (ID) of the policy you want to detach. You can
    #   get the ID from the ListPolicies or ListPoliciesForTarget
    #   operations.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier (ID) of the root, OU, or account from which
    #   you want to detach the policy. You can get the ID from the
    #   ListRoots, ListOrganizationalUnitsForParent, or ListAccounts
    #   operations.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DetachPolicyRequest AWS API Documentation
    #
    class DetachPolicyRequest < Struct.new(
      :policy_id,
      :target_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableAWSServiceAccessRequest
    #   data as a hash:
    #
    #       {
    #         service_principal: "ServicePrincipal", # required
    #       }
    #
    # @!attribute [rw] service_principal
    #   The service principal name of the AWS service for which you want to
    #   disable integration with your organization. This is typically in the
    #   form of a URL, such as ` service-abbreviation.amazonaws.com`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisableAWSServiceAccessRequest AWS API Documentation
    #
    class DisableAWSServiceAccessRequest < Struct.new(
      :service_principal)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisablePolicyTypeRequest
    #   data as a hash:
    #
    #       {
    #         root_id: "RootId", # required
    #         policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #       }
    #
    # @!attribute [rw] root_id
    #   The unique identifier (ID) of the root in which you want to disable
    #   a policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type that you want to disable in this root.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisablePolicyTypeRequest AWS API Documentation
    #
    class DisablePolicyTypeRequest < Struct.new(
      :root_id,
      :policy_type)
      include Aws::Structure
    end

    # @!attribute [rw] root
    #   A structure that shows the root with the updated list of enabled
    #   policy types.
    #   @return [Types::Root]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisablePolicyTypeResponse AWS API Documentation
    #
    class DisablePolicyTypeResponse < Struct.new(
      :root)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableAWSServiceAccessRequest
    #   data as a hash:
    #
    #       {
    #         service_principal: "ServicePrincipal", # required
    #       }
    #
    # @!attribute [rw] service_principal
    #   The service principal name of the AWS service for which you want to
    #   enable integration with your organization. This is typically in the
    #   form of a URL, such as ` service-abbreviation.amazonaws.com`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAWSServiceAccessRequest AWS API Documentation
    #
    class EnableAWSServiceAccessRequest < Struct.new(
      :service_principal)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAllFeaturesRequest AWS API Documentation
    #
    class EnableAllFeaturesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] handshake
    #   A structure that contains details about the handshake created to
    #   support this request to enable all features in the organization.
    #   @return [Types::Handshake]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnableAllFeaturesResponse AWS API Documentation
    #
    class EnableAllFeaturesResponse < Struct.new(
      :handshake)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnablePolicyTypeRequest
    #   data as a hash:
    #
    #       {
    #         root_id: "RootId", # required
    #         policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #       }
    #
    # @!attribute [rw] root_id
    #   The unique identifier (ID) of the root in which you want to enable a
    #   policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type that you want to enable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnablePolicyTypeRequest AWS API Documentation
    #
    class EnablePolicyTypeRequest < Struct.new(
      :root_id,
      :policy_type)
      include Aws::Structure
    end

    # @!attribute [rw] root
    #   A structure that shows the root with the updated list of enabled
    #   policy types.
    #   @return [Types::Root]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnablePolicyTypeResponse AWS API Documentation
    #
    class EnablePolicyTypeResponse < Struct.new(
      :root)
      include Aws::Structure
    end

    # A structure that contains details of a service principal that is
    # enabled to integrate with AWS Organizations.
    #
    # @!attribute [rw] service_principal
    #   The name of the service principal. This is typically in the form of
    #   a URL, such as: ` servicename.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] date_enabled
    #   The date that the service principal was enabled for integration with
    #   AWS Organizations.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnabledServicePrincipal AWS API Documentation
    #
    class EnabledServicePrincipal < Struct.new(
      :service_principal,
      :date_enabled)
      include Aws::Structure
    end

    # Contains information that must be exchanged to securely establish a
    # relationship between two accounts (an *originator* and a *recipient*).
    # For example, when a master account (the originator) invites another
    # account (the recipient) to join its organization, the two accounts
    # exchange information as a series of handshake requests and responses.
    #
    # **Note:** Handshakes that are CANCELED, ACCEPTED, or DECLINED show up
    # in lists for only 30 days after entering that state After that they
    # are deleted.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of a handshake. The originating account
    #   creates the ID when it initiates the handshake.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of a handshake.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] parties
    #   Information about the two accounts that are participating in the
    #   handshake.
    #   @return [Array<Types::HandshakeParty>]
    #
    # @!attribute [rw] state
    #   The current state of the handshake. Use the state to trace the flow
    #   of the handshake through the process from its creation to its
    #   acceptance. The meaning of each of the valid values is as follows:
    #
    #   * **REQUESTED**\: This handshake was sent to multiple recipients
    #     (applicable to only some handshake types) and not all recipients
    #     have responded yet. The request stays in this state until all
    #     recipients respond.
    #
    #   * **OPEN**\: This handshake was sent to multiple recipients
    #     (applicable to only some policy types) and all recipients have
    #     responded, allowing the originator to complete the handshake
    #     action.
    #
    #   * **CANCELED**\: This handshake is no longer active because it was
    #     canceled by the originating account.
    #
    #   * **ACCEPTED**\: This handshake is complete because it has been
    #     accepted by the recipient.
    #
    #   * **DECLINED**\: This handshake is no longer active because it was
    #     declined by the recipient account.
    #
    #   * **EXPIRED**\: This handshake is no longer active because the
    #     originator did not receive a response of any kind from the
    #     recipient before the expiration time (15 days).
    #   @return [String]
    #
    # @!attribute [rw] requested_timestamp
    #   The date and time that the handshake request was made.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_timestamp
    #   The date and time that the handshake expires. If the recipient of
    #   the handshake request fails to respond before the specified date and
    #   time, the handshake becomes inactive and is no longer valid.
    #   @return [Time]
    #
    # @!attribute [rw] action
    #   The type of handshake, indicating what action occurs when the
    #   recipient accepts the handshake. The following handshake types are
    #   supported:
    #
    #   * **INVITE**\: This type of handshake represents a request to join
    #     an organization. It is always sent from the master account to only
    #     non-member accounts.
    #
    #   * **ENABLE\_ALL\_FEATURES**\: This type of handshake represents a
    #     request to enable all features in an organization. It is always
    #     sent from the master account to only *invited* member accounts.
    #     Created accounts do not receive this because those accounts were
    #     created by the organization's master account and approval is
    #     inferred.
    #
    #   * **APPROVE\_ALL\_FEATURES**\: This type of handshake is sent from
    #     the Organizations service when all member accounts have approved
    #     the `ENABLE_ALL_FEATURES` invitation. It is sent only to the
    #     master account and signals the master that it can finalize the
    #     process to enable all features.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   Additional information that is needed to process the handshake.
    #   @return [Array<Types::HandshakeResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Handshake AWS API Documentation
    #
    class Handshake < Struct.new(
      :id,
      :arn,
      :parties,
      :state,
      :requested_timestamp,
      :expiration_timestamp,
      :action,
      :resources)
      include Aws::Structure
    end

    # Specifies the criteria that are used to select the handshakes for the
    # operation.
    #
    # @note When making an API call, you may pass HandshakeFilter
    #   data as a hash:
    #
    #       {
    #         action_type: "INVITE", # accepts INVITE, ENABLE_ALL_FEATURES, APPROVE_ALL_FEATURES, ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE
    #         parent_handshake_id: "HandshakeId",
    #       }
    #
    # @!attribute [rw] action_type
    #   Specifies the type of handshake action.
    #
    #   If you specify `ActionType`, you cannot also specify
    #   `ParentHandshakeId`.
    #   @return [String]
    #
    # @!attribute [rw] parent_handshake_id
    #   Specifies the parent handshake. Only used for handshake types that
    #   are a child of another type.
    #
    #   If you specify `ParentHandshakeId`, you cannot also specify
    #   `ActionType`.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/HandshakeFilter AWS API Documentation
    #
    class HandshakeFilter < Struct.new(
      :action_type,
      :parent_handshake_id)
      include Aws::Structure
    end

    # Identifies a participant in a handshake.
    #
    # @note When making an API call, you may pass HandshakeParty
    #   data as a hash:
    #
    #       {
    #         id: "HandshakePartyId", # required
    #         type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION, EMAIL
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) for the party.
    #
    #   The [regex pattern][1] for handshake ID string requires "h-"
    #   followed by from 8 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of party.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/HandshakeParty AWS API Documentation
    #
    class HandshakeParty < Struct.new(
      :id,
      :type)
      include Aws::Structure
    end

    # Contains additional data that is needed to process a handshake.
    #
    # @!attribute [rw] value
    #   The information that is passed to the other party in the handshake.
    #   The format of the value string must match the requirements of the
    #   specified type.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of information being passed, specifying how the value is to
    #   be interpreted by the other party:
    #
    #   * `ACCOUNT` - Specifies an AWS account ID number.
    #
    #   * `ORGANIZATION` - Specifies an organization ID number.
    #
    #   * `EMAIL` - Specifies the email address that is associated with the
    #     account that receives the handshake.
    #
    #   * `OWNER_EMAIL` - Specifies the email address associated with the
    #     master account. Included as information about an organization.
    #
    #   * `OWNER_NAME` - Specifies the name associated with the master
    #     account. Included as information about an organization.
    #
    #   * `NOTES` - Additional text provided by the handshake initiator and
    #     intended for the recipient to read.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   When needed, contains an additional array of `HandshakeResource`
    #   objects.
    #   @return [Array<Types::HandshakeResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/HandshakeResource AWS API Documentation
    #
    class HandshakeResource < Struct.new(
      :value,
      :type,
      :resources)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteAccountToOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         target: { # required
    #           id: "HandshakePartyId", # required
    #           type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION, EMAIL
    #         },
    #         notes: "HandshakeNotes",
    #       }
    #
    # @!attribute [rw] target
    #   The identifier (ID) of the AWS account that you want to invite to
    #   join your organization. This is a JSON object that contains the
    #   following elements:
    #
    #   `\{ "Type": "ACCOUNT", "Id": "< account id number >" \}`
    #
    #   If you use the AWS CLI, you can submit this as a single string,
    #   similar to the following example:
    #
    #   `--target Id=123456789012,Type=ACCOUNT`
    #
    #   If you specify `"Type": "ACCOUNT"`, then you must provide the AWS
    #   account ID number as the `Id`. If you specify `"Type": "EMAIL"`,
    #   then you must specify the email address that is associated with the
    #   account.
    #
    #   `--target Id=diego@example.com,Type=EMAIL`
    #   @return [Types::HandshakeParty]
    #
    # @!attribute [rw] notes
    #   Additional information that you want to include in the generated
    #   email to the recipient account owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InviteAccountToOrganizationRequest AWS API Documentation
    #
    class InviteAccountToOrganizationRequest < Struct.new(
      :target,
      :notes)
      include Aws::Structure
    end

    # @!attribute [rw] handshake
    #   A structure that contains details about the handshake that is
    #   created to support this invitation request.
    #   @return [Types::Handshake]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InviteAccountToOrganizationResponse AWS API Documentation
    #
    class InviteAccountToOrganizationResponse < Struct.new(
      :handshake)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAWSServiceAccessForOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAWSServiceAccessForOrganizationRequest AWS API Documentation
    #
    class ListAWSServiceAccessForOrganizationRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] enabled_service_principals
    #   A list of the service principals for the services that are enabled
    #   to integrate with your organization. Each principal is a structure
    #   that includes the name and the date that it was enabled for
    #   integration with AWS Organizations.
    #   @return [Array<Types::EnabledServicePrincipal>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAWSServiceAccessForOrganizationResponse AWS API Documentation
    #
    class ListAWSServiceAccessForOrganizationResponse < Struct.new(
      :enabled_service_principals,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccountsForParentRequest
    #   data as a hash:
    #
    #       {
    #         parent_id: "ParentId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] parent_id
    #   The unique identifier (ID) for the parent root or organization unit
    #   (OU) whose accounts you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsForParentRequest AWS API Documentation
    #
    class ListAccountsForParentRequest < Struct.new(
      :parent_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   A list of the accounts in the specified root or OU.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsForParentResponse AWS API Documentation
    #
    class ListAccountsForParentResponse < Struct.new(
      :accounts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccountsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsRequest AWS API Documentation
    #
    class ListAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   A list of objects in the organization.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsResponse AWS API Documentation
    #
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListChildrenRequest
    #   data as a hash:
    #
    #       {
    #         parent_id: "ParentId", # required
    #         child_type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATIONAL_UNIT
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] parent_id
    #   The unique identifier (ID) for the parent root or OU whose children
    #   you want to list.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] child_type
    #   Filters the output to include only the specified child type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListChildrenRequest AWS API Documentation
    #
    class ListChildrenRequest < Struct.new(
      :parent_id,
      :child_type,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] children
    #   The list of children of the specified parent container.
    #   @return [Array<Types::Child>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListChildrenResponse AWS API Documentation
    #
    class ListChildrenResponse < Struct.new(
      :children,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCreateAccountStatusRequest
    #   data as a hash:
    #
    #       {
    #         states: ["IN_PROGRESS"], # accepts IN_PROGRESS, SUCCEEDED, FAILED
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] states
    #   A list of one or more states that you want included in the response.
    #   If this parameter is not present, then all requests are included in
    #   the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListCreateAccountStatusRequest AWS API Documentation
    #
    class ListCreateAccountStatusRequest < Struct.new(
      :states,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] create_account_statuses
    #   A list of objects with details about the requests. Certain elements,
    #   such as the accountId number, are present in the output only after
    #   the account has been successfully created.
    #   @return [Array<Types::CreateAccountStatus>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListCreateAccountStatusResponse AWS API Documentation
    #
    class ListCreateAccountStatusResponse < Struct.new(
      :create_account_statuses,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHandshakesForAccountRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           action_type: "INVITE", # accepts INVITE, ENABLE_ALL_FEATURES, APPROVE_ALL_FEATURES, ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE
    #           parent_handshake_id: "HandshakeId",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the handshakes that you want included in the response. The
    #   default is all types. Use the `ActionType` element to limit the
    #   output to only a specified type, such as `INVITE`,
    #   `ENABLE-FULL-CONTROL`, or `APPROVE-FULL-CONTROL`. Alternatively, for
    #   the `ENABLE-FULL-CONTROL` handshake that generates a separate child
    #   handshake for each member account, you can specify
    #   `ParentHandshakeId` to see only the handshakes that were generated
    #   by that parent request.
    #   @return [Types::HandshakeFilter]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForAccountRequest AWS API Documentation
    #
    class ListHandshakesForAccountRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] handshakes
    #   A list of Handshake objects with details about each of the
    #   handshakes that is associated with the specified account.
    #   @return [Array<Types::Handshake>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForAccountResponse AWS API Documentation
    #
    class ListHandshakesForAccountResponse < Struct.new(
      :handshakes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHandshakesForOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           action_type: "INVITE", # accepts INVITE, ENABLE_ALL_FEATURES, APPROVE_ALL_FEATURES, ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE
    #           parent_handshake_id: "HandshakeId",
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   A filter of the handshakes that you want included in the response.
    #   The default is all types. Use the `ActionType` element to limit the
    #   output to only a specified type, such as `INVITE`,
    #   `ENABLE-ALL-FEATURES`, or `APPROVE-ALL-FEATURES`. Alternatively, for
    #   the `ENABLE-ALL-FEATURES` handshake that generates a separate child
    #   handshake for each member account, you can specify the
    #   `ParentHandshakeId` to see only the handshakes that were generated
    #   by that parent request.
    #   @return [Types::HandshakeFilter]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForOrganizationRequest AWS API Documentation
    #
    class ListHandshakesForOrganizationRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] handshakes
    #   A list of Handshake objects with details about each of the
    #   handshakes that are associated with an organization.
    #   @return [Array<Types::Handshake>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForOrganizationResponse AWS API Documentation
    #
    class ListHandshakesForOrganizationResponse < Struct.new(
      :handshakes,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOrganizationalUnitsForParentRequest
    #   data as a hash:
    #
    #       {
    #         parent_id: "ParentId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] parent_id
    #   The unique identifier (ID) of the root or OU whose child OUs you
    #   want to list.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListOrganizationalUnitsForParentRequest AWS API Documentation
    #
    class ListOrganizationalUnitsForParentRequest < Struct.new(
      :parent_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] organizational_units
    #   A list of the OUs in the specified root or parent OU.
    #   @return [Array<Types::OrganizationalUnit>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListOrganizationalUnitsForParentResponse AWS API Documentation
    #
    class ListOrganizationalUnitsForParentResponse < Struct.new(
      :organizational_units,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListParentsRequest
    #   data as a hash:
    #
    #       {
    #         child_id: "ChildId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] child_id
    #   The unique identifier (ID) of the OU or account whose parent
    #   containers you want to list. Do not specify a root.
    #
    #   The [regex pattern][1] for a child ID string requires one of the
    #   following:
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that contains the OU) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListParentsRequest AWS API Documentation
    #
    class ListParentsRequest < Struct.new(
      :child_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] parents
    #   A list of parents for the specified child account or OU.
    #   @return [Array<Types::Parent>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListParentsResponse AWS API Documentation
    #
    class ListParentsResponse < Struct.new(
      :parents,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesForTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_id: "PolicyTargetId", # required
    #         filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] target_id
    #   The unique identifier (ID) of the root, organizational unit, or
    #   account whose policies you want to list.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The type of policy that you want to include in the returned list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesForTargetRequest AWS API Documentation
    #
    class ListPoliciesForTargetRequest < Struct.new(
      :target_id,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   The list of policies that match the criteria in the request.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesForTargetResponse AWS API Documentation
    #
    class ListPoliciesForTargetResponse < Struct.new(
      :policies,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Specifies the type of policy that you want to include in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   A list of policies that match the filter criteria in the request.
    #   The output list does not include the policy contents. To see the
    #   content for a policy, see DescribePolicy.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policies,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRootsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListRootsRequest AWS API Documentation
    #
    class ListRootsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] roots
    #   A list of roots that are defined in an organization.
    #   @return [Array<Types::Root>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListRootsResponse AWS API Documentation
    #
    class ListRootsResponse < Struct.new(
      :roots,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsForPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The unique identifier (ID) of the policy for which you want to know
    #   its attachments.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter if you receive a `NextToken` response in a
    #   previous request that indicates that there is more output available.
    #   Set it to the value of the previous call's `NextToken` response to
    #   indicate where the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Use this to limit the number of results you want included
    #   per page in the response. If you do not include this parameter, it
    #   defaults to a value that is specific to the operation. If additional
    #   items exist beyond the maximum you specify, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results. Note that
    #   Organizations might return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTargetsForPolicyRequest AWS API Documentation
    #
    class ListTargetsForPolicyRequest < Struct.new(
      :policy_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   A list of structures, each of which contains details about one of
    #   the entities to which the specified policy is attached.
    #   @return [Array<Types::PolicyTargetSummary>]
    #
    # @!attribute [rw] next_token
    #   If present, this value indicates that there is more output available
    #   than is included in the current response. Use this value in the
    #   `NextToken` request parameter in a subsequent call to the operation
    #   to get the next part of the output. You should repeat this until the
    #   `NextToken` response element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTargetsForPolicyResponse AWS API Documentation
    #
    class ListTargetsForPolicyResponse < Struct.new(
      :targets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass MoveAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         source_parent_id: "ParentId", # required
    #         destination_parent_id: "ParentId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The unique identifier (ID) of the account that you want to move.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] source_parent_id
    #   The unique identifier (ID) of the root or organizational unit that
    #   you want to move the account from.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] destination_parent_id
    #   The unique identifier (ID) of the root or organizational unit that
    #   you want to move the account to.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/MoveAccountRequest AWS API Documentation
    #
    class MoveAccountRequest < Struct.new(
      :account_id,
      :source_parent_id,
      :destination_parent_id)
      include Aws::Structure
    end

    # Contains details about an organization. An organization is a
    # collection of accounts that are centrally managed together using
    # consolidated billing, organized hierarchically with organizational
    # units (OUs), and controlled with policies .
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of an organization.
    #
    #   The [regex pattern][1] for an organization ID string requires "o-"
    #   followed by from 10 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of an organization.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] feature_set
    #   Specifies the functionality that currently is available to the
    #   organization. If set to "ALL", then all features are enabled and
    #   policies can be applied to accounts in the organization. If set to
    #   "CONSOLIDATED\_BILLING", then only consolidated billing
    #   functionality is available. For more information, see [Enabling All
    #   Features in Your Organization][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_manage_org_support-all-features.html
    #   @return [String]
    #
    # @!attribute [rw] master_account_arn
    #   The Amazon Resource Name (ARN) of the account that is designated as
    #   the master account for the organization.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] master_account_id
    #   The unique identifier (ID) of the master account of an organization.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] master_account_email
    #   The email address that is associated with the AWS account that is
    #   designated as the master account for the organization.
    #   @return [String]
    #
    # @!attribute [rw] available_policy_types
    #   A list of policy types that are enabled for this organization. For
    #   example, if your organization has all features enabled, then service
    #   control policies (SCPs) are included in the list.
    #
    #   <note markdown="1"> Even if a policy type is shown as available in the organization, you
    #   can separately enable and disable them at the root level by using
    #   EnablePolicyType and DisablePolicyType. Use ListRoots to see the
    #   status of a policy type in that root.
    #
    #    </note>
    #   @return [Array<Types::PolicyTypeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Organization AWS API Documentation
    #
    class Organization < Struct.new(
      :id,
      :arn,
      :feature_set,
      :master_account_arn,
      :master_account_id,
      :master_account_email,
      :available_policy_types)
      include Aws::Structure
    end

    # Contains details about an organizational unit (OU). An OU is a
    # container of AWS accounts within a root of an organization. Policies
    # that are attached to an OU apply to all accounts contained in that OU
    # and in any child OUs.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) associated with this OU.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the
    #   ID of the root that contains the OU) followed by a second "-" dash
    #   and from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this OU.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of this OU.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/OrganizationalUnit AWS API Documentation
    #
    class OrganizationalUnit < Struct.new(
      :id,
      :arn,
      :name)
      include Aws::Structure
    end

    # Contains information about either a root or an organizational unit
    # (OU) that can contain OUs or accounts in an organization.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the parent entity.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the parent entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Parent AWS API Documentation
    #
    class Parent < Struct.new(
      :id,
      :type)
      include Aws::Structure
    end

    # Contains rules to be applied to the affected accounts. Policies can be
    # attached directly to accounts, or to roots and OUs to affect all
    # accounts in those hierarchies.
    #
    # @!attribute [rw] policy_summary
    #   A structure that contains additional details about the policy.
    #   @return [Types::PolicySummary]
    #
    # @!attribute [rw] content
    #   The text content of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :policy_summary,
      :content)
      include Aws::Structure
    end

    # Contains information about a policy, but does not include the content.
    # To see the content of a policy, see DescribePolicy.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the policy.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the policy.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the policy.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of policy.
    #   @return [String]
    #
    # @!attribute [rw] aws_managed
    #   A boolean value that indicates whether the specified policy is an
    #   AWS managed policy. If true, then you can attach the policy to
    #   roots, OUs, or accounts, but you cannot edit it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicySummary AWS API Documentation
    #
    class PolicySummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :type,
      :aws_managed)
      include Aws::Structure
    end

    # Contains information about a root, OU, or account that a policy is
    # attached to.
    #
    # @!attribute [rw] target_id
    #   The unique identifier (ID) of the policy target.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * Root: a string that begins with "r-" followed by from 4 to 32
    #     lower-case letters or digits.
    #
    #   * Account: a string that consists of exactly 12 digits.
    #
    #   * Organizational unit (OU): a string that begins with "ou-"
    #     followed by from 4 to 32 lower-case letters or digits (the ID of
    #     the root that the OU is in) followed by a second "-" dash and
    #     from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the policy target.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the policy target.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the policy target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyTargetSummary AWS API Documentation
    #
    class PolicyTargetSummary < Struct.new(
      :target_id,
      :arn,
      :name,
      :type)
      include Aws::Structure
    end

    # Contains information about a policy type and its status in the
    # associated root.
    #
    # @!attribute [rw] type
    #   The name of the policy type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the policy type as it relates to the associated root.
    #   To attach a policy of the specified type to a root or to an OU or
    #   account in that root, it must be available in the organization and
    #   enabled for that root.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyTypeSummary AWS API Documentation
    #
    class PolicyTypeSummary < Struct.new(
      :type,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveAccountFromOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The unique identifier (ID) of the member account that you want to
    #   remove from the organization.
    #
    #   The [regex pattern][1] for an account ID string requires exactly 12
    #   digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/RemoveAccountFromOrganizationRequest AWS API Documentation
    #
    class RemoveAccountFromOrganizationRequest < Struct.new(
      :account_id)
      include Aws::Structure
    end

    # Contains details about a root. A root is a top-level parent node in
    # the hierarchy of an organization that can contain organizational units
    # (OUs) and accounts. Every root contains every AWS account in the
    # organization. Each root enables the accounts to be organized in a
    # different way and to have different policy types enabled for use in
    # that root.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) for the root.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the root.
    #
    #   For more information about ARNs in Organizations, see [ARN Formats
    #   Supported by Organizations][1] in the *AWS Organizations User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the root.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_types
    #   The types of policies that are currently enabled for the root and
    #   therefore can be attached to the root or to its OUs or accounts.
    #
    #   <note markdown="1"> Even if a policy type is shown as available in the organization, you
    #   can separately enable and disable them at the root level by using
    #   EnablePolicyType and DisablePolicyType. Use DescribeOrganization to
    #   see the availability of the policy types in that organization.
    #
    #    </note>
    #   @return [Array<Types::PolicyTypeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Root AWS API Documentation
    #
    class Root < Struct.new(
      :id,
      :arn,
      :name,
      :policy_types)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateOrganizationalUnitRequest
    #   data as a hash:
    #
    #       {
    #         organizational_unit_id: "OrganizationalUnitId", # required
    #         name: "OrganizationalUnitName",
    #       }
    #
    # @!attribute [rw] organizational_unit_id
    #   The unique identifier (ID) of the OU that you want to rename. You
    #   can get the ID from the ListOrganizationalUnitsForParent operation.
    #
    #   The [regex pattern][1] for an organizational unit ID string requires
    #   "ou-" followed by from 4 to 32 lower-case letters or digits (the
    #   ID of the root that contains the OU) followed by a second "-" dash
    #   and from 8 to 32 additional lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name that you want to assign to the OU.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdateOrganizationalUnitRequest AWS API Documentation
    #
    class UpdateOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] organizational_unit
    #   A structure that contains the details about the specified OU,
    #   including its new name.
    #   @return [Types::OrganizationalUnit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdateOrganizationalUnitResponse AWS API Documentation
    #
    class UpdateOrganizationalUnitResponse < Struct.new(
      :organizational_unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         name: "PolicyName",
    #         description: "PolicyDescription",
    #         content: "PolicyContent",
    #       }
    #
    # @!attribute [rw] policy_id
    #   The unique identifier (ID) of the policy that you want to update.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lower-case letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If provided, the new name for the policy.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of any of the characters in the ASCII character range.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] description
    #   If provided, the new description for the policy.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   If provided, the new content for the policy. The text must be
    #   correctly formatted JSON that complies with the syntax for the
    #   policy's type. For more information, see [Service Control Policy
    #   Syntax][1] in the *AWS Organizations User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdatePolicyRequest AWS API Documentation
    #
    class UpdatePolicyRequest < Struct.new(
      :policy_id,
      :name,
      :description,
      :content)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A structure that contains details about the updated policy, showing
    #   the requested changes.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdatePolicyResponse AWS API Documentation
    #
    class UpdatePolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

  end
end
