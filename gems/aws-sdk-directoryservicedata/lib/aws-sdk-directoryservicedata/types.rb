# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectoryServiceData
  module Types

    # You don't have permission to perform the request or access the
    # directory. It can also occur when the `DirectoryId` doesn't exist or
    # the user, member, or group might be outside of your organizational
    # unit (OU).
    #
    # Make sure that you have the authentication and authorization to
    # perform the action. Review the directory information in the request,
    # and make sure that the object isn't outside of your OU.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request was unauthorized.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] member_name
    #   The `SAMAccountName` of the user, group, or computer to add as a
    #   group member.
    #   @return [String]
    #
    # @!attribute [rw] member_realm
    #   The domain name that's associated with the group member. This
    #   parameter is required only when adding a member outside of your
    #   Managed Microsoft AD domain to a group inside of your Managed
    #   Microsoft AD domain. This parameter defaults to the Managed
    #   Microsoft AD domain.
    #
    #   <note markdown="1"> This parameter is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/AddGroupMemberRequest AWS API Documentation
    #
    class AddGroupMemberRequest < Struct.new(
      :client_token,
      :directory_id,
      :group_name,
      :member_name,
      :member_realm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/AddGroupMemberResult AWS API Documentation
    #
    class AddGroupMemberResult < Aws::EmptyStructure; end

    # The data type for an attribute. Each attribute value is described as a
    # name-value pair. The name is the AD schema name, and the value is the
    # data itself. For a list of supported attributes, see [Directory
    # Service Data Attributes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @note AttributeValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AttributeValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AttributeValue corresponding to the set member.
    #
    # @!attribute [rw] bool
    #   Indicates that the attribute type value is a boolean. For example:
    #
    #   `"BOOL": true`
    #   @return [Boolean]
    #
    # @!attribute [rw] n
    #   Indicates that the attribute type value is a number. For example:
    #
    #   `"N": "16"`
    #   @return [Integer]
    #
    # @!attribute [rw] s
    #   Indicates that the attribute type value is a string. For example:
    #
    #   `"S": "S Group"`
    #   @return [String]
    #
    # @!attribute [rw] ss
    #   Indicates that the attribute type value is a string set. For
    #   example:
    #
    #   `"SS":
    #   ["sample_service_class/host.sample.com:1234/sample_service_name_1",
    #   "sample_service_class/host.sample.com:1234/sample_service_name_2"]`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :bool,
      :n,
      :s,
      :ss,
      :unknown)
      SENSITIVE = [:bool, :n, :s, :ss]
      include Aws::Structure
      include Aws::Structure::Union

      class Bool < AttributeValue; end
      class N < AttributeValue; end
      class S < AttributeValue; end
      class Ss < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # This error will occur when you try to create a resource that conflicts
    # with an existing object. It can also occur when adding a member to a
    # group that the member is already in.
    #
    # This error can be caused by a request sent within the 8-hour
    # idempotency window with the same client token but different input
    # parameters. Client tokens should not be re-used across different
    # requests. After 8 hours, any request with the same client token is
    # treated as a new request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] group_scope
    #   The scope of the AD group. For details, see [Active Directory
    #   security group scope][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #   @return [String]
    #
    # @!attribute [rw] group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   An expression that defines one or more attributes with the data type
    #   and value of each attribute.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :client_token,
      :directory_id,
      :group_scope,
      :group_type,
      :other_attributes,
      :sam_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/CreateGroupResult AWS API Documentation
    #
    class CreateGroupResult < Struct.new(
      :directory_id,
      :sam_account_name,
      :sid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that’s associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   An expression that defines one or more attribute names with the data
    #   type and value of each attribute. A key is an attribute name, and
    #   the value is a list of maps. For a list of supported attributes, see
    #   [Directory Service Data Attributes][1].
    #
    #   <note markdown="1"> Attribute names are case insensitive.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The last name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :client_token,
      :directory_id,
      :email_address,
      :given_name,
      :other_attributes,
      :sam_account_name,
      :surname)
      SENSITIVE = [:email_address, :given_name, :surname]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory where the address block is
    #   added.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/CreateUserResult AWS API Documentation
    #
    class CreateUserResult < Struct.new(
      :directory_id,
      :sam_account_name,
      :sid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :client_token,
      :directory_id,
      :sam_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DeleteGroupResult AWS API Documentation
    #
    class DeleteGroupResult < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :client_token,
      :directory_id,
      :sam_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DeleteUserResult AWS API Documentation
    #
    class DeleteUserResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The Identifier (ID) of the directory associated with the group.
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   One or more attributes to be returned for the group. For a list of
    #   supported attributes, see [Directory Service Data Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data-attributes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DescribeGroupRequest AWS API Documentation
    #
    class DescribeGroupRequest < Struct.new(
      :directory_id,
      :other_attributes,
      :realm,
      :sam_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] distinguished_name
    #   The [distinguished name][1] of the object.
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name
    #   @return [String]
    #
    # @!attribute [rw] group_scope
    #   The scope of the AD group. For details, see [Active Directory
    #   security groups][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #   @return [String]
    #
    # @!attribute [rw] group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   The attribute values that are returned for the attribute names that
    #   are included in the request.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the group.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DescribeGroupResult AWS API Documentation
    #
    class DescribeGroupResult < Struct.new(
      :directory_id,
      :distinguished_name,
      :group_scope,
      :group_type,
      :other_attributes,
      :realm,
      :sam_account_name,
      :sid)
      SENSITIVE = [:distinguished_name]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   One or more attribute names to be returned for the user. A key is an
    #   attribute name, and the value is a list of maps. For a list of
    #   supported attributes, see [Directory Service Data Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the user.
    #
    #   <note markdown="1"> This parameter is optional, so you can return users outside your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD users are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :directory_id,
      :other_attributes,
      :realm,
      :sam_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] distinguished_name
    #   The [distinguished name][1] of the object.
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the user account is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] given_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   The attribute values that are returned for the attribute names that
    #   are included in the request.
    #
    #   <note markdown="1"> Attribute names are case insensitive.
    #
    #    </note>
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_principal_name
    #   The UPN that is an Internet-style login name for a user and is based
    #   on the Internet standard [RFC 822][1]. The UPN is shorter than the
    #   distinguished name and easier to remember.
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc0822.txt
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DescribeUserResult AWS API Documentation
    #
    class DescribeUserResult < Struct.new(
      :directory_id,
      :distinguished_name,
      :email_address,
      :enabled,
      :given_name,
      :other_attributes,
      :realm,
      :sam_account_name,
      :sid,
      :surname,
      :user_principal_name)
      SENSITIVE = [:distinguished_name, :email_address, :given_name, :surname, :user_principal_name]
      include Aws::Structure
    end

    # The request could not be completed due to a problem in the
    # configuration or current state of the specified directory.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed for the specified directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DirectoryUnavailableException AWS API Documentation
    #
    class DirectoryUnavailableException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DisableUserRequest AWS API Documentation
    #
    class DisableUserRequest < Struct.new(
      :client_token,
      :directory_id,
      :sam_account_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DisableUserResult AWS API Documentation
    #
    class DisableUserResult < Aws::EmptyStructure; end

    # A group object that contains identifying information and attributes
    # for a specified group.
    #
    # @!attribute [rw] distinguished_name
    #   The [distinguished name][1] of the object.
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name
    #   @return [String]
    #
    # @!attribute [rw] group_scope
    #   The scope of the AD group. For details, see [Active Directory
    #   security groups][1]
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #   @return [String]
    #
    # @!attribute [rw] group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   An expression of one or more attributes, data types, and the values
    #   of a group.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/Group AWS API Documentation
    #
    class Group < Struct.new(
      :distinguished_name,
      :group_scope,
      :group_type,
      :other_attributes,
      :sam_account_name,
      :sid)
      SENSITIVE = [:distinguished_name]
      include Aws::Structure
    end

    # A structure containing a subset of fields of a group object from a
    # directory.
    #
    # @!attribute [rw] group_scope
    #   The scope of the AD group. For details, see [Active Directory
    #   security groups][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #   @return [String]
    #
    # @!attribute [rw] group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/GroupSummary AWS API Documentation
    #
    class GroupSummary < Struct.new(
      :group_scope,
      :group_type,
      :sam_account_name,
      :sid)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation didn't succeed because an internal error occurred. Try
    # again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] member_realm
    #   The domain name that's associated with the group member. This
    #   parameter defaults to the Managed Microsoft AD domain.
    #
    #   <note markdown="1"> This parameter is optional and case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return members from a group
    #   outside of your Managed Microsoft AD domain. When no value is
    #   defined, only members of your Managed Microsoft AD groups are
    #   returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupMembersRequest AWS API Documentation
    #
    class ListGroupMembersRequest < Struct.new(
      :directory_id,
      :max_results,
      :member_realm,
      :next_token,
      :realm,
      :sam_account_name)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory associated with the group.
    #   @return [String]
    #
    # @!attribute [rw] member_realm
    #   The domain name that's associated with the member.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The member information that the request returns.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupMembersResult AWS API Documentation
    #
    class ListGroupMembersResult < Struct.new(
      :directory_id,
      :member_realm,
      :members,
      :next_token,
      :realm)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   member.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] member_realm
    #   The domain name that's associated with the group member.
    #
    #   <note markdown="1"> This parameter is optional, so you can limit your results to the
    #   group members in a specific domain.
    #
    #    This parameter is case insensitive and defaults to `Realm`
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive and defaults to your Managed
    #   Microsoft AD domain.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The `SAMAccountName` of the user, group, or computer that's a
    #   member of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupsForMemberRequest AWS API Documentation
    #
    class ListGroupsForMemberRequest < Struct.new(
      :directory_id,
      :max_results,
      :member_realm,
      :next_token,
      :realm,
      :sam_account_name)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   member.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The group information that the request returns.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] member_realm
    #   The domain that's associated with the member.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain that's associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupsForMemberResult AWS API Documentation
    #
    class ListGroupsForMemberResult < Struct.new(
      :directory_id,
      :groups,
      :member_realm,
      :next_token,
      :realm)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name associated with the directory.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :directory_id,
      :max_results,
      :next_token,
      :realm)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The group information that the request returns.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupsResult AWS API Documentation
    #
    class ListGroupsResult < Struct.new(
      :directory_id,
      :groups,
      :next_token,
      :realm)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the user.
    #
    #   <note markdown="1"> This parameter is optional, so you can return users outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD users are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :directory_id,
      :max_results,
      :next_token,
      :realm)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain that's associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   The user information that the request returns.
    #   @return [Array<Types::UserSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListUsersResult AWS API Documentation
    #
    class ListUsersResult < Struct.new(
      :directory_id,
      :next_token,
      :realm,
      :users)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # A member object that contains identifying information for a specified
    # member.
    #
    # @!attribute [rw] member_type
    #   The AD type of the member object.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group member.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the group member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/Member AWS API Documentation
    #
    class Member < Struct.new(
      :member_type,
      :sam_account_name,
      :sid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   member.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] member_name
    #   The `SAMAccountName` of the user, group, or computer to remove from
    #   the group.
    #   @return [String]
    #
    # @!attribute [rw] member_realm
    #   The domain name that's associated with the group member. This
    #   parameter defaults to the Managed Microsoft AD domain.
    #
    #   <note markdown="1"> This parameter is optional and case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/RemoveGroupMemberRequest AWS API Documentation
    #
    class RemoveGroupMemberRequest < Struct.new(
      :client_token,
      :directory_id,
      :group_name,
      :member_name,
      :member_realm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/RemoveGroupMemberResult AWS API Documentation
    #
    class RemoveGroupMemberResult < Aws::EmptyStructure; end

    # The resource couldn't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] search_attributes
    #   One or more data attributes that are used to search for a group. For
    #   a list of supported attributes, see [Directory Service Data
    #   Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] search_string
    #   The attribute value that you want to search for.
    #
    #   <note markdown="1"> Wildcard `(*)` searches aren't supported. For a list of supported
    #   attributes, see [Directory Service Data Attributes][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/SearchGroupsRequest AWS API Documentation
    #
    class SearchGroupsRequest < Struct.new(
      :directory_id,
      :max_results,
      :next_token,
      :realm,
      :search_attributes,
      :search_string)
      SENSITIVE = [:next_token, :search_string]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The group information that the request returns.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain that's associated with the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/SearchGroupsResult AWS API Documentation
    #
    class SearchGroupsResult < Struct.new(
      :directory_id,
      :groups,
      :next_token,
      :realm)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain name that's associated with the user.
    #
    #   <note markdown="1"> This parameter is optional, so you can return users outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD users are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] search_attributes
    #   One or more data attributes that are used to search for a user. For
    #   a list of supported attributes, see [Directory Service Data
    #   Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] search_string
    #   The attribute value that you want to search for.
    #
    #   <note markdown="1"> Wildcard `(*)` searches aren't supported. For a list of supported
    #   attributes, see [Directory Service Data Attributes][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/SearchUsersRequest AWS API Documentation
    #
    class SearchUsersRequest < Struct.new(
      :directory_id,
      :max_results,
      :next_token,
      :realm,
      :search_attributes,
      :search_string)
      SENSITIVE = [:next_token, :search_string]
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory where the address block is
    #   added.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An encoded paging token for paginated calls that can be passed back
    #   to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The domain that's associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   The user information that the request returns.
    #   @return [Array<Types::User>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/SearchUsersResult AWS API Documentation
    #
    class SearchUsersResult < Struct.new(
      :directory_id,
      :next_token,
      :realm,
      :users)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # The limit on the number of requests per second has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The recommended amount of seconds to retry after a throttling
    #   exception.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] group_scope
    #   The scope of the AD group. For details, see [Active Directory
    #   security groups][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #   @return [String]
    #
    # @!attribute [rw] group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   An expression that defines one or more attributes with the data type
    #   and the value of each attribute.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] update_type
    #   The type of update to be performed. If no value exists for the
    #   attribute, use `ADD`. Otherwise, use `REPLACE` to change an
    #   attribute value or `REMOVE` to clear the attribute value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :client_token,
      :directory_id,
      :group_scope,
      :group_type,
      :other_attributes,
      :sam_account_name,
      :update_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UpdateGroupResult AWS API Documentation
    #
    class UpdateGroupResult < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it completes. After 8 hours, any request with the same client
    #   token is treated as a new request. If the request succeeds, any
    #   future uses of that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   An expression that defines one or more attribute names with the data
    #   type and value of each attribute. A key is an attribute name, and
    #   the value is a list of maps. For a list of supported attributes, see
    #   [Directory Service Data Attributes][1].
    #
    #   <note markdown="1"> Attribute names are case insensitive.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data-attributes.html
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] update_type
    #   The type of update to be performed. If no value exists for the
    #   attribute, use `ADD`. Otherwise, use `REPLACE` to change an
    #   attribute value or `REMOVE` to clear the attribute value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :client_token,
      :directory_id,
      :email_address,
      :given_name,
      :other_attributes,
      :sam_account_name,
      :surname,
      :update_type)
      SENSITIVE = [:email_address, :given_name, :surname]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UpdateUserResult AWS API Documentation
    #
    class UpdateUserResult < Aws::EmptyStructure; end

    # A user object that contains identifying information and attributes for
    # a specified user.
    #
    # @!attribute [rw] distinguished_name
    #   The [distinguished name][1] of the object.
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the user account is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] given_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] other_attributes
    #   An expression that includes one or more attributes, data types, and
    #   values of a user.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_principal_name
    #   The UPN that is an internet-style login name for a user and based on
    #   the internet standard [RFC 822][1]. The UPN is shorter than the
    #   distinguished name and easier to remember.
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc0822.txt
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/User AWS API Documentation
    #
    class User < Struct.new(
      :distinguished_name,
      :email_address,
      :enabled,
      :given_name,
      :other_attributes,
      :sam_account_name,
      :sid,
      :surname,
      :user_principal_name)
      SENSITIVE = [:distinguished_name, :email_address, :given_name, :surname, :user_principal_name]
      include Aws::Structure
    end

    # A structure containing a subset of the fields of a user object from a
    # directory.
    #
    # @!attribute [rw] enabled
    #   Indicates whether the user account is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] given_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] sam_account_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The unique security identifier (SID) of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The last name of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UserSummary AWS API Documentation
    #
    class UserSummary < Struct.new(
      :enabled,
      :given_name,
      :sam_account_name,
      :sid,
      :surname)
      SENSITIVE = [:given_name, :surname]
      include Aws::Structure
    end

    # The request isn't valid. Review the details in the error message to
    # update the invalid parameters or values in your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

