# frozen_string_literal: true

# This is generated code!

module Aws::IAM
  # This module contains the types returned by client operations.
  module Types

    module AccessAdvisorUsageGranularityType
      SERVICE_LEVEL = 'SERVICE_LEVEL'
      ACTION_LEVEL = 'ACTION_LEVEL'
    end

    # <p>An object that contains details about when a principal in the reported Organizations entity
    #          last attempted to access an Amazon Web Services service. A principal can be an IAM user, an IAM role,
    #          or the Amazon Web Services account root user within the reported Organizations entity.</p>
    #          <p>This data type is a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html">GetOrganizationsAccessReport</a> operation.</p>
    # @!attribute service_name
    #   <p>The name of the service in which access was attempted.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The namespace of the service in which access was attempted.</p>
    #            <p>To learn the service namespace of a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #               <i>Service Authorization Reference</i>. Choose the name of the service to
    #            view details for that service. In the first paragraph, find the service prefix. For
    #            example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #            see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #               service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region where the last service access attempt occurred.</p>
    #            <p>This field is null if no principals in the reported Organizations entity attempted to access the
    #            service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [String]
    # @!attribute entity_path
    #   <p>The path of the Organizations entity (root, organizational unit, or account) from which an
    #            authenticated principal last attempted to access the service. Amazon Web Services does not report
    #            unauthenticated requests.</p>
    #            <p>This field is null if no principals (IAM users, IAM roles, or root user) in the
    #            reported Organizations entity attempted to access the service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [String]
    # @!attribute last_authenticated_time
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when an authenticated principal most recently attempted to access the
    #            service. Amazon Web Services does not report unauthenticated requests.</p>
    #            <p>This field is null if no principals in the reported Organizations entity attempted to access the
    #            service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [Time]
    # @!attribute total_authenticated_entities
    #   <p>The number of accounts with authenticated principals (root user, IAM users, and IAM
    #            roles) that attempted to access the service in the tracking period.</p>
    #   @return [Integer]
    class AccessDetail < Struct.new(
      :service_name,
      :service_namespace,
      :region,
      :entity_path,
      :last_authenticated_time,
      :total_authenticated_entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Web Services access key.</p>
    #          <p> This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateAccessKey.html">CreateAccessKey</a> and
    #             <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html">ListAccessKeys</a> operations. </p>
    #          <note>
    #             <p>The <code>SecretAccessKey</code> value is returned only in response to <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateAccessKey.html">CreateAccessKey</a>. You can get a secret access key only when you first create
    #             an access key; you cannot recover the secret access key later. If you lose a secret
    #             access key, you must create a new access key.</p>
    #          </note>
    # @!attribute user_name
    #   <p>The name of the IAM user that the access key is associated with.</p>
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The ID for this access key.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the access key. <code>Active</code> means that the key is valid for API
    #            calls, while <code>Inactive</code> means it is not. </p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret key used to sign requests.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date when the access key was created.</p>
    #   @return [Time]
    class AccessKey < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      :secret_access_key,
      :create_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the last time an Amazon Web Services access key was used since IAM began
    #          tracking this information on April 22, 2015.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccessKeyLastUsed.html">GetAccessKeyLastUsed</a>
    #          operation.</p>
    # @!attribute last_used_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the access key was most recently used. This field is null in the
    #            following situations:</p>
    #            <ul>
    #               <li>
    #                  <p>The user does not have an access key.</p>
    #               </li>
    #               <li>
    #                  <p>An access key exists but has not been used since IAM began tracking this
    #                  information.</p>
    #               </li>
    #               <li>
    #                  <p>There is no sign-in data associated with the user.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service with which this access key was most recently used. The
    #            value of this field is "N/A" in the following situations:</p>
    #            <ul>
    #               <li>
    #                  <p>The user does not have an access key.</p>
    #               </li>
    #               <li>
    #                  <p>An access key exists but has not been used since IAM started tracking this
    #                  information.</p>
    #               </li>
    #               <li>
    #                  <p>There is no sign-in data associated with the user.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where this access key was most recently used. The value for this field
    #            is "N/A" in the following situations:</p>
    #            <ul>
    #               <li>
    #                  <p>The user does not have an access key.</p>
    #               </li>
    #               <li>
    #                  <p>An access key exists but has not been used since IAM began tracking this
    #                  information.</p>
    #               </li>
    #               <li>
    #                  <p>There is no sign-in data associated with the user.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and endpoints</a> in the Amazon Web Services
    #            General Reference.</p>
    #   @return [String]
    class AccessKeyLastUsed < Struct.new(
      :last_used_date,
      :service_name,
      :region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Web Services access key, without its secret key.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html">ListAccessKeys</a>
    #          operation.</p>
    # @!attribute user_name
    #   <p>The name of the IAM user that the key is associated with.</p>
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The ID for this access key.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the access key. <code>Active</code> means that the key is valid for API
    #            calls; <code>Inactive</code> means it is not.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date when the access key was created.</p>
    #   @return [Time]
    class AccessKeyMetadata < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      :create_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the account making the request is not the management
    #       account or delegated administrator account for <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management">centralized root
    #         access</a>.</p>
    # @!attribute message
    #   @return [String]
    class AccountNotManagementOrDelegatedAdministratorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to
    #               add the client ID to. You can get a list of OIDC provider ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client ID (also known as audience) to add to the IAM OpenID Connect provider
    #               resource.</p>
    #   @return [String]
    class AddClientIDToOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :client_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_name
    #   <p>The name of the instance profile to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the role to add.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class AddRoleToInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :role_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user to add.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class AddUserToGroupRequest < Struct.new(
      :group_name,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name (friendly name, not ARN) of the group to attach the policy to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class AttachGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) of the role to attach the policy to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class AttachRolePolicyRequest < Struct.new(
      :role_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class AttachUserPolicyRequest < Struct.new(
      :user_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an attached permissions boundary.</p>
    #          <p>An attached permissions boundary is a managed policy that has been attached to a user or
    #          role to set the permissions boundary.</p>
    #          <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #             identities </a> in the <i>IAM User Guide</i>.</p>
    # @!attribute permissions_boundary_type
    #   <p> The permissions boundary usage type that indicates what type of IAM resource is used
    #            as the permissions boundary for an entity. This data type can only have a value of
    #               <code>Policy</code>.</p>
    #   @return [String]
    # @!attribute permissions_boundary_arn
    #   <p> The ARN of the policy used to set the permissions boundary for the user or role.</p>
    #   @return [String]
    class AttachedPermissionsBoundary < Struct.new(
      :permissions_boundary_type,
      :permissions_boundary_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an attached policy.</p>
    #          <p>An attached policy is a managed policy that has been attached to a user, group, or role.
    #          This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedGroupPolicies.html">ListAttachedGroupPolicies</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedRolePolicies.html">ListAttachedRolePolicies</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedUserPolicies.html">ListAttachedUserPolicies</a>, and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operations. </p>
    #          <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute policy_name
    #   <p>The friendly name of the attached policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    class AttachedPolicy < Struct.new(
      :policy_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the account making the request is not the management
    #       account for the organization.</p>
    # @!attribute message
    #   @return [String]
    class CallerIsNotManagementAccountException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute old_password
    #   <p>The IAM user's current password.</p>
    #   @return [String]
    # @!attribute new_password
    #   <p>The new password. The new password must conform to the Amazon Web Services account's password
    #               policy, if one exists.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of characters. That string can include almost any printable 
    #       ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>). 
    #       You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) 
    #       characters. Any of these characters are valid in a password. However, many tools, such 
    #       as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have 
    #       special meaning within that tool.</p>
    #   @return [String]
    class ChangePasswordRequest < Struct.new(
      :old_password,
      :new_password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because multiple requests to change this object were submitted
    #       simultaneously. Wait a few minutes and submit your request again.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a condition context key. It includes the name of the key and
    #          specifies the value (or values, if the context key supports multiple values) to use in the
    #          simulation. This information is used when evaluating the <code>Condition</code> elements of
    #          the input policies.</p>
    #          <p>This data type is used as an input parameter to <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a>
    #          and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html">SimulatePrincipalPolicy</a>.</p>
    # @!attribute context_key_name
    #   <p>The full name of a condition context key, including the service prefix. For example,
    #               <code>aws:SourceIp</code> or <code>s3:VersionId</code>.</p>
    #   @return [String]
    # @!attribute context_key_values
    #   <p>The value (or values, if the condition context key supports multiple values) to provide
    #            to the simulation when the key is referenced by a <code>Condition</code> element in an
    #            input policy.</p>
    #   @return [Array<String>]
    # @!attribute context_key_type
    #   <p>The data type of the value (or values) specified in the <code>ContextKeyValues</code>
    #            parameter.</p>
    #   @return [String]
    class ContextEntry < Struct.new(
      :context_key_name,
      :context_key_values,
      :context_key_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ContextKeyTypeEnum
      STRING = 'string'
      STRING_LIST = 'stringList'
      NUMERIC = 'numeric'
      NUMERIC_LIST = 'numericList'
      BOOLEAN = 'boolean'
      BOOLEAN_LIST = 'booleanList'
      IP = 'ip'
      IP_LIST = 'ipList'
      BINARY = 'binary'
      BINARY_LIST = 'binaryList'
      DATE = 'date'
      DATE_LIST = 'dateList'
    end

    # @!attribute user_name
    #   <p>The name of the IAM user that the new key will belong to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class CreateAccessKeyRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateAccessKey.html">CreateAccessKey</a> request.
    #     </p>
    # @!attribute access_key
    #   <p>A structure with details about the access key.</p>
    #   @return [Types::AccessKey]
    class CreateAccessKeyResponse < Struct.new(
      :access_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_alias
    #   <p>The account alias to create.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of 
    #       lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have 
    #       two dashes in a row.</p>
    #   @return [String]
    class CreateAccountAliasRequest < Struct.new(
      :account_alias,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p> The path to the group. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group to create. Do not include the path in this value.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #   @return [String]
    class CreateGroupRequest < Struct.new(
      :path,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateGroup.html">CreateGroup</a> request. </p>
    # @!attribute group
    #   <p>A structure containing details about the new group.</p>
    #   @return [Types::Group]
    class CreateGroupResponse < Struct.new(
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_name
    #   <p>The name of the instance profile to create.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute path
    #   <p> The path to the instance profile. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the newly created IAM instance profile.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :path,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateInstanceProfile.html">CreateInstanceProfile</a>
    #       request. </p>
    # @!attribute instance_profile
    #   <p>A structure containing details about the new instance profile.</p>
    #   @return [Types::InstanceProfile]
    class CreateInstanceProfileResponse < Struct.new(
      :instance_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user to create a password for. The user must already
    #               exist.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute password
    #   <p>The new password for the user.</p>
    #            <p>This parameter must be omitted when you make the request with an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session. It is required in all other cases.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of characters. That string can include almost any printable 
    #       ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>). 
    #       You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) 
    #       characters. Any of these characters are valid in a password. However, many tools, such 
    #       as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have 
    #       special meaning within that tool.</p>
    #   @return [String]
    # @!attribute password_reset_required
    #   <p>Specifies whether the user is required to set a new password on next sign-in.</p>
    #   @return [Boolean]
    class CreateLoginProfileRequest < Struct.new(
      :user_name,
      :password,
      :password_reset_required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateLoginProfile.html">CreateLoginProfile</a>
    #       request. </p>
    # @!attribute login_profile
    #   <p>A structure containing the user name and password create date.</p>
    #   @return [Types::LoginProfile]
    class CreateLoginProfileResponse < Struct.new(
      :login_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The URL of the identity provider. The URL must begin with <code>https://</code> and
    #               should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID
    #               tokens. Per the OIDC standard, path components are allowed but query parameters are not.
    #               Typically the URL consists of only a hostname, like
    #                   <code>https://server.example.org</code> or <code>https://example.com</code>. The URL
    #               should not contain a port number. </p>
    #            <p>You cannot register the same provider multiple times in a single Amazon Web Services account. If you
    #               try to submit a URL that has already been used for an OpenID Connect provider in the
    #               Amazon Web Services account, you will get an error.</p>
    #   @return [String]
    # @!attribute client_id_list
    #   <p>Provides a list of client IDs, also known as audiences. When a mobile or web app
    #               registers with an OpenID Connect provider, they establish a value that identifies the
    #               application. This is the value that's sent as the <code>client_id</code> parameter on
    #               OAuth requests.</p>
    #            <p>You can register multiple client IDs with the same provider. For example, you might
    #               have multiple applications that use the same OIDC provider. You cannot register more
    #               than 100 client IDs with a single IAM OIDC provider.</p>
    #            <p>There is no defined format for a client ID. The
    #                   <code>CreateOpenIDConnectProviderRequest</code> operation accepts client IDs up to
    #               255 characters long.</p>
    #   @return [Array<String>]
    # @!attribute thumbprint_list
    #   <p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity
    #               provider's server certificates. Typically this list includes only one entry. However,
    #               IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain
    #               multiple thumbprints if the identity provider is rotating certificates.</p>
    #            <p>This parameter is optional. If it is not included, IAM will retrieve and use the top
    #               intermediate certificate authority (CA) thumbprint of the OpenID Connect identity
    #               provider server certificate.</p>
    #            <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509
    #               certificate used by the domain where the OpenID Connect provider makes its keys
    #               available. It is always a 40-character string.</p>
    #            <p>For example, assume that the OIDC provider is <code>server.example.com</code> and the
    #               provider stores its keys at https://keys.server.example.com/openid-connect. In that
    #               case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate
    #               used by <code>https://keys.server.example.com.</code>
    #            </p>
    #            <p>For more information about obtaining the OIDC provider thumbprint, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html">Obtaining the
    #                   thumbprint for an OpenID Connect provider</a> in the <i>IAM user
    #                   Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateOpenIDConnectProviderRequest < Struct.new(
      :url,
      :client_id_list,
      :thumbprint_list,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a> request. </p>
    # @!attribute open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is
    #               created. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_OpenIDConnectProviderListEntry.html">OpenIDConnectProviderListEntry</a>. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that are attached to the new IAM OIDC provider. The returned list of
    #         tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateOpenIDConnectProviderResponse < Struct.new(
      :open_id_connect_provider_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_name
    #   <p>The friendly name of the policy.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path for the policy.</p>
    #            <p>For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #            <note>
    #               <p>You cannot use an asterisk (*) in the path name.</p>
    #            </note>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON policy document that you want to use as the content for the new
    #               policy.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>To learn more about JSON policy grammar, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html">Grammar of the IAM JSON
    #                   policy language</a> in the <i>IAM User Guide</i>. </p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A friendly description of the policy.</p>
    #            <p>Typically used to store information about the permissions defined in the policy. For
    #               example, "Grants access to production DynamoDB tables."</p>
    #            <p>The policy description is immutable. After a value is assigned, it cannot be
    #               changed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new IAM customer managed policy.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreatePolicyRequest < Struct.new(
      :policy_name,
      :path,
      :policy_document,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html">CreatePolicy</a> request. </p>
    # @!attribute policy
    #   <p>A structure containing details about the new policy.</p>
    #   @return [Types::Policy]
    class CreatePolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new
    #               version.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON policy document that you want to use as the content for this new version of
    #               the policy.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute set_as_default
    #   <p>Specifies whether to set this version as the policy's default version.</p>
    #            <p>When this parameter is <code>true</code>, the new policy version becomes the operative
    #               version. That is, it becomes the version that is in effect for the IAM users, groups,
    #               and roles that the policy is attached to.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [Boolean]
    class CreatePolicyVersionRequest < Struct.new(
      :policy_arn,
      :policy_document,
      :set_as_default,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicyVersion.html">CreatePolicyVersion</a>
    #       request. </p>
    # @!attribute policy_version
    #   <p>A structure containing details about the new policy version.</p>
    #   @return [Types::PolicyVersion]
    class CreatePolicyVersionResponse < Struct.new(
      :policy_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p> The path to the role. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the role to create.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute assume_role_policy_document
    #   <p>The trust relationship policy document that grants an entity permission to assume the
    #               role.</p>
    #            <p>In IAM, you must provide a JSON policy that has been converted to a string. However,
    #               for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML
    #               format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <p> Upon success, the response includes the same trust policy in JSON format.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the role.</p>
    #   @return [String]
    # @!attribute max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.
    #               If you do not specify a value for this setting, the default value of one hour is
    #               applied. This setting can have a value from 1 hour to 12 hours.</p>
    #            <p>Anyone who assumes the role from the CLI or API can use the
    #                   <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code>
    #               CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting
    #               determines the maximum duration that can be requested using the
    #                   <code>DurationSeconds</code> parameter. If users don't specify a value for the
    #                   <code>DurationSeconds</code> parameter, their security credentials are valid for one
    #               hour by default. This applies when you use the <code>AssumeRole*</code> API operations
    #               or the <code>assume-role*</code> CLI operations but does not apply when you use those
    #               operations to create a console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM
    #                   roles</a> in the <i>IAM User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               role.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateRoleRequest < Struct.new(
      :path,
      :role_name,
      :assume_role_policy_document,
      :description,
      :max_session_duration,
      :permissions_boundary,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> request. </p>
    # @!attribute role
    #   <p>A structure containing details about the new role.</p>
    #   @return [Types::Role]
    class CreateRoleResponse < Struct.new(
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute saml_metadata_document
    #   <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    #               document includes the issuer's name, expiration information, and keys that can be used
    #               to validate the SAML authentication response (assertions) that are received from the
    #               IdP. You must generate the metadata document using the identity management software that
    #               is used as your organization's IdP.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #                   federation</a> in the <i>IAM User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provider to create.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new IAM SAML provider.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute assertion_encryption_mode
    #   <p>Specifies the encryption setting for the SAML provider.</p>
    #   @return [String]
    # @!attribute add_private_key
    #   <p>The private key generated from your external identity provider. The private key must
    #               be a .pem file that uses AES-GCM or AES-CBC encryption algorithm to decrypt SAML
    #               assertions.</p>
    #   @return [String]
    class CreateSAMLProviderRequest < Struct.new(
      :saml_metadata_document,
      :name,
      :tags,
      :assertion_encryption_mode,
      :add_private_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateSAMLProvider.html">CreateSAMLProvider</a>
    #       request. </p>
    # @!attribute saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that are attached to the new IAM SAML provider. The returned list of tags is sorted by tag key.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateSAMLProviderResponse < Struct.new(
      :saml_provider_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute aws_service_name
    #   <p>The service principal for the Amazon Web Services service to which this role is attached. You use a
    #               string similar to a URL but without the http:// in front. For example:
    #                   <code>elasticbeanstalk.amazonaws.com</code>. </p>
    #            <p>Service principals are unique and case-sensitive. To find the exact service principal
    #               for your service-linked role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html">Amazon Web Services services
    #                   that work with IAM</a> in the <i>IAM User Guide</i>. Look for
    #               the services that have <b>Yes </b>in the <b>Service-Linked Role</b> column. Choose the <b>Yes</b> link to view the service-linked role documentation for that
    #               service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the role.</p>
    #   @return [String]
    # @!attribute custom_suffix
    #   <p></p>
    #            <p>A string that you provide, which is combined with the service-provided prefix to form
    #               the complete role name. If you make multiple requests for the same service, then you
    #               must supply a different <code>CustomSuffix</code> for each request. Otherwise the
    #               request fails with a duplicate role name error. For example, you could add
    #                   <code>-1</code> or <code>-debug</code> to the suffix.</p>
    #            <p>Some services do not support the <code>CustomSuffix</code> parameter. If you provide
    #               an optional suffix and the operation fails, try the operation again without the
    #               suffix.</p>
    #   @return [String]
    class CreateServiceLinkedRoleRequest < Struct.new(
      :aws_service_name,
      :description,
      :custom_suffix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role
    #   <p>A <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_Role.html">Role</a>
    #               object that contains details about the newly created role.</p>
    #   @return [Types::Role]
    class CreateServiceLinkedRoleResponse < Struct.new(
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user that is to be associated with the credentials. The new
    #               service-specific credentials have the same permissions as the associated user except
    #               that they can be used only to access the specified service.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service that is to be associated with the credentials. The
    #               service you specify here is the only service that can be accessed using these
    #               credentials.</p>
    #   @return [String]
    # @!attribute credential_age_days
    #   <p>The number of days until the service specific credential expires. This field is only
    #               valid for Bedrock API keys and must be a positive integer. When not specified, the
    #               credential will not expire.</p>
    #   @return [Integer]
    class CreateServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_name,
      :credential_age_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_specific_credential
    #   <p>A structure that contains information about the newly created service-specific
    #               credential.</p>
    #            <important>
    #               <p>This is the only time that the password for this credential set is available. It
    #                   cannot be recovered later. Instead, you must reset the password with <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ResetServiceSpecificCredential.html">ResetServiceSpecificCredential</a>.</p>
    #            </important>
    #   @return [Types::ServiceSpecificCredential]
    class CreateServiceSpecificCredentialResponse < Struct.new(
      :service_specific_credential,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p> The path for the user name. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user to create.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #   @return [String]
    # @!attribute permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               user.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new user. Each tag consists of a key name and an associated value.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateUserRequest < Struct.new(
      :path,
      :user_name,
      :permissions_boundary,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateUser.html">CreateUser</a> request. </p>
    # @!attribute user
    #   <p>A structure with details about the new IAM user.</p>
    #   @return [Types::User]
    class CreateUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p> The path for the virtual MFA device. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute virtual_mfa_device_name
    #   <p>The name of the virtual MFA device, which must be unique. Use with path to uniquely
    #               identify a virtual MFA device.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new IAM virtual MFA device.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateVirtualMFADeviceRequest < Struct.new(
      :path,
      :virtual_mfa_device_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateVirtualMFADevice.html">CreateVirtualMFADevice</a>
    #       request. </p>
    # @!attribute virtual_mfa_device
    #   <p>A structure containing details about the new virtual MFA device.</p>
    #   @return [Types::VirtualMFADevice]
    class CreateVirtualMFADeviceResponse < Struct.new(
      :virtual_mfa_device,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the most recent credential report has expired. To
    #       generate a new credential report, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html">GenerateCredentialReport</a>. For more information about credential report expiration,
    #       see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting
    #         credential reports</a> in the <i>IAM User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class CredentialReportExpiredException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the credential report does not exist. To generate a
    #       credential report, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html">GenerateCredentialReport</a>.</p>
    # @!attribute message
    #   @return [String]
    class CredentialReportNotPresentException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the credential report is still being generated.</p>
    # @!attribute message
    #   @return [String]
    class CredentialReportNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose MFA device you want to deactivate.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the device ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    #       following characters: =,.@:/-</p>
    #   @return [String]
    class DeactivateMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose access key pair you want to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The access key ID for the access key ID and secret access key you want to
    #               delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    class DeleteAccessKeyRequest < Struct.new(
      :user_name,
      :access_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_alias
    #   <p>The name of the account alias to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of 
    #       lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have 
    #       two dashes in a row.</p>
    #   @return [String]
    class DeleteAccountAliasRequest < Struct.new(
      :account_alias,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to delete a resource that has attached
    #       subordinate entities. The error message describes these entities.</p>
    # @!attribute message
    #   @return [String]
    class DeleteConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name (friendly name, not ARN) identifying the group that the policy is embedded
    #               in.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name identifying the policy document to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the IAM group to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_name
    #   <p>The name of the instance profile to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose password you want to delete.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteLoginProfileRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to
    #               delete. You can get a list of OpenID Connect provider resource ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #   @return [String]
    class DeleteOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class DeletePolicyRequest < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a
    #               version.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The policy version to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that 
    #       consists of the lowercase letter 'v' followed by one or two digits, and optionally 
    #       followed by a period '.' and a string of letters and digits.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class DeletePolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) of the IAM role from which you want to remove the
    #               permissions boundary.</p>
    #   @return [String]
    class DeleteRolePermissionsBoundaryRequest < Struct.new(
      :role_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) identifying the role that the policy is embedded
    #               in.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the inline policy to delete from the specified IAM role.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the role to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteRoleRequest < Struct.new(
      :role_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>
    #   @return [String]
    class DeleteSAMLProviderRequest < Struct.new(
      :saml_provider_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    class DeleteSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_certificate_name
    #   <p>The name of the server certificate you want to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteServerCertificateRequest < Struct.new(
      :server_certificate_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the service-linked role to be deleted.</p>
    #   @return [String]
    class DeleteServiceLinkedRoleRequest < Struct.new(
      :role_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deletion_task_id
    #   <p>The deletion task identifier that you can use to check the status of the deletion.
    #               This identifier is returned in the format
    #                   <code>task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid></code>.</p>
    #   @return [String]
    class DeleteServiceLinkedRoleResponse < Struct.new(
      :deletion_task_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If this
    #               value is not specified, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential. You can get this value by
    #               calling <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServiceSpecificCredentials.html">ListServiceSpecificCredentials</a>.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    class DeleteServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user the signing certificate belongs to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the signing certificate to delete.</p>
    #            <p>The format of this parameter, as described by its <a href="http://wikipedia.org/wiki/regex">regex</a> pattern, is a string of
    #               characters that can be upper- or lower-cased letters or digits.</p>
    #   @return [String]
    class DeleteSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) of the IAM user from which you want to remove the
    #               permissions boundary.</p>
    #   @return [String]
    class DeleteUserPermissionsBoundaryRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) identifying the user that the policy is embedded
    #               in.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name identifying the policy document to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    #       following characters: =,.@:/-</p>
    #   @return [String]
    class DeleteVirtualMFADeviceRequest < Struct.new(
      :serial_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The reason that the service-linked role deletion failed.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLinkedRoleDeletionStatus.html">GetServiceLinkedRoleDeletionStatus</a> operation.</p>
    # @!attribute reason
    #   <p>A short description of the reason that the service-linked role deletion failed.</p>
    #   @return [String]
    # @!attribute role_usage_list
    #   <p>A list of objects that contains details about the service-linked role deletion failure,
    #            if that information is returned by the service. If the service-linked role has active
    #            sessions or if any resources that were used by the role have not been deleted from the
    #            linked service, the role can't be deleted. This parameter includes a list of the resources
    #            that are associated with the role and the Region in which the resources are being
    #            used.</p>
    #   @return [Array<Types::RoleUsageType>]
    class DeletionTaskFailureReasonType < Struct.new(
      :reason,
      :role_usage_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeletionTaskStatusType
      SUCCEEDED = 'SUCCEEDED'
      IN_PROGRESS = 'IN_PROGRESS'
      FAILED = 'FAILED'
      NOT_STARTED = 'NOT_STARTED'
    end

    # @!attribute group_name
    #   <p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class DetachGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class DetachRolePolicyRequest < Struct.new(
      :role_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class DetachUserPolicyRequest < Struct.new(
      :user_name,
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisableOrganizationsRootCredentialsManagementRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The unique identifier (ID) of an organization.</p>
    #   @return [String]
    # @!attribute enabled_features
    #   <p>The features enabled for centralized root access for member accounts in your
    #               organization.</p>
    #   @return [Array<String>]
    class DisableOrganizationsRootCredentialsManagementResponse < Struct.new(
      :organization_id,
      :enabled_features,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisableOrganizationsRootSessionsRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The unique identifier (ID) of an organization.</p>
    #   @return [String]
    # @!attribute enabled_features
    #   <p>The features you have enabled for centralized root access of member accounts in your
    #               organization.</p>
    #   @return [Array<String>]
    class DisableOrganizationsRootSessionsResponse < Struct.new(
      :organization_id,
      :enabled_features,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the same certificate is associated with an IAM user in
    #       the account.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateCertificateException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the SSH public key is already associated with the
    #       specified IAM user.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateSSHPublicKeyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user for whom you want to enable the MFA device.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the device ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    #       following characters: =,.@:/-</p>
    #   @return [String]
    # @!attribute authentication_code1
    #   <p>An authentication code emitted by the device. </p>
    #            <p>The format for this parameter is a string of six digits.</p>
    #            <important>
    #               <p>Submit your request immediately after generating the authentication codes. If you
    #                   generate the codes and then wait too long to submit the request, the MFA device
    #                   successfully associates with the user but the MFA device becomes out of sync. This
    #                   happens because time-based one-time passwords (TOTP) expire after a short period of
    #                   time. If this happens, you can <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the
    #                   device</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute authentication_code2
    #   <p>A subsequent authentication code emitted by the device.</p>
    #            <p>The format for this parameter is a string of six digits.</p>
    #            <important>
    #               <p>Submit your request immediately after generating the authentication codes. If you
    #                   generate the codes and then wait too long to submit the request, the MFA device
    #                   successfully associates with the user but the MFA device becomes out of sync. This
    #                   happens because time-based one-time passwords (TOTP) expire after a short period of
    #                   time. If this happens, you can <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the
    #                   device</a>.</p>
    #            </important>
    #   @return [String]
    class EnableMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      :authentication_code1,
      :authentication_code2,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class EnableOrganizationsRootCredentialsManagementRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The unique identifier (ID) of an organization.</p>
    #   @return [String]
    # @!attribute enabled_features
    #   <p>The features you have enabled for centralized root access.</p>
    #   @return [Array<String>]
    class EnableOrganizationsRootCredentialsManagementResponse < Struct.new(
      :organization_id,
      :enabled_features,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class EnableOrganizationsRootSessionsRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The unique identifier (ID) of an organization.</p>
    #   @return [String]
    # @!attribute enabled_features
    #   <p>The features you have enabled for centralized root access.</p>
    #   @return [Array<String>]
    class EnableOrganizationsRootSessionsResponse < Struct.new(
      :organization_id,
      :enabled_features,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to create a resource that already
    #       exists.</p>
    # @!attribute message
    #   @return [String]
    class EntityAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains details about when the IAM entities (users or roles) were last
    #          used in an attempt to access the specified Amazon Web Services service.</p>
    #          <p>This data type is a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html">GetServiceLastAccessedDetailsWithEntities</a> operation.</p>
    # @!attribute entity_info
    #   <p>The <code>EntityInfo</code> object that contains details about the entity (user or
    #            role).</p>
    #   @return [Types::EntityInfo]
    # @!attribute last_authenticated
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the authenticated entity last attempted to access Amazon Web Services. Amazon Web Services does
    #            not report unauthenticated requests.</p>
    #            <p>This field is null if no IAM entities attempted to access the service within the
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [Time]
    class EntityDetails < Struct.new(
      :entity_info,
      :last_authenticated,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the specified entity (user or role).</p>
    #          <p>This data type is an element of the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_EntityDetails.html">EntityDetails</a>
    #          object.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the entity (user or role).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of entity (user or role).</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the entity (user or role).</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path to the entity (user or role). For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    class EntityInfo < Struct.new(
      :arn,
      :name,
      :type,
      :id,
      :path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it referenced an entity that is temporarily unmodifiable,
    #       such as a user name that was deleted and then recreated. The error indicates that the request
    #       is likely to succeed if you try again after waiting several minutes. The error message
    #       describes the entity.</p>
    # @!attribute message
    #   @return [String]
    class EntityTemporarilyUnmodifiableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EntityType
      User = 'User'
      Role = 'Role'
      Group = 'Group'
      LocalManagedPolicy = 'LocalManagedPolicy'
      AWSManagedPolicy = 'AWSManagedPolicy'
    end

    # <p>Contains information about the reason that the operation failed.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html">GetOrganizationsAccessReport</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html">GetServiceLastAccessedDetails</a>, and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html">GetServiceLastAccessedDetailsWithEntities</a> operations.</p>
    # @!attribute message
    #   <p>Detailed information about the reason that the operation failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code associated with the operation failure.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the results of a simulation.</p>
    #          <p>This data type is used by the return parameter of <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a>
    #             </code> and <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html">SimulatePrincipalPolicy</a>
    #             </code>.</p>
    # @!attribute eval_action_name
    #   <p>The name of the API operation tested on the indicated resource.</p>
    #   @return [String]
    # @!attribute eval_resource_name
    #   <p>The ARN of the resource that the indicated API operation was tested on.</p>
    #   @return [String]
    # @!attribute eval_decision
    #   <p>The result of the simulation.</p>
    #   @return [String]
    # @!attribute matched_statements
    #   <p>A list of the statements in the input policies that determine the result for this
    #            scenario. Remember that even if multiple statements allow the operation on the resource, if
    #            only one statement denies that operation, then the explicit deny overrides any allow. In
    #            addition, the deny statement is the only entry included in the result.</p>
    #   @return [Array<Types::Statement>]
    # @!attribute missing_context_values
    #   <p>A list of context keys that are required by the included input policies but that were
    #            not provided by one of the input parameters. This list is used when the resource in a
    #            simulation is "*", either explicitly, or when the <code>ResourceArns</code> parameter
    #            blank. If you include a list of resources, then any missing context values are instead
    #            included under the <code>ResourceSpecificResults</code> section. To discover the context
    #            keys used by a set of policies, you can call <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a>.</p>
    #   @return [Array<String>]
    # @!attribute organizations_decision_detail
    #   <p>A structure that details how Organizations and its service control policies affect the results of
    #            the simulation. Only applies if the simulated user's account is part of an
    #            organization.</p>
    #   @return [Types::OrganizationsDecisionDetail]
    # @!attribute permissions_boundary_decision_detail
    #   <p>Contains information about the effect that a permissions boundary has on a policy
    #            simulation when the boundary is applied to an IAM entity.</p>
    #   @return [Types::PermissionsBoundaryDecisionDetail]
    # @!attribute eval_decision_details
    #   <p>Additional details about the results of the cross-account evaluation decision. This
    #            parameter is populated for only cross-account simulations. It contains a brief summary of
    #            how each policy type contributes to the final evaluation decision.</p>
    #            <p>If the simulation evaluates policies within the same account and includes a resource
    #            ARN, then the parameter is present but the response is empty. If the simulation evaluates
    #            policies within the same account and specifies all resources (<code>*</code>), then the
    #            parameter is not returned.</p>
    #            <p>When you make a cross-account request, Amazon Web Services evaluates the request in the trusting
    #            account and the trusted account. The request is allowed only if both evaluations return
    #               <code>true</code>. For more information about how policies are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies within a single account</a>.</p>
    #            <p>If an Organizations SCP included in the evaluation denies access, the simulation ends. In
    #            this case, policy evaluation does not proceed any further and this parameter is not
    #            returned.</p>
    #   @return [Hash<String, String>]
    # @!attribute resource_specific_results
    #   <p>The individual results of the simulation of the API operation specified in
    #            EvalActionName on each resource.</p>
    #   @return [Array<Types::ResourceSpecificResult>]
    class EvaluationResult < Struct.new(
      :eval_action_name,
      :eval_resource_name,
      :eval_decision,
      :matched_statements,
      :missing_context_values,
      :organizations_decision_detail,
      :permissions_boundary_decision_detail,
      :eval_decision_details,
      :resource_specific_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FeatureType
      ROOT_CREDENTIALS_MANAGEMENT = 'RootCredentialsManagement'
      ROOT_SESSIONS = 'RootSessions'
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html">GenerateCredentialReport</a> request. </p>
    # @!attribute state
    #   <p>Information about the state of the credential report.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the credential report.</p>
    #   @return [String]
    class GenerateCredentialReportResponse < Struct.new(
      :state,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_path
    #   <p>The path of the Organizations entity (root, OU, or account). You can build an entity path
    #               using the known structure of your organization. For example, assume that your account ID
    #               is <code>123456789012</code> and its parent OU ID is <code>ou-rge0-awsabcde</code>. The
    #               organization root ID is <code>r-f6g7h8i9j0example</code> and your organization ID is
    #                   <code>o-a1b2c3d4e5</code>. Your entity path is
    #                   <code>o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012</code>.</p>
    #   @return [String]
    # @!attribute organizations_policy_id
    #   <p>The identifier of the Organizations service control policy (SCP). This parameter is
    #               optional.</p>
    #            <p>This ID is used to generate information about when an account principal that is
    #               limited by the SCP attempted to access an Amazon Web Services service.</p>
    #   @return [String]
    class GenerateOrganizationsAccessReportRequest < Struct.new(
      :entity_path,
      :organizations_policy_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job identifier that you can use in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html">GetOrganizationsAccessReport</a> operation.</p>
    #   @return [String]
    class GenerateOrganizationsAccessReportResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the IAM resource (user, group, role, or managed policy) used to generate
    #               information about when the resource was last used in an attempt to access an Amazon Web Services
    #               service.</p>
    #   @return [String]
    # @!attribute granularity
    #   <p>The level of detail that you want to generate. You can specify whether you want to
    #               generate information about the last attempt to access services or actions. If you
    #               specify service-level granularity, this operation generates only service data. If you
    #               specify action-level granularity, it generates service and action data. If you don't
    #               include this optional parameter, the operation generates service data.</p>
    #   @return [String]
    class GenerateServiceLastAccessedDetailsRequest < Struct.new(
      :arn,
      :granularity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The <code>JobId</code> that you can use in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html">GetServiceLastAccessedDetails</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html">GetServiceLastAccessedDetailsWithEntities</a> operations. The
    #                   <code>JobId</code> returned by <code>GenerateServiceLastAccessedDetail</code> must
    #               be used by the same role within a session, or by the same user when used to call
    #                   <code>GetServiceLastAccessedDetail</code>.</p>
    #   @return [String]
    class GenerateServiceLastAccessedDetailsResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute access_key_id
    #   <p>The identifier of an access key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    class GetAccessKeyLastUsedRequest < Struct.new(
      :access_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccessKeyLastUsed.html">GetAccessKeyLastUsed</a>
    #       request. It is also returned as a member of the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AccessKeyMetaData.html">AccessKeyMetaData</a> structure
    #       returned by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html">ListAccessKeys</a> action.</p>
    # @!attribute user_name
    #   <p>The name of the IAM user that owns this access key.</p>
    #            <p></p>
    #   @return [String]
    # @!attribute access_key_last_used
    #   <p>Contains information about the last time the access key was used.</p>
    #   @return [Types::AccessKeyLastUsed]
    class GetAccessKeyLastUsedResponse < Struct.new(
      :user_name,
      :access_key_last_used,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A list of entity types used to filter the results. Only the entities that match the
    #               types you specify are included in the output. Use the value
    #                   <code>LocalManagedPolicy</code> to include customer managed policies.</p>
    #            <p>The format for this parameter is a comma-separated (if more than one) list of strings.
    #               Each string value in the list must be one of the valid values listed below.</p>
    #   @return [Array<String>]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    class GetAccountAuthorizationDetailsRequest < Struct.new(
      :filter,
      :max_items,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> request. </p>
    # @!attribute user_detail_list
    #   <p>A list containing information about IAM users.</p>
    #   @return [Array<Types::UserDetail>]
    # @!attribute group_detail_list
    #   <p>A list containing information about IAM groups.</p>
    #   @return [Array<Types::GroupDetail>]
    # @!attribute role_detail_list
    #   <p>A list containing information about IAM roles.</p>
    #   @return [Array<Types::RoleDetail>]
    # @!attribute policies
    #   <p>A list containing information about managed policies.</p>
    #   @return [Array<Types::ManagedPolicyDetail>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class GetAccountAuthorizationDetailsResponse < Struct.new(
      :user_detail_list,
      :group_detail_list,
      :role_detail_list,
      :policies,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountPasswordPolicy.html">GetAccountPasswordPolicy</a> request. </p>
    # @!attribute password_policy
    #   <p>A structure that contains details about the account's password policy.</p>
    #   @return [Types::PasswordPolicy]
    class GetAccountPasswordPolicyResponse < Struct.new(
      :password_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountSummary.html">GetAccountSummary</a> request.
    #     </p>
    # @!attribute summary_map
    #   <p>A set of key–value pairs containing information about IAM entity usage and
    #               IAM quotas.</p>
    #   @return [Hash<String, Integer>]
    class GetAccountSummaryResponse < Struct.new(
      :summary_map,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a> request. </p>
    # @!attribute context_key_names
    #   <p>The list of context keys that are referenced in the input policies.</p>
    #   @return [Array<String>]
    class GetContextKeysForCustomPolicyOutput < Struct.new(
      :context_key_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_input_list
    #   <p>A list of policies for which you want the list of context keys referenced in those
    #               policies. Each document is specified as a string containing the complete, valid JSON
    #               text of an IAM policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetContextKeysForCustomPolicyRequest < Struct.new(
      :policy_input_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a> request. </p>
    # @!attribute context_key_names
    #   <p>The list of context keys that are referenced in the input policies.</p>
    #   @return [Array<String>]
    class GetContextKeysForPrincipalPolicyOutput < Struct.new(
      :context_key_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_source_arn
    #   <p>The ARN of a user, group, or role whose policies contain the context keys that you
    #               want listed. If you specify a user, the list includes context keys that are found in all
    #               policies that are attached to the user. The list also includes all groups that the user
    #               is a member of. If you pick a group or a role, then it includes only those context keys
    #               that are found in policies attached to that entity. Note that all parameters are shown
    #               in unencoded form here for clarity, but must be URL encoded to be included as a part of
    #               a real HTML request.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute policy_input_list
    #   <p>An optional list of additional policies for which you want the list of context keys
    #               that are referenced.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetContextKeysForPrincipalPolicyRequest < Struct.new(
      :policy_source_arn,
      :policy_input_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetCredentialReport.html">GetCredentialReport</a>
    #       request. </p>
    # @!attribute content
    #   <p>Contains the credential report. The report is Base64-encoded.</p>
    #   @return [String]
    # @!attribute report_format
    #   <p>The format (MIME type) of the credential report.</p>
    #   @return [String]
    # @!attribute generated_time
    #   <p> The date and time when the credential report was created, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>.</p>
    #   @return [Time]
    class GetCredentialReportResponse < Struct.new(
      :content,
      :report_format,
      :generated_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group the policy is associated with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy document to get.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroupPolicy.html">GetGroupPolicy</a> request.
    #     </p>
    # @!attribute group_name
    #   <p>The group the policy is associated with.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #            <p>IAM stores policies in JSON format. However, resources that were created using CloudFormation
    #               templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format
    #               before submitting it to IAM.</p>
    #   @return [String]
    class GetGroupPolicyResponse < Struct.new(
      :group_name,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class GetGroupRequest < Struct.new(
      :group_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroup.html">GetGroup</a> request. </p>
    # @!attribute group
    #   <p>A structure that contains details about the group.</p>
    #   @return [Types::Group]
    # @!attribute users
    #   <p>A list of users in the group.</p>
    #   @return [Array<Types::User>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class GetGroupResponse < Struct.new(
      :group,
      :users,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute instance_profile_name
    #   <p>The name of the instance profile to get information about.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetInstanceProfile.html">GetInstanceProfile</a>
    #       request. </p>
    # @!attribute instance_profile
    #   <p>A structure containing details about the instance profile.</p>
    #   @return [Types::InstanceProfile]
    class GetInstanceProfileResponse < Struct.new(
      :instance_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose login profile you want to retrieve.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetLoginProfileRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetLoginProfile.html">GetLoginProfile</a> request.
    #     </p>
    # @!attribute login_profile
    #   <p>A structure containing the user name and the profile creation date for the
    #               user.</p>
    #   @return [Types::LoginProfile]
    class GetLoginProfileResponse < Struct.new(
      :login_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute serial_number
    #   <p>Serial number that uniquely identifies the MFA device. For this API, we only accept
    #               FIDO security key <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARNs</a>.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The friendly name identifying the user.</p>
    #   @return [String]
    class GetMFADeviceRequest < Struct.new(
      :serial_number,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The friendly name identifying the user.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>Serial number that uniquely identifies the MFA device. For this API, we only accept
    #               FIDO security key <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARNs</a>.</p>
    #   @return [String]
    # @!attribute enable_date
    #   <p>The date that a specified user's MFA device was first enabled.</p>
    #   @return [Time]
    # @!attribute certifications
    #   <p>The certifications of a specified user's MFA device. We currently provide FIPS-140-2,
    #               FIPS-140-3, and FIDO certification levels obtained from <a href="https://fidoalliance.org/metadata/"> FIDO Alliance Metadata Service
    #                   (MDS)</a>.</p>
    #   @return [Hash<String, String>]
    class GetMFADeviceResponse < Struct.new(
      :user_name,
      :serial_number,
      :enable_date,
      :certifications,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get
    #               information for. You can get a list of OIDC provider resource ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class GetOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOpenIDConnectProvider.html">GetOpenIDConnectProvider</a> request. </p>
    # @!attribute url
    #   <p>The URL that the IAM OIDC provider resource object is associated with. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>.</p>
    #   @return [String]
    # @!attribute client_id_list
    #   <p>A list of client IDs (also known as audiences) that are associated with the specified
    #               IAM OIDC provider resource object. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>.</p>
    #   @return [Array<String>]
    # @!attribute thumbprint_list
    #   <p>A list of certificate thumbprints that are associated with the specified IAM OIDC
    #               provider resource object. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>. </p>
    #   @return [Array<String>]
    # @!attribute create_date
    #   <p>The date and time when the IAM OIDC provider resource object was created in the
    #               Amazon Web Services account.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags that are attached to the specified IAM OIDC provider. The returned list of tags is sorted by tag key.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class GetOpenIDConnectProviderResponse < Struct.new(
      :url,
      :client_id_list,
      :thumbprint_list,
      :create_date,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the request generated by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html">GenerateOrganizationsAccessReport</a> operation.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute sort_key
    #   <p>The key that is used to sort the results. If you choose the namespace key, the results
    #               are returned in alphabetical order. If you choose the time key, the results are sorted
    #               numerically by the date and time.</p>
    #   @return [String]
    class GetOrganizationsAccessReportRequest < Struct.new(
      :job_id,
      :max_items,
      :marker,
      :sort_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_status
    #   <p>The status of the job.</p>
    #   @return [String]
    # @!attribute job_creation_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #                   format</a>, when the report job was created.</p>
    #   @return [Time]
    # @!attribute job_completion_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #                   format</a>, when the generated report job was completed or failed.</p>
    #            <p>This field is null if the job is still in progress, as indicated by a job status value
    #               of <code>IN_PROGRESS</code>.</p>
    #   @return [Time]
    # @!attribute number_of_services_accessible
    #   <p>The number of services that the applicable SCPs allow account principals to
    #               access.</p>
    #   @return [Integer]
    # @!attribute number_of_services_not_accessed
    #   <p>The number of services that account principals are allowed but did not attempt to
    #               access.</p>
    #   @return [Integer]
    # @!attribute access_details
    #   <p>An object that contains details about the most recent attempt to access the
    #               service.</p>
    #   @return [Array<Types::AccessDetail>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Contains information about the reason that the operation failed.</p>
    #            <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html">GetOrganizationsAccessReport</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html">GetServiceLastAccessedDetails</a>, and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html">GetServiceLastAccessedDetailsWithEntities</a> operations.</p>
    #   @return [Types::ErrorDetails]
    class GetOrganizationsAccessReportResponse < Struct.new(
      :job_status,
      :job_creation_date,
      :job_completion_date,
      :number_of_services_accessible,
      :number_of_services_not_accessed,
      :access_details,
      :is_truncated,
      :marker,
      :error_details,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the managed policy that you want information
    #               about.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      :policy_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a> request. </p>
    # @!attribute policy
    #   <p>A structure containing details about the policy.</p>
    #   @return [Types::Policy]
    class GetPolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the managed policy that you want information
    #               about.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Identifies the policy version to retrieve.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that 
    #       consists of the lowercase letter 'v' followed by one or two digits, and optionally 
    #       followed by a period '.' and a string of letters and digits.</p>
    #   @return [String]
    class GetPolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a> request.
    #     </p>
    # @!attribute policy_version
    #   <p>A structure containing details about the policy version.</p>
    #   @return [Types::PolicyVersion]
    class GetPolicyVersionResponse < Struct.new(
      :policy_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the role associated with the policy.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy document to get.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html">GetRolePolicy</a> request. </p>
    # @!attribute role_name
    #   <p>The role the policy is associated with.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #            <p>IAM stores policies in JSON format. However, resources that were created using CloudFormation
    #               templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format
    #               before submitting it to IAM.</p>
    #   @return [String]
    class GetRolePolicyResponse < Struct.new(
      :role_name,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the IAM role to get information about.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetRoleRequest < Struct.new(
      :role_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html">GetRole</a> request. </p>
    # @!attribute role
    #   <p>A structure containing details about the IAM role.</p>
    #   @return [Types::Role]
    class GetRoleResponse < Struct.new(
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get
    #               information about.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class GetSAMLProviderRequest < Struct.new(
      :saml_provider_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSAMLProvider.html">GetSAMLProvider</a> request.
    #     </p>
    # @!attribute saml_provider_uuid
    #   <p>The unique identifier assigned to the SAML provider.</p>
    #   @return [String]
    # @!attribute saml_metadata_document
    #   <p>The XML metadata document that includes information about an identity provider.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time when the SAML provider was created.</p>
    #   @return [Time]
    # @!attribute valid_until
    #   <p>The expiration date and time for the SAML provider.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags that are attached to the specified IAM SAML provider. The returned list of tags is sorted by tag key.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute assertion_encryption_mode
    #   <p>Specifies the encryption setting for the SAML provider.</p>
    #   @return [String]
    # @!attribute private_key_list
    #   <p>The private key metadata for the SAML provider.</p>
    #   @return [Array<Types::SAMLPrivateKey>]
    class GetSAMLProviderResponse < Struct.new(
      :saml_provider_uuid,
      :saml_metadata_document,
      :create_date,
      :valid_until,
      :tags,
      :assertion_encryption_mode,
      :private_key_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>Specifies the public key encoding format to use in the response. To retrieve the
    #               public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM
    #               format, use <code>PEM</code>.</p>
    #   @return [String]
    class GetSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :encoding,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSSHPublicKey.html">GetSSHPublicKey</a>
    #       request.</p>
    # @!attribute ssh_public_key
    #   <p>A structure containing details about the SSH public key.</p>
    #   @return [Types::SSHPublicKey]
    class GetSSHPublicKeyResponse < Struct.new(
      :ssh_public_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_certificate_name
    #   <p>The name of the server certificate you want to retrieve information about.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetServerCertificateRequest < Struct.new(
      :server_certificate_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServerCertificate.html">GetServerCertificate</a>
    #       request. </p>
    # @!attribute server_certificate
    #   <p>A structure containing details about the server certificate.</p>
    #   @return [Types::ServerCertificate]
    class GetServerCertificateResponse < Struct.new(
      :server_certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the request generated by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateServiceLastAccessedDetails.html">GenerateServiceLastAccessedDetails</a> operation. The <code>JobId</code>
    #               returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role
    #               within a session, or by the same user when used to call
    #                   <code>GetServiceLastAccessedDetail</code>.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    class GetServiceLastAccessedDetailsRequest < Struct.new(
      :job_id,
      :max_items,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_status
    #   <p>The status of the job.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of job. Service jobs return information about when each service was last
    #               accessed. Action jobs also include information about when tracked actions within the
    #               service were last accessed.</p>
    #   @return [String]
    # @!attribute job_creation_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #                   format</a>, when the report job was created.</p>
    #   @return [Time]
    # @!attribute services_last_accessed
    #   <p> A <code>ServiceLastAccessed</code> object that contains details about the most recent
    #               attempt to access the service.</p>
    #   @return [Array<Types::ServiceLastAccessed>]
    # @!attribute job_completion_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #                   format</a>, when the generated report job was completed or failed.</p>
    #            <p>This field is null if the job is still in progress, as indicated by a job status value
    #               of <code>IN_PROGRESS</code>.</p>
    #   @return [Time]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An object that contains details about the reason the operation failed.</p>
    #   @return [Types::ErrorDetails]
    class GetServiceLastAccessedDetailsResponse < Struct.new(
      :job_status,
      :job_type,
      :job_creation_date,
      :services_last_accessed,
      :job_completion_date,
      :is_truncated,
      :marker,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute job_id
    #   <p>The ID of the request generated by the <code>GenerateServiceLastAccessedDetails</code>
    #               operation.</p>
    #   @return [String]
    # @!attribute service_namespace
    #   <p>The service namespace for an Amazon Web Services service. Provide the service namespace to learn
    #               when the IAM entity last attempted to access the specified service.</p>
    #            <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                   <i>IAM User Guide</i>. Choose the name of the service to view
    #               details for that service. In the first paragraph, find the service prefix. For example,
    #                   <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #                   service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    class GetServiceLastAccessedDetailsWithEntitiesRequest < Struct.new(
      :job_id,
      :service_namespace,
      :max_items,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_status
    #   <p>The status of the job.</p>
    #   @return [String]
    # @!attribute job_creation_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #                   format</a>, when the report job was created.</p>
    #   @return [Time]
    # @!attribute job_completion_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #                   format</a>, when the generated report job was completed or failed.</p>
    #            <p>This field is null if the job is still in progress, as indicated by a job status value
    #               of <code>IN_PROGRESS</code>.</p>
    #   @return [Time]
    # @!attribute entity_details_list
    #   <p>An <code>EntityDetailsList</code> object that contains details about when an IAM
    #               entity (user or role) used group or policy permissions in an attempt to access the
    #               specified Amazon Web Services service.</p>
    #   @return [Array<Types::EntityDetails>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An object that contains details about the reason the operation failed.</p>
    #   @return [Types::ErrorDetails]
    class GetServiceLastAccessedDetailsWithEntitiesResponse < Struct.new(
      :job_status,
      :job_creation_date,
      :job_completion_date,
      :entity_details_list,
      :is_truncated,
      :marker,
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute deletion_task_id
    #   <p>The deletion task identifier. This identifier is returned by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html">DeleteServiceLinkedRole</a> operation in the format
    #                   <code>task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid></code>.</p>
    #   @return [String]
    class GetServiceLinkedRoleDeletionStatusRequest < Struct.new(
      :deletion_task_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the deletion.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>An object that contains details about the reason the deletion failed.</p>
    #   @return [Types::DeletionTaskFailureReasonType]
    class GetServiceLinkedRoleDeletionStatusResponse < Struct.new(
      :status,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user who the policy is associated with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy document to get.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUserPolicy.html">GetUserPolicy</a> request. </p>
    # @!attribute user_name
    #   <p>The user the policy is associated with.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #            <p>IAM stores policies in JSON format. However, resources that were created using CloudFormation
    #               templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format
    #               before submitting it to IAM.</p>
    #   @return [String]
    class GetUserPolicyResponse < Struct.new(
      :user_name,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user to get information about.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to the user making the
    #               request. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class GetUserRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html">GetUser</a> request. </p>
    # @!attribute user
    #   <p>A structure containing details about the IAM user.</p>
    #            <important>
    #               <p>Due to a service issue, password last used data does not include password use from
    #                   May 3, 2018 22:50 PDT to May 23, 2018 14:08 PDT. This affects <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html">last sign-in</a> dates shown in the IAM console and password last used
    #                   dates in the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html">IAM credential
    #                       report</a>, and returned by this operation. If users signed in during the
    #                   affected time, the password last used date that is returned is the date the user
    #                   last signed in before May 3, 2018. For users that signed in after May 23, 2018 14:08
    #                   PDT, the returned password last used date is accurate.</p>
    #               <p>You can use password last used information to identify unused credentials for
    #                   deletion. For example, you might delete users who did not sign in to Amazon Web Services in the
    #                   last 90 days. In cases like this, we recommend that you adjust your evaluation
    #                   window to include dates after May 23, 2018. Alternatively, if your users use access
    #                   keys to access Amazon Web Services programmatically you can refer to access key last used
    #                   information because it is accurate for all dates. </p>
    #            </important>
    #   @return [Types::User]
    class GetUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an IAM group entity.</p>
    #          <p>This data type is used as a response element in the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateGroup.html">CreateGroup</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroup.html">GetGroup</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroups.html">ListGroups</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute path
    #   <p>The path to the group. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The friendly name that identifies the group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p> The stable and unique string identifying the group. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) specifying the group. For more information about ARNs
    #            and how to use them in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the group was created.</p>
    #   @return [Time]
    class Group < Struct.new(
      :path,
      :group_name,
      :group_id,
      :arn,
      :create_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an IAM group, including all of the group's policies.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operation.</p>
    # @!attribute path
    #   <p>The path to the group. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The friendly name that identifies the group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The stable and unique string identifying the group. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the group was created.</p>
    #   @return [Time]
    # @!attribute group_policy_list
    #   <p>A list of the inline policies embedded in the group.</p>
    #   @return [Array<Types::PolicyDetail>]
    # @!attribute attached_managed_policies
    #   <p>A list of the managed policies attached to the group.</p>
    #   @return [Array<Types::AttachedPolicy>]
    class GroupDetail < Struct.new(
      :path,
      :group_name,
      :group_id,
      :arn,
      :create_date,
      :group_policy_list,
      :attached_managed_policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an instance profile.</p>
    #          <p>This data type is used as a response element in the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateInstanceProfile.html">CreateInstanceProfile</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetInstanceProfile.html">GetInstanceProfile</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfiles.html">ListInstanceProfiles</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfilesForRole.html">ListInstanceProfilesForRole</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute path
    #   <p> The path to the instance profile. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute instance_profile_name
    #   <p>The name identifying the instance profile.</p>
    #   @return [String]
    # @!attribute instance_profile_id
    #   <p> The stable and unique string identifying the instance profile. For more information
    #            about IDs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) specifying the instance profile. For more information
    #            about ARNs and how to use them in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date when the instance profile was created.</p>
    #   @return [Time]
    # @!attribute roles
    #   <p>The role associated with the instance profile.</p>
    #   @return [Array<Types::Role>]
    # @!attribute tags
    #   <p>A list of tags that are attached to the instance profile. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class InstanceProfile < Struct.new(
      :path,
      :instance_profile_name,
      :instance_profile_id,
      :arn,
      :create_date,
      :roles,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the authentication code was not recognized. The error
    #       message describes the specific error.</p>
    # @!attribute message
    #   @return [String]
    class InvalidAuthenticationCodeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the certificate is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCertificateException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because an invalid or out-of-range value was supplied for an
    #       input parameter.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the public key is malformed or otherwise invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPublicKeyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the type of user for the transaction was
    #       incorrect.</p>
    # @!attribute message
    #   @return [String]
    class InvalidUserTypeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the public key certificate and the private key do not
    #       match.</p>
    # @!attribute message
    #   @return [String]
    class KeyPairMismatchException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it attempted to create resources beyond the current
    #       Amazon Web Services account limits. The error message describes the limit exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListAccessKeysRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html">ListAccessKeys</a> request.
    #     </p>
    # @!attribute access_key_metadata
    #   <p>A list of objects containing metadata about the access keys.</p>
    #   @return [Array<Types::AccessKeyMetadata>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListAccessKeysResponse < Struct.new(
      :access_key_metadata,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListAccountAliasesRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccountAliases.html">ListAccountAliases</a>
    #       request. </p>
    # @!attribute account_aliases
    #   <p>A list of aliases associated with the account. Amazon Web Services supports only one alias per
    #               account.</p>
    #   @return [Array<String>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListAccountAliasesResponse < Struct.new(
      :account_aliases,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute group_name
    #   <p>The name (friendly name, not ARN) of the group to list attached policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListAttachedGroupPoliciesRequest < Struct.new(
      :group_name,
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedGroupPolicies.html">ListAttachedGroupPolicies</a> request. </p>
    # @!attribute attached_policies
    #   <p>A list of the attached policies.</p>
    #   @return [Array<Types::AttachedPolicy>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListAttachedGroupPoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) of the role to list attached policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListAttachedRolePoliciesRequest < Struct.new(
      :role_name,
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedRolePolicies.html">ListAttachedRolePolicies</a> request. </p>
    # @!attribute attached_policies
    #   <p>A list of the attached policies.</p>
    #   @return [Array<Types::AttachedPolicy>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListAttachedRolePoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) of the user to list attached policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListAttachedUserPoliciesRequest < Struct.new(
      :user_name,
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedUserPolicies.html">ListAttachedUserPolicies</a> request. </p>
    # @!attribute attached_policies
    #   <p>A list of the attached policies.</p>
    #   @return [Array<Types::AttachedPolicy>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListAttachedUserPoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
    #               versions.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute entity_filter
    #   <p>The entity type to use for filtering the results.</p>
    #            <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that
    #               are attached to the specified policy are returned. This parameter is optional. If it is
    #               not included, all attached entities (users, groups, and roles) are returned. The
    #               argument for this parameter must be one of the valid values listed below.</p>
    #   @return [String]
    # @!attribute path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all entities.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute policy_usage_filter
    #   <p>The policy usage method to use for filtering the results.</p>
    #            <p>To list only permissions policies,
    #                   set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
    #               the policies used to set permissions boundaries, set the value
    #                   to <code>PermissionsBoundary</code>.</p>
    #            <p>This parameter is optional. If it is not included, all policies are returned. </p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListEntitiesForPolicyRequest < Struct.new(
      :policy_arn,
      :entity_filter,
      :path_prefix,
      :policy_usage_filter,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a>
    #       request. </p>
    # @!attribute policy_groups
    #   <p>A list of IAM groups that the policy is attached to.</p>
    #   @return [Array<Types::PolicyGroup>]
    # @!attribute policy_users
    #   <p>A list of IAM users that the policy is attached to.</p>
    #   @return [Array<Types::PolicyUser>]
    # @!attribute policy_roles
    #   <p>A list of IAM roles that the policy is attached to.</p>
    #   @return [Array<Types::PolicyRole>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListEntitiesForPolicyResponse < Struct.new(
      :policy_groups,
      :policy_users,
      :policy_roles,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute group_name
    #   <p>The name of the group to list policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListGroupPoliciesRequest < Struct.new(
      :group_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroupPolicies.html">ListGroupPolicies</a> request.
    #     </p>
    # @!attribute policy_names
    #   <p>A list of policy names.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [Array<String>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListGroupPoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name of the user to list groups for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListGroupsForUserRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroupsForUser.html">ListGroupsForUser</a> request.
    #     </p>
    # @!attribute groups
    #   <p>A list of groups.</p>
    #   @return [Array<Types::Group>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListGroupsForUserResponse < Struct.new(
      :groups,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with
    #                   <code>/division_abc/subdivision_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all groups. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListGroupsRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroups.html">ListGroups</a> request. </p>
    # @!attribute groups
    #   <p>A list of groups.</p>
    #   @return [Array<Types::Group>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListGroupsResponse < Struct.new(
      :groups,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute instance_profile_name
    #   <p>The name of the IAM instance profile whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListInstanceProfileTagsRequest < Struct.new(
      :instance_profile_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the IAM instance profile. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListInstanceProfileTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute role_name
    #   <p>The name of the role to list instance profiles for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListInstanceProfilesForRoleRequest < Struct.new(
      :role_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfilesForRole.html">ListInstanceProfilesForRole</a> request. </p>
    # @!attribute instance_profiles
    #   <p>A list of instance profiles.</p>
    #   @return [Array<Types::InstanceProfile>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListInstanceProfilesForRoleResponse < Struct.new(
      :instance_profiles,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/application_abc/component_xyz/</code> gets all instance profiles whose path
    #               starts with <code>/application_abc/component_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all instance profiles. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListInstanceProfilesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfiles.html">ListInstanceProfiles</a>
    #       request. </p>
    # @!attribute instance_profiles
    #   <p>A list of instance profiles.</p>
    #   @return [Array<Types::InstanceProfile>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListInstanceProfilesResponse < Struct.new(
      :instance_profiles,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute serial_number
    #   <p>The unique identifier for the IAM virtual MFA device whose tags you want to see.
    #         For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListMFADeviceTagsRequest < Struct.new(
      :serial_number,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the virtual MFA device. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListMFADeviceTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name of the user whose MFA devices you want to list.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListMFADevicesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListMFADevices.html">ListMFADevices</a> request.
    #     </p>
    # @!attribute mfa_devices
    #   <p>A list of MFA devices.</p>
    #   @return [Array<Types::MFADevice>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListMFADevicesResponse < Struct.new(
      :mfa_devices,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The ARN of the OpenID Connect (OIDC) identity provider whose tags you want to
    #         see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListOpenIDConnectProviderTagsRequest < Struct.new(
      :open_id_connect_provider_arn,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the OpenID Connect (OIDC) identity
    #         provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListOpenIDConnectProviderTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    class ListOpenIDConnectProvidersRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> request. </p>
    # @!attribute open_id_connect_provider_list
    #   <p>The list of IAM OIDC provider resource objects defined in the Amazon Web Services account.</p>
    #   @return [Array<Types::OpenIDConnectProviderListEntry>]
    class ListOpenIDConnectProvidersResponse < Struct.new(
      :open_id_connect_provider_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ListOrganizationsFeaturesRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The unique identifier (ID) of an organization.</p>
    #   @return [String]
    # @!attribute enabled_features
    #   <p>Specifies the features that are currently available in your organization.</p>
    #   @return [Array<String>]
    class ListOrganizationsFeaturesResponse < Struct.new(
      :organization_id,
      :enabled_features,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the permissions policies that are attached to the specified
    #          identity (user, group, or role).</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPoliciesGrantingServiceAccess.html">ListPoliciesGrantingServiceAccess</a> operation.</p>
    # @!attribute service_namespace
    #   <p>The namespace of the service that was accessed.</p>
    #            <p>To learn the service namespace of a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #               <i>Service Authorization Reference</i>. Choose the name of the service to
    #            view details for that service. In the first paragraph, find the service prefix. For
    #            example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #            see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #               service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>The <code>PoliciesGrantingServiceAccess</code> object that contains details about the
    #            policy.</p>
    #   @return [Array<Types::PolicyGrantingServiceAccess>]
    class ListPoliciesGrantingServiceAccessEntry < Struct.new(
      :service_namespace,
      :policies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the IAM identity (user, group, or role) whose policies you want to
    #               list.</p>
    #   @return [String]
    # @!attribute service_namespaces
    #   <p>The service namespace for the Amazon Web Services services whose policies you want to list.</p>
    #            <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                   <i>IAM User Guide</i>. Choose the name of the service to view
    #               details for that service. In the first paragraph, find the service prefix. For example,
    #                   <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #                   service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<String>]
    class ListPoliciesGrantingServiceAccessRequest < Struct.new(
      :marker,
      :arn,
      :service_namespaces,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policies_granting_service_access
    #   <p>A <code>ListPoliciesGrantingServiceAccess</code> object that contains details about
    #               the permissions policies attached to the specified identity (user, group, or
    #               role).</p>
    #   @return [Array<Types::ListPoliciesGrantingServiceAccessEntry>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your results were
    #               truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #               request parameter to retrieve more items. We recommend that you check
    #                   <code>IsTruncated</code> after every call to ensure that you receive all your
    #               results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListPoliciesGrantingServiceAccessResponse < Struct.new(
      :policies_granting_service_access,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute scope
    #   <p>The scope to use for filtering the results.</p>
    #            <p>To list only Amazon Web Services managed policies, set <code>Scope</code> to <code>AWS</code>. To
    #               list only the customer managed policies in your Amazon Web Services account, set <code>Scope</code> to
    #                   <code>Local</code>.</p>
    #            <p>This parameter is optional. If it is not included, or if it is set to
    #               <code>All</code>, all policies are returned.</p>
    #   @return [String]
    # @!attribute only_attached
    #   <p>A flag to filter the results to only the attached policies.</p>
    #            <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only
    #               the policies that are attached to an IAM user, group, or role. When
    #                   <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not
    #               included, all policies are returned.</p>
    #   @return [Boolean]
    # @!attribute path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute policy_usage_filter
    #   <p>The policy usage method to use for filtering the results.</p>
    #            <p>To list only permissions policies,
    #                   set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
    #               the policies used to set permissions boundaries, set the value
    #                   to <code>PermissionsBoundary</code>.</p>
    #            <p>This parameter is optional. If it is not included, all policies are returned. </p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListPoliciesRequest < Struct.new(
      :scope,
      :only_attached,
      :path_prefix,
      :policy_usage_filter,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicies.html">ListPolicies</a> request. </p>
    # @!attribute policies
    #   <p>A list of policies.</p>
    #   @return [Array<Types::Policy>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListPoliciesResponse < Struct.new(
      :policies,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute policy_arn
    #   <p>The ARN of the IAM customer managed policy whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListPolicyTagsRequest < Struct.new(
      :policy_arn,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the IAM customer managed policy.
    #         Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListPolicyTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
    #               versions.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListPolicyVersionsRequest < Struct.new(
      :policy_arn,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html">ListPolicyVersions</a>
    #       request. </p>
    # @!attribute versions
    #   <p>A list of policy versions.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::PolicyVersion>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListPolicyVersionsResponse < Struct.new(
      :versions,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute role_name
    #   <p>The name of the role to list policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListRolePoliciesRequest < Struct.new(
      :role_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListRolePolicies.html">ListRolePolicies</a> request.
    #     </p>
    # @!attribute policy_names
    #   <p>A list of policy names.</p>
    #   @return [Array<String>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListRolePoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute role_name
    #   <p>The name of the IAM role for which you want to see the list of tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListRoleTagsRequest < Struct.new(
      :role_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the role. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListRoleTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/application_abc/component_xyz/</code> gets all roles whose path starts with
    #                   <code>/application_abc/component_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all roles. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListRolesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListRoles.html">ListRoles</a> request. </p>
    # @!attribute roles
    #   <p>A list of roles.</p>
    #   @return [Array<Types::Role>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListRolesResponse < Struct.new(
      :roles,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute saml_provider_arn
    #   <p>The ARN of the Security Assertion Markup Language (SAML) identity provider whose tags
    #         you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListSAMLProviderTagsRequest < Struct.new(
      :saml_provider_arn,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the Security Assertion Markup Language
    #         (SAML) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListSAMLProviderTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    class ListSAMLProvidersRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSAMLProviders.html">ListSAMLProviders</a> request.
    #     </p>
    # @!attribute saml_provider_list
    #   <p>The list of SAML provider resource objects defined in IAM for this Amazon Web Services
    #               account.</p>
    #   @return [Array<Types::SAMLProviderListEntry>]
    class ListSAMLProvidersResponse < Struct.new(
      :saml_provider_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user to list SSH public keys for. If none is specified, the
    #                   <code>UserName</code> field is determined implicitly based on the Amazon Web Services access key
    #               used to sign the request.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListSSHPublicKeysRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSSHPublicKeys.html">ListSSHPublicKeys</a>
    #       request.</p>
    # @!attribute ssh_public_keys
    #   <p>A list of the SSH public keys assigned to IAM user.</p>
    #   @return [Array<Types::SSHPublicKeyMetadata>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListSSHPublicKeysResponse < Struct.new(
      :ssh_public_keys,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute server_certificate_name
    #   <p>The name of the IAM server certificate whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListServerCertificateTagsRequest < Struct.new(
      :server_certificate_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the IAM server certificate.
    #         Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListServerCertificateTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute path_prefix
    #   <p> The path prefix for filtering the results. For example:
    #                   <code>/company/servercerts</code> would get all server certificates for which the
    #               path starts with <code>/company/servercerts</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all server certificates. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListServerCertificatesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServerCertificates.html">ListServerCertificates</a>
    #       request. </p>
    # @!attribute server_certificate_metadata_list
    #   <p>A list of server certificates.</p>
    #   @return [Array<Types::ServerCertificateMetadata>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListServerCertificatesResponse < Struct.new(
      :server_certificate_metadata_list,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name of the user whose service-specific credentials you want information about. If
    #               this value is not specified, then the operation assumes the user whose credentials are
    #               used to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>Filters the returned results to only those for the specified Amazon Web Services service. If not
    #               specified, then Amazon Web Services returns service-specific credentials for all services.</p>
    #   @return [String]
    # @!attribute all_users
    #   <p>A flag indicating whether to list service specific credentials for all users. This
    #               parameter cannot be specified together with UserName. When true, returns all credentials
    #               associated with the specified service.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after you receive a response
    #               indicating that the results are truncated. Set it to the value of the Marker from the
    #               response that you received to indicate where the next call should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the maximum number of items you want
    #               in the response. If additional items exist beyond the maximum you specify, the
    #               IsTruncated response element is true.</p>
    #   @return [Integer]
    class ListServiceSpecificCredentialsRequest < Struct.new(
      :user_name,
      :service_name,
      :all_users,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_specific_credentials
    #   <p>A list of structures that each contain details about a service-specific
    #               credential.</p>
    #   @return [Array<Types::ServiceSpecificCredentialMetadata>]
    # @!attribute marker
    #   <p>When IsTruncated is true, this element is present and contains the value to use for
    #               the Marker parameter in a subsequent pagination request.</p>
    #   @return [String]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your results were
    #               truncated, you can make a subsequent pagination request using the Marker request
    #               parameter to retrieve more items.</p>
    #   @return [Boolean]
    class ListServiceSpecificCredentialsResponse < Struct.new(
      :service_specific_credentials,
      :marker,
      :is_truncated,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name of the IAM user whose signing certificates you want to examine.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListSigningCertificatesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSigningCertificates.html">ListSigningCertificates</a> request. </p>
    # @!attribute certificates
    #   <p>A list of the user's signing certificate information.</p>
    #   @return [Array<Types::SigningCertificate>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListSigningCertificatesResponse < Struct.new(
      :certificates,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name of the user to list policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListUserPoliciesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUserPolicies.html">ListUserPolicies</a> request.
    #     </p>
    # @!attribute policy_names
    #   <p>A list of policy names.</p>
    #   @return [Array<String>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListUserPoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute user_name
    #   <p>The name of the IAM user whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListUserTagsRequest < Struct.new(
      :user_name,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are currently attached to the user. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListUserTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute path_prefix
    #   <p> The path prefix for filtering the results. For example:
    #                   <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose
    #               path starts with <code>/division_abc/subdivision_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all user names. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListUsersRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUsers.html">ListUsers</a> request. </p>
    # @!attribute users
    #   <p>A list of users.</p>
    #   @return [Array<Types::User>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class ListUsersResponse < Struct.new(
      :users,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute assignment_status
    #   <p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list.
    #               If you do not specify an <code>AssignmentStatus</code>, the operation defaults to
    #                   <code>Any</code>, which lists both assigned and unassigned virtual MFA
    #               devices.,</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    class ListVirtualMFADevicesRequest < Struct.new(
      :assignment_status,
      :marker,
      :max_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListVirtualMFADevices.html">ListVirtualMFADevices</a>
    #       request. </p>
    # @!attribute virtual_mfa_devices
    #   <p> The list of virtual MFA devices in the current account that match the
    #                   <code>AssignmentStatus</code> value that was passed in the request.</p>
    #   @return [Array<Types::VirtualMFADevice>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and
    #               contains the value to use for the <code>Marker</code> parameter in a subsequent
    #               pagination request.</p>
    #   @return [String]
    class ListVirtualMFADevicesResponse < Struct.new(
      :virtual_mfa_devices,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # <p>Contains the user name and password create date for a user.</p>
    #          <p> This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateLoginProfile.html">CreateLoginProfile</a> and
    #             <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetLoginProfile.html">GetLoginProfile</a> operations. </p>
    # @!attribute user_name
    #   <p>The name of the user, which can be used for signing in to the Amazon Web Services Management Console.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date when the password for the user was created.</p>
    #   @return [Time]
    # @!attribute password_reset_required
    #   <p>Specifies whether the user is required to set a new password on next sign-in.</p>
    #   @return [Boolean]
    class LoginProfile < Struct.new(
      :user_name,
      :create_date,
      :password_reset_required,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:password_reset_required] = false unless options.key?(:password_reset_required)
        super
      end
    end

    # <p>Contains information about an MFA device.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListMFADevices.html">ListMFADevices</a>
    #          operation.</p>
    # @!attribute user_name
    #   <p>The user with whom the MFA device is associated.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the
    #            serial number is the device ARN.</p>
    #   @return [String]
    # @!attribute enable_date
    #   <p>The date when the MFA device was enabled for the user.</p>
    #   @return [Time]
    class MFADevice < Struct.new(
      :user_name,
      :serial_number,
      :enable_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the certificate was malformed or expired. The error
    #       message describes the specific error.</p>
    # @!attribute message
    #   @return [String]
    class MalformedCertificateException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the policy document was malformed. The error message
    #       describes the specific error.</p>
    # @!attribute message
    #   @return [String]
    class MalformedPolicyDocumentException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a managed policy, including the policy's ARN, versions, and
    #          the number of principal entities (users, groups, and roles) that the policy is attached
    #          to.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operation.</p>
    #          <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute policy_name
    #   <p>The friendly name (not ARN) identifying the policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The stable and unique string identifying the policy.</p>
    #            <p>For more information about IDs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute path
    #   <p>The path to the policy.</p>
    #            <p>For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute default_version_id
    #   <p>The identifier for the version of the policy that is set as the default (operative)
    #            version.</p>
    #            <p>For more information about policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #               policies</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute attachment_count
    #   <p>The number of principal entities (users, groups, and roles) that the policy is attached
    #            to.</p>
    #   @return [Integer]
    # @!attribute permissions_boundary_usage_count
    #   <p>The number of entities (users and roles) for which the policy is used as the permissions
    #            boundary. </p>
    #            <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #               identities </a> in the <i>IAM User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute is_attachable
    #   <p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A friendly description of the policy.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the policy was created.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the policy was last updated.</p>
    #            <p>When a policy has only one version, this field contains the date and time when the
    #            policy was created. When a policy has more than one version, this field contains the date
    #            and time when the most recent policy version was created.</p>
    #   @return [Time]
    # @!attribute policy_version_list
    #   <p>A list containing information about the versions of the policy.</p>
    #   @return [Array<Types::PolicyVersion>]
    class ManagedPolicyDetail < Struct.new(
      :policy_name,
      :policy_id,
      :arn,
      :path,
      :default_version_id,
      :attachment_count,
      :permissions_boundary_usage_count,
      :is_attachable,
      :description,
      :create_date,
      :update_date,
      :policy_version_list,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_attachable] = false unless options.key?(:is_attachable)
        super
      end
    end

    # <p>The request was rejected because it referenced a resource entity that does not exist. The
    #       error message describes the resource.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchEntityException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    class OpenIDConnectProviderListEntry < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request failed because IAM cannot connect to the OpenID Connect identity provider
    #       URL.</p>
    # @!attribute message
    #   @return [String]
    class OpenIdIdpCommunicationErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because no organization is associated with your account.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because your organization does not have All features enabled. For
    #       more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set">Available feature sets</a> in the <i>Organizations User
    #       Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationNotInAllFeaturesModeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the effect that Organizations has on a policy simulation.</p>
    # @!attribute allowed_by_organizations
    #   <p>Specifies whether the simulated operation is allowed by the Organizations service control
    #            policies that impact the simulated user's account.</p>
    #   @return [Boolean]
    class OrganizationsDecisionDetail < Struct.new(
      :allowed_by_organizations,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:allowed_by_organizations] = false unless options.key?(:allowed_by_organizations)
        super
      end
    end

    # <p>Contains information about the account password policy.</p>
    #          <p> This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountPasswordPolicy.html">GetAccountPasswordPolicy</a> operation. </p>
    # @!attribute minimum_password_length
    #   <p>Minimum length to require for IAM user passwords.</p>
    #   @return [Integer]
    # @!attribute require_symbols
    #   <p>Specifies whether IAM user passwords must contain at least one of the following
    #            symbols:</p>
    #            <p>! @ # $ % ^ & * ( ) _ + - = [ ] { } | '</p>
    #   @return [Boolean]
    # @!attribute require_numbers
    #   <p>Specifies whether IAM user passwords must contain at least one numeric character (0 to
    #            9).</p>
    #   @return [Boolean]
    # @!attribute require_uppercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one uppercase character (A
    #            to Z).</p>
    #   @return [Boolean]
    # @!attribute require_lowercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one lowercase character (a
    #            to z).</p>
    #   @return [Boolean]
    # @!attribute allow_users_to_change_password
    #   <p>Specifies whether IAM users are allowed to change their own password. Gives IAM
    #            users permissions to <code>iam:ChangePassword</code> for only their user and to the
    #               <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a
    #            permissions policy to each user, rather the permissions are applied at the account-level
    #            for all users by IAM.</p>
    #   @return [Boolean]
    # @!attribute expire_passwords
    #   <p>Indicates whether passwords in the account expire. Returns true if
    #               <code>MaxPasswordAge</code> contains a value greater than 0. Returns false if
    #            MaxPasswordAge is 0 or not present.</p>
    #   @return [Boolean]
    # @!attribute max_password_age
    #   <p>The number of days that an IAM user password is valid.</p>
    #   @return [Integer]
    # @!attribute password_reuse_prevention
    #   <p>Specifies the number of previous passwords that IAM users are prevented from
    #            reusing.</p>
    #   @return [Integer]
    # @!attribute hard_expiry
    #   <p>Specifies whether IAM users are prevented from setting a new password via the
    #            Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until
    #            an administrator resets the password. IAM users with <code>iam:ChangePassword</code>
    #            permission and active access keys can reset their own expired console password using the
    #            CLI or API.</p>
    #   @return [Boolean]
    class PasswordPolicy < Struct.new(
      :minimum_password_length,
      :require_symbols,
      :require_numbers,
      :require_uppercase_characters,
      :require_lowercase_characters,
      :allow_users_to_change_password,
      :expire_passwords,
      :max_password_age,
      :password_reuse_prevention,
      :hard_expiry,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:require_symbols] = false unless options.key?(:require_symbols)
        options[:require_numbers] = false unless options.key?(:require_numbers)
        options[:require_uppercase_characters] = false unless options.key?(:require_uppercase_characters)
        options[:require_lowercase_characters] = false unless options.key?(:require_lowercase_characters)
        options[:allow_users_to_change_password] = false unless options.key?(:allow_users_to_change_password)
        options[:expire_passwords] = false unless options.key?(:expire_passwords)
        super
      end
    end

    # <p>The request was rejected because the provided password did not meet the requirements
    #       imposed by the account password policy.</p>
    # @!attribute message
    #   @return [String]
    class PasswordPolicyViolationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PermissionsBoundaryAttachmentType
      Policy = 'PermissionsBoundaryPolicy'
    end

    # <p>Contains information about the effect that a permissions boundary has on a policy
    #          simulation when the boundary is applied to an IAM entity.</p>
    # @!attribute allowed_by_permissions_boundary
    #   <p>Specifies whether an action is allowed by a permissions boundary that is applied to an
    #            IAM entity (user or role). A value of <code>true</code> means that the permissions
    #            boundary does not deny the action. This means that the policy includes an
    #               <code>Allow</code> statement that matches the request. In this case, if an
    #            identity-based policy also allows the action, the request is allowed. A value of
    #               <code>false</code> means that either the requested action is not allowed (implicitly
    #            denied) or that the action is explicitly denied by the permissions boundary. In both of
    #            these cases, the action is not allowed, regardless of the identity-based policy.</p>
    #   @return [Boolean]
    class PermissionsBoundaryDecisionDetail < Struct.new(
      :allowed_by_permissions_boundary,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:allowed_by_permissions_boundary] = false unless options.key?(:allowed_by_permissions_boundary)
        super
      end
    end

    # <p>Contains information about a managed policy.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html">CreatePolicy</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a>,
    #          and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicies.html">ListPolicies</a> operations. </p>
    #          <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute policy_name
    #   <p>The friendly name (not ARN) identifying the policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The stable and unique string identifying the policy.</p>
    #            <p>For more information about IDs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute path
    #   <p>The path to the policy.</p>
    #            <p>For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute default_version_id
    #   <p>The identifier for the version of the policy that is set as the default version.</p>
    #   @return [String]
    # @!attribute attachment_count
    #   <p>The number of entities (users, groups, and roles) that the policy is attached to.</p>
    #   @return [Integer]
    # @!attribute permissions_boundary_usage_count
    #   <p>The number of entities (users and roles) for which the policy is used to set the
    #            permissions boundary. </p>
    #            <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #               identities </a> in the <i>IAM User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute is_attachable
    #   <p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A friendly description of the policy.</p>
    #            <p>This element is included in the response to the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a> operation. It is not
    #            included in the response to the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicies.html">ListPolicies</a> operation.
    #         </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the policy was created.</p>
    #   @return [Time]
    # @!attribute update_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the policy was last updated.</p>
    #            <p>When a policy has only one version, this field contains the date and time when the
    #            policy was created. When a policy has more than one version, this field contains the date
    #            and time when the most recent policy version was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags that are attached to the instance profile. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class Policy < Struct.new(
      :policy_name,
      :policy_id,
      :arn,
      :path,
      :default_version_id,
      :attachment_count,
      :permissions_boundary_usage_count,
      :is_attachable,
      :description,
      :create_date,
      :update_date,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_attachable] = false unless options.key?(:is_attachable)
        super
      end
    end

    # <p>Contains information about an IAM policy, including the policy document.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operation.</p>
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #   @return [String]
    class PolicyDetail < Struct.new(
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PolicyEvaluationDecisionType
      ALLOWED = 'allowed'
      EXPLICIT_DENY = 'explicitDeny'
      IMPLICIT_DENY = 'implicitDeny'
    end

    # <p>The request failed because a provided policy could not be successfully evaluated. An
    #       additional detailed message indicates the source of the failure.</p>
    # @!attribute message
    #   @return [String]
    class PolicyEvaluationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the permissions policies that are attached to the specified
    #          identity (user, group, or role).</p>
    #          <p>This data type is an element of the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPoliciesGrantingServiceAccessEntry.html">ListPoliciesGrantingServiceAccessEntry</a> object.</p>
    # @!attribute policy_name
    #   <p>The policy name.</p>
    #   @return [String]
    # @!attribute policy_type
    #   <p>The policy type. For more information about these policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html">Managed
    #               policies and inline policies</a> in the
    #            <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of entity (user or role) that used the policy to access the service to which
    #            the inline policy is attached.</p>
    #            <p>This field is null for managed policies. For more information about these policy types,
    #            see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html">Managed policies and inline policies</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The name of the entity (user or role) to which the inline policy is attached.</p>
    #            <p>This field is null for managed policies. For more information about these policy types,
    #            see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html">Managed policies and inline policies</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    class PolicyGrantingServiceAccess < Struct.new(
      :policy_name,
      :policy_type,
      :policy_arn,
      :entity_type,
      :entity_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a group that a managed policy is attached to.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a> operation. </p>
    #          <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute group_name
    #   <p>The name (friendly name, not ARN) identifying the group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The stable and unique string identifying the group. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class PolicyGroup < Struct.new(
      :group_name,
      :group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request failed because Amazon Web Services service role policies can only be attached to the
    #       service-linked role for that service.</p>
    # @!attribute message
    #   @return [String]
    class PolicyNotAttachableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a role that a managed policy is attached to.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a> operation. </p>
    #          <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) identifying the role.</p>
    #   @return [String]
    # @!attribute role_id
    #   <p>The stable and unique string identifying the role. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class PolicyRole < Struct.new(
      :role_name,
      :role_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PolicySourceType
      USER = 'user'
      GROUP = 'group'
      ROLE = 'role'
      AWS_MANAGED = 'aws-managed'
      USER_MANAGED = 'user-managed'
      RESOURCE = 'resource'
      NONE = 'none'
    end

    # <p>The policy usage type that indicates whether the policy is used as a permissions policy
    #          or as the permissions boundary for an entity.</p>
    #          <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #             identities </a> in the <i>IAM User Guide</i>.</p>
    module PolicyUsageType
      PermissionsPolicy = 'PermissionsPolicy'
      PermissionsBoundary = 'PermissionsBoundary'
    end

    # <p>Contains information about a user that a managed policy is attached to.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a> operation. </p>
    #          <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) identifying the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The stable and unique string identifying the user. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class PolicyUser < Struct.new(
      :user_name,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a version of a managed policy.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicyVersion.html">CreatePolicyVersion</a>,
    #             <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html">ListPolicyVersions</a>,
    #          and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operations. </p>
    #          <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #             policies</a> in the <i>IAM User Guide</i>. </p>
    # @!attribute document
    #   <p>The policy document.</p>
    #            <p>The policy document is returned in the response to the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a> and
    #               <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operations. It is not returned in the response
    #            to the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicyVersion.html">CreatePolicyVersion</a>
    #            or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html">ListPolicyVersions</a> operations. </p>
    #            <p>The policy document returned in this structure is URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding
    #            method to convert the policy back to plain JSON text. For example, if you use Java, you can
    #            use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #            the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The identifier for the policy version.</p>
    #            <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a
    #            policy is created, the first policy version is <code>v1</code>. </p>
    #   @return [String]
    # @!attribute is_default_version
    #   <p>Specifies whether the policy version is set as the policy's default version.</p>
    #   @return [Boolean]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the policy version was created.</p>
    #   @return [Time]
    class PolicyVersion < Struct.new(
      :document,
      :version_id,
      :is_default_version,
      :create_date,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_version] = false unless options.key?(:is_default_version)
        super
      end
    end

    # <p>Contains the row and column of a location of a <code>Statement</code> element in a
    #          policy document.</p>
    #          <p>This data type is used as a member of the <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_Statement.html">Statement</a>
    #             </code> type.</p>
    # @!attribute line
    #   <p>The line containing the specified position in the document.</p>
    #   @return [Integer]
    # @!attribute column
    #   <p>The column in the line containing the specified position in the document.</p>
    #   @return [Integer]
    class Position < Struct.new(
      :line,
      :column,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:line] = 0 unless options.key?(:line)
        options[:column] = 0 unless options.key?(:column)
        super
      end
    end

    # @!attribute group_name
    #   <p>The name of the group to associate the policy with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy document.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation templates
    #               formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always
    #               converts a YAML policy to JSON format before submitting it to IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PutGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name (friendly name, not ARN) of the IAM role for which you want to set the
    #               permissions boundary.</p>
    #   @return [String]
    # @!attribute permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               role.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class PutRolePermissionsBoundaryRequest < Struct.new(
      :role_name,
      :permissions_boundary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the role to associate the policy with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy document.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PutRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name (friendly name, not ARN) of the IAM user for which you want to set the
    #               permissions boundary.</p>
    #   @return [String]
    # @!attribute permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               user.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class PutUserPermissionsBoundaryRequest < Struct.new(
      :user_name,
      :permissions_boundary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user to associate the policy with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy document.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy document.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PutUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the
    #               client ID from. You can get a list of OIDC provider ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client ID (also known as audience) to remove from the IAM OIDC provider
    #               resource. For more information about client IDs, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>.</p>
    #   @return [String]
    class RemoveClientIDFromOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :client_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_name
    #   <p>The name of the instance profile to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the role to remove.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class RemoveRoleFromInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :role_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user to remove.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class RemoveUserFromGroupRequest < Struct.new(
      :group_name,
      :user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReportFormatType
      text_csv = 'text/csv'
    end

    # <p>The request failed because the maximum number of concurrent requests for this account are
    #       already running.</p>
    # @!attribute message
    #   @return [String]
    class ReportGenerationLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReportStateType
      STARTED = 'STARTED'
      INPROGRESS = 'INPROGRESS'
      COMPLETE = 'COMPLETE'
    end

    # @!attribute user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If this
    #               value is not specified, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    class ResetServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute service_specific_credential
    #   <p>A structure with details about the updated service-specific credential, including the
    #               new password.</p>
    #            <important>
    #               <p>This is the <b>only</b> time that you can access the
    #                   password. You cannot recover the password later, but you can reset it again.</p>
    #            </important>
    #   @return [Types::ServiceSpecificCredential]
    class ResetServiceSpecificCredentialResponse < Struct.new(
      :service_specific_credential,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the result of the simulation of a single API operation call on a single
    #          resource.</p>
    #          <p>This data type is used by a member of the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_EvaluationResult.html">EvaluationResult</a> data
    #          type.</p>
    # @!attribute eval_resource_name
    #   <p>The name of the simulated resource, in Amazon Resource Name (ARN) format.</p>
    #   @return [String]
    # @!attribute eval_resource_decision
    #   <p>The result of the simulation of the simulated API operation on the resource specified in
    #               <code>EvalResourceName</code>.</p>
    #   @return [String]
    # @!attribute matched_statements
    #   <p>A list of the statements in the input policies that determine the result for this part
    #            of the simulation. Remember that even if multiple statements allow the operation on the
    #            resource, if <i>any</i> statement denies that operation, then the explicit
    #            deny overrides any allow. In addition, the deny statement is the only entry included in the
    #            result.</p>
    #   @return [Array<Types::Statement>]
    # @!attribute missing_context_values
    #   <p>A list of context keys that are required by the included input policies but that were
    #            not provided by one of the input parameters. This list is used when a list of ARNs is
    #            included in the <code>ResourceArns</code> parameter instead of "*". If you do not specify
    #            individual resources, by setting <code>ResourceArns</code> to "*" or by not including the
    #               <code>ResourceArns</code> parameter, then any missing context values are instead
    #            included under the <code>EvaluationResults</code> section. To discover the context keys
    #            used by a set of policies, you can call <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a>.</p>
    #   @return [Array<String>]
    # @!attribute eval_decision_details
    #   <p>Additional details about the results of the evaluation decision on a single resource.
    #            This parameter is returned only for cross-account simulations. This parameter explains how
    #            each policy type contributes to the resource-specific evaluation decision.</p>
    #   @return [Hash<String, String>]
    # @!attribute permissions_boundary_decision_detail
    #   <p>Contains information about the effect that a permissions boundary has on a policy
    #            simulation when that boundary is applied to an IAM entity.</p>
    #   @return [Types::PermissionsBoundaryDecisionDetail]
    class ResourceSpecificResult < Struct.new(
      :eval_resource_name,
      :eval_resource_decision,
      :matched_statements,
      :missing_context_values,
      :eval_decision_details,
      :permissions_boundary_decision_detail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose MFA device you want to resynchronize.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>Serial number that uniquely identifies the MFA device.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute authentication_code1
    #   <p>An authentication code emitted by the device.</p>
    #            <p>The format for this parameter is a sequence of six digits.</p>
    #   @return [String]
    # @!attribute authentication_code2
    #   <p>A subsequent authentication code emitted by the device.</p>
    #            <p>The format for this parameter is a sequence of six digits.</p>
    #   @return [String]
    class ResyncMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      :authentication_code1,
      :authentication_code2,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an IAM role. This structure is returned as a response
    #          element in several API operations that interact with roles.</p>
    # @!attribute path
    #   <p> The path to the role. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The friendly name that identifies the role.</p>
    #   @return [String]
    # @!attribute role_id
    #   <p> The stable and unique string identifying the role. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and
    #            how to use them in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i> guide. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the role was created.</p>
    #   @return [Time]
    # @!attribute assume_role_policy_document
    #   <p>The policy that grants an entity permission to assume the role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the role that you provide.</p>
    #   @return [String]
    # @!attribute max_session_duration
    #   <p>The maximum session duration (in seconds) for the specified role. Anyone who uses the
    #            CLI, or API to assume the role can specify the duration using the optional
    #               <code>DurationSeconds</code> API parameter or <code>duration-seconds</code> CLI
    #            parameter.</p>
    #   @return [Integer]
    # @!attribute permissions_boundary
    #   <p>The ARN of the policy used to set the permissions boundary for the role.</p>
    #            <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #               identities </a> in the <i>IAM User Guide</i>.</p>
    #   @return [Types::AttachedPermissionsBoundary]
    # @!attribute tags
    #   <p>A list of tags that are attached to the role. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute role_last_used
    #   <p>Contains information about the last time that an IAM role was used. This includes the
    #            date and time and the Region in which the role was last used. Activity is only reported for
    #            the trailing 400 days. This period can be shorter if your Region began supporting these
    #            features within the last year. The role might have been used more than 400 days ago. For
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions where data is tracked</a> in the <i>IAM user
    #            Guide</i>.</p>
    #   @return [Types::RoleLastUsed]
    class Role < Struct.new(
      :path,
      :role_name,
      :role_id,
      :arn,
      :create_date,
      :assume_role_policy_document,
      :description,
      :max_session_duration,
      :permissions_boundary,
      :tags,
      :role_last_used,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an IAM role, including all of the role's policies.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operation.</p>
    # @!attribute path
    #   <p>The path to the role. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The friendly name that identifies the role.</p>
    #   @return [String]
    # @!attribute role_id
    #   <p>The stable and unique string identifying the role. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the role was created.</p>
    #   @return [Time]
    # @!attribute assume_role_policy_document
    #   <p>The trust policy that grants permission to assume the role.</p>
    #   @return [String]
    # @!attribute instance_profile_list
    #   <p>A list of instance profiles that contain this role.</p>
    #   @return [Array<Types::InstanceProfile>]
    # @!attribute role_policy_list
    #   <p>A list of inline policies embedded in the role. These policies are the role's access
    #            (permissions) policies.</p>
    #   @return [Array<Types::PolicyDetail>]
    # @!attribute attached_managed_policies
    #   <p>A list of managed policies attached to the role. These policies are the role's access
    #            (permissions) policies.</p>
    #   @return [Array<Types::AttachedPolicy>]
    # @!attribute permissions_boundary
    #   <p>The ARN of the policy used to set the permissions boundary for the role.</p>
    #            <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #               identities </a> in the <i>IAM User Guide</i>.</p>
    #   @return [Types::AttachedPermissionsBoundary]
    # @!attribute tags
    #   <p>A list of tags that are attached to the role. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute role_last_used
    #   <p>Contains information about the last time that an IAM role was used. This includes the
    #            date and time and the Region in which the role was last used. Activity is only reported for
    #            the trailing 400 days. This period can be shorter if your Region began supporting these
    #            features within the last year. The role might have been used more than 400 days ago. For
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions where data is tracked</a> in the
    #            <i>IAM User Guide</i>.</p>
    #   @return [Types::RoleLastUsed]
    class RoleDetail < Struct.new(
      :path,
      :role_name,
      :role_id,
      :arn,
      :create_date,
      :assume_role_policy_document,
      :instance_profile_list,
      :role_policy_list,
      :attached_managed_policies,
      :permissions_boundary,
      :tags,
      :role_last_used,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the last time that an IAM role was used. This includes the
    #          date and time and the Region in which the role was last used. Activity is only reported for
    #          the trailing 400 days. This period can be shorter if your Region began supporting these
    #          features within the last year. The role might have been used more than 400 days ago. For
    #          more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions where data is tracked</a> in the <i>IAM user
    #          Guide</i>.</p>
    #          <p>This data type is returned as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html">GetRole</a> and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operations.</p>
    # @!attribute last_used_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a> that the role was last used.</p>
    #            <p>This field is null if the role has not been used within the IAM tracking period. For
    #            more information about the tracking period, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions where data is tracked</a> in the <i>IAM User Guide</i>.
    #         </p>
    #   @return [Time]
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region in which the role was last used.</p>
    #   @return [String]
    class RoleLastUsed < Struct.new(
      :last_used_date,
      :region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An object that contains details about how a service-linked role is used, if that
    #          information is returned by the service.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLinkedRoleDeletionStatus.html">GetServiceLinkedRoleDeletionStatus</a> operation.</p>
    # @!attribute region
    #   <p>The name of the Region where the service-linked role is being used.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The name of the resource that is using the service-linked role.</p>
    #   @return [Array<String>]
    class RoleUsageType < Struct.new(
      :region,
      :resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the private keys for the SAML provider.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSAMLProvider.html">GetSAMLProvider</a>
    #          operation.</p>
    # @!attribute key_id
    #   <p>The unique identifier for the SAML private key.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #            </a> format, when the private key was uploaded.</p>
    #   @return [Time]
    class SAMLPrivateKey < Struct.new(
      :key_id,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the list of SAML providers for this account.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider.</p>
    #   @return [String]
    # @!attribute valid_until
    #   <p>The expiration date and time for the SAML provider.</p>
    #   @return [Time]
    # @!attribute create_date
    #   <p>The date and time when the SAML provider was created.</p>
    #   @return [Time]
    class SAMLProviderListEntry < Struct.new(
      :arn,
      :valid_until,
      :create_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an SSH public key.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSSHPublicKey.html">GetSSHPublicKey</a> and
    #             <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSSHPublicKey.html">UploadSSHPublicKey</a> operations. </p>
    # @!attribute user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #   @return [String]
    # @!attribute fingerprint
    #   <p>The MD5 message digest of the SSH public key.</p>
    #   @return [String]
    # @!attribute ssh_public_key_body
    #   <p>The SSH public key.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the SSH public key. <code>Active</code> means that the key can be used for
    #            authentication with an CodeCommit repository. <code>Inactive</code> means that the key cannot be
    #            used.</p>
    #   @return [String]
    # @!attribute upload_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the SSH public key was uploaded.</p>
    #   @return [Time]
    class SSHPublicKey < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :fingerprint,
      :ssh_public_key_body,
      :status,
      :upload_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an SSH public key, without the key's body or
    #          fingerprint.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSSHPublicKeys.html">ListSSHPublicKeys</a>
    #          operation.</p>
    # @!attribute user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the SSH public key. <code>Active</code> means that the key can be used for
    #            authentication with an CodeCommit repository. <code>Inactive</code> means that the key cannot be
    #            used.</p>
    #   @return [String]
    # @!attribute upload_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the SSH public key was uploaded.</p>
    #   @return [Time]
    class SSHPublicKeyMetadata < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :status,
      :upload_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a server certificate.</p>
    #          <p> This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServerCertificate.html">GetServerCertificate</a>
    #          operation. </p>
    # @!attribute server_certificate_metadata
    #   <p>The meta information of the server certificate, such as its name, path, ID, and
    #            ARN.</p>
    #   @return [Types::ServerCertificateMetadata]
    # @!attribute certificate_body
    #   <p>The contents of the public key certificate.</p>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>The contents of the public key certificate chain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that are attached to the server certificate. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class ServerCertificate < Struct.new(
      :server_certificate_metadata,
      :certificate_body,
      :certificate_chain,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a server certificate without its certificate body,
    #          certificate chain, and private key.</p>
    #          <p> This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadServerCertificate.html">UploadServerCertificate</a> and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServerCertificates.html">ListServerCertificates</a> operations. </p>
    # @!attribute path
    #   <p> The path to the server certificate. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute server_certificate_name
    #   <p>The name that identifies the server certificate.</p>
    #   @return [String]
    # @!attribute server_certificate_id
    #   <p> The stable and unique string identifying the server certificate. For more information
    #            about IDs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) specifying the server certificate. For more information
    #            about ARNs and how to use them in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute upload_date
    #   <p>The date when the server certificate was uploaded.</p>
    #   @return [Time]
    # @!attribute expiration
    #   <p>The date on which the certificate is set to expire.</p>
    #   @return [Time]
    class ServerCertificateMetadata < Struct.new(
      :path,
      :server_certificate_name,
      :server_certificate_id,
      :arn,
      :upload_date,
      :expiration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because trusted access is not enabled for IAM in Organizations. For details, see IAM and Organizations in the <i>Organizations User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceAccessNotEnabledException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #       failure.</p>
    # @!attribute message
    #   @return [String]
    class ServiceFailureException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the most recent attempt to access the service.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html">GetServiceLastAccessedDetails</a> operation.</p>
    # @!attribute service_name
    #   <p>The name of the service in which access was attempted.</p>
    #   @return [String]
    # @!attribute last_authenticated
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when an authenticated entity most recently attempted to access the
    #            service. Amazon Web Services does not report unauthenticated requests.</p>
    #            <p>This field is null if no IAM entities attempted to access the service within the
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [Time]
    # @!attribute service_namespace
    #   <p>The namespace of the service in which access was attempted.</p>
    #            <p>To learn the service namespace of a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #               <i>Service Authorization Reference</i>. Choose the name of the service to
    #            view details for that service. In the first paragraph, find the service prefix. For
    #            example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #            see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #               Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute last_authenticated_entity
    #   <p>The ARN of the authenticated entity (user or role) that last attempted to access the
    #            service. Amazon Web Services does not report unauthenticated requests.</p>
    #            <p>This field is null if no IAM entities attempted to access the service within the
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [String]
    # @!attribute last_authenticated_region
    #   <p>The Region from which the authenticated entity (user or role) last attempted to access
    #            the service. Amazon Web Services does not report unauthenticated requests.</p>
    #            <p>This field is null if no IAM entities attempted to access the service within the
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [String]
    # @!attribute total_authenticated_entities
    #   <p>The total number of authenticated principals (root user, IAM users, or IAM roles) that
    #            have attempted to access the service.</p>
    #            <p>This field is null if no principals attempted to access the service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [Integer]
    # @!attribute tracked_actions_last_accessed
    #   <p>An object that contains details about the most recent attempt to access a tracked action
    #            within the service.</p>
    #            <p>This field is null if there no tracked actions or if the principal did not use the
    #            tracked actions within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>. This field is also null if the report was generated at the
    #            service level and not the action level. For more information, see the
    #               <code>Granularity</code> field in <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateServiceLastAccessedDetails.html">GenerateServiceLastAccessedDetails</a>.</p>
    #   @return [Array<Types::TrackedActionLastAccessed>]
    class ServiceLastAccessed < Struct.new(
      :service_name,
      :last_authenticated,
      :service_namespace,
      :last_authenticated_entity,
      :last_authenticated_region,
      :total_authenticated_entities,
      :tracked_actions_last_accessed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified service does not support service-specific credentials.</p>
    # @!attribute message
    #   @return [String]
    class ServiceNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the details of a service-specific credential.</p>
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the service-specific credential were created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The date and time when the service specific credential expires. This field is only
    #            present for Bedrock API keys that were created with an expiration period.</p>
    #   @return [Time]
    # @!attribute service_name
    #   <p>The name of the service associated with the service-specific credential.</p>
    #   @return [String]
    # @!attribute service_user_name
    #   <p>The generated user name for the service-specific credential. This value is generated by
    #            combining the IAM user's name combined with the ID number of the Amazon Web Services account, as in
    #               <code>jane-at-123456789012</code>, for example. This value cannot be configured by the
    #            user.</p>
    #   @return [String]
    # @!attribute service_password
    #   <p>The generated password for the service-specific credential.</p>
    #   @return [String]
    # @!attribute service_credential_alias
    #   <p>For Bedrock API keys, this is the public portion of the credential that includes the IAM
    #            user name and a suffix containing version and creation information.</p>
    #   @return [String]
    # @!attribute service_credential_secret
    #   <p>For Bedrock API keys, this is the secret portion of the credential that should be used
    #            to authenticate API calls. This value is returned only when the credential is
    #            created.</p>
    #   @return [String]
    # @!attribute service_specific_credential_id
    #   <p>The unique identifier for the service-specific credential.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the IAM user associated with the service-specific credential.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service-specific credential. <code>Active</code> means that the key is
    #            valid for API calls, while <code>Inactive</code> means it is not.</p>
    #   @return [String]
    class ServiceSpecificCredential < Struct.new(
      :create_date,
      :expiration_date,
      :service_name,
      :service_user_name,
      :service_password,
      :service_credential_alias,
      :service_credential_secret,
      :service_specific_credential_id,
      :user_name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:service_user_name] = '' unless options.key?(:service_user_name)
        options[:service_password] = '' unless options.key?(:service_password)
        super
      end
    end

    # <p>Contains additional details about a service-specific credential.</p>
    # @!attribute user_name
    #   <p>The name of the IAM user associated with the service-specific credential.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service-specific credential. <code>Active</code> means that the key is
    #            valid for API calls, while <code>Inactive</code> means it is not.</p>
    #   @return [String]
    # @!attribute service_user_name
    #   <p>The generated user name for the service-specific credential.</p>
    #   @return [String]
    # @!attribute service_credential_alias
    #   <p>For Bedrock API keys, this is the public portion of the credential that includes the IAM
    #            user name and a suffix containing version and creation information.</p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the service-specific credential were created.</p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The date and time when the service specific credential expires. This field is only
    #            present for Bedrock API keys that were created with an expiration period.</p>
    #   @return [Time]
    # @!attribute service_specific_credential_id
    #   <p>The unique identifier for the service-specific credential.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service associated with the service-specific credential.</p>
    #   @return [String]
    class ServiceSpecificCredentialMetadata < Struct.new(
      :user_name,
      :status,
      :service_user_name,
      :service_credential_alias,
      :create_date,
      :expiration_date,
      :service_specific_credential_id,
      :service_name,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:service_user_name] = '' unless options.key?(:service_user_name)
        super
      end
    end

    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to
    #               set.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version of the policy to set as the default (operative) version.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    class SetDefaultPolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_endpoint_token_version
    #   <p>The version of the global endpoint token. Version 1 tokens are valid only in Amazon Web Services Regions that are available by default. These tokens do not work in
    #               manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid
    #               in all Regions. However, version 2 tokens are longer and might affect systems where you
    #               temporarily store tokens.</p>
    #            <p>For information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                   deactivating STS in an Amazon Web Services Region</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #   @return [String]
    class SetSecurityTokenServicePreferencesRequest < Struct.new(
      :global_endpoint_token_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an X.509 signing certificate.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSigningCertificate.html">UploadSigningCertificate</a> and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSigningCertificates.html">ListSigningCertificates</a> operations. </p>
    # @!attribute user_name
    #   <p>The name of the user the signing certificate is associated with.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID for the signing certificate.</p>
    #   @return [String]
    # @!attribute certificate_body
    #   <p>The contents of the signing certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the signing certificate. <code>Active</code> means that the key is valid
    #            for API calls, while <code>Inactive</code> means it is not.</p>
    #   @return [String]
    # @!attribute upload_date
    #   <p>The date when the signing certificate was uploaded.</p>
    #   @return [Time]
    class SigningCertificate < Struct.new(
      :user_name,
      :certificate_id,
      :certificate_body,
      :status,
      :upload_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html">SimulatePrincipalPolicy</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a>
    #       request.</p>
    # @!attribute evaluation_results
    #   <p>The results of the simulation.</p>
    #   @return [Array<Types::EvaluationResult>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class SimulateCustomPolicyOutput < Struct.new(
      :evaluation_results,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute policy_input_list
    #   <p>A list of policy documents to include in the simulation. Each document is specified as
    #               a string containing the complete, valid JSON text of an IAM policy. Do not include any
    #               resource-based policies in this parameter. Any resource-based policy must be submitted
    #               with the <code>ResourcePolicy</code> parameter. The policies cannot be "scope-down"
    #               policies, such as you could include in a call to <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html">GetFederationToken</a> or one of
    #               the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html">AssumeRole</a> API operations. In other words, do not use policies designed to
    #               restrict what a user can do while using the temporary credentials.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute permissions_boundary_policy_input_list
    #   <p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
    #               maximum permissions that an IAM entity can have. You can input only one permissions
    #               boundary when you pass a policy to this operation. For more information about
    #               permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #                   entities</a> in the <i>IAM User Guide</i>. The policy input is
    #               specified as a string that contains the complete, valid JSON text of a permissions
    #               boundary policy.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute action_names
    #   <p>A list of names of API operations to evaluate in the simulation. Each operation is
    #               evaluated against each resource. Each operation must include the service identifier,
    #               such as <code>iam:CreateUser</code>. This operation does not support using wildcards (*)
    #               in an action name.</p>
    #   @return [Array<String>]
    # @!attribute resource_arns
    #   <p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
    #               not provided, then the value defaults to <code>*</code> (all resources). Each API in the
    #                   <code>ActionNames</code> parameter is evaluated for each resource in this list. The
    #               simulation determines the access result (allowed or denied) of each combination and
    #               reports it in the response. You can simulate resources that don't exist in your
    #               account.</p>
    #            <p>The simulation does not automatically retrieve policies for the specified resources.
    #               If you want to include a resource policy in the simulation, then you must include the
    #               policy as a string in the <code>ResourcePolicy</code> parameter.</p>
    #            <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the
    #               resources included in the simulation or you receive an invalid input error.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute resource_policy
    #   <p>A resource-based policy to include in the simulation provided as a string. Each
    #               resource in the simulation is treated as if it had this policy attached. You can include
    #               only one resource-based policy in a simulation.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>An ARN representing the Amazon Web Services account ID that specifies the owner of any simulated
    #               resource that does not identify its owner in the resource ARN. Examples of resource ARNs
    #               include an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also
    #               used as the account owner of any <code>ResourcePolicy</code> included in the simulation.
    #               If the <code>ResourceOwner</code> parameter is not specified, then the owner of the
    #               resources and the resource policy defaults to the account of the identity provided in
    #                   <code>CallerArn</code>. This parameter is required only if you specify a
    #               resource-based policy and account that owns the resource is different from the account
    #               that owns the simulated calling user <code>CallerArn</code>.</p>
    #            <p>The ARN for an account uses the following syntax:
    #                       <code>arn:aws:iam::<i>AWS-account-ID</i>:root</code>. For example,
    #               to represent the account with the 112233445566 ID, use the following ARN:
    #                   <code>arn:aws:iam::112233445566-ID:root</code>. </p>
    #   @return [String]
    # @!attribute caller_arn
    #   <p>The ARN of the IAM user that you want to use as the simulated caller of the API
    #               operations. <code>CallerArn</code> is required if you include a
    #                   <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has
    #               a value to use in evaluating the policy.</p>
    #            <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
    #               assumed role, federated user, or a service principal.</p>
    #   @return [String]
    # @!attribute context_entries
    #   <p>A list of context keys and corresponding values for the simulation to use. Whenever a
    #               context key is evaluated in one of the simulated IAM permissions policies, the
    #               corresponding value is supplied.</p>
    #   @return [Array<Types::ContextEntry>]
    # @!attribute resource_handling_option
    #   <p>Specifies the type of simulation to run. Different API operations that support
    #               resource-based policies require different combinations of resources. By specifying the
    #               type of simulation to run, you enable the policy simulator to enforce the presence of
    #               the required resources to ensure reliable simulation results. If your simulation does
    #               not match one of the following scenarios, then you can omit this parameter. The
    #               following list shows each of the supported scenario values and the resources that you
    #               must define to run the simulation.</p>
    #            <p>Each of the Amazon EC2 scenarios requires that you specify instance, image, and security
    #               group resources. If your scenario includes an EBS volume, then you must specify that
    #               volume as a resource. If the Amazon EC2 scenario includes VPC, then you must supply the
    #               network interface resource. If it includes an IP subnet, then you must specify the
    #               subnet resource. For more information on the Amazon EC2 scenario options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported platforms</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, volume</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet, volume</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    class SimulateCustomPolicyRequest < Struct.new(
      :policy_input_list,
      :permissions_boundary_policy_input_list,
      :action_names,
      :resource_arns,
      :resource_policy,
      :resource_owner,
      :caller_arn,
      :context_entries,
      :resource_handling_option,
      :max_items,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html">SimulatePrincipalPolicy</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a>
    #       request.</p>
    # @!attribute evaluation_results
    #   <p>The results of the simulation.</p>
    #   @return [Array<Types::EvaluationResult>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more items to return. If your 
    #       results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    #       request parameter to retrieve more items. Note that IAM might return fewer than the 
    #       <code>MaxItems</code> number of results even when there are more results available. We recommend 
    #       that you check <code>IsTruncated</code> after every call to ensure that you receive all your 
    #       results.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>When <code>IsTruncated</code> is <code>true</code>, this element
    #       is present and contains the value to use for the <code>Marker</code> parameter in a subsequent 
    #       pagination request.</p>
    #   @return [String]
    class SimulatePrincipalPolicyOutput < Struct.new(
      :evaluation_results,
      :is_truncated,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # @!attribute policy_source_arn
    #   <p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to
    #               include in the simulation. If you specify a user, group, or role, the simulation
    #               includes all policies that are associated with that entity. If you specify a user, the
    #               simulation also includes all policies that are attached to any groups the user belongs
    #               to.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute policy_input_list
    #   <p>An optional list of additional policy documents to include in the simulation. Each
    #               document is specified as a string containing the complete, valid JSON text of an IAM
    #               policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute permissions_boundary_policy_input_list
    #   <p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
    #               maximum permissions that the entity can have. You can input only one permissions
    #               boundary when you pass a policy to this operation. An IAM entity can only have one
    #               permissions boundary in effect at a time. For example, if a permissions boundary is
    #               attached to an entity and you pass in a different permissions boundary policy using this
    #               parameter, then the new permissions boundary policy is used for the simulation. For more
    #               information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #                   entities</a> in the <i>IAM User Guide</i>. The policy input is
    #               specified as a string containing the complete, valid JSON text of a permissions boundary
    #               policy.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute action_names
    #   <p>A list of names of API operations to evaluate in the simulation. Each operation is
    #               evaluated for each resource. Each operation must include the service identifier, such as
    #                   <code>iam:CreateUser</code>.</p>
    #   @return [Array<String>]
    # @!attribute resource_arns
    #   <p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
    #               not provided, then the value defaults to <code>*</code> (all resources). Each API in the
    #                   <code>ActionNames</code> parameter is evaluated for each resource in this list. The
    #               simulation determines the access result (allowed or denied) of each combination and
    #               reports it in the response. You can simulate resources that don't exist in your
    #               account.</p>
    #            <p>The simulation does not automatically retrieve policies for the specified resources.
    #               If you want to include a resource policy in the simulation, then you must include the
    #               policy as a string in the <code>ResourcePolicy</code> parameter.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute resource_policy
    #   <p>A resource-based policy to include in the simulation provided as a string. Each
    #               resource in the simulation is treated as if it had this policy attached. You can include
    #               only one resource-based policy in a simulation.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_owner
    #   <p>An Amazon Web Services account ID that specifies the owner of any simulated resource that does not
    #               identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket
    #               or object. If <code>ResourceOwner</code> is specified, it is also used as the account
    #               owner of any <code>ResourcePolicy</code> included in the simulation. If the
    #                   <code>ResourceOwner</code> parameter is not specified, then the owner of the
    #               resources and the resource policy defaults to the account of the identity provided in
    #                   <code>CallerArn</code>. This parameter is required only if you specify a
    #               resource-based policy and account that owns the resource is different from the account
    #               that owns the simulated calling user <code>CallerArn</code>.</p>
    #   @return [String]
    # @!attribute caller_arn
    #   <p>The ARN of the IAM user that you want to specify as the simulated caller of the API
    #               operations. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of
    #               the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If
    #               you include both a <code>PolicySourceArn</code> (for example,
    #                   <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for
    #               example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you
    #               simulate calling the API operations as Bob, as if Bob had David's policies.</p>
    #            <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
    #               assumed role, federated user, or a service principal.</p>
    #            <p>
    #               <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and
    #               the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so
    #               that the resource-based policy's <code>Principal</code> element has a value to use in
    #               evaluating the policy.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute context_entries
    #   <p>A list of context keys and corresponding values for the simulation to use. Whenever a
    #               context key is evaluated in one of the simulated IAM permissions policies, the
    #               corresponding value is supplied.</p>
    #   @return [Array<Types::ContextEntry>]
    # @!attribute resource_handling_option
    #   <p>Specifies the type of simulation to run. Different API operations that support
    #               resource-based policies require different combinations of resources. By specifying the
    #               type of simulation to run, you enable the policy simulator to enforce the presence of
    #               the required resources to ensure reliable simulation results. If your simulation does
    #               not match one of the following scenarios, then you can omit this parameter. The
    #               following list shows each of the supported scenario values and the resources that you
    #               must define to run the simulation.</p>
    #            <p>Each of the Amazon EC2 scenarios requires that you specify instance, image, and security
    #               group resources. If your scenario includes an EBS volume, then you must specify that
    #               volume as a resource. If the Amazon EC2 scenario includes VPC, then you must supply the
    #               network interface resource. If it includes an IP subnet, then you must specify the
    #               subnet resource. For more information on the Amazon EC2 scenario options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported platforms</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, volume</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet, volume</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    #   @return [String]
    class SimulatePrincipalPolicyRequest < Struct.new(
      :policy_source_arn,
      :policy_input_list,
      :permissions_boundary_policy_input_list,
      :action_names,
      :resource_arns,
      :resource_policy,
      :resource_owner,
      :caller_arn,
      :context_entries,
      :resource_handling_option,
      :max_items,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a reference to a <code>Statement</code> element in a policy document that
    #          determines the result of the simulation.</p>
    #          <p>This data type is used by the <code>MatchedStatements</code> member of the <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_EvaluationResult.html">EvaluationResult</a>
    #             </code> type.</p>
    # @!attribute source_policy_id
    #   <p>The identifier of the policy that was provided as an input.</p>
    #   @return [String]
    # @!attribute source_policy_type
    #   <p>The type of the policy.</p>
    #   @return [String]
    # @!attribute start_position
    #   <p>The row and column of the beginning of the <code>Statement</code> in an IAM
    #            policy.</p>
    #   @return [Types::Position]
    # @!attribute end_position
    #   <p>The row and column of the end of a <code>Statement</code> in an IAM policy.</p>
    #   @return [Types::Position]
    class Statement < Struct.new(
      :source_policy_id,
      :source_policy_type,
      :start_position,
      :end_position,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that represents user-provided metadata that can be associated with an IAM
    #       resource. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @!attribute key
    #   <p>The key name that can be used to look up or retrieve the associated value. For example,
    #           <code>Department</code> or <code>Cost Center</code> are common choices.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with this tag. For example, tags with a key name of
    #           <code>Department</code> could have values such as <code>Human Resources</code>,
    #           <code>Accounting</code>, and <code>Support</code>. Tags with a key name of <code>Cost
    #           Center</code> might have values that consist of the number associated with the different
    #         cost centers in your company. Typically, many resources have tags with the same key name but
    #         with different values.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_name
    #   <p>The name of the IAM instance profile to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the IAM instance profile.
    #         Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute serial_number
    #   <p>The unique identifier for the IAM virtual MFA device to which you want to add tags.
    #         For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the IAM virtual MFA device.
    #         Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagMFADeviceRequest < Struct.new(
      :serial_number,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The ARN of the OIDC identity provider in IAM to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the OIDC identity provider in IAM.
    #         Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The ARN of the IAM customer managed policy to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the IAM customer managed policy.
    #         Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagPolicyRequest < Struct.new(
      :policy_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the IAM role to which you want to add tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the IAM role. Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagRoleRequest < Struct.new(
      :role_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute saml_provider_arn
    #   <p>The ARN of the SAML identity provider in IAM to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the SAML identity provider in IAM.
    #         Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagSAMLProviderRequest < Struct.new(
      :saml_provider_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_certificate_name
    #   <p>The name of the IAM server certificate to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the IAM server certificate.
    #         Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags that you want to attach to the IAM user. Each tag consists of a key name and an associated value.</p>
    #   @return [Array<Types::Tag>]
    class TagUserRequest < Struct.new(
      :user_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details about the most recent attempt to access an action within the
    #          service.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html">GetServiceLastAccessedDetails</a> operation.</p>
    # @!attribute action_name
    #   <p>The name of the tracked action to which access was attempted. Tracked actions are
    #            actions that report activity to IAM.</p>
    #   @return [String]
    # @!attribute last_accessed_entity
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute last_accessed_time
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when an authenticated entity most recently attempted to access the
    #            tracked service. Amazon Web Services does not report unauthenticated requests.</p>
    #            <p>This field is null if no IAM entities attempted to access the service within the
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [Time]
    # @!attribute last_accessed_region
    #   <p>The Region from which the authenticated entity (user or role) last attempted to access
    #            the tracked action. Amazon Web Services does not report unauthenticated requests.</p>
    #            <p>This field is null if no IAM entities attempted to access the service within the
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">tracking period</a>.</p>
    #   @return [String]
    class TrackedActionLastAccessed < Struct.new(
      :action_name,
      :last_accessed_entity,
      :last_accessed_time,
      :last_accessed_region,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because service-linked roles are protected Amazon Web Services resources. Only
    #       the service that depends on the service-linked role can modify or delete the role on your
    #       behalf. The error message includes the name of the service that depends on this service-linked
    #       role. You must request the change through that service.</p>
    # @!attribute message
    #   @return [String]
    class UnmodifiableEntityException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the public key encoding format is unsupported or
    #       unrecognized.</p>
    # @!attribute message
    #   @return [String]
    class UnrecognizedPublicKeyEncodingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_name
    #   <p>The name of the IAM instance profile from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified instance profile.</p>
    #   @return [Array<String>]
    class UntagInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute serial_number
    #   <p>The unique identifier for the IAM virtual MFA device from which you want to remove
    #         tags. For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified instance profile.</p>
    #   @return [Array<String>]
    class UntagMFADeviceRequest < Struct.new(
      :serial_number,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The ARN of the OIDC provider in IAM from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified OIDC provider.</p>
    #   @return [Array<String>]
    class UntagOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>The ARN of the IAM customer managed policy from which you want to remove
    #         tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified policy.</p>
    #   @return [Array<String>]
    class UntagPolicyRequest < Struct.new(
      :policy_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the IAM role from which you want to remove tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified role.</p>
    #   @return [Array<String>]
    class UntagRoleRequest < Struct.new(
      :role_name,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute saml_provider_arn
    #   <p>The ARN of the SAML identity provider in IAM from which you want to remove
    #         tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified SAML identity provider.</p>
    #   @return [Array<String>]
    class UntagSAMLProviderRequest < Struct.new(
      :saml_provider_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_certificate_name
    #   <p>The name of the IAM server certificate from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified IAM server certificate.</p>
    #   @return [Array<String>]
    class UntagServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified user.</p>
    #   @return [Array<String>]
    class UntagUserRequest < Struct.new(
      :user_name,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose key you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The access key ID of the secret access key you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status you want to assign to the secret access key. <code>Active</code> means
    #               that the key can be used for programmatic calls to Amazon Web Services, while <code>Inactive</code>
    #               means that the key cannot be used.</p>
    #   @return [String]
    class UpdateAccessKeyRequest < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute minimum_password_length
    #   <p>The minimum number of characters allowed in an IAM user password.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>6</code>.</p>
    #   @return [Integer]
    # @!attribute require_symbols
    #   <p>Specifies whether IAM user passwords must contain at least one of the following
    #               non-alphanumeric characters:</p>
    #            <p>! @ # $ % ^ & * ( ) _ + - = [ ] { } | '</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               symbol character.</p>
    #   @return [Boolean]
    # @!attribute require_numbers
    #   <p>Specifies whether IAM user passwords must contain at least one numeric character (0
    #               to 9).</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               numeric character.</p>
    #   @return [Boolean]
    # @!attribute require_uppercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one uppercase character
    #               from the ISO basic Latin alphabet (A to Z).</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               uppercase character.</p>
    #   @return [Boolean]
    # @!attribute require_lowercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one lowercase character
    #               from the ISO basic Latin alphabet (a to z).</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               lowercase character.</p>
    #   @return [Boolean]
    # @!attribute allow_users_to_change_password
    #   <p> Allows all IAM users in your account to use the Amazon Web Services Management Console to change their own
    #               passwords. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html">Permitting
    #                   IAM users to change their own passwords</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that IAM users in the account do not
    #               automatically have permissions to change their own password.</p>
    #   @return [Boolean]
    # @!attribute max_password_age
    #   <p>The number of days that an IAM user password is valid.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>0</code>. The result is that IAM user passwords never expire.</p>
    #   @return [Integer]
    # @!attribute password_reuse_prevention
    #   <p>Specifies the number of previous passwords that IAM users are prevented from
    #               reusing.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>0</code>. The result is that IAM users are not prevented from reusing
    #               previous passwords.</p>
    #   @return [Integer]
    # @!attribute hard_expiry
    #   <p> Prevents IAM users who are accessing the account via the Amazon Web Services Management Console from setting a
    #               new console password after their password has expired. The IAM user cannot access the
    #               console until an administrator resets the password.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that IAM users can change their passwords
    #               after they expire and continue to sign in as the user.</p>
    #            <note>
    #               <p> In the Amazon Web Services Management Console, the custom password policy option <b>Allow
    #                       users to change their own password</b> gives IAM users permissions to
    #                       <code>iam:ChangePassword</code> for only their user and to the
    #                       <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a
    #                   permissions policy to each user, rather the permissions are applied at the
    #                   account-level for all users by IAM. IAM users with
    #                       <code>iam:ChangePassword</code> permission and active access keys can reset
    #                   their own expired console password using the CLI or API.</p>
    #            </note>
    #   @return [Boolean]
    class UpdateAccountPasswordPolicyRequest < Struct.new(
      :minimum_password_length,
      :require_symbols,
      :require_numbers,
      :require_uppercase_characters,
      :require_lowercase_characters,
      :allow_users_to_change_password,
      :max_password_age,
      :password_reuse_prevention,
      :hard_expiry,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the role to update with the new policy.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The policy that grants an entity permission to assume the role.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateAssumeRolePolicyRequest < Struct.new(
      :role_name,
      :policy_document,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>Name of the IAM group to update. If you're changing the name of the group, this is
    #               the original name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute new_path
    #   <p>New path for the IAM group. Only include this if changing the group's path.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute new_group_name
    #   <p>New name for the IAM group. Only include this if changing the group's name.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #   @return [String]
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :new_path,
      :new_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user whose password you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute password
    #   <p>The new password for the specified IAM user.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <p>However, the format can be further restricted by the account administrator by setting
    #               a password policy on the Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAccountPasswordPolicy.html">UpdateAccountPasswordPolicy</a>.</p>
    #   @return [String]
    # @!attribute password_reset_required
    #   <p>Allows this new password to be used only once by requiring the specified IAM user to
    #               set a new password on next sign-in.</p>
    #   @return [Boolean]
    class UpdateLoginProfileRequest < Struct.new(
      :user_name,
      :password,
      :password_reset_required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which
    #               you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute thumbprint_list
    #   <p>A list of certificate thumbprints that are associated with the specified IAM OpenID
    #               Connect provider. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>. </p>
    #   @return [Array<String>]
    class UpdateOpenIDConnectProviderThumbprintRequest < Struct.new(
      :open_id_connect_provider_arn,
      :thumbprint_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the role that you want to modify.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description that you want to apply to the specified role.</p>
    #   @return [String]
    class UpdateRoleDescriptionRequest < Struct.new(
      :role_name,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role
    #   <p>A structure that contains details about the modified role.</p>
    #   @return [Types::Role]
    class UpdateRoleDescriptionResponse < Struct.new(
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the role that you want to modify.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description that you want to apply to the specified role.</p>
    #   @return [String]
    # @!attribute max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.
    #               If you do not specify a value for this setting, the default value of one hour is
    #               applied. This setting can have a value from 1 hour to 12 hours.</p>
    #            <p>Anyone who assumes the role from the CLI or API can use the
    #                   <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code>
    #               CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting
    #               determines the maximum duration that can be requested using the
    #                   <code>DurationSeconds</code> parameter. If users don't specify a value for the
    #                   <code>DurationSeconds</code> parameter, their security credentials are valid for one
    #               hour by default. This applies when you use the <code>AssumeRole*</code> API operations
    #               or the <code>assume-role*</code> CLI operations but does not apply when you use those
    #               operations to create a console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM
    #                   roles</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>IAM role credentials provided by Amazon EC2 instances assigned to the role are not
    #                   subject to the specified maximum session duration.</p>
    #            </note>
    #   @return [Integer]
    class UpdateRoleRequest < Struct.new(
      :role_name,
      :description,
      :max_session_duration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateRoleResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute saml_metadata_document
    #   <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    #               document includes the issuer's name, expiration information, and keys that can be used
    #               to validate the SAML authentication response (assertions) that are received from the
    #               IdP. You must generate the metadata document using the identity management software that
    #               is used as your IdP.</p>
    #   @return [String]
    # @!attribute saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider to update.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute assertion_encryption_mode
    #   <p>Specifies the encryption setting for the SAML provider.</p>
    #   @return [String]
    # @!attribute add_private_key
    #   <p>Specifies the new private key from your external identity provider. The private key
    #               must be a .pem file that uses AES-GCM or AES-CBC encryption algorithm to decrypt SAML
    #               assertions.</p>
    #   @return [String]
    # @!attribute remove_private_key
    #   <p>The Key ID of the private key to remove.</p>
    #   @return [String]
    class UpdateSAMLProviderRequest < Struct.new(
      :saml_metadata_document,
      :saml_provider_arn,
      :assertion_encryption_mode,
      :add_private_key,
      :remove_private_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateSAMLProvider.html">UpdateSAMLProvider</a>
    #       request. </p>
    # @!attribute saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider that was updated.</p>
    #   @return [String]
    class UpdateSAMLProviderResponse < Struct.new(
      :saml_provider_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to assign to the SSH public key. <code>Active</code> means that the key can
    #               be used for authentication with an CodeCommit repository. <code>Inactive</code> means that
    #               the key cannot be used.</p>
    #   @return [String]
    class UpdateSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_certificate_name
    #   <p>The name of the server certificate that you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute new_path
    #   <p>The new path for the server certificate. Include this only if you are updating the
    #               server certificate's path.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute new_server_certificate_name
    #   <p>The new name for the server certificate. Include this only if you are updating the
    #               server certificate's name. The name of the certificate cannot contain any spaces.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    class UpdateServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :new_path,
      :new_server_certificate_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If you do
    #               not specify this value, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to be assigned to the service-specific credential.</p>
    #   @return [String]
    class UpdateServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user the signing certificate belongs to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the signing certificate you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status you want to assign to the certificate. <code>Active</code> means that the
    #               certificate can be used for programmatic calls to Amazon Web Services <code>Inactive</code> means that
    #               the certificate cannot be used.</p>
    #   @return [String]
    class UpdateSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>Name of the user to update. If you're changing the name of the user, this is the
    #               original user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute new_path
    #   <p>New path for the IAM user. Include this parameter only if you're changing the user's
    #               path.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #   @return [String]
    # @!attribute new_user_name
    #   <p>New name for the user. Include this parameter only if you're changing the user's
    #               name.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #   @return [String]
    class UpdateUserRequest < Struct.new(
      :user_name,
      :new_path,
      :new_user_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the IAM user to associate the SSH public key with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute ssh_public_key_body
    #   <p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
    #               The minimum bit-length of the public key is 2048 bits. For example, you can generate a
    #               2048-bit key, and the resulting PEM file is 1679 bytes long.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UploadSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSSHPublicKey.html">UploadSSHPublicKey</a>
    #       request.</p>
    # @!attribute ssh_public_key
    #   <p>Contains information about the SSH public key.</p>
    #   @return [Types::SSHPublicKey]
    class UploadSSHPublicKeyResponse < Struct.new(
      :ssh_public_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path for the server certificate. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).
    #               This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #            <note>
    #               <p> If you are uploading a server certificate specifically for use with Amazon
    #                   CloudFront distributions, you must specify a path using the <code>path</code>
    #                   parameter. The path must begin with <code>/cloudfront</code> and must include a
    #                   trailing slash (for example, <code>/cloudfront/test/</code>).</p>
    #            </note>
    #   @return [String]
    # @!attribute server_certificate_name
    #   <p>The name for the server certificate. Do not include the path in this value. The name
    #               of the certificate cannot contain any spaces.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute certificate_body
    #   <p>The contents of the public key certificate in PEM-encoded format.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute private_key
    #   <p>The contents of the private key in PEM-encoded format.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute certificate_chain
    #   <p>The contents of the certificate chain. This is typically a concatenation of the
    #               PEM-encoded public key certificates of the chain.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags that you want to attach to the new IAM server certificate resource.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class UploadServerCertificateRequest < Struct.new(
      :path,
      :server_certificate_name,
      :certificate_body,
      :private_key,
      :certificate_chain,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadServerCertificate.html">UploadServerCertificate</a> request. </p>
    # @!attribute server_certificate_metadata
    #   <p>The meta information of the uploaded server certificate without its certificate body,
    #               certificate chain, and private key.</p>
    #   @return [Types::ServerCertificateMetadata]
    # @!attribute tags
    #   <p>A list of tags that are attached to the new IAM server certificate. The returned list of tags is sorted by tag key.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class UploadServerCertificateResponse < Struct.new(
      :server_certificate_metadata,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user the signing certificate is for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #   @return [String]
    # @!attribute certificate_body
    #   <p>The contents of the signing certificate.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UploadSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_body,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the response to a successful <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSigningCertificate.html">UploadSigningCertificate</a> request. </p>
    # @!attribute certificate
    #   <p>Information about the certificate.</p>
    #   @return [Types::SigningCertificate]
    class UploadSigningCertificateResponse < Struct.new(
      :certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an IAM user entity.</p>
    #          <p>This data type is used as a response element in the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateUser.html">CreateUser</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html">GetUser</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUsers.html">ListUsers</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute path
    #   <p>The path to the user. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>The ARN of the policy used to set the permissions boundary for the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The friendly name identifying the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The stable and unique string identifying the user. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs
    #            and how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the user was created.</p>
    #   @return [Time]
    # @!attribute password_last_used
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the user's password was last used to sign in to an Amazon Web Services website.
    #            For a list of Amazon Web Services websites that capture a user's last sign-in time, see the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Credential
    #               reports</a> topic in the <i>IAM User Guide</i>. If a password is
    #            used more than once in a five-minute span, only the first use is returned in this field. If
    #            the field is null (no value), then it indicates that they never signed in with a password.
    #            This can be because:</p>
    #            <ul>
    #               <li>
    #                  <p>The user never had a password.</p>
    #               </li>
    #               <li>
    #                  <p>A password exists but has not been used since IAM started tracking this
    #                  information on October 20, 2014.</p>
    #               </li>
    #            </ul>
    #            <p>A null value does not mean that the user <i>never</i> had a password.
    #            Also, if the user does not currently have a password but had one in the past, then this
    #            field contains the date and time the most recent password was used.</p>
    #            <p>This value is returned only in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html">GetUser</a> and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUsers.html">ListUsers</a>
    #            operations. </p>
    #   @return [Time]
    # @!attribute permissions_boundary
    #   <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #               identities </a> in the <i>IAM User Guide</i>.</p>
    #   @return [Types::AttachedPermissionsBoundary]
    # @!attribute tags
    #   <p>A list of tags that are associated with the user. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class User < Struct.new(
      :path,
      :user_name,
      :user_id,
      :arn,
      :create_date,
      :password_last_used,
      :permissions_boundary,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an IAM user, including all the user's policies and all the
    #          IAM groups the user is in.</p>
    #          <p>This data type is used as a response element in the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html">GetAccountAuthorizationDetails</a> operation.</p>
    # @!attribute path
    #   <p>The path to the user. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #               <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The friendly name identifying the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The stable and unique string identifying the user. For more information about IDs, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #               identifiers</a> in the <i>IAM User Guide</i>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.</p>
    #            <p>For more information about ARNs, go to <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #            the <i>Amazon Web Services General Reference</i>. </p>
    #   @return [String]
    # @!attribute create_date
    #   <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    #               format</a>, when the user was created.</p>
    #   @return [Time]
    # @!attribute user_policy_list
    #   <p>A list of the inline policies embedded in the user.</p>
    #   @return [Array<Types::PolicyDetail>]
    # @!attribute group_list
    #   <p>A list of IAM groups that the user is in.</p>
    #   @return [Array<String>]
    # @!attribute attached_managed_policies
    #   <p>A list of the managed policies attached to the user.</p>
    #   @return [Array<Types::AttachedPolicy>]
    # @!attribute permissions_boundary
    #   <p>The ARN of the policy used to set the permissions boundary for the user.</p>
    #            <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #               identities </a> in the <i>IAM User Guide</i>.</p>
    #   @return [Types::AttachedPermissionsBoundary]
    # @!attribute tags
    #   <p>A list of tags that are associated with the user. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class UserDetail < Struct.new(
      :path,
      :user_name,
      :user_id,
      :arn,
      :create_date,
      :user_policy_list,
      :group_list,
      :attached_managed_policies,
      :permissions_boundary,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a virtual MFA device.</p>
    # @!attribute serial_number
    #   <p>The serial number associated with <code>VirtualMFADevice</code>.</p>
    #   @return [String]
    # @!attribute base32_string_seed
    #   <p> The base32 seed defined as specified in <a href="https://tools.ietf.org/html/rfc3548.txt">RFC3548</a>. The <code>Base32StringSeed</code> is base32-encoded. </p>
    #   @return [String]
    # @!attribute qr_code_png
    #   <p> A QR code PNG image that encodes
    #               <code>otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String</code>
    #            where <code>$virtualMFADeviceName</code> is one of the create call arguments.
    #               <code>AccountName</code> is the user name if set (otherwise, the account ID otherwise),
    #            and <code>Base32String</code> is the seed in base32 format. The <code>Base32String</code>
    #            value is base64-encoded. </p>
    #   @return [String]
    # @!attribute user
    #   <p>The IAM user associated with this virtual MFA device.</p>
    #   @return [Types::User]
    # @!attribute enable_date
    #   <p>The date and time on which the virtual MFA device was enabled.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags that are attached to the virtual MFA device. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class VirtualMFADevice < Struct.new(
      :serial_number,
      :base32_string_seed,
      :qr_code_png,
      :user,
      :enable_date,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AssertionEncryptionModeType
      Required = 'Required'
      Allowed = 'Allowed'
    end

    module AssignmentStatusType
      Assigned = 'Assigned'
      Unassigned = 'Unassigned'
      Any = 'Any'
    end

    module EncodingType
      SSH = 'SSH'
      PEM = 'PEM'
    end

    module GlobalEndpointTokenVersion
      v1Token = 'v1Token'
      v2Token = 'v2Token'
    end

    module JobStatusType
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
    end

    module PolicyOwnerEntityType
      USER = 'USER'
      ROLE = 'ROLE'
      GROUP = 'GROUP'
    end

    module PolicyScopeType
      All = 'All'
      AWS = 'AWS'
      Local = 'Local'
    end

    module PolicyType
      INLINE = 'INLINE'
      MANAGED = 'MANAGED'
    end

    module SortKeyType
      SERVICE_NAMESPACE_ASCENDING = 'SERVICE_NAMESPACE_ASCENDING'
      SERVICE_NAMESPACE_DESCENDING = 'SERVICE_NAMESPACE_DESCENDING'
      LAST_AUTHENTICATED_TIME_ASCENDING = 'LAST_AUTHENTICATED_TIME_ASCENDING'
      LAST_AUTHENTICATED_TIME_DESCENDING = 'LAST_AUTHENTICATED_TIME_DESCENDING'
    end

    module StatusType
      Active = 'Active'
      Inactive = 'Inactive'
      Expired = 'Expired'
    end

    module SummaryKeyType
      Users = 'Users'
      UsersQuota = 'UsersQuota'
      Groups = 'Groups'
      GroupsQuota = 'GroupsQuota'
      ServerCertificates = 'ServerCertificates'
      ServerCertificatesQuota = 'ServerCertificatesQuota'
      UserPolicySizeQuota = 'UserPolicySizeQuota'
      GroupPolicySizeQuota = 'GroupPolicySizeQuota'
      GroupsPerUserQuota = 'GroupsPerUserQuota'
      SigningCertificatesPerUserQuota = 'SigningCertificatesPerUserQuota'
      AccessKeysPerUserQuota = 'AccessKeysPerUserQuota'
      MFADevices = 'MFADevices'
      MFADevicesInUse = 'MFADevicesInUse'
      AccountMFAEnabled = 'AccountMFAEnabled'
      AccountAccessKeysPresent = 'AccountAccessKeysPresent'
      AccountPasswordPresent = 'AccountPasswordPresent'
      AccountSigningCertificatesPresent = 'AccountSigningCertificatesPresent'
      AttachedPoliciesPerGroupQuota = 'AttachedPoliciesPerGroupQuota'
      AttachedPoliciesPerRoleQuota = 'AttachedPoliciesPerRoleQuota'
      AttachedPoliciesPerUserQuota = 'AttachedPoliciesPerUserQuota'
      Policies = 'Policies'
      PoliciesQuota = 'PoliciesQuota'
      PolicySizeQuota = 'PolicySizeQuota'
      PolicyVersionsInUse = 'PolicyVersionsInUse'
      PolicyVersionsInUseQuota = 'PolicyVersionsInUseQuota'
      VersionsPerPolicyQuota = 'VersionsPerPolicyQuota'
      GlobalEndpointTokenVersion = 'GlobalEndpointTokenVersion'
    end

  end
end
