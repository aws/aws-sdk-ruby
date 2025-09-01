# frozen_string_literal: true

# This is generated code!

module Aws::Organizations
  # This module contains the types returned by client operations.
  module Types

    # <p>Your account isn't a member of an organization. To make this request, you must use the
    #             credentials of an account that belongs to an organization.</p>
    # @!attribute message
    #   @return [String]
    class AWSOrganizationsNotInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to accept.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    class AcceptHandshakeRequest < Struct.new(
      :handshake_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the accepted handshake.</p>
    #   @return [Types::Handshake]
    class AcceptHandshakeResponse < Struct.new(
      :handshake,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You don't have permissions to perform the requested operation. The user or role that
    #             is making the request must have at least one IAM permissions policy attached that
    #             grants the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The operation that you attempted requires you to have the
    #                 <code>iam:CreateServiceLinkedRole</code> for
    #                 <code>organizations.amazonaws.com</code> permission so that Organizations can create the
    #             required service-linked role. You don't have that permission.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    class AccessDeniedForDependencyException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccessDeniedForDependencyExceptionReason
      ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE = 'ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE'
    end

    # <p>Contains information about an Amazon Web Services account that is a member of an
    #             organization.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of the account.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address associated with the Amazon Web Services account.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for this parameter is a string of characters that represents a
    #               standard internet email address.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the account.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the account in the organization.</p>
    #   @return [String]
    # @!attribute joined_method
    #   <p>The method by which the account joined the organization.</p>
    #   @return [String]
    # @!attribute joined_timestamp
    #   <p>The date the account became a part of the organization.</p>
    #   @return [Time]
    class Account < Struct.new(
      :id,
      :arn,
      :email,
      :name,
      :status,
      :joined_method,
      :joined_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You attempted to close an account that is already closed.</p>
    # @!attribute message
    #   @return [String]
    class AccountAlreadyClosedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified account is already a delegated administrator for this Amazon Web Services
    #             service.</p>
    # @!attribute message
    #   @return [String]
    class AccountAlreadyRegisteredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccountJoinedMethod
      INVITED = 'INVITED'
      CREATED = 'CREATED'
    end

    # <p> We can't find an Amazon Web Services account with the <code>AccountId</code> that you specified, or
    #             the account whose credentials you used to make this request isn't a member of an
    #             organization.</p>
    # @!attribute message
    #   @return [String]
    class AccountNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified account is not a delegated administrator for this Amazon Web Services service. </p>
    # @!attribute message
    #   @return [String]
    class AccountNotRegisteredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You can't invite an existing account to your organization until you verify that you
    #             own the email address associated with the management account. For more information, see
    #                 <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_create.html#about-email-verification">Email address
    #                 verification</a> in the <i>Organizations User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class AccountOwnerNotVerifiedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccountStatus
      ACTIVE = 'ACTIVE'
      SUSPENDED = 'SUSPENDED'
      PENDING_CLOSURE = 'PENDING_CLOSURE'
    end

    module ActionType
      INVITE_ACCOUNT_TO_ORGANIZATION = 'INVITE'
      ENABLE_ALL_FEATURES = 'ENABLE_ALL_FEATURES'
      APPROVE_ALL_FEATURES = 'APPROVE_ALL_FEATURES'
      ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE = 'ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE'
    end

    # <p>This account is already a member of an organization. An account can belong to only one
    #             organization at a time.</p>
    # @!attribute message
    #   @return [String]
    class AlreadyInOrganizationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want to attach to the target. You
    #               can get the ID for the policy by calling the <a>ListPolicies</a>
    #               operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier (ID) of the root, OU, or account that you want to attach the
    #               policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AttachPolicyRequest < Struct.new(
      :policy_id,
      :target_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the
    #               ID from the <a>ListHandshakesForOrganization</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    class CancelHandshakeRequest < Struct.new(
      :handshake_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the handshake that you canceled.</p>
    #   @return [Types::Handshake]
    class CancelHandshakeResponse < Struct.new(
      :handshake,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a list of child entities, either OUs or accounts.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of this child entity.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with
    #             "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that 
    #             contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional 
    #             lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this child entity.</p>
    #   @return [String]
    class Child < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find an organizational unit (OU) or Amazon Web Services account with the
    #                 <code>ChildId</code> that you specified.</p>
    # @!attribute message
    #   @return [String]
    class ChildNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChildType
      ACCOUNT = 'ACCOUNT'
      ORGANIZATIONAL_UNIT = 'ORGANIZATIONAL_UNIT'
    end

    # @!attribute account_id
    #   <p>Retrieves the Amazon Web Services account Id for the current <code>CloseAccount</code> API request.
    #           </p>
    #   @return [String]
    class CloseAccountRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The target of the operation is currently being modified by a different request. Try
    #             again later.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request failed because it conflicts with the current state of the specified
    #             resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Performing this operation violates a minimum or maximum value limit. For example,
    #             attempting to remove the last service control policy (SCP) from an OU or root, inviting
    #             or creating too many accounts to the organization, or attaching too many policies to an
    #             account, OU, or root. This exception includes a reason that contains additional
    #             information about the violated limit:</p>
    #          <note>
    #             <p>Some of the reasons in the following list might not be applicable to this specific
    #                 API or operation.</p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>ACCOUNT_CANNOT_LEAVE_ORGANIZATION: You attempted to remove the management
    #                     account from the organization. You can't remove the management account. Instead,
    #                     after you remove all member accounts, delete the organization itself.</p>
    #             </li>
    #             <li>
    #                <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an
    #                     account from the organization that doesn't yet have enough information to exist
    #                     as a standalone account. This account requires you to first complete phone
    #                     verification. Follow the steps at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#orgs_manage_accounts_remove-from-master">Removing a member account from your organization</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     accounts that you can create in one day.</p>
    #             </li>
    #             <li>
    #                <p>ACCOUNT_CREATION_NOT_COMPLETE: Your account setup isn't complete or your
    #                     account isn't fully active. You must complete the account setup before you
    #                     create an organization.</p>
    #             </li>
    #             <li>
    #                <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number
    #                     of accounts in an organization. If you need more accounts, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a> to
    #                     request an increase in your limit. </p>
    #                <p>Or the number of invitations that you tried to send would cause you to exceed
    #                     the limit of accounts in your organization. Send fewer invitations or contact
    #                     Amazon Web Services Support to request an increase in the number of accounts.</p>
    #                <note>
    #                   <p>Deleted and closed accounts still count toward your limit.</p>
    #                </note>
    #                <important>
    #                   <p>If you get this exception when running a command immediately after
    #                         creating the organization, wait one hour and try again. After an hour, if
    #                         the command continues to fail with this error, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                </important>
    #             </li>
    #             <li>
    #                <p>ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED: Your organization has
    #                     more than 5000 accounts, and you can only use the standard migration process for
    #                     organizations with less than 5000 accounts. Use the assisted migration process
    #                     to enable all features mode, or create a support case for assistance if you are
    #                     unable to use assisted migration.</p>
    #             </li>
    #             <li>
    #                <p>CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR: You cannot
    #                     register a suspended account as a delegated administrator.</p>
    #             </li>
    #             <li>
    #                <p>CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR: You attempted to register
    #                     the management account of the organization as a delegated administrator for an
    #                     Amazon Web Services service integrated with Organizations. You can designate only a member account as a
    #                     delegated administrator.</p>
    #             </li>
    #             <li>
    #                <p>CANNOT_CLOSE_MANAGEMENT_ACCOUNT: You attempted to close the management
    #                     account. To close the management account for the organization, you must first
    #                     either remove or close all member accounts in the organization. Follow standard
    #                     account closure process using root credentials.​ </p>
    #             </li>
    #             <li>
    #                <p>CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG: You attempted to remove an
    #                     account that is registered as a delegated administrator for a service integrated
    #                     with your organization. To complete this operation, you must first deregister
    #                     this account as a delegated administrator. </p>
    #             </li>
    #             <li>
    #                <p>CLOSE_ACCOUNT_QUOTA_EXCEEDED: You have exceeded close account quota for the
    #                     past 30 days. </p>
    #             </li>
    #             <li>
    #                <p>CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     accounts that you can close at a time. ​ </p>
    #             </li>
    #             <li>
    #                <p>CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION: To create an
    #                     organization in the specified region, you must enable all features mode.</p>
    #             </li>
    #             <li>
    #                <p>DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE: You attempted to register an
    #                     Amazon Web Services account as a delegated administrator for an Amazon Web Services service that already has
    #                     a delegated administrator. To complete this operation, you must first deregister
    #                     any existing delegated administrators for this service.</p>
    #             </li>
    #             <li>
    #                <p>EMAIL_VERIFICATION_CODE_EXPIRED: The email verification code is only valid for
    #                     a limited period of time. You must resubmit the request and generate a new
    #                     verfication code.</p>
    #             </li>
    #             <li>
    #                <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     handshakes that you can send in one day.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_PAYMENT_INSTRUMENT: You cannot remove an account because no supported
    #                     payment method is associated with the account. Amazon Web Services does not support cards
    #                     issued by financial institutions in Russia or Belarus. For more information, see
    #                         <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-general.html">Managing your
    #                         Amazon Web Services payments</a>.</p>
    #             </li>
    #             <li>
    #                <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in
    #                     this organization, you first must migrate the organization's management account
    #                     to the marketplace that corresponds to the management account's address. All
    #                     accounts in an organization must be associated with the same marketplace.</p>
    #             </li>
    #             <li>
    #                <p>MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE: Applies only to the Amazon Web Services Regions in
    #                     China. To create an organization, the master must have a valid business license.
    #                     For more information, contact customer support.</p>
    #             </li>
    #             <li>
    #                <p>MASTER_ACCOUNT_MISSING_CONTACT_INFO: To complete this operation, you must
    #                     first provide a valid contact address and phone number for the management
    #                     account. Then try the operation again.</p>
    #             </li>
    #             <li>
    #                <p>MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED: To complete this operation, the
    #                     management account must have an associated account in the Amazon Web Services GovCloud
    #                     (US-West) Region. For more information, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">Organizations</a>
    #                     in the 
    #                     <i>Amazon Web Services GovCloud User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with
    #                     this management account, you first must associate a valid payment instrument,
    #                     such as a credit card, with the account. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_account-before-remove.html">Considerations before removing an account from an organization</a> in
    #                     the <i>Organizations User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED: You attempted to
    #                     register more delegated administrators than allowed for the service principal.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number
    #                     of policies of a certain type that can be attached to an entity at one
    #                     time.</p>
    #             </li>
    #             <li>
    #                <p>MAX_TAG_LIMIT_EXCEEDED: You have exceeded the number of tags allowed on this
    #                     resource. </p>
    #             </li>
    #             <li>
    #                <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with
    #                     this member account, you first must associate a valid payment instrument, such
    #                     as a credit card, with the account. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_account-before-remove.html">Considerations before removing an account from an organization</a> in
    #                     the <i>Organizations User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy
    #                     from an entity that would cause the entity to have fewer than the minimum number
    #                     of policies of a certain type required.</p>
    #             </li>
    #             <li>
    #                <p>ORGANIZATION_NOT_IN_ALL_FEATURES_MODE: You attempted to perform an operation
    #                     that requires the organization to be configured to support all features. An
    #                     organization that supports only consolidated billing features can't perform this
    #                     operation.</p>
    #             </li>
    #             <li>
    #                <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an OU tree that is too many
    #                     levels deep.</p>
    #             </li>
    #             <li>
    #                <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of OUs that you
    #                     can have in an organization.</p>
    #             </li>
    #             <li>
    #                <p>POLICY_CONTENT_LIMIT_EXCEEDED: You attempted to create a policy that is larger
    #                     than the maximum size.</p>
    #             </li>
    #             <li>
    #                <p>POLICY_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of policies
    #                     that you can have in an organization.</p>
    #             </li>
    #             <li>
    #                <p>POLICY_TYPE_ENABLED_FOR_THIS_SERVICE: You attempted to disable service access
    #                     before you disabled the policy type (for example, SECURITYHUB_POLICY). To
    #                     complete this operation, you must first disable the policy type.</p>
    #             </li>
    #             <li>
    #                <p>SERVICE_ACCESS_NOT_ENABLED:</p>
    #                <ul>
    #                   <li>
    #                      <p>You attempted to register a delegated administrator before you enabled
    #                             service access. Call the <code>EnableAWSServiceAccess</code> API
    #                             first.</p>
    #                   </li>
    #                   <li>
    #                      <p>You attempted to enable a policy type before you enabled service
    #                             access. Call the <code>EnableAWSServiceAccess</code> API first.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>TAG_POLICY_VIOLATION: You attempted to create or update a resource with tags
    #                     that are not compliant with the tag policy requirements for this account.</p>
    #             </li>
    #             <li>
    #                <p>WAIT_PERIOD_ACTIVE: After you create an Amazon Web Services account, you must wait until at
    #                     least seven days after the account was created. Invited accounts aren't subject
    #                     to this waiting period.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    class ConstraintViolationException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConstraintViolationExceptionReason
      ACCOUNT_NUMBER_LIMIT_EXCEEDED = 'ACCOUNT_NUMBER_LIMIT_EXCEEDED'
      HANDSHAKE_RATE_LIMIT_EXCEEDED = 'HANDSHAKE_RATE_LIMIT_EXCEEDED'
      OU_NUMBER_LIMIT_EXCEEDED = 'OU_NUMBER_LIMIT_EXCEEDED'
      OU_DEPTH_LIMIT_EXCEEDED = 'OU_DEPTH_LIMIT_EXCEEDED'
      POLICY_NUMBER_LIMIT_EXCEEDED = 'POLICY_NUMBER_LIMIT_EXCEEDED'
      POLICY_CONTENT_LIMIT_EXCEEDED = 'POLICY_CONTENT_LIMIT_EXCEEDED'
      MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED = 'MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED'
      MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED = 'MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED'
      ACCOUNT_CANNOT_LEAVE_ORGANIZATION = 'ACCOUNT_CANNOT_LEAVE_ORGANIZATION'
      ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA = 'ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA'
      ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION = 'ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION'
      MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED = 'MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED'
      MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED = 'MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED'
      ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED = 'ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED'
      MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE = 'MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE'
      MASTER_ACCOUNT_MISSING_CONTACT_INFO = 'MASTER_ACCOUNT_MISSING_CONTACT_INFO'
      MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED = 'MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED'
      ORGANIZATION_NOT_IN_ALL_FEATURES_MODE = 'ORGANIZATION_NOT_IN_ALL_FEATURES_MODE'
      CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION = 'CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION'
      EMAIL_VERIFICATION_CODE_EXPIRED = 'EMAIL_VERIFICATION_CODE_EXPIRED'
      WAIT_PERIOD_ACTIVE = 'WAIT_PERIOD_ACTIVE'
      MAX_TAG_LIMIT_EXCEEDED = 'MAX_TAG_LIMIT_EXCEEDED'
      TAG_POLICY_VIOLATION = 'TAG_POLICY_VIOLATION'
      MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED = 'MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED'
      CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR = 'CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR'
      CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG = 'CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG'
      DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE = 'DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE'
      POLICY_TYPE_ENABLED_FOR_THIS_SERVICE = 'POLICY_TYPE_ENABLED_FOR_THIS_SERVICE'
      MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE = 'MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE'
      CANNOT_CLOSE_MANAGEMENT_ACCOUNT = 'CANNOT_CLOSE_MANAGEMENT_ACCOUNT'
      CLOSE_ACCOUNT_QUOTA_EXCEEDED = 'CLOSE_ACCOUNT_QUOTA_EXCEEDED'
      CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED = 'CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED'
      SERVICE_ACCESS_NOT_ENABLED = 'SERVICE_ACCESS_NOT_ENABLED'
      INVALID_PAYMENT_INSTRUMENT = 'INVALID_PAYMENT_INSTRUMENT'
      ACCOUNT_CREATION_NOT_COMPLETE = 'ACCOUNT_CREATION_NOT_COMPLETE'
      CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR = 'CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR'
      ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED = 'ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED'
    end

    module CreateAccountFailureReason
      ACCOUNT_LIMIT_EXCEEDED = 'ACCOUNT_LIMIT_EXCEEDED'
      EMAIL_ALREADY_EXISTS = 'EMAIL_ALREADY_EXISTS'
      INVALID_ADDRESS = 'INVALID_ADDRESS'
      INVALID_EMAIL = 'INVALID_EMAIL'
      CONCURRENT_ACCOUNT_MODIFICATION = 'CONCURRENT_ACCOUNT_MODIFICATION'
      INTERNAL_FAILURE = 'INTERNAL_FAILURE'
      GOVCLOUD_ACCOUNT_ALREADY_EXISTS = 'GOVCLOUD_ACCOUNT_ALREADY_EXISTS'
      MISSING_BUSINESS_VALIDATION = 'MISSING_BUSINESS_VALIDATION'
      FAILED_BUSINESS_VALIDATION = 'FAILED_BUSINESS_VALIDATION'
      PENDING_BUSINESS_VALIDATIONv = 'PENDING_BUSINESS_VALIDATION'
      INVALID_IDENTITY_FOR_BUSINESS_VALIDATION = 'INVALID_IDENTITY_FOR_BUSINESS_VALIDATION'
      UNKNOWN_BUSINESS_VALIDATION = 'UNKNOWN_BUSINESS_VALIDATION'
      MISSING_PAYMENT_INSTRUMENT = 'MISSING_PAYMENT_INSTRUMENT'
      INVALID_PAYMENT_INSTRUMENT = 'INVALID_PAYMENT_INSTRUMENT'
      UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED = 'UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED'
    end

    # @!attribute email
    #   <p>The email address of the owner to assign to the new member account. This email address
    #               must not already be associated with another Amazon Web Services account. You must use a valid email
    #               address to complete account creation.</p>
    #            <p>The rules for a valid email address:</p>
    #            <ul>
    #               <li>
    #                  <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>There must be one and only one @ symbol, which separates the local name from
    #                       the domain name.</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't contain any of the following characters:</p>
    #                  <p>whitespace, " ' ( ) < > [ ] : ; , \ | % &</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't begin with a dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
    #                       (-), or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name must contain at least one dot</p>
    #               </li>
    #            </ul>
    #            <p>You can't access the root user of the account or remove an account that was created
    #               with an invalid email address.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The friendly name of the member account.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               account. This role trusts the management account, allowing users in the management
    #               account to assume the role, as permitted by the management account administrator. The
    #               role has administrator permissions in the new member account.</p>
    #            <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #            <p>For more information about how to use this role to access the member account, see the
    #               following links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Creating the OrganizationAccountAccessRole in an invited member
    #                           account</a> in the <i>Organizations User Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">IAM Tutorial:
    #                           Delegate access across Amazon Web Services accounts using IAM roles</a> in the
    #                           <i>IAM User Guide</i>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that 
    #       is used to validate this parameter. The pattern can include uppercase 
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    #   @return [String]
    # @!attribute iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account
    #               billing information <i>if</i> they have the required permissions. If set
    #               to <code>DENY</code>, only the root user of the new account can access account billing
    #               information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">About IAM
    #                   access to the Billing and Cost Management console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
    #            <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the newly created account. For each tag in
    #               the list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the maximum allowed number of
    #                   tags for an account, then the entire request fails and the account is not
    #                   created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateAccountRequest < Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute create_account_status
    #   <p>A structure that contains details about the request to create an account. This
    #               response structure might not be fully populated when you first receive it because
    #               account creation is an asynchronous process. You can pass the returned
    #                   <code>CreateAccountStatus</code> ID as a parameter to <a>DescribeCreateAccountStatus</a> to get status about the progress of the
    #               request at later times. You can also check the CloudTrail log for the
    #                   <code>CreateAccountResult</code> event. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html">Logging and monitoring in Organizations</a> in the
    #                   <i>Organizations User Guide</i>.</p>
    #   @return [Types::CreateAccountStatus]
    class CreateAccountResponse < Struct.new(
      :create_account_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CreateAccountState
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
    end

    # <p>Contains the status about a <a>CreateAccount</a> or <a>CreateGovCloudAccount</a> request to create an Amazon Web Services account or an Amazon Web Services
    #             GovCloud (US) account in an organization.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) that references this request. You get this value from the
    #               response of the initial <a>CreateAccount</a> request to create the
    #               account.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a create account request ID string 
    #       requires "car-" followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The account name given to the account when it was created.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The status of the asynchronous request to create an Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute requested_timestamp
    #   <p>The date and time that the request was made for the account creation.</p>
    #   @return [Time]
    # @!attribute completed_timestamp
    #   <p>The date and time that the account was created and the request completed.</p>
    #   @return [Time]
    # @!attribute account_id
    #   <p>If the account was created successfully, the unique identifier (ID) of the new
    #               account.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #   @return [String]
    # @!attribute gov_cloud_account_id
    #   <p>If the account was created successfully, the unique identifier (ID) of the new account
    #               in the Amazon Web Services GovCloud (US) Region.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the request failed, a description of the reason for the failure.</p>
    #            <ul>
    #               <li>
    #                  <p>ACCOUNT_LIMIT_EXCEEDED: The account couldn't be created because you reached
    #                       the limit on the number of accounts in your organization.</p>
    #               </li>
    #               <li>
    #                  <p>CONCURRENT_ACCOUNT_MODIFICATION: You already submitted a request with the same
    #                       information.</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL_ALREADY_EXISTS: The account could not be created because another Amazon Web Services
    #                       account with that email address already exists.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization
    #                       failed to receive business license validation.</p>
    #               </li>
    #               <li>
    #                  <p>GOVCLOUD_ACCOUNT_ALREADY_EXISTS: The account in the Amazon Web Services GovCloud (US) Region
    #                       could not be created because this Region already includes an account with that
    #                       email address.</p>
    #               </li>
    #               <li>
    #                  <p>IDENTITY_INVALID_BUSINESS_VALIDATION: The Amazon Web Services account that owns your
    #                       organization can't complete business license validation because it doesn't have
    #                       valid identity data.</p>
    #               </li>
    #               <li>
    #                  <p>INVALID_ADDRESS: The account could not be created because the address you
    #                       provided is not valid.</p>
    #               </li>
    #               <li>
    #                  <p>INVALID_EMAIL: The account could not be created because the email address you
    #                       provided is not valid.</p>
    #               </li>
    #               <li>
    #                  <p>INVALID_PAYMENT_INSTRUMENT: The Amazon Web Services account that owns your organization does
    #                       not have a supported payment method associated with the account. Amazon Web Services does not
    #                       support cards issued by financial institutions in Russia or Belarus. For more
    #                       information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-general.html">Managing your
    #                           Amazon Web Services payments</a>.</p>
    #               </li>
    #               <li>
    #                  <p>INTERNAL_FAILURE: The account could not be created because of an internal
    #                       failure. Try again later. If the problem persists, contact Amazon Web Services Customer
    #                       Support.</p>
    #               </li>
    #               <li>
    #                  <p>MISSING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has
    #                       not received Business Validation.</p>
    #               </li>
    #               <li>
    #                  <p> MISSING_PAYMENT_INSTRUMENT: You must configure the management account with a
    #                       valid payment method, such as a credit card.</p>
    #               </li>
    #               <li>
    #                  <p>PENDING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization is
    #                       still in the process of completing business license validation.</p>
    #               </li>
    #               <li>
    #                  <p>UNKNOWN_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has
    #                       an unknown issue with business license validation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateAccountStatus < Struct.new(
      :id,
      :account_name,
      :state,
      :requested_timestamp,
      :completed_timestamp,
      :account_id,
      :gov_cloud_account_id,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find an create account request with the <code>CreateAccountRequestId</code>
    #             that you specified.</p>
    # @!attribute message
    #   @return [String]
    class CreateAccountStatusNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute email
    #   <p>Specifies the email address of the owner to assign to the new member account in the
    #               commercial Region. This email address must not already be associated with another
    #               Amazon Web Services account. You must use a valid email address to complete account creation.</p>
    #            <p>The rules for a valid email address:</p>
    #            <ul>
    #               <li>
    #                  <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>There must be one and only one @ symbol, which separates the local name from
    #                       the domain name.</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't contain any of the following characters:</p>
    #                  <p>whitespace, " ' ( ) < > [ ] : ; , \ | % &</p>
    #               </li>
    #               <li>
    #                  <p>The local name can't begin with a dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
    #                       (-), or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
    #               </li>
    #               <li>
    #                  <p>The domain name must contain at least one dot</p>
    #               </li>
    #            </ul>
    #            <p>You can't access the root user of the account or remove an account that was created
    #               with an invalid email address. Like all request parameters for
    #                   <code>CreateGovCloudAccount</code>, the request for the email address for the Amazon Web Services
    #               GovCloud (US) account originates from the commercial Region, not from the Amazon Web Services GovCloud
    #               (US) Region.</p>
    #   @return [String]
    # @!attribute account_name
    #   <p>The friendly name of the member account. </p>
    #            <p>The account name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or
    #               dot (.) You can't separate characters with a dash (–).</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>(Optional)</p>
    #            <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               accounts in both the Amazon Web Services GovCloud (US) Region and in the commercial Region. This role
    #               trusts the management account, allowing users in the management account to assume the
    #               role, as permitted by the management account administrator. The role has administrator
    #               permissions in the new member account.</p>
    #            <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #            <p>For more information about how to use this role to access the member account, see the
    #               following links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Creating the OrganizationAccountAccessRole in an invited member
    #                           account</a> in the <i>Organizations User Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">IAM Tutorial:
    #                           Delegate access across Amazon Web Services accounts using IAM roles</a> in the
    #                           <i>IAM User Guide</i>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that 
    #       is used to validate this parameter. The pattern can include uppercase 
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    #   @return [String]
    # @!attribute iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables
    #               IAM users to access account billing information <i>if</i> they have the
    #               required permissions. If set to <code>DENY</code>, only the root user of the new account
    #               can access account billing information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">About IAM
    #                   access to the Billing and Cost Management console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
    #            <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the newly created account. These tags are
    #               attached to the commercial account associated with the GovCloud account, and not to the
    #               GovCloud account itself. To add tags to the actual GovCloud account, call the <a>TagResource</a> operation in the GovCloud region after the new GovCloud
    #               account exists.</p>
    #            <p>For each tag in the list, you must specify both a tag key and a value. You can set the
    #               value to an empty string, but you can't set it to <code>null</code>. For more
    #               information about tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations resources</a> in the
    #               Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the maximum allowed number of
    #                   tags for an account, then the entire request fails and the account is not
    #                   created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateGovCloudAccountRequest < Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute create_account_status
    #   <p>Contains the status about a <a>CreateAccount</a> or <a>CreateGovCloudAccount</a> request to create an Amazon Web Services account or an Amazon Web Services
    #               GovCloud (US) account in an organization.</p>
    #   @return [Types::CreateAccountStatus]
    class CreateGovCloudAccountResponse < Struct.new(
      :create_account_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute feature_set
    #   <p>Specifies the feature set supported by the new organization. Each feature set supports
    #               different levels of functionality.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills
    #                       consolidated to and paid by the management account. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated billing</a> in the
    #                       <i>Organizations User Guide</i>.</p>
    #                  <p> The consolidated billing feature subset isn't available for organizations in
    #                       the Amazon Web Services GovCloud (US) Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code>: In addition to all the features supported by the
    #                       consolidated billing feature set, the management account can also apply any
    #                       policy type to any member account in the organization. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All
    #                           features</a> in the <i>Organizations User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateOrganizationRequest < Struct.new(
      :feature_set,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization
    #   <p>A structure that contains details about the newly created organization.</p>
    #   @return [Types::Organization]
    class CreateOrganizationResponse < Struct.new(
      :organization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute parent_id
    #   <p>The unique identifier (ID) of the parent root or OU that you want to create the new OU
    #               in.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name to assign to the new OU.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the newly created OU. For each tag in the
    #               list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the allowed number of tags
    #                   for an OU, then the entire request fails and the OU is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateOrganizationalUnitRequest < Struct.new(
      :parent_id,
      :name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_unit
    #   <p>A structure that contains details about the newly created OU.</p>
    #   @return [Types::OrganizationalUnit]
    class CreateOrganizationalUnitResponse < Struct.new(
      :organizational_unit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>The policy text content to add to the new policy. The text that you supply must adhere
    #               to the rules of the policy type you specify in the <code>Type</code> parameter. </p>
    #            <p>The maximum size of a policy document depends on the policy's type. For more
    #               information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-values">Maximum and minimum values</a> in the
    #               <i>Organizations User Guide</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description to assign to the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name to assign to the policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of policy to create. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the newly created policy. For each tag in
    #               the list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the allowed number of tags
    #                   for a policy, then the entire request fails and the policy is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreatePolicyRequest < Struct.new(
      :content,
      :description,
      :name,
      :type,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>A structure that contains details about the newly created policy.</p>
    #   @return [Types::Policy]
    class CreatePolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to decline. You can get the
    #               ID from the <a>ListHandshakesForAccount</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    class DeclineHandshakeRequest < Struct.new(
      :handshake_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the declined handshake. The state is updated
    #               to show the value <code>DECLINED</code>.</p>
    #   @return [Types::Handshake]
    class DeclineHandshakeResponse < Struct.new(
      :handshake,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the delegated administrator.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of the delegated administrator's account.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the delegated administrator's account.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address that is associated with the delegated administrator's Amazon Web Services
    #               account.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the delegated administrator's account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the delegated administrator's account in the organization.</p>
    #   @return [String]
    # @!attribute joined_method
    #   <p>The method by which the delegated administrator's account joined the
    #               organization.</p>
    #   @return [String]
    # @!attribute joined_timestamp
    #   <p>The date when the delegated administrator's account became a part of the
    #               organization.</p>
    #   @return [Time]
    # @!attribute delegation_enabled_date
    #   <p>The date when the account was made a delegated administrator.</p>
    #   @return [Time]
    class DelegatedAdministrator < Struct.new(
      :id,
      :arn,
      :email,
      :name,
      :status,
      :joined_method,
      :joined_timestamp,
      :delegation_enabled_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Web Services service for which the account is a delegated
    #             administrator.</p>
    # @!attribute service_principal
    #   <p>The name of an Amazon Web Services service that can request an operation for the specified service.
    #               This is typically in the form of a URL, such as:
    #                   <code>
    #                  <i>servicename</i>.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute delegation_enabled_date
    #   <p>The date that the account became a delegated administrator for this service. </p>
    #   @return [Time]
    class DelegatedService < Struct.new(
      :service_principal,
      :delegation_enabled_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want to delete. You can
    #               get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    #   @return [String]
    class DeleteOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID
    #               from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    class DeletePolicyRequest < Struct.new(
      :policy_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID number of the member account in the organization that you want to
    #               deregister as a delegated administrator.</p>
    #   @return [String]
    # @!attribute service_principal
    #   <p>The service principal name of an Amazon Web Services service for which the account is a delegated
    #               administrator.</p>
    #            <p>Delegated administrator privileges are revoked for only the specified Amazon Web Services service
    #               from the member account. If the specified service is the only service for which the
    #               member account is a delegated administrator, the operation also revokes Organizations read action
    #               permissions.</p>
    #   @return [String]
    class DeregisterDelegatedAdministratorRequest < Struct.new(
      :account_id,
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier (ID) of the Amazon Web Services account that you want information about. You
    #               can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #   @return [String]
    class DescribeAccountRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>A structure that contains information about the requested account.</p>
    #   @return [Types::Account]
    class DescribeAccountResponse < Struct.new(
      :account,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute create_account_request_id
    #   <p>Specifies the <code>Id</code> value that uniquely identifies the
    #                   <code>CreateAccount</code> request. You can get the value from the
    #                   <code>CreateAccountStatus.Id</code> response in an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a create account request ID string 
    #       requires "car-" followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    class DescribeCreateAccountStatusRequest < Struct.new(
      :create_account_request_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute create_account_status
    #   <p>A structure that contains the current status of an account creation request.</p>
    #   @return [Types::CreateAccountStatus]
    class DescribeCreateAccountStatusResponse < Struct.new(
      :create_account_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute target_id
    #   <p>When you're signed in as the management account, specify the ID of the account that
    #               you want details about. Specifying an organization root or organizational unit (OU) as
    #               the target is not supported.</p>
    #   @return [String]
    class DescribeEffectivePolicyRequest < Struct.new(
      :policy_type,
      :target_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute effective_policy
    #   <p>The contents of the effective policy.</p>
    #   @return [Types::EffectivePolicy]
    class DescribeEffectivePolicyResponse < Struct.new(
      :effective_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want information about. You can
    #               get the ID from the original call to <a>InviteAccountToOrganization</a>, or
    #               from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    class DescribeHandshakeRequest < Struct.new(
      :handshake_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains information about the specified handshake.</p>
    #   @return [Types::Handshake]
    class DescribeHandshakeResponse < Struct.new(
      :handshake,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization
    #   <p>A structure that contains information about the organization.</p>
    #            <important>
    #               <p>The <code>AvailablePolicyTypes</code> part of the response is deprecated, and you
    #                   shouldn't use it in your apps. It doesn't include any policy type supported by Organizations
    #                   other than SCPs. In the China (Ningxia) Region, no policy type is included.
    #                   To determine which policy types are enabled in your organization,
    #                   use the <code>
    #                     <a>ListRoots</a>
    #                  </code> operation.</p>
    #            </important>
    #   @return [Types::Organization]
    class DescribeOrganizationResponse < Struct.new(
      :organization,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want details about. You
    #               can get the ID from the <a>ListOrganizationalUnitsForParent</a>
    #               operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    #   @return [String]
    class DescribeOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_unit
    #   <p>A structure that contains details about the specified OU.</p>
    #   @return [Types::OrganizationalUnit]
    class DescribeOrganizationalUnitResponse < Struct.new(
      :organizational_unit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want details about. You can get the
    #               ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    class DescribePolicyRequest < Struct.new(
      :policy_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>A structure that contains details about the specified policy.</p>
    #   @return [Types::Policy]
    class DescribePolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>A structure that contains details about the resource policy.</p>
    #   @return [Types::ResourcePolicy]
    class DescribeResourcePolicyResponse < Struct.new(
      :resource_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find the destination container (a root or OU) with the <code>ParentId</code>
    #             that you specified.</p>
    # @!attribute message
    #   @return [String]
    class DestinationParentNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from
    #               the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier (ID) of the root, OU, or account that you want to detach the
    #               policy from. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
    #               operations.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DetachPolicyRequest < Struct.new(
      :policy_id,
      :target_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to disable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    #   @return [String]
    class DisableAWSServiceAccessRequest < Struct.new(
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute root_id
    #   <p>The unique identifier (ID) of the root in which you want to disable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by 
    #       from 4 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The policy type that you want to disable in this root. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DisablePolicyTypeRequest < Struct.new(
      :root_id,
      :policy_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute root
    #   <p>A structure that shows the root with the updated list of enabled policy types.</p>
    #   @return [Types::Root]
    class DisablePolicyTypeResponse < Struct.new(
      :root,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>That account is already present in the specified destination.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateAccountException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A handshake with the same action and target already exists. For example, if you
    #             invited an account to join your organization, the invited account might already have a
    #             pending invitation from this organization. If you intend to resend an invitation to an
    #             account, ensure that existing handshakes that might be considered duplicates are
    #             canceled or declined.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateHandshakeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An OU with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateOrganizationalUnitException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The selected policy is already attached to the specified target.</p>
    # @!attribute message
    #   @return [String]
    class DuplicatePolicyAttachmentException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A policy with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicatePolicyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains rules to be applied to the affected accounts. The effective policy is the
    #             aggregation of any policies the account inherits, plus any policy directly attached to
    #             the account.</p>
    # @!attribute policy_content
    #   <p>The text content of the policy.</p>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>The time of the last update to this policy.</p>
    #   @return [Time]
    # @!attribute target_id
    #   <p>The account ID of the policy target. </p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The policy type.</p>
    #   @return [String]
    class EffectivePolicy < Struct.new(
      :policy_content,
      :last_updated_timestamp,
      :target_id,
      :policy_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>If you ran this action on the management account, this policy type is not enabled. If
    #             you ran the action on a member account, the account doesn't have an effective policy of
    #             this type. Contact the administrator of your organization about attaching a policy of
    #             this type to the account. </p>
    # @!attribute message
    #   @return [String]
    class EffectivePolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EffectivePolicyType
      TAG_POLICY = 'TAG_POLICY'
      BACKUP_POLICY = 'BACKUP_POLICY'
      AISERVICES_OPT_OUT_POLICY = 'AISERVICES_OPT_OUT_POLICY'
      CHATBOT_POLICY = 'CHATBOT_POLICY'
      DECLARATIVE_POLICY_EC2 = 'DECLARATIVE_POLICY_EC2'
      SECURITYHUB_POLICY = 'SECURITYHUB_POLICY'
    end

    # <p>Contains details about the
    #             validation errors that occurred when generating or enforcing an <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_effective.html">effective policy</a>, such as which policies contributed to the error and location of the error.</p>
    # @!attribute error_code
    #   <p>The error code for the validation error. For example, <code>ELEMENTS_TOO_MANY</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the validation error.</p>
    #   @return [String]
    # @!attribute path_to_error
    #   <p>The path within the effective policy where the validation error occurred.</p>
    #   @return [String]
    # @!attribute contributing_policies
    #   <p>The individual policies <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_inheritance_mgmt.html">inherited</a>  and <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_policies_attach.html">attached</a> to the account which contributed to the validation error.</p>
    #   @return [Array<String>]
    class EffectivePolicyValidationError < Struct.new(
      :error_code,
      :error_message,
      :path_to_error,
      :contributing_policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to enable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    #   @return [String]
    class EnableAWSServiceAccessRequest < Struct.new(
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class EnableAllFeaturesRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the handshake created to support this request
    #               to enable all features in the organization.</p>
    #   @return [Types::Handshake]
    class EnableAllFeaturesResponse < Struct.new(
      :handshake,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute root_id
    #   <p>The unique identifier (ID) of the root in which you want to enable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by 
    #       from 4 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The policy type that you want to enable. You can specify one of the following
    #               values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class EnablePolicyTypeRequest < Struct.new(
      :root_id,
      :policy_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute root
    #   <p>A structure that shows the root with the updated list of enabled policy types.</p>
    #   @return [Types::Root]
    class EnablePolicyTypeResponse < Struct.new(
      :root,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains details of a service principal that represents an Amazon Web Services
    #             service that is enabled to integrate with Organizations.</p>
    # @!attribute service_principal
    #   <p>The name of the service principal. This is typically in the form of a URL, such as:
    #                       <code>
    #                  <i>servicename</i>.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute date_enabled
    #   <p>The date that the service principal was enabled for integration with Organizations.</p>
    #   @return [Time]
    class EnabledServicePrincipal < Struct.new(
      :service_principal,
      :date_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Organizations couldn't perform the operation because your organization hasn't finished
    #             initializing. This can take up to an hour. Try again later. If after one hour you
    #             continue to receive this error, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    # @!attribute message
    #   @return [String]
    class FinalizingOrganizationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information that must be exchanged to securely establish a relationship
    #             between two accounts (an <i>originator</i> and a
    #                 <i>recipient</i>). For example, when a management account (the
    #             originator) invites another account (the recipient) to join its organization, the two
    #             accounts exchange information as a series of handshake requests and responses.</p>
    #          <p>
    #             <b>Note:</b> Handshakes that are <code>CANCELED</code>,
    #                 <code>ACCEPTED</code>, <code>DECLINED</code>, or <code>EXPIRED</code> show up in
    #             lists for only 30 days after entering that state After that they are deleted.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of a handshake. The originating account creates the ID when
    #               it initiates the handshake.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a handshake.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute parties
    #   <p>Information about the two accounts that are participating in the handshake.</p>
    #   @return [Array<Types::HandshakeParty>]
    # @!attribute state
    #   <p>The current state of the handshake. Use the state to trace the flow of the handshake
    #               through the process from its creation to its acceptance. The meaning of each of the
    #               valid values is as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>REQUESTED</b>: This handshake was sent to
    #                       multiple recipients (applicable to only some handshake types) and not all
    #                       recipients have responded yet. The request stays in this state until all
    #                       recipients respond.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OPEN</b>: This handshake was sent to multiple
    #                       recipients (applicable to only some policy types) and all recipients have
    #                       responded, allowing the originator to complete the handshake action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CANCELED</b>: This handshake is no longer active
    #                       because it was canceled by the originating account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACCEPTED</b>: This handshake is complete because
    #                       it has been accepted by the recipient.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DECLINED</b>: This handshake is no longer active
    #                       because it was declined by the recipient account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EXPIRED</b>: This handshake is no longer active
    #                       because the originator did not receive a response of any kind from the recipient
    #                       before the expiration time (15 days).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute requested_timestamp
    #   <p>The date and time that the handshake request was made.</p>
    #   @return [Time]
    # @!attribute expiration_timestamp
    #   <p>The date and time that the handshake expires. If the recipient of the handshake
    #               request fails to respond before the specified date and time, the handshake becomes
    #               inactive and is no longer valid.</p>
    #   @return [Time]
    # @!attribute action
    #   <p>The type of handshake, indicating what action occurs when the recipient accepts the
    #               handshake. The following handshake types are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>INVITE</b>: This type of handshake represents a
    #                       request to join an organization. It is always sent from the management account
    #                       to only non-member accounts.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ENABLE_ALL_FEATURES</b>: This type of handshake
    #                       represents a request to enable all features in an organization. It is always
    #                       sent from the management account to only <i>invited</i> member
    #                       accounts. Created accounts do not receive this because those accounts were
    #                       created by the organization's management account and approval is
    #                       inferred.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>APPROVE_ALL_FEATURES</b>: This type of handshake
    #                       is sent from the Organizations service when all member accounts have approved the
    #                           <code>ENABLE_ALL_FEATURES</code> invitation. It is sent only to the
    #                       management account and signals the master that it can finalize the process to
    #                       enable all features.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resources
    #   <p>Additional information that is needed to process the handshake.</p>
    #   @return [Array<Types::HandshakeResource>]
    class Handshake < Struct.new(
      :id,
      :arn,
      :parties,
      :state,
      :requested_timestamp,
      :expiration_timestamp,
      :action,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified handshake is already in the requested state. For example, you can't
    #             accept a handshake that was already accepted.</p>
    # @!attribute message
    #   @return [String]
    class HandshakeAlreadyInStateException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation would violate the constraint identified in the reason
    #             code.</p>
    #          <note>
    #             <p>Some of the reasons in the following list might not be applicable to this specific
    #                 API or operation:</p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number
    #                     of accounts in an organization. Note that deleted and closed accounts still
    #                     count toward your limit.</p>
    #                <important>
    #                   <p>If you get this exception immediately after creating the organization,
    #                         wait one hour and try again. If after an hour it continues to fail with this
    #                         error, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services
    #                             Support</a>.</p>
    #                </important>
    #             </li>
    #             <li>
    #                <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the
    #                     invited account is already a member of an organization.</p>
    #             </li>
    #             <li>
    #                <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     handshakes that you can send in one day.</p>
    #             </li>
    #             <li>
    #                <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You can't issue new invitations to
    #                     join an organization while it's in the process of enabling all features. You can
    #                     resume inviting accounts after you finalize the process when all accounts have
    #                     agreed to the change.</p>
    #             </li>
    #             <li>
    #                <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid
    #                     because the organization has already enabled all features.</p>
    #             </li>
    #             <li>
    #                <p>ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION: The handshake request
    #                     is invalid because the organization has already started the process to enable
    #                     all features.</p>
    #             </li>
    #             <li>
    #                <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the
    #                     account is from a different marketplace than the accounts in the
    #                     organization.</p>
    #             </li>
    #             <li>
    #                <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change
    #                     the membership of an account too quickly after its previous change.</p>
    #             </li>
    #             <li>
    #                <p>PAYMENT_INSTRUMENT_REQUIRED: You can't complete the operation with an account
    #                     that doesn't have a payment instrument, such as a credit card, associated with
    #                     it.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    class HandshakeConstraintViolationException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HandshakeConstraintViolationExceptionReason
      ACCOUNT_NUMBER_LIMIT_EXCEEDED = 'ACCOUNT_NUMBER_LIMIT_EXCEEDED'
      HANDSHAKE_RATE_LIMIT_EXCEEDED = 'HANDSHAKE_RATE_LIMIT_EXCEEDED'
      ALREADY_IN_AN_ORGANIZATION = 'ALREADY_IN_AN_ORGANIZATION'
      ORGANIZATION_ALREADY_HAS_ALL_FEATURES = 'ORGANIZATION_ALREADY_HAS_ALL_FEATURES'
      ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION = 'ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION'
      INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES = 'INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES'
      PAYMENT_INSTRUMENT_REQUIRED = 'PAYMENT_INSTRUMENT_REQUIRED'
      ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD = 'ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD'
      ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED = 'ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED'
      MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED = 'MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED'
    end

    # <p>Specifies the criteria that are used to select the handshakes for the
    #             operation.</p>
    # @!attribute action_type
    #   <p>Specifies the type of handshake action.</p>
    #            <p>If you specify <code>ActionType</code>, you cannot also specify
    #                   <code>ParentHandshakeId</code>.</p>
    #   @return [String]
    # @!attribute parent_handshake_id
    #   <p>Specifies the parent handshake. Only used for handshake types that are a child of
    #               another type.</p>
    #            <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify
    #                   <code>ActionType</code>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    class HandshakeFilter < Struct.new(
      :action_type,
      :parent_handshake_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a handshake with the <code>HandshakeId</code> that you specified.</p>
    # @!attribute message
    #   @return [String]
    class HandshakeNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies a participant in a handshake.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) for the party.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-" 
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of party.</p>
    #   @return [String]
    class HandshakeParty < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HandshakePartyType
      ACCOUNT = 'ACCOUNT'
      ORGANIZATION = 'ORGANIZATION'
      EMAIL = 'EMAIL'
    end

    # <p>Contains additional data that is needed to process a handshake.</p>
    # @!attribute value
    #   <p>The information that is passed to the other party in the handshake. The format of the
    #               value string must match the requirements of the specified type.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of information being passed, specifying how the value is to be interpreted by
    #               the other party:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT</code> - Specifies an Amazon Web Services account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATION</code> - Specifies an organization ID number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL</code> - Specifies the email address that is associated with the
    #                       account that receives the handshake. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OWNER_EMAIL</code> - Specifies the email address associated with the
    #                       management account. Included as information about an organization. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OWNER_NAME</code> - Specifies the name associated with the management
    #                       account. Included as information about an organization. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTES</code> - Additional text provided by the handshake initiator and
    #                       intended for the recipient to read.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resources
    #   <p>When needed, contains an additional array of <code>HandshakeResource</code>
    #               objects.</p>
    #   @return [Array<Types::HandshakeResource>]
    class HandshakeResource < Struct.new(
      :value,
      :type,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HandshakeResourceType
      ACCOUNT = 'ACCOUNT'
      ORGANIZATION = 'ORGANIZATION'
      ORGANIZATION_FEATURE_SET = 'ORGANIZATION_FEATURE_SET'
      EMAIL = 'EMAIL'
      MASTER_EMAIL = 'MASTER_EMAIL'
      MASTER_NAME = 'MASTER_NAME'
      NOTES = 'NOTES'
      PARENT_HANDSHAKE = 'PARENT_HANDSHAKE'
    end

    module HandshakeState
      REQUESTED = 'REQUESTED'
      OPEN = 'OPEN'
      CANCELED = 'CANCELED'
      ACCEPTED = 'ACCEPTED'
      DECLINED = 'DECLINED'
      EXPIRED = 'EXPIRED'
    end

    module IAMUserAccessToBilling
      ALLOW = 'ALLOW'
      DENY = 'DENY'
    end

    # <p>You can't perform the operation on the handshake in its current state. For example,
    #             you can't cancel a handshake that was already accepted or accept a handshake that was
    #             already declined.</p>
    # @!attribute message
    #   @return [String]
    class InvalidHandshakeTransitionException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation failed because you provided invalid values for one or more of
    #             the request parameters. This exception includes a reason that contains additional
    #             information about the violated limit:</p>
    #          <note>
    #             <p>Some of the reasons in the following list might not be applicable to this specific
    #                 API or operation.</p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>DUPLICATE_TAG_KEY: Tag keys must be unique among the tags attached to the same
    #                     entity.</p>
    #             </li>
    #             <li>
    #                <p>IMMUTABLE_POLICY: You specified a policy that is managed by Amazon Web Services and can't be
    #                     modified.</p>
    #             </li>
    #             <li>
    #                <p>INPUT_REQUIRED: You must include a value for all required parameters.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_EMAIL_ADDRESS_TARGET: You specified an invalid email address for the
    #                     invited account owner.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_ENUM: You specified an invalid value.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_ENUM_POLICY_TYPE: You specified an invalid policy type string.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid
    #                     characters.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least
    #                     one invalid value.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_PAGINATION_TOKEN: Get the value for the <code>NextToken</code>
    #                     parameter from the response to a previous call of the operation.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account,
    #                     organization, or email) as a party.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_PATTERN: You provided a value that doesn't match the required
    #                     pattern.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match
    #                     the required pattern.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_PRINCIPAL: You specified an invalid principal element in the
    #                     policy.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_ROLE_NAME: You provided a role name that isn't valid. A role name
    #                     can't begin with the reserved prefix <code>AWSServiceRoleFor</code>.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid Amazon Resource Name
    #                     (ARN) for the organization.</p>
    #             </li>
    #             <li>
    #                <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p>
    #             </li>
    #             <li>
    #                <p>INVALID_SYSTEM_TAGS_PARAMETER: You specified a tag key that is a system tag.
    #                     You can’t add, edit, or delete system tag keys because they're reserved for
    #                     Amazon Web Services use. System tags don’t count against your tags per resource limit.</p>
    #             </li>
    #             <li>
    #                <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the
    #                     operation.</p>
    #             </li>
    #             <li>
    #                <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than
    #                     allowed.</p>
    #             </li>
    #             <li>
    #                <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value
    #                     than allowed.</p>
    #             </li>
    #             <li>
    #                <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than
    #                     allowed.</p>
    #             </li>
    #             <li>
    #                <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value
    #                     than allowed.</p>
    #             </li>
    #             <li>
    #                <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between
    #                     entities in the same root.</p>
    #             </li>
    #             <li>
    #                <p>NON_DETACHABLE_POLICY: You can't detach this Amazon Web Services Managed Policy.</p>
    #             </li>
    #             <li>
    #                <p>TARGET_NOT_SUPPORTED: You can't perform the specified operation on that target
    #                     entity.</p>
    #             </li>
    #             <li>
    #                <p>UNRECOGNIZED_SERVICE_PRINCIPAL: You specified a service principal that isn't
    #                     recognized.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InvalidInputExceptionReason
      INVALID_PARTY_TYPE_TARGET = 'INVALID_PARTY_TYPE_TARGET'
      INVALID_SYNTAX_ORGANIZATION = 'INVALID_SYNTAX_ORGANIZATION_ARN'
      INVALID_SYNTAX_POLICY = 'INVALID_SYNTAX_POLICY_ID'
      INVALID_ENUM = 'INVALID_ENUM'
      INVALID_ENUM_POLICY_TYPE = 'INVALID_ENUM_POLICY_TYPE'
      INVALID_LIST_MEMBER = 'INVALID_LIST_MEMBER'
      MAX_LENGTH_EXCEEDED = 'MAX_LENGTH_EXCEEDED'
      MAX_VALUE_EXCEEDED = 'MAX_VALUE_EXCEEDED'
      MIN_LENGTH_EXCEEDED = 'MIN_LENGTH_EXCEEDED'
      MIN_VALUE_EXCEEDED = 'MIN_VALUE_EXCEEDED'
      IMMUTABLE_POLICY = 'IMMUTABLE_POLICY'
      INVALID_PATTERN = 'INVALID_PATTERN'
      INVALID_PATTERN_TARGET_ID = 'INVALID_PATTERN_TARGET_ID'
      INPUT_REQUIRED = 'INPUT_REQUIRED'
      INVALID_PAGINATION_TOKEN = 'INVALID_NEXT_TOKEN'
      MAX_FILTER_LIMIT_EXCEEDED = 'MAX_LIMIT_EXCEEDED_FILTER'
      MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS = 'MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS'
      INVALID_FULL_NAME_TARGET = 'INVALID_FULL_NAME_TARGET'
      UNRECOGNIZED_SERVICE_PRINCIPAL = 'UNRECOGNIZED_SERVICE_PRINCIPAL'
      INVALID_ROLE_NAME = 'INVALID_ROLE_NAME'
      INVALID_SYSTEM_TAGS_PARAMETER = 'INVALID_SYSTEM_TAGS_PARAMETER'
      DUPLICATE_TAG_KEY = 'DUPLICATE_TAG_KEY'
      TARGET_NOT_SUPPORTED = 'TARGET_NOT_SUPPORTED'
      INVALID_EMAIL_ADDRESS_TARGET = 'INVALID_EMAIL_ADDRESS_TARGET'
      INVALID_RESOURCE_POLICY_JSON = 'INVALID_RESOURCE_POLICY_JSON'
      INVALID_PRINCIPAL = 'INVALID_PRINCIPAL'
      UNSUPPORTED_ACTION_IN_RESOURCE_POLICY = 'UNSUPPORTED_ACTION_IN_RESOURCE_POLICY'
      UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY = 'UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY'
      UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY = 'UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY'
      NON_DETACHABLE_POLICY = 'NON_DETACHABLE_POLICY'
    end

    # @!attribute target
    #   <p>The identifier (ID) of the Amazon Web Services account that you want to invite to join your
    #               organization. This is a JSON object that contains the following elements:</p>
    #            <p>
    #               <code>{ "Type": "ACCOUNT", "Id": "<<i>
    #                     <b>account id
    #                           number</b>
    #                  </i>>" }</code>
    #            </p>
    #            <p>If you use the CLI, you can submit this as a single string, similar to the following
    #               example:</p>
    #            <p>
    #               <code>--target Id=123456789012,Type=ACCOUNT</code>
    #            </p>
    #            <p>If you specify <code>"Type": "ACCOUNT"</code>, you must provide the Amazon Web Services account ID
    #               number as the <code>Id</code>. If you specify <code>"Type": "EMAIL"</code>, you must
    #               specify the email address that is associated with the account.</p>
    #            <p>
    #               <code>--target Id=diego@example.com,Type=EMAIL</code>
    #            </p>
    #   @return [Types::HandshakeParty]
    # @!attribute notes
    #   <p>Additional information that you want to include in the generated email to the
    #               recipient account owner.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the account when it becomes a member of the
    #               organization. For each tag in the list, you must specify both a tag key and a value. You
    #               can set the value to an empty string, but you can't set it to <code>null</code>. For
    #               more information about tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations resources</a> in the
    #               Organizations User Guide.</p>
    #            <important>
    #               <p>Any tags in the request are checked for compliance with any applicable tag
    #                   policies when the request is made. The request is rejected if the tags in the
    #                   request don't match the requirements of the policy at that time. Tag policy
    #                   compliance is <i>
    #                     <b>not</b>
    #                  </i> checked
    #                   again when the invitation is accepted and the tags are actually attached to the
    #                   account. That means that if the tag policy changes between the invitation and the
    #                   acceptance, then that tags could potentially be non-compliant.</p>
    #            </important>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the allowed number of tags
    #                   for an account, then the entire request fails and invitations are not sent.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class InviteAccountToOrganizationRequest < Struct.new(
      :target,
      :notes,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the handshake that is created to support this
    #               invitation request.</p>
    #   @return [Types::Handshake]
    class InviteAccountToOrganizationResponse < Struct.new(
      :handshake,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListAWSServiceAccessForOrganizationRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute enabled_service_principals
    #   <p>A list of the service principals for the services that are enabled to integrate with
    #               your organization. Each principal is a structure that includes the name and the date
    #               that it was enabled for integration with Organizations.</p>
    #   @return [Array<Types::EnabledServicePrincipal>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListAWSServiceAccessForOrganizationResponse < Struct.new(
      :enabled_service_principals,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute parent_id
    #   <p>The unique identifier (ID) for the parent root or organization unit (OU) whose
    #               accounts you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListAccountsForParentRequest < Struct.new(
      :parent_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>A list of the accounts in the specified root or OU.</p>
    #   @return [Array<Types::Account>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListAccountsForParentResponse < Struct.new(
      :accounts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListAccountsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>A list of objects in the organization.</p>
    #   @return [Array<Types::Account>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListAccountsWithInvalidEffectivePolicyRequest < Struct.new(
      :policy_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>The accounts in the organization which have an invalid effective policy for the specified policy type.</p>
    #   @return [Array<Types::Account>]
    # @!attribute policy_type
    #   <p>The specified policy type. One of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListAccountsWithInvalidEffectivePolicyResponse < Struct.new(
      :accounts,
      :policy_type,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute parent_id
    #   <p>The unique identifier (ID) for the parent root or OU whose children you want to
    #               list.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute child_type
    #   <p>Filters the output to include only the specified child type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListChildrenRequest < Struct.new(
      :parent_id,
      :child_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute children
    #   <p>The list of children of the specified parent container.</p>
    #   @return [Array<Types::Child>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListChildrenResponse < Struct.new(
      :children,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute states
    #   <p>A list of one or more states that you want included in the response. If this parameter
    #               isn't present, all requests are included in the response.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListCreateAccountStatusRequest < Struct.new(
      :states,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute create_account_statuses
    #   <p>A list of objects with details about the requests. Certain elements, such as the
    #               accountId number, are present in the output only after the account has been successfully
    #               created.</p>
    #   @return [Array<Types::CreateAccountStatus>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListCreateAccountStatusResponse < Struct.new(
      :create_account_statuses,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_principal
    #   <p>Specifies a service principal name. If specified, then the operation lists the
    #               delegated administrators only for the specified service.</p>
    #            <p>If you don't specify a service principal, the operation lists all delegated
    #               administrators for all services in your organization.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListDelegatedAdministratorsRequest < Struct.new(
      :service_principal,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute delegated_administrators
    #   <p>The list of delegated administrators in your organization.</p>
    #   @return [Array<Types::DelegatedAdministrator>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListDelegatedAdministratorsResponse < Struct.new(
      :delegated_administrators,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID number of a delegated administrator account in the organization.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListDelegatedServicesForAccountRequest < Struct.new(
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute delegated_services
    #   <p>The services for which the account is a delegated administrator.</p>
    #   @return [Array<Types::DelegatedService>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListDelegatedServicesForAccountResponse < Struct.new(
      :delegated_services,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The ID of the account that you want details about. Specifying an organization root or organizational unit (OU) as the target is not supported.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListEffectivePolicyValidationErrorsRequest < Struct.new(
      :account_id,
      :policy_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The ID of the specified account.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The specified policy type. One of the
    #               following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute path
    #   <p>The path in the organization where the specified account exists.</p>
    #   @return [String]
    # @!attribute evaluation_timestamp
    #   <p>The time when the latest effective policy was generated for the specified account.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute effective_policy_validation_errors
    #   <p>The <code>EffectivePolicyValidationError</code> object contains details about the
    #               validation errors that occurred when generating or enforcing an effective policy, such as which policies contributed to the error and location of the error.</p>
    #   @return [Array<Types::EffectivePolicyValidationError>]
    class ListEffectivePolicyValidationErrorsResponse < Struct.new(
      :account_id,
      :policy_type,
      :path,
      :evaluation_timestamp,
      :next_token,
      :effective_policy_validation_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or
    #                   <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify <code>ParentHandshakeId</code> to see only the
    #               handshakes that were generated by that parent request.</p>
    #   @return [Types::HandshakeFilter]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListHandshakesForAccountRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshakes
    #   <p>A list of <a>Handshake</a> objects with details about each of the
    #               handshakes that is associated with the specified account.</p>
    #   @return [Array<Types::Handshake>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListHandshakesForAccountResponse < Struct.new(
      :handshakes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A filter of the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or
    #                   <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify the <code>ParentHandshakeId</code> to see only
    #               the handshakes that were generated by that parent request.</p>
    #   @return [Types::HandshakeFilter]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListHandshakesForOrganizationRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute handshakes
    #   <p>A list of <a>Handshake</a> objects with details about each of the
    #               handshakes that are associated with an organization.</p>
    #   @return [Array<Types::Handshake>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListHandshakesForOrganizationResponse < Struct.new(
      :handshakes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute parent_id
    #   <p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListOrganizationalUnitsForParentRequest < Struct.new(
      :parent_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_units
    #   <p>A list of the OUs in the specified root or parent OU.</p>
    #   @return [Array<Types::OrganizationalUnit>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListOrganizationalUnitsForParentResponse < Struct.new(
      :organizational_units,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute child_id
    #   <p>The unique identifier (ID) of the OU or account whose parent containers you want to
    #               list. Don't specify a root.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with
    #             "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that 
    #             contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional 
    #             lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListParentsRequest < Struct.new(
      :child_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute parents
    #   <p>A list of parents for the specified child account or OU.</p>
    #   @return [Array<Types::Parent>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListParentsResponse < Struct.new(
      :parents,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute target_id
    #   <p>The unique identifier (ID) of the root, organizational unit, or account whose policies
    #               you want to list.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filter
    #   <p>The type of policy that you want to include in the returned list. You must specify one
    #               of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListPoliciesForTargetRequest < Struct.new(
      :target_id,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policies
    #   <p>The list of policies that match the criteria in the request.</p>
    #   @return [Array<Types::PolicySummary>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListPoliciesForTargetResponse < Struct.new(
      :policies,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Specifies the type of policy that you want to include in the response. You must
    #               specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html">RESOURCE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html">DECLARATIVE_POLICY_EC2</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html">CHATBOT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub.html">SECURITYHUB_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListPoliciesRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policies
    #   <p>A list of policies that match the filter criteria in the request. The output list
    #               doesn't include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>
    #   @return [Array<Types::PolicySummary>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListPoliciesResponse < Struct.new(
      :policies,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListRootsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute roots
    #   <p>A list of roots that are defined in an organization.</p>
    #   @return [Array<Types::Root>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListRootsResponse < Struct.new(
      :roots,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource with the tags to list.</p>
    #            <p>You can specify any of the following taggable resources.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags that are assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy whose attachments you want to know.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #       indicates that more output is available. Set this parameter to the value of the previous 
    #       call's <code>NextToken</code> response to indicate where the output should continue 
    #       from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #       response. If you do not include this parameter, it defaults to a value that is specific to the 
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #       response element is present and has a value (is not null). Include that value as the 
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are 
    #       more results available. You should check <code>NextToken</code> after every operation to ensure 
    #       that you receive all of the results.</p>
    #   @return [Integer]
    class ListTargetsForPolicyRequest < Struct.new(
      :policy_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>A list of structures, each of which contains details about one of the entities to
    #               which the specified policy is attached.</p>
    #   @return [Array<Types::PolicyTargetSummary>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListTargetsForPolicyResponse < Struct.new(
      :targets,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The provided policy document doesn't meet the requirements of the specified policy
    #             type. For example, the syntax might be incorrect. For details about service control
    #             policy syntax, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">SCP syntax</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class MalformedPolicyDocumentException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You can't remove a management account from an organization. If you want the management
    #             account to become a member account in another organization, you must first delete the
    #             current organization of the management account.</p>
    # @!attribute message
    #   @return [String]
    class MasterCannotLeaveOrganizationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier (ID) of the account that you want to move.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #   @return [String]
    # @!attribute source_parent_id
    #   <p>The unique identifier (ID) of the root or organizational unit that you want to move
    #               the account from.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute destination_parent_id
    #   <p>The unique identifier (ID) of the root or organizational unit that you want to move
    #               the account to.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class MoveAccountRequest < Struct.new(
      :account_id,
      :source_parent_id,
      :destination_parent_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an organization. An organization is a collection of accounts
    #             that are centrally managed together using consolidated billing, organized hierarchically
    #             with organizational units (OUs), and controlled with policies .</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of an organization.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organization ID string requires "o-" 
    #       followed by from 10 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of an organization.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute feature_set
    #   <p>Specifies the functionality that currently is available to the organization. If set to
    #               "ALL", then all features are enabled and policies can be applied to accounts in the
    #               organization. If set to "CONSOLIDATED_BILLING", then only consolidated billing
    #               functionality is available. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling all features
    #                   in your organization</a> in the <i>Organizations User Guide</i>.</p>
    #   @return [String]
    # @!attribute master_account_arn
    #   <p>The Amazon Resource Name (ARN) of the account that is designated as the management
    #               account for the organization.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute master_account_id
    #   <p>The unique identifier (ID) of the management account of an organization.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #   @return [String]
    # @!attribute master_account_email
    #   <p>The email address that is associated with the Amazon Web Services account that is designated as the
    #               management account for the organization.</p>
    #   @return [String]
    # @!attribute available_policy_types
    #   <important>
    #               <p>Do not use. This field is deprecated and doesn't provide complete information
    #                   about the policies in your organization.</p>
    #            </important>
    #            <p>To determine the policies that are enabled and available for use in your organization,
    #               use the <a>ListRoots</a> operation instead.</p>
    #   @return [Array<Types::PolicyTypeSummary>]
    class Organization < Struct.new(
      :id,
      :arn,
      :feature_set,
      :master_account_arn,
      :master_account_id,
      :master_account_email,
      :available_policy_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OrganizationFeatureSet
      ALL = 'ALL'
      CONSOLIDATED_BILLING = 'CONSOLIDATED_BILLING'
    end

    # <p>The organization isn't empty. To delete an organization, you must first remove all
    #             accounts except the management account.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationNotEmptyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about an organizational unit (OU). An OU is a container of Amazon Web Services
    #             accounts within a root of an organization. Policies that are attached to an OU apply to
    #             all accounts contained in that OU and in any child OUs.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) associated with this OU. The ID is unique to the organization only.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this OU.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of this OU.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    class OrganizationalUnit < Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified OU is not empty. Move all accounts to another root or to other OUs,
    #             remove all child OUs, and try the operation again.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationalUnitNotEmptyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find an OU with the <code>OrganizationalUnitId</code> that you
    #             specified.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationalUnitNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about either a root or an organizational unit (OU) that can
    #             contain OUs or accounts in an organization.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of the parent entity.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the parent entity.</p>
    #   @return [String]
    class Parent < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a root or OU with the <code>ParentId</code> that you specified.</p>
    # @!attribute message
    #   @return [String]
    class ParentNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ParentType
      ROOT = 'ROOT'
      ORGANIZATIONAL_UNIT = 'ORGANIZATIONAL_UNIT'
    end

    # <p>Contains rules to be applied to the affected accounts. Policies can be attached
    #             directly to accounts, or to roots and OUs to affect all accounts in those
    #             hierarchies.</p>
    # @!attribute policy_summary
    #   <p>A structure that contains additional details about the policy.</p>
    #   @return [Types::PolicySummary]
    # @!attribute content
    #   <p>The text content of the policy.</p>
    #   @return [String]
    class Policy < Struct.new(
      :policy_summary,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Changes to the effective policy are in progress, and its contents can't be returned.
    #             Try the operation again later. </p>
    # @!attribute message
    #   @return [String]
    class PolicyChangesInProgressException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The policy is attached to one or more entities. You must detach it from all roots,
    #             OUs, and accounts before performing this operation.</p>
    # @!attribute message
    #   @return [String]
    class PolicyInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The policy isn't attached to the specified target in the specified root.</p>
    # @!attribute message
    #   @return [String]
    class PolicyNotAttachedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a policy with the <code>PolicyId</code> that you specified.</p>
    # @!attribute message
    #   @return [String]
    class PolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a policy, but does not include the content. To see the
    #             content of a policy, see <a>DescribePolicy</a>.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of the policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the policy.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of policy.</p>
    #   @return [String]
    # @!attribute aws_managed
    #   <p>A boolean value that indicates whether the specified policy is an Amazon Web Services managed
    #               policy. If true, then you can attach the policy to roots, OUs, or accounts, but you
    #               cannot edit it.</p>
    #   @return [Boolean]
    class PolicySummary < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :type,
      :aws_managed,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:aws_managed] = false unless options.key?(:aws_managed)
        super
      end
    end

    # <p>Contains information about a root, OU, or account that a policy is attached to.</p>
    # @!attribute target_id
    #   <p>The unique identifier (ID) of the policy target.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the 
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or 
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32 
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second 
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the policy target.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the policy target.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the policy target.</p>
    #   @return [String]
    class PolicyTargetSummary < Struct.new(
      :target_id,
      :arn,
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PolicyType
      SERVICE_CONTROL_POLICY = 'SERVICE_CONTROL_POLICY'
      RESOURCE_CONTROL_POLICY = 'RESOURCE_CONTROL_POLICY'
      TAG_POLICY = 'TAG_POLICY'
      BACKUP_POLICY = 'BACKUP_POLICY'
      AISERVICES_OPT_OUT_POLICY = 'AISERVICES_OPT_OUT_POLICY'
      CHATBOT_POLICY = 'CHATBOT_POLICY'
      DECLARATIVE_POLICY_EC2 = 'DECLARATIVE_POLICY_EC2'
      SECURITYHUB_POLICY = 'SECURITYHUB_POLICY'
    end

    # <p>The specified policy type is already enabled in the specified root.</p>
    # @!attribute message
    #   @return [String]
    class PolicyTypeAlreadyEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You can't use the specified policy type with the feature set currently enabled for
    #             this organization. For example, you can enable SCPs only after you enable all features
    #             in the organization. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Managing
    #                 Organizations policies</a>in the <i>Organizations User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class PolicyTypeNotAvailableForOrganizationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified policy type isn't currently enabled in this root. You can't attach
    #             policies of the specified type to entities in a root until you enable that type in the
    #             root. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling all features
    #                 in your organization</a> in the <i>Organizations User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class PolicyTypeNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PolicyTypeStatus
      ENABLED = 'ENABLED'
      PENDING_ENABLE = 'PENDING_ENABLE'
      PENDING_DISABLE = 'PENDING_DISABLE'
    end

    # <p>Contains information about a policy type and its status in the associated root.</p>
    # @!attribute type
    #   <p>The name of the policy type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the policy type as it relates to the associated root. To attach a policy
    #               of the specified type to a root or to an OU or account in that root, it must be
    #               available in the organization and enabled for that root.</p>
    #   @return [String]
    class PolicyTypeSummary < Struct.new(
      :type,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute content
    #   <p>If provided, the new content for the resource policy. The text must be correctly
    #               formatted JSON that complies with the syntax for the resource policy's type. For more
    #               information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">SCP syntax</a> in the
    #               <i>Organizations User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the newly created resource policy. For each
    #               tag in the list, you must specify both a tag key and a value. You can set the value to
    #               an empty string, but you can't set it to <code>null</code>. For more information about
    #               tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
    #                   Organizations resources</a> in the Organizations User Guide.</p>
    #            <note>
    #               <p>Calls with tags apply to the initial creation of the resource policy, otherwise an
    #                   exception is thrown. If any one of the tags is not valid or if you exceed the
    #                   allowed number of tags for the resource policy, then the entire request fails and
    #                   the resource policy is not created. </p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class PutResourcePolicyRequest < Struct.new(
      :content,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>A structure that contains details about the resource policy.</p>
    #   @return [Types::ResourcePolicy]
    class PutResourcePolicyResponse < Struct.new(
      :resource_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The account ID number of the member account in the organization to register as a
    #               delegated administrator.</p>
    #   @return [String]
    # @!attribute service_principal
    #   <p>The service principal of the Amazon Web Services service for which you want to make the member
    #               account a delegated administrator.</p>
    #   @return [String]
    class RegisterDelegatedAdministratorRequest < Struct.new(
      :account_id,
      :service_principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier (ID) of the member account that you want to remove from the
    #               organization.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #   @return [String]
    class RemoveAccountFromOrganizationRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains details about a resource policy.</p>
    # @!attribute resource_policy_summary
    #   <p>A structure that contains resource policy ID and Amazon Resource Name (ARN).</p>
    #   @return [Types::ResourcePolicySummary]
    # @!attribute content
    #   <p>The policy text of the resource policy.</p>
    #   @return [String]
    class ResourcePolicy < Struct.new(
      :resource_policy_summary,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a resource policy request with the parameter that you specified.</p>
    # @!attribute message
    #   @return [String]
    class ResourcePolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that contains resource policy ID and Amazon Resource Name (ARN).</p>
    # @!attribute id
    #   <p>The unique identifier (ID) of the resource policy.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource policy.</p>
    #   @return [String]
    class ResourcePolicySummary < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about a root. A root is a top-level parent node in the hierarchy of
    #             an organization that can contain organizational units (OUs) and accounts.
    #             The root contains every Amazon Web Services account in the
    #             organization.</p>
    # @!attribute id
    #   <p>The unique identifier (ID) for the root. The ID is unique to the organization only.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by 
    #       from 4 to 32 lowercase letters or digits.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the root.</p>
    #            <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html#awsorganizations-resources-for-iam-policies">ARN 
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the root.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    # @!attribute policy_types
    #   <p>The types of policies that are currently enabled for the root and therefore can be
    #               attached to the root or to its OUs or accounts.</p>
    #            <note>
    #               <p>Even if a policy type is shown as available in the organization, you can
    #                   separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>DescribeOrganization</a> to see the availability of the policy types in
    #                   that organization.</p>
    #            </note>
    #   @return [Array<Types::PolicyTypeSummary>]
    class Root < Struct.new(
      :id,
      :arn,
      :name,
      :policy_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a root with the <code>RootId</code> that you specified.</p>
    # @!attribute message
    #   @return [String]
    class RootNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Organizations can't complete your request because of an internal service error. Try again
    #             later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a source root or OU with the <code>ParentId</code> that you
    #             specified.</p>
    # @!attribute message
    #   @return [String]
    class SourceParentNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A custom key-value pair associated with a resource within your organization.</p>
    #          <p>You can attach tags to any of the following organization resources.</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                <p>Organization root</p>
    #             </li>
    #             <li>
    #                <p>Policy</p>
    #             </li>
    #          </ul>
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The string value that's associated with the key of the tag. You can set the value of a
    #               tag to an empty string, but you can't set the value of a tag to null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource to add a tag to.</p>
    #            <p>You can specify any of the following taggable resources.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to add to the specified resource.</p>
    #            <p>For each tag in the list, you must specify both a tag key and a value. The value can
    #               be an empty string, but you can't set it to <code>null</code>.</p>
    #            <note>
    #               <p>If any one of the tags is not valid or if you exceed the maximum allowed number of
    #                   tags for a resource, then the entire request fails.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can't find a root, OU, account, or policy with the <code>TargetId</code> that you
    #             specified.</p>
    # @!attribute message
    #   @return [String]
    class TargetNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetType
      ACCOUNT = 'ACCOUNT'
      ORGANIZATIONAL_UNIT = 'ORGANIZATIONAL_UNIT'
      ROOT = 'ROOT'
    end

    # <p>You have sent too many requests in too short a period of time. The quota helps protect
    #             against denial-of-service attacks. Try again later.</p>
    #          <p>For information about quotas that affect Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html">Quotas for Organizations</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    # @!attribute type
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :type,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This action isn't available in the current Amazon Web Services Region.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedAPIEndpointException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource to remove a tag from.</p>
    #            <p>You can specify any of the following taggable resources.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                  <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of keys for tags to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_id,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from
    #               the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires 
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the 
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters 
    #       or digits.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name that you want to assign to the OU.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    class UpdateOrganizationalUnitRequest < Struct.new(
      :organizational_unit_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organizational_unit
    #   <p>A structure that contains the details about the specified OU, including its new
    #               name.</p>
    #   @return [Types::OrganizationalUnit]
    class UpdateOrganizationalUnitResponse < Struct.new(
      :organizational_unit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want to update.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed 
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #   @return [String]
    # @!attribute name
    #   <p>If provided, the new name for the policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of any of the characters in the ASCII 
    #       character range.</p>
    #   @return [String]
    # @!attribute description
    #   <p>If provided, the new description for the policy.</p>
    #   @return [String]
    # @!attribute content
    #   <p>If provided, the new content for the policy. The text must be correctly formatted JSON
    #               that complies with the syntax for the policy's type. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">SCP
    #                   syntax</a> in the <i>Organizations User Guide</i>.</p>
    #            <p>The maximum size of a policy document depends on the policy's type. For more
    #               information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html#min-max-values">Maximum and minimum values</a> in the
    #               <i>Organizations User Guide</i>.</p>
    #   @return [String]
    class UpdatePolicyRequest < Struct.new(
      :policy_id,
      :name,
      :description,
      :content,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>A structure that contains details about the updated policy, showing the requested
    #               changes.</p>
    #   @return [Types::Policy]
    class UpdatePolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
