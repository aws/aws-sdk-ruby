# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Organizations
  module Types

    # Your account isn't a member of an organization. To make this request,
    # you must use the credentials of an account that belongs to an
    # organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AWSOrganizationsNotInUseException AWS API Documentation
    #
    class AWSOrganizationsNotInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   followed by from 8 to 32 lowercase letters or digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permissions to perform the requested operation. The
    # user or role that is making the request must have at least one IAM
    # permissions policy attached that grants the required permissions. For
    # more information, see [Access Management][1] in the *IAM User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation that you attempted requires you to have the
    # `iam:CreateServiceLinkedRole` for `organizations.amazonaws.com`
    # permission so that AWS Organizations can create the required
    # service-linked role. You don't have that permission.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AccessDeniedForDependencyException AWS API Documentation
    #
    class AccessDeniedForDependencyException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address associated with the AWS account.
    #
    #   The [regex pattern][1] for this parameter is a string of characters
    #   that represents a standard internet email address.
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
      SENSITIVE = [:email, :name]
      include Aws::Structure
    end

    # The specified account is already a delegated administrator for this
    # AWS service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AccountAlreadyRegisteredException AWS API Documentation
    #
    class AccountAlreadyRegisteredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find an AWS account with the `AccountId` that you specified,
    # or the account whose credentials you used to make this request isn't
    # a member of an organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AccountNotFoundException AWS API Documentation
    #
    class AccountNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified account is not a delegated administrator for this AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AccountNotRegisteredException AWS API Documentation
    #
    class AccountNotRegisteredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't invite an existing account to your organization until you
    # verify that you own the email address associated with the master
    # account. For more information, see [Email Address Verification][1] in
    # the *AWS Organizations User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_create.html#about-email-verification
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AccountOwnerNotVerifiedException AWS API Documentation
    #
    class AccountOwnerNotVerifiedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This account is already a member of an organization. An account can
    # belong to only one organization at a time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/AlreadyInOrganizationException AWS API Documentation
    #
    class AlreadyInOrganizationException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
      SENSITIVE = []
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that contains the OU). This string is followed by a
    #     second "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find an organizational unit (OU) or AWS account with the
    # `ChildId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ChildNotFoundException AWS API Documentation
    #
    class ChildNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target of the operation is currently being modified by a different
    # request. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Performing this operation violates a minimum or maximum value limit.
    # For example, attempting to remove the last service control policy
    # (SCP) from an OU or root, inviting or creating too many accounts to
    # the organization, or attaching too many policies to an account, OU, or
    # root. This exception includes a reason that contains additional
    # information about the violated limit:
    #
    # <note markdown="1"> Some of the reasons in the following list might not be applicable to
    # this specific API or operation.
    #
    #  </note>
    #
    # * ACCOUNT\_CANNOT\_LEAVE\_ORGANIZAION: You attempted to remove the
    #   master account from the organization. You can't remove the master
    #   account. Instead, after you remove all member accounts, delete the
    #   organization itself.
    #
    # * ACCOUNT\_CANNOT\_LEAVE\_WITHOUT\_EULA: You attempted to remove an
    #   account from the organization that doesn't yet have enough
    #   information to exist as a standalone account. This account requires
    #   you to first agree to the AWS Customer Agreement. Follow the steps
    #   at [Removing a member account from your organization][1]in the *AWS
    #   Organizations User Guide.*
    #
    # * ACCOUNT\_CANNOT\_LEAVE\_WITHOUT\_PHONE\_VERIFICATION: You attempted
    #   to remove an account from the organization that doesn't yet have
    #   enough information to exist as a standalone account. This account
    #   requires you to first complete phone verification. Follow the steps
    #   at [Removing a member account from your organization][1] in the *AWS
    #   Organizations User Guide.*
    #
    # * ACCOUNT\_CREATION\_RATE\_LIMIT\_EXCEEDED: You attempted to exceed
    #   the number of accounts that you can create in one day.
    #
    # * ACCOUNT\_NUMBER\_LIMIT\_EXCEEDED: You attempted to exceed the limit
    #   on the number of accounts in an organization. If you need more
    #   accounts, contact [AWS Support][2] to request an increase in your
    #   limit.
    #
    #   Or the number of invitations that you tried to send would cause you
    #   to exceed the limit of accounts in your organization. Send fewer
    #   invitations or contact AWS Support to request an increase in the
    #   number of accounts.
    #
    #   <note markdown="1"> Deleted and closed accounts still count toward your limit.
    #
    #    </note>
    #
    #   If you get this exception when running a command immediately after
    #   creating the organization, wait one hour and try again. After an
    #   hour, if the command continues to fail with this error, contact [AWS
    #   Support][2].
    #
    # * CANNOT\_REGISTER\_MASTER\_AS\_DELEGATED\_ADMINISTRATOR: You
    #   attempted to register the master account of the organization as a
    #   delegated administrator for an AWS service integrated with
    #   Organizations. You can designate only a member account as a
    #   delegated administrator.
    #
    # * CANNOT\_REMOVE\_DELEGATED\_ADMINISTRATOR\_FROM\_ORG: You attempted
    #   to remove an account that is registered as a delegated administrator
    #   for a service integrated with your organization. To complete this
    #   operation, you must first deregister this account as a delegated
    #   administrator.
    #
    # * CREATE\_ORGANIZATION\_IN\_BILLING\_MODE\_UNSUPPORTED\_REGION: To
    #   create an organization in the specified region, you must enable all
    #   features mode.
    #
    # * DELEGATED\_ADMINISTRATOR\_EXISTS\_FOR\_THIS\_SERVICE: You attempted
    #   to register an AWS account as a delegated administrator for an AWS
    #   service that already has a delegated administrator. To complete this
    #   operation, you must first deregister any existing delegated
    #   administrators for this service.
    #
    # * EMAIL\_VERIFICATION\_CODE\_EXPIRED: The email verification code is
    #   only valid for a limited period of time. You must resubmit the
    #   request and generate a new verfication code.
    #
    # * HANDSHAKE\_RATE\_LIMIT\_EXCEEDED: You attempted to exceed the number
    #   of handshakes that you can send in one day.
    #
    # * MASTER\_ACCOUNT\_ADDRESS\_DOES\_NOT\_MATCH\_MARKETPLACE: To create
    #   an account in this organization, you first must migrate the
    #   organization's master account to the marketplace that corresponds
    #   to the master account's address. For example, accounts with India
    #   addresses must be associated with the AISPL marketplace. All
    #   accounts in an organization must be associated with the same
    #   marketplace.
    #
    # * MASTER\_ACCOUNT\_MISSING\_BUSINESS\_LICENSE: Applies only to the AWS
    #   Regions in China. To create an organization, the master must have an
    #   valid business license. For more information, contact customer
    #   support.
    #
    # * MASTER\_ACCOUNT\_MISSING\_CONTACT\_INFO: To complete this operation,
    #   you must first provide a valid contact address and phone number for
    #   the master account. Then try the operation again.
    #
    # * MASTER\_ACCOUNT\_NOT\_GOVCLOUD\_ENABLED: To complete this operation,
    #   the master account must have an associated account in the AWS
    #   GovCloud (US-West) Region. For more information, see [AWS
    #   Organizations][3] in the *AWS GovCloud User Guide.*
    #
    # * MASTER\_ACCOUNT\_PAYMENT\_INSTRUMENT\_REQUIRED: To create an
    #   organization with this master account, you first must associate a
    #   valid payment instrument, such as a credit card, with the account.
    #   Follow the steps at [To leave an organization when all required
    #   account information has not yet been provided][4] in the *AWS
    #   Organizations User Guide.*
    #
    # * MAX\_DELEGATED\_ADMINISTRATORS\_FOR\_SERVICE\_LIMIT\_EXCEEDED: You
    #   attempted to register more delegated administrators than allowed for
    #   the service principal.
    #
    # * MAX\_POLICY\_TYPE\_ATTACHMENT\_LIMIT\_EXCEEDED: You attempted to
    #   exceed the number of policies of a certain type that can be attached
    #   to an entity at one time.
    #
    # * MAX\_TAG\_LIMIT\_EXCEEDED: You have exceeded the number of tags
    #   allowed on this resource.
    #
    # * MEMBER\_ACCOUNT\_PAYMENT\_INSTRUMENT\_REQUIRED: To complete this
    #   operation with this member account, you first must associate a valid
    #   payment instrument, such as a credit card, with the account. Follow
    #   the steps at [To leave an organization when all required account
    #   information has not yet been provided][4] in the *AWS Organizations
    #   User Guide.*
    #
    # * MIN\_POLICY\_TYPE\_ATTACHMENT\_LIMIT\_EXCEEDED: You attempted to
    #   detach a policy from an entity that would cause the entity to have
    #   fewer than the minimum number of policies of a certain type
    #   required.
    #
    # * ORGANIZATION\_NOT\_IN\_ALL\_FEATURES\_MODE: You attempted to perform
    #   an operation that requires the organization to be configured to
    #   support all features. An organization that supports only
    #   consolidated billing features can't perform this operation.
    #
    # * OU\_DEPTH\_LIMIT\_EXCEEDED: You attempted to create an OU tree that
    #   is too many levels deep.
    #
    # * OU\_NUMBER\_LIMIT\_EXCEEDED: You attempted to exceed the number of
    #   OUs that you can have in an organization.
    #
    # * POLICY\_CONTENT\_LIMIT\_EXCEEDED: You attempted to create a policy
    #   that is larger than the maximum size.
    #
    # * POLICY\_NUMBER\_LIMIT\_EXCEEDED: You attempted to exceed the number
    #   of policies that you can have in an organization.
    #
    # * TAG\_POLICY\_VIOLATION: You attempted to create or update a resource
    #   with tags that are not compliant with the tag policy requirements
    #   for this account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#orgs_manage_accounts_remove-from-master
    # [2]: https://console.aws.amazon.com/support/home#/
    # [3]: http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html
    # [4]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ConstraintViolationException AWS API Documentation
    #
    class ConstraintViolationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
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
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    #   account, see the following links:
    #
    #   * [Accessing and Administering the Member Accounts in Your
    #     Organization][1] in the *AWS Organizations User Guide*
    #
    #   * Steps 2 and 3 in [Tutorial: Delegate Access Across AWS Accounts
    #     Using IAM Roles][2] in the *IAM User Guide*
    #
    #   The [regex pattern][3] that is used to validate this parameter. The
    #   pattern can include uppercase letters, lowercase letters, digits
    #   with no spaces, and any of the following characters: =,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html
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
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the newly created account.
    #   For each tag in the list, you must specify both a tag key and a
    #   value. You can set the value to an empty string, but you can't set
    #   it to `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   number of tags for an account, then the entire request fails and the
    #   account is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccountRequest AWS API Documentation
    #
    class CreateAccountRequest < Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing,
      :tags)
      SENSITIVE = [:email, :account_name]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the status about a CreateAccount or CreateGovCloudAccount
    # request to create an AWS account or an AWS GovCloud (US) account in an
    # organization.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) that references this request. You get
    #   this value from the response of the initial CreateAccount request to
    #   create the account.
    #
    #   The [regex pattern][1] for a create account request ID string
    #   requires "car-" followed by from 8 to 32 lowercase letters or
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
    # @!attribute [rw] gov_cloud_account_id
    #   If the account was created successfully, the unique identifier (ID)
    #   of the new account in the AWS GovCloud (US) Region.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the request failed, a description of the reason for the failure.
    #
    #   * ACCOUNT\_LIMIT\_EXCEEDED: The account could not be created because
    #     you have reached the limit on the number of accounts in your
    #     organization.
    #
    #   * CONCURRENT\_ACCOUNT\_MODIFICATION: You already submitted a request
    #     with the same information.
    #
    #   * EMAIL\_ALREADY\_EXISTS: The account could not be created because
    #     another AWS account with that email address already exists.
    #
    #   * GOVCLOUD\_ACCOUNT\_ALREADY\_EXISTS: The account in the AWS
    #     GovCloud (US) Region could not be created because this Region
    #     already includes an account with that email address.
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
    #
    #   * MISSING\_BUSINESS\_VALIDATION: The AWS account that owns your
    #     organization has not received Business Validation.
    #
    #   * MISSING\_PAYMENT\_INSTRUMENT: You must configure the master
    #     account with a valid payment method, such as a credit card.
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
      :gov_cloud_account_id,
      :failure_reason)
      SENSITIVE = [:account_name]
      include Aws::Structure
    end

    # We can't find an create account request with the
    # `CreateAccountRequestId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateAccountStatusNotFoundException AWS API Documentation
    #
    class CreateAccountStatusNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGovCloudAccountRequest
    #   data as a hash:
    #
    #       {
    #         email: "Email", # required
    #         account_name: "AccountName", # required
    #         role_name: "RoleName",
    #         iam_user_access_to_billing: "ALLOW", # accepts ALLOW, DENY
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] email
    #   The email address of the owner to assign to the new member account
    #   in the commercial Region. This email address must not already be
    #   associated with another AWS account. You must use a valid email
    #   address to complete account creation. You can't access the root
    #   user of the account or remove an account that was created with an
    #   invalid email address. Like all request parameters for
    #   `CreateGovCloudAccount`, the request for the email address for the
    #   AWS GovCloud (US) account originates from the commercial Region, not
    #   from the AWS GovCloud (US) Region.
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
    #   preconfigures in the new member accounts in both the AWS GovCloud
    #   (US) Region and in the commercial Region. This role trusts the
    #   master account, allowing users in the master account to assume the
    #   role, as permitted by the master account administrator. The role has
    #   administrator permissions in the new member account.
    #
    #   If you don't specify this parameter, the role name defaults to
    #   `OrganizationAccountAccessRole`.
    #
    #   For more information about how to use this role to access the member
    #   account, see [Accessing and Administering the Member Accounts in
    #   Your Organization][1] in the *AWS Organizations User Guide* and
    #   steps 2 and 3 in [Tutorial: Delegate Access Across AWS Accounts
    #   Using IAM Roles][2] in the *IAM User Guide.*
    #
    #   The [regex pattern][3] that is used to validate this parameter. The
    #   pattern can include uppercase letters, lowercase letters, digits
    #   with no spaces, and any of the following characters: =,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html
    #   [3]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] iam_user_access_to_billing
    #   If set to `ALLOW`, the new linked account in the commercial Region
    #   enables IAM users to access account billing information *if* they
    #   have the required permissions. If set to `DENY`, only the root user
    #   of the new account can access account billing information. For more
    #   information, see [Activating Access to the Billing and Cost
    #   Management Console][1] in the *AWS Billing and Cost Management User
    #   Guide.*
    #
    #   If you don't specify this parameter, the value defaults to `ALLOW`,
    #   and IAM users and roles with the required permissions can access
    #   billing information for the new account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the newly created account.
    #   These tags are attached to the commercial account associated with
    #   the GovCloud account, and not to the GovCloud account itself. To add
    #   tags to the actual GovCloud account, call the TagResource operation
    #   in the GovCloud region after the new GovCloud account exists.
    #
    #   For each tag in the list, you must specify both a tag key and a
    #   value. You can set the value to an empty string, but you can't set
    #   it to `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   number of tags for an account, then the entire request fails and the
    #   account is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateGovCloudAccountRequest AWS API Documentation
    #
    class CreateGovCloudAccountRequest < Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing,
      :tags)
      SENSITIVE = [:email, :account_name]
      include Aws::Structure
    end

    # @!attribute [rw] create_account_status
    #   Contains the status about a CreateAccount or CreateGovCloudAccount
    #   request to create an AWS account or an AWS GovCloud (US) account in
    #   an organization.
    #   @return [Types::CreateAccountStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateGovCloudAccountResponse AWS API Documentation
    #
    class CreateGovCloudAccountResponse < Struct.new(
      :create_account_status)
      SENSITIVE = []
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
    #   * `CONSOLIDATED_BILLING`\: All member accounts have their bills
    #     consolidated to and paid by the master account. For more
    #     information, see [Consolidated billing][1] in the *AWS
    #     Organizations User Guide.*
    #
    #     The consolidated billing feature subset isn't available for
    #     organizations in the AWS GovCloud (US) Region.
    #
    #   * `ALL`\: In addition to all the features supported by the
    #     consolidated billing feature set, the master account can also
    #     apply any policy type to any member account in the organization.
    #     For more information, see [All features][2] in the *AWS
    #     Organizations User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationRequest AWS API Documentation
    #
    class CreateOrganizationRequest < Struct.new(
      :feature_set)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOrganizationalUnitRequest
    #   data as a hash:
    #
    #       {
    #         parent_id: "ParentId", # required
    #         name: "OrganizationalUnitName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] parent_id
    #   The unique identifier (ID) of the parent root or OU that you want to
    #   create the new OU in.
    #
    #   The [regex pattern][1] for a parent ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the newly created OU. For
    #   each tag in the list, you must specify both a tag key and a value.
    #   You can set the value to an empty string, but you can't set it to
    #   `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   number of tags for an OU, then the entire request fails and the OU
    #   is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreateOrganizationalUnitRequest AWS API Documentation
    #
    class CreateOrganizationalUnitRequest < Struct.new(
      :parent_id,
      :name,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePolicyRequest
    #   data as a hash:
    #
    #       {
    #         content: "PolicyContent", # required
    #         description: "PolicyDescription", # required
    #         name: "PolicyName", # required
    #         type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] content
    #   The policy text content to add to the new policy. The text that you
    #   supply must adhere to the rules of the policy type you specify in
    #   the `Type` parameter.
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
    #   The type of policy to create. You can specify one of the following
    #   values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the newly created policy.
    #   For each tag in the list, you must specify both a tag key and a
    #   value. You can set the value to an empty string, but you can't set
    #   it to `null`. For more information about tagging, see [Tagging AWS
    #   Organizations resources][1] in the AWS Organizations User Guide.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   number of tags for a policy, then the entire request fails and the
    #   policy is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/CreatePolicyRequest AWS API Documentation
    #
    class CreatePolicyRequest < Struct.new(
      :content,
      :description,
      :name,
      :type,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the delegated administrator.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the delegated administrator's
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the delegated administrator's
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address that is associated with the delegated
    #   administrator's AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the delegated administrator's account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the delegated administrator's account in the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] joined_method
    #   The method by which the delegated administrator's account joined
    #   the organization.
    #   @return [String]
    #
    # @!attribute [rw] joined_timestamp
    #   The date when the delegated administrator's account became a part
    #   of the organization.
    #   @return [Time]
    #
    # @!attribute [rw] delegation_enabled_date
    #   The date when the account was made a delegated administrator.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DelegatedAdministrator AWS API Documentation
    #
    class DelegatedAdministrator < Struct.new(
      :id,
      :arn,
      :email,
      :name,
      :status,
      :joined_method,
      :joined_timestamp,
      :delegation_enabled_date)
      SENSITIVE = [:email, :name]
      include Aws::Structure
    end

    # Contains information about the AWS service for which the account is a
    # delegated administrator.
    #
    # @!attribute [rw] service_principal
    #   The name of a service that can request an operation for the
    #   specified service. This is typically in the form of a URL, such as:
    #   ` servicename.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] delegation_enabled_date
    #   The date that the account became a delegated administrator for this
    #   service.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DelegatedService AWS API Documentation
    #
    class DelegatedService < Struct.new(
      :service_principal,
      :delegation_enabled_date)
      SENSITIVE = []
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
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a
    #   second "-" dash and from 8 to 32 additional lowercase letters or
    #   digits.
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
      SENSITIVE = []
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
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterDelegatedAdministratorRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         service_principal: "ServicePrincipal", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID number of the member account in the organization that
    #   you want to deregister as a delegated administrator.
    #   @return [String]
    #
    # @!attribute [rw] service_principal
    #   The service principal name of an AWS service for which the account
    #   is a delegated administrator.
    #
    #   Delegated administrator privileges are revoked for only the
    #   specified AWS service from the member account. If the specified
    #   service is the only service for which the member account is a
    #   delegated administrator, the operation also revokes Organizations
    #   read action permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DeregisterDelegatedAdministratorRequest AWS API Documentation
    #
    class DeregisterDelegatedAdministratorRequest < Struct.new(
      :account_id,
      :service_principal)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Specifies the `Id` value that uniquely identifies the
    #   `CreateAccount` request. You can get the value from the
    #   `CreateAccountStatus.Id` response in an earlier CreateAccount
    #   request, or from the ListCreateAccountStatus operation.
    #
    #   The [regex pattern][1] for a create account request ID string
    #   requires "car-" followed by from 8 to 32 lowercase letters or
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEffectivePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_type: "TAG_POLICY", # required, accepts TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #         target_id: "PolicyTargetId",
    #       }
    #
    # @!attribute [rw] policy_type
    #   The type of policy that you want information about. You can specify
    #   one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [TAG\_POLICY][3]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   When you're signed in as the master account, specify the ID of the
    #   account that you want details about. Specifying an organization root
    #   or organizational unit (OU) as the target is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeEffectivePolicyRequest AWS API Documentation
    #
    class DescribeEffectivePolicyRequest < Struct.new(
      :policy_type,
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] effective_policy
    #   The contents of the effective policy.
    #   @return [Types::EffectivePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeEffectivePolicyResponse AWS API Documentation
    #
    class DescribeEffectivePolicyResponse < Struct.new(
      :effective_policy)
      SENSITIVE = []
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization
    #   A structure that contains information about the organization.
    #
    #   The `AvailablePolicyTypes` part of the response is deprecated, and
    #   you shouldn't use it in your apps. It doesn't include any policy
    #   type supported by Organizations other than SCPs. To determine which
    #   policy types are enabled in your organization, use the ` ListRoots `
    #   operation.
    #   @return [Types::Organization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DescribeOrganizationResponse AWS API Documentation
    #
    class DescribeOrganizationResponse < Struct.new(
      :organization)
      SENSITIVE = []
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
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a
    #   second "-" dash and from 8 to 32 additional lowercase letters or
    #   digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find the destination container (a root or OU) with the
    # `ParentId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DestinationParentNotFoundException AWS API Documentation
    #
    class DestinationParentNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier (ID) of the root, OU, or account that you want
    #   to detach the policy from. You can get the ID from the ListRoots,
    #   ListOrganizationalUnitsForParent, or ListAccounts operations.
    #
    #   The [regex pattern][1] for a target ID string requires one of the
    #   following:
    #
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisablePolicyTypeRequest
    #   data as a hash:
    #
    #       {
    #         root_id: "RootId", # required
    #         policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #       }
    #
    # @!attribute [rw] root_id
    #   The unique identifier (ID) of the root in which you want to disable
    #   a policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type that you want to disable in this root. You can
    #   specify one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DisablePolicyTypeRequest AWS API Documentation
    #
    class DisablePolicyTypeRequest < Struct.new(
      :root_id,
      :policy_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # That account is already present in the specified destination.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DuplicateAccountException AWS API Documentation
    #
    class DuplicateAccountException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A handshake with the same action and target already exists. For
    # example, if you invited an account to join your organization, the
    # invited account might already have a pending invitation from this
    # organization. If you intend to resend an invitation to an account,
    # ensure that existing handshakes that might be considered duplicates
    # are canceled or declined.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DuplicateHandshakeException AWS API Documentation
    #
    class DuplicateHandshakeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An OU with the same name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DuplicateOrganizationalUnitException AWS API Documentation
    #
    class DuplicateOrganizationalUnitException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The selected policy is already attached to the specified target.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DuplicatePolicyAttachmentException AWS API Documentation
    #
    class DuplicatePolicyAttachmentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy with the same name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/DuplicatePolicyException AWS API Documentation
    #
    class DuplicatePolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains rules to be applied to the affected accounts. The effective
    # policy is the aggregation of any policies the account inherits, plus
    # any policy directly attached to the account.
    #
    # @!attribute [rw] policy_content
    #   The text content of the policy.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time of the last update to this policy.
    #   @return [Time]
    #
    # @!attribute [rw] target_id
    #   The account ID of the policy target.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EffectivePolicy AWS API Documentation
    #
    class EffectivePolicy < Struct.new(
      :policy_content,
      :last_updated_timestamp,
      :target_id,
      :policy_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # If you ran this action on the master account, this policy type is not
    # enabled. If you ran the action on a member account, the account
    # doesn't have an effective policy of this type. Contact the
    # administrator of your organization about attaching a policy of this
    # type to the account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EffectivePolicyNotFoundException AWS API Documentation
    #
    class EffectivePolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnablePolicyTypeRequest
    #   data as a hash:
    #
    #       {
    #         root_id: "RootId", # required
    #         policy_type: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #       }
    #
    # @!attribute [rw] root_id
    #   The unique identifier (ID) of the root in which you want to enable a
    #   policy type. You can get the ID from the ListRoots operation.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lowercase letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type that you want to enable. You can specify one of the
    #   following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/EnablePolicyTypeRequest AWS API Documentation
    #
    class EnablePolicyTypeRequest < Struct.new(
      :root_id,
      :policy_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains details of a service principal that
    # represents an AWS service that is enabled to integrate with AWS
    # Organizations.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Organizations couldn't perform the operation because your
    # organization hasn't finished initializing. This can take up to an
    # hour. Try again later. If after one hour you continue to receive this
    # error, contact [AWS Support][1].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/support/home#/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/FinalizingOrganizationException AWS API Documentation
    #
    class FinalizingOrganizationException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified handshake is already in the requested state. For
    # example, you can't accept a handshake that was already accepted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/HandshakeAlreadyInStateException AWS API Documentation
    #
    class HandshakeAlreadyInStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would violate the constraint identified in the
    # reason code.
    #
    # <note markdown="1"> Some of the reasons in the following list might not be applicable to
    # this specific API or operation:
    #
    #  </note>
    #
    # * ACCOUNT\_NUMBER\_LIMIT\_EXCEEDED: You attempted to exceed the limit
    #   on the number of accounts in an organization. Note that deleted and
    #   closed accounts still count toward your limit.
    #
    #   If you get this exception immediately after creating the
    #   organization, wait one hour and try again. If after an hour it
    #   continues to fail with this error, contact [AWS Support][1].
    #
    # * ALREADY\_IN\_AN\_ORGANIZATION: The handshake request is invalid
    #   because the invited account is already a member of an organization.
    #
    # * HANDSHAKE\_RATE\_LIMIT\_EXCEEDED: You attempted to exceed the number
    #   of handshakes that you can send in one day.
    #
    # * INVITE\_DISABLED\_DURING\_ENABLE\_ALL\_FEATURES: You can't issue
    #   new invitations to join an organization while it's in the process
    #   of enabling all features. You can resume inviting accounts after you
    #   finalize the process when all accounts have agreed to the change.
    #
    # * ORGANIZATION\_ALREADY\_HAS\_ALL\_FEATURES: The handshake request is
    #   invalid because the organization has already enabled all features.
    #
    # * ORGANIZATION\_FROM\_DIFFERENT\_SELLER\_OF\_RECORD: The request
    #   failed because the account is from a different marketplace than the
    #   accounts in the organization. For example, accounts with India
    #   addresses must be associated with the AISPL marketplace. All
    #   accounts in an organization must be from the same marketplace.
    #
    # * ORGANIZATION\_MEMBERSHIP\_CHANGE\_RATE\_LIMIT\_EXCEEDED: You
    #   attempted to change the membership of an account too quickly after
    #   its previous change.
    #
    # * PAYMENT\_INSTRUMENT\_REQUIRED: You can't complete the operation
    #   with an account that doesn't have a payment instrument, such as a
    #   credit card, associated with it.
    #
    #
    #
    # [1]: https://console.aws.amazon.com/support/home#/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/HandshakeConstraintViolationException AWS API Documentation
    #
    class HandshakeConstraintViolationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a handshake with the `HandshakeId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/HandshakeNotFoundException AWS API Documentation
    #
    class HandshakeNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   followed by from 8 to 32 lowercase letters or digits.
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
      SENSITIVE = [:id]
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
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # You can't perform the operation on the handshake in its current
    # state. For example, you can't cancel a handshake that was already
    # accepted or accept a handshake that was already declined.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InvalidHandshakeTransitionException AWS API Documentation
    #
    class InvalidHandshakeTransitionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation failed because you provided invalid values for
    # one or more of the request parameters. This exception includes a
    # reason that contains additional information about the violated limit:
    #
    # <note markdown="1"> Some of the reasons in the following list might not be applicable to
    # this specific API or operation.
    #
    #  </note>
    #
    # * DUPLICATE\_TAG\_KEY: Tag keys must be unique among the tags attached
    #   to the same entity.
    #
    # * IMMUTABLE\_POLICY: You specified a policy that is managed by AWS and
    #   can't be modified.
    #
    # * INPUT\_REQUIRED: You must include a value for all required
    #   parameters.
    #
    # * INVALID\_ENUM: You specified an invalid value.
    #
    # * INVALID\_ENUM\_POLICY\_TYPE: You specified an invalid policy type
    #   string.
    #
    # * INVALID\_FULL\_NAME\_TARGET: You specified a full name that contains
    #   invalid characters.
    #
    # * INVALID\_LIST\_MEMBER: You provided a list to a parameter that
    #   contains at least one invalid value.
    #
    # * INVALID\_PAGINATION\_TOKEN: Get the value for the `NextToken`
    #   parameter from the response to a previous call of the operation.
    #
    # * INVALID\_PARTY\_TYPE\_TARGET: You specified the wrong type of entity
    #   (account, organization, or email) as a party.
    #
    # * INVALID\_PATTERN: You provided a value that doesn't match the
    #   required pattern.
    #
    # * INVALID\_PATTERN\_TARGET\_ID: You specified a policy target ID that
    #   doesn't match the required pattern.
    #
    # * INVALID\_ROLE\_NAME: You provided a role name that isn't valid. A
    #   role name can't begin with the reserved prefix `AWSServiceRoleFor`.
    #
    # * INVALID\_SYNTAX\_ORGANIZATION\_ARN: You specified an invalid Amazon
    #   Resource Name (ARN) for the organization.
    #
    # * INVALID\_SYNTAX\_POLICY\_ID: You specified an invalid policy ID.
    #
    # * INVALID\_SYSTEM\_TAGS\_PARAMETER: You specified a tag key that is a
    #   system tag. You can’t add, edit, or delete system tag keys because
    #   they're reserved for AWS use. System tags don’t count against your
    #   tags per resource limit.
    #
    # * MAX\_FILTER\_LIMIT\_EXCEEDED: You can specify only one filter
    #   parameter for the operation.
    #
    # * MAX\_LENGTH\_EXCEEDED: You provided a string parameter that is
    #   longer than allowed.
    #
    # * MAX\_VALUE\_EXCEEDED: You provided a numeric parameter that has a
    #   larger value than allowed.
    #
    # * MIN\_LENGTH\_EXCEEDED: You provided a string parameter that is
    #   shorter than allowed.
    #
    # * MIN\_VALUE\_EXCEEDED: You provided a numeric parameter that has a
    #   smaller value than allowed.
    #
    # * MOVING\_ACCOUNT\_BETWEEN\_DIFFERENT\_ROOTS: You can move an account
    #   only between entities in the same root.
    #
    # * TARGET\_NOT\_SUPPORTED: You can't perform the specified operation
    #   on that target entity.
    #
    # * UNRECOGNIZED\_SERVICE\_PRINCIPAL: You specified a service principal
    #   that isn't recognized.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
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
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    #   If you specify `"Type": "ACCOUNT"`, you must provide the AWS account
    #   ID number as the `Id`. If you specify `"Type": "EMAIL"`, you must
    #   specify the email address that is associated with the account.
    #
    #   `--target Id=diego@example.com,Type=EMAIL`
    #   @return [Types::HandshakeParty]
    #
    # @!attribute [rw] notes
    #   Additional information that you want to include in the generated
    #   email to the recipient account owner.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the account when it
    #   becomes a member of the organization. For each tag in the list, you
    #   must specify both a tag key and a value. You can set the value to an
    #   empty string, but you can't set it to `null`. For more information
    #   about tagging, see [Tagging AWS Organizations resources][1] in the
    #   AWS Organizations User Guide.
    #
    #   Any tags in the request are checked for compliance with any
    #   applicable tag policies when the request is made. The request is
    #   rejected if the tags in the request don't match the requirements of
    #   the policy at that time. Tag policy compliance is <i> <b>not</b>
    #   </i> checked again when the invitation is accepted and the tags are
    #   actually attached to the account. That means that if the tag policy
    #   changes between the invitation and the acceptance, then that tags
    #   could potentially be non-compliant.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   number of tags for an account, then the entire request fails and
    #   invitations are not sent.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/InviteAccountToOrganizationRequest AWS API Documentation
    #
    class InviteAccountToOrganizationRequest < Struct.new(
      :target,
      :notes,
      :tags)
      SENSITIVE = [:notes]
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
      SENSITIVE = []
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAWSServiceAccessForOrganizationRequest AWS API Documentation
    #
    class ListAWSServiceAccessForOrganizationRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
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
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAWSServiceAccessForOrganizationResponse AWS API Documentation
    #
    class ListAWSServiceAccessForOrganizationResponse < Struct.new(
      :enabled_service_principals,
      :next_token)
      SENSITIVE = []
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsForParentRequest AWS API Documentation
    #
    class ListAccountsForParentRequest < Struct.new(
      :parent_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   A list of the accounts in the specified root or OU.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsForParentResponse AWS API Documentation
    #
    class ListAccountsForParentResponse < Struct.new(
      :accounts,
      :next_token)
      SENSITIVE = []
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsRequest AWS API Documentation
    #
    class ListAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   A list of objects in the organization.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListAccountsResponse AWS API Documentation
    #
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token)
      SENSITIVE = []
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListChildrenRequest AWS API Documentation
    #
    class ListChildrenRequest < Struct.new(
      :parent_id,
      :child_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] children
    #   The list of children of the specified parent container.
    #   @return [Array<Types::Child>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListChildrenResponse AWS API Documentation
    #
    class ListChildrenResponse < Struct.new(
      :children,
      :next_token)
      SENSITIVE = []
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
    #   If this parameter isn't present, all requests are included in the
    #   response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListCreateAccountStatusRequest AWS API Documentation
    #
    class ListCreateAccountStatusRequest < Struct.new(
      :states,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_account_statuses
    #   A list of objects with details about the requests. Certain elements,
    #   such as the accountId number, are present in the output only after
    #   the account has been successfully created.
    #   @return [Array<Types::CreateAccountStatus>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListCreateAccountStatusResponse AWS API Documentation
    #
    class ListCreateAccountStatusResponse < Struct.new(
      :create_account_statuses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDelegatedAdministratorsRequest
    #   data as a hash:
    #
    #       {
    #         service_principal: "ServicePrincipal",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] service_principal
    #   Specifies a service principal name. If specified, then the operation
    #   lists the delegated administrators only for the specified service.
    #
    #   If you don't specify a service principal, the operation lists all
    #   delegated administrators for all services in your organization.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListDelegatedAdministratorsRequest AWS API Documentation
    #
    class ListDelegatedAdministratorsRequest < Struct.new(
      :service_principal,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_administrators
    #   The list of delegated administrators in your organization.
    #   @return [Array<Types::DelegatedAdministrator>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListDelegatedAdministratorsResponse AWS API Documentation
    #
    class ListDelegatedAdministratorsResponse < Struct.new(
      :delegated_administrators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDelegatedServicesForAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID number of a delegated administrator account in the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListDelegatedServicesForAccountRequest AWS API Documentation
    #
    class ListDelegatedServicesForAccountRequest < Struct.new(
      :account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegated_services
    #   The services for which the account is a delegated administrator.
    #   @return [Array<Types::DelegatedService>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListDelegatedServicesForAccountResponse AWS API Documentation
    #
    class ListDelegatedServicesForAccountResponse < Struct.new(
      :delegated_services,
      :next_token)
      SENSITIVE = []
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
    #   `ENABLE_ALL_FEATURES`, or `APPROVE_ALL_FEATURES`. Alternatively, for
    #   the `ENABLE_ALL_FEATURES` handshake that generates a separate child
    #   handshake for each member account, you can specify
    #   `ParentHandshakeId` to see only the handshakes that were generated
    #   by that parent request.
    #   @return [Types::HandshakeFilter]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForAccountRequest AWS API Documentation
    #
    class ListHandshakesForAccountRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] handshakes
    #   A list of Handshake objects with details about each of the
    #   handshakes that is associated with the specified account.
    #   @return [Array<Types::Handshake>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForAccountResponse AWS API Documentation
    #
    class ListHandshakesForAccountResponse < Struct.new(
      :handshakes,
      :next_token)
      SENSITIVE = []
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForOrganizationRequest AWS API Documentation
    #
    class ListHandshakesForOrganizationRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] handshakes
    #   A list of Handshake objects with details about each of the
    #   handshakes that are associated with an organization.
    #   @return [Array<Types::Handshake>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListHandshakesForOrganizationResponse AWS API Documentation
    #
    class ListHandshakesForOrganizationResponse < Struct.new(
      :handshakes,
      :next_token)
      SENSITIVE = []
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListOrganizationalUnitsForParentRequest AWS API Documentation
    #
    class ListOrganizationalUnitsForParentRequest < Struct.new(
      :parent_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organizational_units
    #   A list of the OUs in the specified root or parent OU.
    #   @return [Array<Types::OrganizationalUnit>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListOrganizationalUnitsForParentResponse AWS API Documentation
    #
    class ListOrganizationalUnitsForParentResponse < Struct.new(
      :organizational_units,
      :next_token)
      SENSITIVE = []
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
    #   containers you want to list. Don't specify a root.
    #
    #   The [regex pattern][1] for a child ID string requires one of the
    #   following:
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that contains the OU). This string is followed by a
    #     second "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListParentsRequest AWS API Documentation
    #
    class ListParentsRequest < Struct.new(
      :child_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parents
    #   A list of parents for the specified child account or OU.
    #   @return [Array<Types::Parent>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListParentsResponse AWS API Documentation
    #
    class ListParentsResponse < Struct.new(
      :parents,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesForTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_id: "PolicyTargetId", # required
    #         filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The type of policy that you want to include in the returned list.
    #   You must specify one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesForTargetRequest AWS API Documentation
    #
    class ListPoliciesForTargetRequest < Struct.new(
      :target_id,
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   The list of policies that match the criteria in the request.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesForTargetResponse AWS API Documentation
    #
    class ListPoliciesForTargetResponse < Struct.new(
      :policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         filter: "SERVICE_CONTROL_POLICY", # required, accepts SERVICE_CONTROL_POLICY, TAG_POLICY, BACKUP_POLICY, AISERVICES_OPT_OUT_POLICY
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Specifies the type of policy that you want to include in the
    #   response. You must specify one of the following values:
    #
    #   * [AISERVICES\_OPT\_OUT\_POLICY][1]
    #
    #   * [BACKUP\_POLICY][2]
    #
    #   * [SERVICE\_CONTROL\_POLICY][3]
    #
    #   * [TAG\_POLICY][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html
    #   [3]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html
    #   [4]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   A list of policies that match the filter criteria in the request.
    #   The output list doesn't include the policy contents. To see the
    #   content for a policy, see DescribePolicy.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policies,
      :next_token)
      SENSITIVE = []
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
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListRootsRequest AWS API Documentation
    #
    class ListRootsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] roots
    #   A list of roots that are defined in an organization.
    #   @return [Array<Types::Root>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListRootsResponse AWS API Documentation
    #
    class ListRootsResponse < Struct.new(
      :roots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "TaggableResourceId", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource with the tags to list.
    #
    #   You can specify any of the following taggable resources.
    #
    #   * AWS account – specify the account ID number.
    #
    #   * Organizational unit – specify the OU ID that begins with `ou-` and
    #     looks similar to: `ou-1a2b-34uvwxyz `
    #
    #   * Root – specify the root ID that begins with `r-` and looks similar
    #     to: `r-1a2b `
    #
    #   * Policy – specify the policy ID that begins with `p-` andlooks
    #     similar to: `p-12abcdefg3 `
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
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
    #   The unique identifier (ID) of the policy whose attachments you want
    #   to know.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value that is specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (is not null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to
    #   get the next part of the results. Note that Organizations might
    #   return fewer results than the maximum even when there are more
    #   results available. You should check `NextToken` after every
    #   operation to ensure that you receive all of the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTargetsForPolicyRequest AWS API Documentation
    #
    class ListTargetsForPolicyRequest < Struct.new(
      :policy_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   A list of structures, each of which contains details about one of
    #   the entities to which the specified policy is attached.
    #   @return [Array<Types::PolicyTargetSummary>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ListTargetsForPolicyResponse AWS API Documentation
    #
    class ListTargetsForPolicyResponse < Struct.new(
      :targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided policy document doesn't meet the requirements of the
    # specified policy type. For example, the syntax might be incorrect. For
    # details about service control policy syntax, see [Service Control
    # Policy Syntax][1] in the *AWS Organizations User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/MalformedPolicyDocumentException AWS API Documentation
    #
    class MalformedPolicyDocumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't remove a master account from an organization. If you want
    # the master account to become a member account in another organization,
    # you must first delete the current organization of the master account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/MasterCannotLeaveOrganizationException AWS API Documentation
    #
    class MasterCannotLeaveOrganizationException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
      SENSITIVE = []
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
    #   followed by from 10 to 32 lowercase letters or digits.
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
    #   Do not use. This field is deprecated and doesn't provide complete
    #   information about the policies in your organization.
    #
    #   To determine the policies that are enabled and available for use in
    #   your organization, use the ListRoots operation instead.
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
      SENSITIVE = [:master_account_email]
      include Aws::Structure
    end

    # The organization isn't empty. To delete an organization, you must
    # first remove all accounts except the master account, delete all OUs,
    # and delete all policies.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/OrganizationNotEmptyException AWS API Documentation
    #
    class OrganizationNotEmptyException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a
    #   second "-" dash and from 8 to 32 additional lowercase letters or
    #   digits.
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified OU is not empty. Move all accounts to another root or to
    # other OUs, remove all child OUs, and try the operation again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/OrganizationalUnitNotEmptyException AWS API Documentation
    #
    class OrganizationalUnitNotEmptyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find an OU with the `OrganizationalUnitId` that you
    # specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/OrganizationalUnitNotFoundException AWS API Documentation
    #
    class OrganizationalUnitNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a root or OU with the `ParentId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ParentNotFoundException AWS API Documentation
    #
    class ParentNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Changes to the effective policy are in progress, and its contents
    # can't be returned. Try the operation again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyChangesInProgressException AWS API Documentation
    #
    class PolicyChangesInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy is attached to one or more entities. You must detach it
    # from all roots, OUs, and accounts before performing this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyInUseException AWS API Documentation
    #
    class PolicyInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy isn't attached to the specified target in the specified
    # root.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyNotAttachedException AWS API Documentation
    #
    class PolicyNotAttachedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a policy with the `PolicyId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyNotFoundException AWS API Documentation
    #
    class PolicyNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a policy, but does not include the content.
    # To see the content of a policy, see DescribePolicy.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the policy.
    #
    #   The [regex pattern][1] for a policy ID string requires "p-"
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
      SENSITIVE = []
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
    #   * **Root** - A string that begins with "r-" followed by from 4 to
    #     32 lowercase letters or digits.
    #
    #   * **Account** - A string that consists of exactly 12 digits.
    #
    #   * **Organizational unit (OU)** - A string that begins with "ou-"
    #     followed by from 4 to 32 lowercase letters or digits (the ID of
    #     the root that the OU is in). This string is followed by a second
    #     "-" dash and from 8 to 32 additional lowercase letters or
    #     digits.
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified policy type is already enabled in the specified root.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyTypeAlreadyEnabledException AWS API Documentation
    #
    class PolicyTypeAlreadyEnabledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't use the specified policy type with the feature set
    # currently enabled for this organization. For example, you can enable
    # SCPs only after you enable all features in the organization. For more
    # information, see [Managing AWS Organizations Policies][1]in the *AWS
    # Organizations User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyTypeNotAvailableForOrganizationException AWS API Documentation
    #
    class PolicyTypeNotAvailableForOrganizationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified policy type isn't currently enabled in this root. You
    # can't attach policies of the specified type to entities in a root
    # until you enable that type in the root. For more information, see
    # [Enabling All Features in Your Organization][1] in the *AWS
    # Organizations User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/PolicyTypeNotEnabledException AWS API Documentation
    #
    class PolicyTypeNotEnabledException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterDelegatedAdministratorRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         service_principal: "ServicePrincipal", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account ID number of the member account in the organization to
    #   register as a delegated administrator.
    #   @return [String]
    #
    # @!attribute [rw] service_principal
    #   The service principal of the AWS service for which you want to make
    #   the member account a delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/RegisterDelegatedAdministratorRequest AWS API Documentation
    #
    class RegisterDelegatedAdministratorRequest < Struct.new(
      :account_id,
      :service_principal)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a root. A root is a top-level parent node in
    # the hierarchy of an organization that can contain organizational units
    # (OUs) and accounts. The root contains every AWS account in the
    # organization.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) for the root.
    #
    #   The [regex pattern][1] for a root ID string requires "r-" followed
    #   by from 4 to 32 lowercase letters or digits.
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
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns
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
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a root with the `RootId` that you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/RootNotFoundException AWS API Documentation
    #
    class RootNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Organizations can't complete your request because of an internal
    # service error. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a source root or OU with the `ParentId` that you
    # specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/SourceParentNotFoundException AWS API Documentation
    #
    class SourceParentNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom key-value pair associated with a resource within your
    # organization.
    #
    # You can attach tags to any of the following organization resources.
    #
    # * AWS account
    #
    # * Organizational unit (OU)
    #
    # * Organization root
    #
    # * Policy
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key identifier, or name, of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The string value that's associated with the key of the tag. You can
    #   set the value of a tag to an empty string, but you can't set the
    #   value of a tag to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "TaggableResourceId", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource to add a tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the specified resource.
    #
    #   You can specify any of the following taggable resources.
    #
    #   * AWS account – specify the account ID number.
    #
    #   * Organizational unit – specify the OU ID that begins with `ou-` and
    #     looks similar to: `ou-1a2b-34uvwxyz `
    #
    #   * Root – specify the root ID that begins with `r-` and looks similar
    #     to: `r-1a2b `
    #
    #   * Policy – specify the policy ID that begins with `p-` andlooks
    #     similar to: `p-12abcdefg3 `
    #
    #   For each tag in the list, you must specify both a tag key and a
    #   value. You can set the value to an empty string, but you can't set
    #   it to `null`.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   number of tags for an account user, then the entire request fails
    #   and the account is not created.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find a root, OU, account, or policy with the `TargetId` that
    # you specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/TargetNotFoundException AWS API Documentation
    #
    class TargetNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have sent too many requests in too short a period of time. The
    # quota helps protect against denial-of-service attacks. Try again
    # later.
    #
    # For information about quotas that affect AWS Organizations, see
    # [Quotas for AWS Organizations][1]in the *AWS Organizations User
    # Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This action isn't available in the current AWS Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UnsupportedAPIEndpointException AWS API Documentation
    #
    class UnsupportedAPIEndpointException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "TaggableResourceId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource to remove a tag from.
    #
    #   You can specify any of the following taggable resources.
    #
    #   * AWS account – specify the account ID number.
    #
    #   * Organizational unit – specify the OU ID that begins with `ou-` and
    #     looks similar to: `ou-1a2b-34uvwxyz `
    #
    #   * Root – specify the root ID that begins with `r-` and looks similar
    #     to: `r-1a2b `
    #
    #   * Policy – specify the policy ID that begins with `p-` andlooks
    #     similar to: `p-12abcdefg3 `
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of keys for tags to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
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
    #   "ou-" followed by from 4 to 32 lowercase letters or digits (the ID
    #   of the root that contains the OU). This string is followed by a
    #   second "-" dash and from 8 to 32 additional lowercase letters or
    #   digits.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   followed by from 8 to 128 lowercase or uppercase letters, digits, or
    #   the underscore character (\_).
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
    #   Syntax][1] in the *AWS Organizations User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/organizations-2016-11-28/UpdatePolicyRequest AWS API Documentation
    #
    class UpdatePolicyRequest < Struct.new(
      :policy_id,
      :name,
      :description,
      :content)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
