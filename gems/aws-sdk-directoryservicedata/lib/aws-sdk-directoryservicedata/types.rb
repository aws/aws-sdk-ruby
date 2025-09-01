# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryServiceData
  # This module contains the types returned by client operations.
  module Types

    # <p> You don't have permission to perform the request or access the directory. It can also
    #       occur when the <code>DirectoryId</code> doesn't exist or the user, member, or group might be
    #       outside of your organizational unit (OU). </p>
    #          <p> Make sure that you have the authentication and authorization to perform the action.
    #       Review the directory information in the request, and make sure that the object isn't outside
    #       of your OU. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p> Reason the request was unauthorized. </p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccessDeniedReason
      IAM_AUTH = 'IAM_AUTH'
      DIRECTORY_AUTH = 'DIRECTORY_AUTH'
      DATA_DISABLED = 'DATA_DISABLED'
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute member_name
    #   <p> The <code>SAMAccountName</code> of the user, group, or computer to add as a group member.
    #       </p>
    #   @return [String]
    # @!attribute member_realm
    #   <p> The domain name that's associated with the group member. This parameter is required only
    #         when adding a member outside of your Managed Microsoft AD domain to a group inside of your
    #         Managed Microsoft AD domain. This parameter defaults to the Managed Microsoft AD domain. </p>
    #            <note>
    #               <p> This parameter is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class AddGroupMemberRequest < Struct.new(
      :directory_id,
      :group_name,
      :member_name,
      :member_realm,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AddGroupMemberResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The data type for an attribute. Each attribute value is described as a name-value pair.
    #       The name is the AD schema name, and the value is the data itself. For a list of supported
    #       attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #     </p>
    # @!attribute s
    #   <p> Indicates that the attribute type value is a string. For example: </p>
    #            <p>
    #               <code>"S": "S Group"</code>
    #            </p>
    #   @return [String]
    # @!attribute n
    #   <p> Indicates that the attribute type value is a number. For example: </p>
    #            <p>
    #               <code>"N": "16"</code>
    #            </p>
    #   @return [Integer]
    # @!attribute bool
    #   <p> Indicates that the attribute type value is a boolean. For example: </p>
    #            <p>
    #               <code>"BOOL": true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute ss
    #   <p> Indicates that the attribute type value is a string set. For example: </p>
    #            <p>
    #               <code>"SS": ["sample_service_class/host.sample.com:1234/sample_service_name_1",
    #           "sample_service_class/host.sample.com:1234/sample_service_name_2"]</code>
    #            </p>
    #   @return [Array<String>]
    class AttributeValue < Struct.new(
      :s,
      :n,
      :bool,
      :ss,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S < AttributeValue; end
      class N < AttributeValue; end
      class BOOL < AttributeValue; end
      class SS < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # <p> This error will occur when you try to create a resource that conflicts with an existing
    #       object. It can also occur when adding a member to a group that the member is already
    #       in.</p>
    #          <p> This error can be caused by a request sent within the 8-hour idempotency window with the
    #       same client token but different input parameters. Client tokens should not be re-used across
    #       different requests. After 8 hours, any request with the same client token is treated as a new
    #       request. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute group_type
    #   <p> The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>.</p>
    #   @return [String]
    # @!attribute group_scope
    #   <p> The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security group scope</a>. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> An expression that defines one or more attributes with the data type and value of each
    #         attribute. </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class CreateGroupRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :group_type,
      :group_scope,
      :other_attributes,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the group. </p>
    #   @return [String]
    class CreateGroupResult < Struct.new(
      :directory_id,
      :sam_account_name,
      :sid,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that’s associated with the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute email_address
    #   <p> The email address of the user. </p>
    #   @return [String]
    # @!attribute given_name
    #   <p> The first name of the user. </p>
    #   @return [String]
    # @!attribute surname
    #   <p> The last name of the user. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> An expression that defines one or more attribute names with the data type and value of
    #         each attribute. A key is an attribute name, and the value is a list of maps. For a list of
    #         supported attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>. </p>
    #            <note>
    #               <p> Attribute names are case insensitive. </p>
    #            </note>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class CreateUserRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :email_address,
      :given_name,
      :surname,
      :other_attributes,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory where the address block is added. </p>
    #   @return [String]
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    class CreateUserResult < Struct.new(
      :directory_id,
      :sid,
      :sam_account_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteGroupResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteUserResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The Identifier (ID) of the directory associated with the group.</p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> One or more attributes to be returned for the group. For a list of supported attributes,
    #         see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #       </p>
    #   @return [Array<String>]
    class DescribeGroupRequest < Struct.new(
      :directory_id,
      :realm,
      :sam_account_name,
      :other_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the group. </p>
    #   @return [String]
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the group. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute distinguished_name
    #   <p> The <a href="https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name">distinguished name</a> of the object. </p>
    #   @return [String]
    # @!attribute group_type
    #   <p> The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>. </p>
    #   @return [String]
    # @!attribute group_scope
    #   <p> The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security groups</a>. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> The attribute values that are returned for the attribute names that are included in the
    #         request. </p>
    #   @return [Hash<String, Types::AttributeValue>]
    class DescribeGroupResult < Struct.new(
      :directory_id,
      :realm,
      :sid,
      :sam_account_name,
      :distinguished_name,
      :group_type,
      :group_scope,
      :other_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> One or more attribute names to be returned for the user. A key is an attribute name, and
    #         the value is a list of maps. For a list of supported attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>. </p>
    #   @return [Array<String>]
    # @!attribute realm
    #   <p> The domain name that's associated with the user. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return users outside your Managed Microsoft AD domain.
    #           When no value is defined, only your Managed Microsoft AD users are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    class DescribeUserRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :other_attributes,
      :realm,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the user. </p>
    #   @return [String]
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute distinguished_name
    #   <p> The <a href="https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name">distinguished name</a> of the object. </p>
    #   @return [String]
    # @!attribute user_principal_name
    #   <p> The UPN that is an Internet-style login name for a user and is based on the Internet
    #         standard <a href="https://datatracker.ietf.org/doc/html/rfc822">RFC 822</a>. The UPN is shorter
    #         than the distinguished name and easier to remember. </p>
    #   @return [String]
    # @!attribute email_address
    #   <p> The email address of the user. </p>
    #   @return [String]
    # @!attribute given_name
    #   <p> The first name of the user. </p>
    #   @return [String]
    # @!attribute surname
    #   <p> The last name of the user. </p>
    #   @return [String]
    # @!attribute enabled
    #   <p> Indicates whether the user account is active. </p>
    #   @return [Boolean]
    # @!attribute other_attributes
    #   <p> The attribute values that are returned for the attribute names that are included in the
    #         request. </p>
    #            <note>
    #               <p> Attribute names are case insensitive. </p>
    #            </note>
    #   @return [Hash<String, Types::AttributeValue>]
    class DescribeUserResult < Struct.new(
      :directory_id,
      :realm,
      :sid,
      :sam_account_name,
      :distinguished_name,
      :user_principal_name,
      :email_address,
      :given_name,
      :surname,
      :enabled,
      :other_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request could not be completed due to a problem in the configuration or current state
    #       of the specified directory. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p> Reason the request failed for the specified directory. </p>
    #   @return [String]
    class DirectoryUnavailableException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DirectoryUnavailableReason
      INVALID_DIRECTORY_STATE = 'INVALID_DIRECTORY_STATE'
      DIRECTORY_TIMEOUT = 'DIRECTORY_TIMEOUT'
      DIRECTORY_RESOURCES_EXCEEDED = 'DIRECTORY_RESOURCES_EXCEEDED'
      NO_DISK_SPACE = 'NO_DISK_SPACE'
      TRUST_AUTH_FAILURE = 'TRUST_AUTH_FAILURE'
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class DisableUserRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisableUserResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A group object that contains identifying information and attributes for a specified
    #       group. </p>
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the group. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute distinguished_name
    #   <p>The <a href="https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name">distinguished name</a> of the object. </p>
    #   @return [String]
    # @!attribute group_type
    #   <p> The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>. </p>
    #   @return [String]
    # @!attribute group_scope
    #   <p> The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security groups</a>
    #            </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> An expression of one or more attributes, data types, and the values of a group. </p>
    #   @return [Hash<String, Types::AttributeValue>]
    class Group < Struct.new(
      :sid,
      :sam_account_name,
      :distinguished_name,
      :group_type,
      :group_scope,
      :other_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupScope
      DOMAIN_LOCAL = 'DomainLocal'
      GLOBAL = 'Global'
      UNIVERSAL = 'Universal'
      BUILTIN_LOCAL = 'BuiltinLocal'
    end

    # <p>A structure containing a subset of fields of a group object from a directory.</p>
    # @!attribute sid
    #   <p>The unique security identifier (SID) of the group.</p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute group_type
    #   <p>The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>.</p>
    #   @return [String]
    # @!attribute group_scope
    #   <p>The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security groups</a>.</p>
    #   @return [String]
    class GroupSummary < Struct.new(
      :sid,
      :sam_account_name,
      :group_type,
      :group_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupType
      DISTRIBUTION = 'Distribution'
      SECURITY = 'Security'
    end

    # <p> The operation didn't succeed because an internal error occurred. Try again later. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return members from a group outside of your
    #           Managed Microsoft AD domain. When no value is defined, only members of your Managed Microsoft AD groups are
    #           returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute member_realm
    #   <p> The domain name that's associated with the group member. This parameter defaults to the
    #         Managed Microsoft AD domain. </p>
    #            <note>
    #               <p> This parameter is optional and case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to be returned per request. </p>
    #   @return [Integer]
    class ListGroupMembersRequest < Struct.new(
      :directory_id,
      :realm,
      :member_realm,
      :sam_account_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>Identifier (ID) of the directory associated with the group.</p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the group. </p>
    #   @return [String]
    # @!attribute member_realm
    #   <p> The domain name that's associated with the member. </p>
    #   @return [String]
    # @!attribute members
    #   <p> The member information that the request returns. </p>
    #   @return [Array<Types::Member>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    class ListGroupMembersResult < Struct.new(
      :directory_id,
      :realm,
      :member_realm,
      :members,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the member. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive and defaults to your Managed Microsoft AD domain. </p>
    #            </note>
    #   @return [String]
    # @!attribute member_realm
    #   <p> The domain name that's associated with the group member. </p>
    #            <note>
    #               <p> This parameter is optional, so you can limit your results to the group members in a
    #           specific domain. </p>
    #               <p> This parameter is case insensitive and defaults to <code>Realm</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The <code>SAMAccountName</code> of the user, group, or computer that's a member of the
    #         group. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to be returned per request. </p>
    #   @return [Integer]
    class ListGroupsForMemberRequest < Struct.new(
      :directory_id,
      :realm,
      :member_realm,
      :sam_account_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the member. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain that's associated with the group. </p>
    #   @return [String]
    # @!attribute member_realm
    #   <p> The domain that's associated with the member. </p>
    #   @return [String]
    # @!attribute groups
    #   <p> The group information that the request returns. </p>
    #   @return [Array<Types::GroupSummary>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    class ListGroupsForMemberResult < Struct.new(
      :directory_id,
      :realm,
      :member_realm,
      :groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name associated with the directory. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to be returned per request. </p>
    #   @return [Integer]
    class ListGroupsRequest < Struct.new(
      :directory_id,
      :realm,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute realm
    #   <p>The domain name associated with the group.</p>
    #   @return [String]
    # @!attribute groups
    #   <p> The group information that the request returns. </p>
    #   @return [Array<Types::GroupSummary>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    class ListGroupsResult < Struct.new(
      :directory_id,
      :realm,
      :groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the user. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return users outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD users are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to be returned per request. </p>
    #   @return [Integer]
    class ListUsersRequest < Struct.new(
      :directory_id,
      :realm,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain that's associated with the user. </p>
    #   @return [String]
    # @!attribute users
    #   <p> The user information that the request returns. </p>
    #   @return [Array<Types::UserSummary>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    class ListUsersResult < Struct.new(
      :directory_id,
      :realm,
      :users,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A member object that contains identifying information for a specified member.</p>
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the group member. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group member. </p>
    #   @return [String]
    # @!attribute member_type
    #   <p> The AD type of the member object.</p>
    #   @return [String]
    class Member < Struct.new(
      :sid,
      :sam_account_name,
      :member_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MemberType
      USER = 'USER'
      GROUP = 'GROUP'
      COMPUTER = 'COMPUTER'
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the member. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute member_name
    #   <p> The <code>SAMAccountName</code> of the user, group, or computer to remove from the group.
    #       </p>
    #   @return [String]
    # @!attribute member_realm
    #   <p> The domain name that's associated with the group member. This parameter defaults to the
    #         Managed Microsoft AD domain. </p>
    #            <note>
    #               <p> This parameter is optional and case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class RemoveGroupMemberRequest < Struct.new(
      :directory_id,
      :group_name,
      :member_name,
      :member_realm,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RemoveGroupMemberResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The resource couldn't be found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute search_string
    #   <p> The attribute value that you want to search for. </p>
    #            <note>
    #               <p> Wildcard <code>(*)</code> searches aren't supported. For a list of supported
    #           attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data
    #             Attributes</a>. </p>
    #            </note>
    #   @return [String]
    # @!attribute search_attributes
    #   <p> One or more data attributes that are used to search for a group. For a list of supported
    #         attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #       </p>
    #   @return [Array<String>]
    # @!attribute realm
    #   <p> The domain name that's associated with the group. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to be returned per request. </p>
    #   @return [Integer]
    class SearchGroupsRequest < Struct.new(
      :directory_id,
      :search_string,
      :search_attributes,
      :realm,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain that's associated with the group. </p>
    #   @return [String]
    # @!attribute groups
    #   <p> The group information that the request returns. </p>
    #   @return [Array<Types::Group>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    class SearchGroupsResult < Struct.new(
      :directory_id,
      :realm,
      :groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain name that's associated with the user. </p>
    #            <note>
    #               <p> This parameter is optional, so you can return users outside of your Managed Microsoft AD
    #           domain. When no value is defined, only your Managed Microsoft AD users are returned. </p>
    #               <p> This value is case insensitive. </p>
    #            </note>
    #   @return [String]
    # @!attribute search_string
    #   <p> The attribute value that you want to search for. </p>
    #            <note>
    #               <p> Wildcard <code>(*)</code> searches aren't supported. For a list of supported
    #           attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data
    #             Attributes</a>. </p>
    #            </note>
    #   @return [String]
    # @!attribute search_attributes
    #   <p> One or more data attributes that are used to search for a user. For a list of supported
    #         attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>.
    #       </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to be returned per request. </p>
    #   @return [Integer]
    class SearchUsersRequest < Struct.new(
      :directory_id,
      :realm,
      :search_string,
      :search_attributes,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory where the address block is added. </p>
    #   @return [String]
    # @!attribute realm
    #   <p> The domain that's associated with the user. </p>
    #   @return [String]
    # @!attribute users
    #   <p> The user information that the request returns. </p>
    #   @return [Array<Types::User>]
    # @!attribute next_token
    #   <p> An encoded paging token for paginated calls that can be passed back to retrieve the next
    #         page. </p>
    #   @return [String]
    class SearchUsersResult < Struct.new(
      :directory_id,
      :realm,
      :users,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The limit on the number of requests per second has been exceeded. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p> The recommended amount of seconds to retry after a throttling exception. </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the group. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the group. </p>
    #   @return [String]
    # @!attribute group_type
    #   <p> The AD group type. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work">Active Directory security group type</a>. </p>
    #   @return [String]
    # @!attribute group_scope
    #   <p> The scope of the AD group. For details, see <a href="https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope">Active Directory security groups</a>. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> An expression that defines one or more attributes with the data type and the value of
    #         each attribute. </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute update_type
    #   <p> The type of update to be performed. If no value exists for the attribute, use
    #           <code>ADD</code>. Otherwise, use <code>REPLACE</code> to change an attribute value or
    #           <code>REMOVE</code> to clear the attribute value. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class UpdateGroupRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :group_type,
      :group_scope,
      :other_attributes,
      :update_type,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateGroupResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateType
      ADD = 'ADD'
      REPLACE = 'REPLACE'
      REMOVE = 'REMOVE'
    end

    # @!attribute directory_id
    #   <p> The identifier (ID) of the directory that's associated with the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute email_address
    #   <p> The email address of the user. </p>
    #   @return [String]
    # @!attribute given_name
    #   <p> The first name of the user. </p>
    #   @return [String]
    # @!attribute surname
    #   <p> The last name of the user. </p>
    #   @return [String]
    # @!attribute other_attributes
    #   <p> An expression that defines one or more attribute names with the data type and value of
    #         each attribute. A key is an attribute name, and the value is a list of maps. For a list of
    #         supported attributes, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html">Directory Service Data Attributes</a>. </p>
    #            <note>
    #               <p> Attribute names are case insensitive. </p>
    #            </note>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute update_type
    #   <p> The type of update to be performed. If no value exists for the attribute, use
    #           <code>ADD</code>. Otherwise, use <code>REPLACE</code> to change an attribute value or
    #           <code>REMOVE</code> to clear the attribute value. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> A unique and case-sensitive identifier that you provide to make sure the idempotency of
    #         the request, so multiple identical calls have the same effect as one single call. </p>
    #            <p> A client token is valid for 8 hours after the first request that uses it completes. After
    #         8 hours, any request with the same client token is treated as a new request. If the request
    #         succeeds, any future uses of that token will be idempotent for another 8 hours. </p>
    #            <p> If you submit a request with the same client token but change one of the other parameters
    #         within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>
    #            <note>
    #               <p> This parameter is optional when using the CLI or SDK. </p>
    #            </note>
    #   @return [String]
    class UpdateUserRequest < Struct.new(
      :directory_id,
      :sam_account_name,
      :email_address,
      :given_name,
      :surname,
      :other_attributes,
      :update_type,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateUserResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A user object that contains identifying information and attributes for a specified user.
    #     </p>
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the user. </p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p> The name of the user. </p>
    #   @return [String]
    # @!attribute distinguished_name
    #   <p> The <a href="https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name">distinguished name</a> of the object. </p>
    #   @return [String]
    # @!attribute user_principal_name
    #   <p> The UPN that is an internet-style login name for a user and based on the internet
    #         standard <a href="https://datatracker.ietf.org/doc/html/rfc822">RFC 822</a>. The UPN is shorter
    #         than the distinguished name and easier to remember. </p>
    #   @return [String]
    # @!attribute email_address
    #   <p> The email address of the user. </p>
    #   @return [String]
    # @!attribute given_name
    #   <p> The first name of the user. </p>
    #   @return [String]
    # @!attribute surname
    #   <p> The last name of the user. </p>
    #   @return [String]
    # @!attribute enabled
    #   <p> Indicates whether the user account is active. </p>
    #   @return [Boolean]
    # @!attribute other_attributes
    #   <p> An expression that includes one or more attributes, data types, and values of a
    #         user.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class User < Struct.new(
      :sid,
      :sam_account_name,
      :distinguished_name,
      :user_principal_name,
      :email_address,
      :given_name,
      :surname,
      :enabled,
      :other_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing a subset of the fields of a user object from a directory.</p>
    # @!attribute sid
    #   <p> The unique security identifier (SID) of the user.</p>
    #   @return [String]
    # @!attribute sam_account_name
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute given_name
    #   <p>The first name of the user. </p>
    #   @return [String]
    # @!attribute surname
    #   <p>The last name of the user.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the user account is active.</p>
    #   @return [Boolean]
    class UserSummary < Struct.new(
      :sid,
      :sam_account_name,
      :given_name,
      :surname,
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request isn't valid. Review the details in the error message to update the invalid
    #       parameters or values in your request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p> Reason the request failed validation. </p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      INVALID_REALM = 'INVALID_REALM'
      INVALID_DIRECTORY_TYPE = 'INVALID_DIRECTORY_TYPE'
      INVALID_SECONDARY_REGION = 'INVALID_SECONDARY_REGION'
      INVALID_NEXT_TOKEN = 'INVALID_NEXT_TOKEN'
      INVALID_ATTRIBUTE_VALUE = 'INVALID_ATTRIBUTE_VALUE'
      INVALID_ATTRIBUTE_NAME = 'INVALID_ATTRIBUTE_NAME'
      INVALID_ATTRIBUTE_FOR_USER = 'INVALID_ATTRIBUTE_FOR_USER'
      INVALID_ATTRIBUTE_FOR_GROUP = 'INVALID_ATTRIBUTE_FOR_GROUP'
      INVALID_ATTRIBUTE_FOR_SEARCH = 'INVALID_ATTRIBUTE_FOR_SEARCH'
      INVALID_ATTRIBUTE_FOR_MODIFY = 'INVALID_ATTRIBUTE_FOR_MODIFY'
      DUPLICATE_ATTRIBUTE = 'DUPLICATE_ATTRIBUTE'
      MISSING_ATTRIBUTE = 'MISSING_ATTRIBUTE'
      ATTRIBUTE_EXISTS = 'ATTRIBUTE_EXISTS'
      LDAP_SIZE_LIMIT_EXCEEDED = 'LDAP_SIZE_LIMIT_EXCEEDED'
      LDAP_UNSUPPORTED_OPERATION = 'LDAP_UNSUPPORTED_OPERATION'
    end

  end
end
