# frozen_string_literal: true

# This is generated code!

module Aws::Identitystore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Address", name: "Address")
    Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Addresses", name: "Addresses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AlternateIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.identitystore#AlternateIdentifier", name: "AlternateIdentifier")
    AttributeOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#AttributeOperation", name: "AttributeOperation")
    AttributeOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#AttributeOperations", name: "AttributeOperations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AttributePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#AttributePath", name: "AttributePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\p{L}+(?:\\.\\p{L}+){0,2}$"})
    AttributeValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.identitystore#AttributeValue", name: "AttributeValue")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ConflictExceptionReason", name: "ConflictExceptionReason", traits: {"smithy.api#enum" => [{"value" => "UNIQUENESS_CONSTRAINT_VIOLATION", "name" => "UNIQUENESS_CONSTRAINT_VIOLATION"}, {"value" => "CONCURRENT_MODIFICATION", "name" => "CONCURRENT_MODIFICATION"}]})
    CreateGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupInput", name: "CreateGroupInput")
    CreateGroupMembershipInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupMembershipInput", name: "CreateGroupMembershipInput")
    CreateGroupMembershipOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupMembershipOutput", name: "CreateGroupMembershipOutput")
    CreateGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupOutput", name: "CreateGroupOutput")
    CreateUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateUserInput", name: "CreateUserInput")
    CreateUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateUserOutput", name: "CreateUserOutput")
    DeleteGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupInput", name: "DeleteGroupInput")
    DeleteGroupMembershipInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupMembershipInput", name: "DeleteGroupMembershipInput")
    DeleteGroupMembershipOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupMembershipOutput", name: "DeleteGroupMembershipOutput")
    DeleteGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupOutput", name: "DeleteGroupOutput")
    DeleteUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteUserInput", name: "DeleteUserInput")
    DeleteUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteUserOutput", name: "DeleteUserOutput")
    DescribeGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupInput", name: "DescribeGroupInput")
    DescribeGroupMembershipInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupMembershipInput", name: "DescribeGroupMembershipInput")
    DescribeGroupMembershipOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupMembershipOutput", name: "DescribeGroupMembershipOutput")
    DescribeGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupOutput", name: "DescribeGroupOutput")
    DescribeUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeUserInput", name: "DescribeUserInput")
    DescribeUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeUserOutput", name: "DescribeUserOutput")
    Email = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Email", name: "Email")
    Emails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Emails", name: "Emails", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExceptionMessage", name: "ExceptionMessage")
    ExternalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ExternalId", name: "ExternalId")
    ExternalIdIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExternalIdIdentifier", name: "ExternalIdIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    ExternalIdIssuer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExternalIdIssuer", name: "ExternalIdIssuer", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!(?i)(arn|aws):)[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    ExternalIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#ExternalIds", name: "ExternalIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Filter", name: "Filter")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    GetGroupIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupIdInput", name: "GetGroupIdInput")
    GetGroupIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupIdOutput", name: "GetGroupIdOutput")
    GetGroupMembershipIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupMembershipIdInput", name: "GetGroupMembershipIdInput")
    GetGroupMembershipIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupMembershipIdOutput", name: "GetGroupMembershipIdOutput")
    GetUserIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetUserIdInput", name: "GetUserIdInput")
    GetUserIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetUserIdOutput", name: "GetUserIdOutput")
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Group", name: "Group")
    GroupDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#GroupDisplayName", name: "GroupDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+$", "smithy.api#sensitive" => {}})
    GroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#GroupIds", name: "GroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GroupMembership", name: "GroupMembership")
    GroupMembershipExistenceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GroupMembershipExistenceResult", name: "GroupMembershipExistenceResult")
    GroupMembershipExistenceResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#GroupMembershipExistenceResults", name: "GroupMembershipExistenceResults")
    GroupMemberships = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#GroupMemberships", name: "GroupMemberships")
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Groups", name: "Groups")
    IdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#IdentityStoreId", name: "IdentityStoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^d-[0-9a-f]{10}$|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IsMemberInGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#IsMemberInGroupsInput", name: "IsMemberInGroupsInput")
    IsMemberInGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#IsMemberInGroupsOutput", name: "IsMemberInGroupsOutput")
    ListGroupMembershipsForMemberInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsForMemberInput", name: "ListGroupMembershipsForMemberInput")
    ListGroupMembershipsForMemberOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsForMemberOutput", name: "ListGroupMembershipsForMemberOutput")
    ListGroupMembershipsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsInput", name: "ListGroupMembershipsInput")
    ListGroupMembershipsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsOutput", name: "ListGroupMembershipsOutput")
    ListGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupsInput", name: "ListGroupsInput")
    ListGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupsOutput", name: "ListGroupsOutput")
    ListUsersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListUsersInput", name: "ListUsersInput")
    ListUsersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListUsersOutput", name: "ListUsersOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.identitystore#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemberId = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.identitystore#MemberId", name: "MemberId")
    Name = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Name", name: "Name")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[-a-zA-Z0-9+=/:_]*$"})
    PhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#PhoneNumber", name: "PhoneNumber")
    PhoneNumbers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#PhoneNumbers", name: "PhoneNumbers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "GROUP", "name" => "GROUP"}, {"value" => "USER", "name" => "USER"}, {"value" => "IDENTITY_STORE", "name" => "IDENTITY_STORE"}, {"value" => "GROUP_MEMBERSHIP", "name" => "GROUP_MEMBERSHIP"}]})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.identitystore#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    SensitiveBooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.identitystore#SensitiveBooleanType", name: "SensitiveBooleanType", traits: {"smithy.api#default" => false, "smithy.api#sensitive" => {}})
    SensitiveStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#SensitiveStringType", name: "SensitiveStringType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  　]+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UniqueAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UniqueAttribute", name: "UniqueAttribute")
    UpdateGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateGroupInput", name: "UpdateGroupInput")
    UpdateGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateGroupOutput", name: "UpdateGroupOutput")
    UpdateUserInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateUserInput", name: "UpdateUserInput")
    UpdateUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateUserOutput", name: "UpdateUserOutput")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#User", name: "User")
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    Users = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Users", name: "Users")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    AccessDeniedException.type = Types::AccessDeniedException
    Address.add_member(:street_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "StreetAddress"))
    Address.add_member(:locality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locality"))
    Address.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Region"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PostalCode"))
    Address.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Country"))
    Address.add_member(:formatted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Formatted"))
    Address.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Type"))
    Address.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "Primary", traits: {"smithy.api#default" => false}))
    Address.type = Types::Address
    Addresses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Address)
    AlternateIdentifier.add_member(:external_id, Types::AlternateIdentifier::ExternalId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    AlternateIdentifier.add_member(:unique_attribute, Types::AlternateIdentifier::UniqueAttribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueAttribute, location_name: "UniqueAttribute"))
    AlternateIdentifier.add_member(:unknown, Types::AlternateIdentifier::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AlternateIdentifier.type = Types::AlternateIdentifier
    AttributeOperation.add_member(:attribute_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributePath, location_name: "AttributePath", traits: {"smithy.api#required" => {}}))
    AttributeOperation.add_member(:attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: "AttributeValue"))
    AttributeOperation.type = Types::AttributeOperation
    AttributeOperations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeOperation)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "Reason"))
    ConflictException.type = Types::ConflictException
    CreateGroupInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupInput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDisplayName, location_name: "DisplayName"))
    CreateGroupInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Description"))
    CreateGroupInput.type = Types::CreateGroupInput
    CreateGroupMembershipInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipInput.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipInput.type = Types::CreateGroupMembershipInput
    CreateGroupMembershipOutput.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipOutput.type = Types::CreateGroupMembershipOutput
    CreateGroupOutput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    CreateGroupOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupOutput.type = Types::CreateGroupOutput
    CreateUserInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateUserInput.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    CreateUserInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateUserInput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "DisplayName"))
    CreateUserInput.add_member(:nick_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "NickName"))
    CreateUserInput.add_member(:profile_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "ProfileUrl"))
    CreateUserInput.add_member(:emails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Emails, location_name: "Emails"))
    CreateUserInput.add_member(:addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Addresses"))
    CreateUserInput.add_member(:phone_numbers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumbers, location_name: "PhoneNumbers"))
    CreateUserInput.add_member(:user_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "UserType"))
    CreateUserInput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Title"))
    CreateUserInput.add_member(:preferred_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PreferredLanguage"))
    CreateUserInput.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locale"))
    CreateUserInput.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Timezone"))
    CreateUserInput.type = Types::CreateUserInput
    CreateUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    CreateUserOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateUserOutput.type = Types::CreateUserOutput
    DeleteGroupInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DeleteGroupInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    DeleteGroupInput.type = Types::DeleteGroupInput
    DeleteGroupMembershipInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DeleteGroupMembershipInput.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId", traits: {"smithy.api#required" => {}}))
    DeleteGroupMembershipInput.type = Types::DeleteGroupMembershipInput
    DeleteGroupMembershipOutput.type = Types::DeleteGroupMembershipOutput
    DeleteGroupOutput.type = Types::DeleteGroupOutput
    DeleteUserInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DeleteUserInput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    DeleteUserInput.type = Types::DeleteUserInput
    DeleteUserOutput.type = Types::DeleteUserOutput
    DescribeGroupInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribeGroupInput.type = Types::DescribeGroupInput
    DescribeGroupMembershipInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipInput.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipInput.type = Types::DescribeGroupMembershipInput
    DescribeGroupMembershipOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipOutput.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipOutput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipOutput.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipOutput.type = Types::DescribeGroupMembershipOutput
    DescribeGroupOutput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribeGroupOutput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDisplayName, location_name: "DisplayName"))
    DescribeGroupOutput.add_member(:external_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    DescribeGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Description"))
    DescribeGroupOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupOutput.type = Types::DescribeGroupOutput
    DescribeUserInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeUserInput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    DescribeUserInput.type = Types::DescribeUserInput
    DescribeUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribeUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    DescribeUserOutput.add_member(:external_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    DescribeUserOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DescribeUserOutput.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "DisplayName"))
    DescribeUserOutput.add_member(:nick_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "NickName"))
    DescribeUserOutput.add_member(:profile_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "ProfileUrl"))
    DescribeUserOutput.add_member(:emails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Emails, location_name: "Emails"))
    DescribeUserOutput.add_member(:addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Addresses"))
    DescribeUserOutput.add_member(:phone_numbers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumbers, location_name: "PhoneNumbers"))
    DescribeUserOutput.add_member(:user_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "UserType"))
    DescribeUserOutput.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Title"))
    DescribeUserOutput.add_member(:preferred_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PreferredLanguage"))
    DescribeUserOutput.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locale"))
    DescribeUserOutput.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Timezone"))
    DescribeUserOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeUserOutput.type = Types::DescribeUserOutput
    Email.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Value"))
    Email.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Type"))
    Email.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "Primary", traits: {"smithy.api#default" => false}))
    Email.type = Types::Email
    Emails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Email)
    ExternalId.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIdIssuer, location_name: "Issuer", traits: {"smithy.api#required" => {}}))
    ExternalId.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIdIdentifier, location_name: "Id", traits: {"smithy.api#required" => {}}))
    ExternalId.type = Types::ExternalId
    ExternalIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId)
    Filter.add_member(:attribute_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributePath, location_name: "AttributePath", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    Filters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetGroupIdInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupIdInput.add_member(:alternate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateIdentifier, location_name: "AlternateIdentifier", traits: {"smithy.api#required" => {}}))
    GetGroupIdInput.type = Types::GetGroupIdInput
    GetGroupIdOutput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    GetGroupIdOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupIdOutput.type = Types::GetGroupIdOutput
    GetGroupMembershipIdInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdInput.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdInput.type = Types::GetGroupMembershipIdInput
    GetGroupMembershipIdOutput.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdOutput.type = Types::GetGroupMembershipIdOutput
    GetUserIdInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetUserIdInput.add_member(:alternate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlternateIdentifier, location_name: "AlternateIdentifier", traits: {"smithy.api#required" => {}}))
    GetUserIdInput.type = Types::GetUserIdInput
    GetUserIdOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    GetUserIdOutput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetUserIdOutput.type = Types::GetUserIdOutput
    Group.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    Group.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDisplayName, location_name: "DisplayName"))
    Group.add_member(:external_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    Group.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Description"))
    Group.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    Group.type = Types::Group
    GroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId)
    GroupMembership.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GroupMembership.add_member(:membership_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId"))
    GroupMembership.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId"))
    GroupMembership.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId"))
    GroupMembership.type = Types::GroupMembership
    GroupMembershipExistenceResult.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId"))
    GroupMembershipExistenceResult.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId"))
    GroupMembershipExistenceResult.add_member(:membership_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "MembershipExists", traits: {"smithy.api#default" => false}))
    GroupMembershipExistenceResult.type = Types::GroupMembershipExistenceResult
    GroupMembershipExistenceResults.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMembershipExistenceResult)
    GroupMemberships.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMembership)
    Groups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServerException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IsMemberInGroupsInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsInput.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsInput.add_member(:group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIds, location_name: "GroupIds", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsInput.type = Types::IsMemberInGroupsInput
    IsMemberInGroupsOutput.add_member(:results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMembershipExistenceResults, location_name: "Results", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsOutput.type = Types::IsMemberInGroupsOutput
    ListGroupMembershipsForMemberInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsForMemberInput.add_member(:member_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsForMemberInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupMembershipsForMemberInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsForMemberInput.type = Types::ListGroupMembershipsForMemberInput
    ListGroupMembershipsForMemberOutput.add_member(:group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMemberships, location_name: "GroupMemberships", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsForMemberOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsForMemberOutput.type = Types::ListGroupMembershipsForMemberOutput
    ListGroupMembershipsInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupMembershipsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsInput.type = Types::ListGroupMembershipsInput
    ListGroupMembershipsOutput.add_member(:group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMemberships, location_name: "GroupMemberships", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsOutput.type = Types::ListGroupMembershipsOutput
    ListGroupsInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", traits: {"smithy.api#deprecated" => {"message" => "Using filters with ListGroups API is deprecated, please use GetGroupId API instead."}}))
    ListGroupsInput.type = Types::ListGroupsInput
    ListGroupsOutput.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Groups, location_name: "Groups", traits: {"smithy.api#required" => {}}))
    ListGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsOutput.type = Types::ListGroupsOutput
    ListUsersInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListUsersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUsersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersInput.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: "Filters", traits: {"smithy.api#deprecated" => {"message" => "Using filters with ListUsers API is deprecated, please use GetGroupId API instead."}}))
    ListUsersInput.type = Types::ListUsersInput
    ListUsersOutput.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Users, location_name: "Users", traits: {"smithy.api#required" => {}}))
    ListUsersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersOutput.type = Types::ListUsersOutput
    MemberId.add_member(:user_id, Types::MemberId::UserId, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId"))
    MemberId.add_member(:unknown, Types::MemberId::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemberId.type = Types::MemberId
    Name.add_member(:formatted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Formatted"))
    Name.add_member(:family_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "FamilyName"))
    Name.add_member(:given_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "GivenName"))
    Name.add_member(:middle_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "MiddleName"))
    Name.add_member(:honorific_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "HonorificPrefix"))
    Name.add_member(:honorific_suffix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "HonorificSuffix"))
    Name.type = Types::Name
    PhoneNumber.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Value"))
    PhoneNumber.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Type"))
    PhoneNumber.add_member(:primary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "Primary", traits: {"smithy.api#default" => false}))
    PhoneNumber.type = Types::PhoneNumber
    PhoneNumbers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumber)
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UniqueAttribute.add_member(:attribute_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributePath, location_name: "AttributePath", traits: {"smithy.api#required" => {}}))
    UniqueAttribute.add_member(:attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    UniqueAttribute.type = Types::UniqueAttribute
    UpdateGroupInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateGroupInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    UpdateGroupInput.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeOperations, location_name: "Operations", traits: {"smithy.api#required" => {}}))
    UpdateGroupInput.type = Types::UpdateGroupInput
    UpdateGroupOutput.type = Types::UpdateGroupOutput
    UpdateUserInput.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateUserInput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    UpdateUserInput.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeOperations, location_name: "Operations", traits: {"smithy.api#required" => {}}))
    UpdateUserInput.type = Types::UpdateUserInput
    UpdateUserOutput.type = Types::UpdateUserOutput
    User.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    User.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    User.add_member(:external_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    User.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    User.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "DisplayName"))
    User.add_member(:nick_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "NickName"))
    User.add_member(:profile_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "ProfileUrl"))
    User.add_member(:emails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Emails, location_name: "Emails"))
    User.add_member(:addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Addresses, location_name: "Addresses"))
    User.add_member(:phone_numbers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhoneNumbers, location_name: "PhoneNumbers"))
    User.add_member(:user_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "UserType"))
    User.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Title"))
    User.add_member(:preferred_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PreferredLanguage"))
    User.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locale"))
    User.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Timezone"))
    User.add_member(:identity_store_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStoreId, location_name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    User.type = Types::User
    Users.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ValidationException.type = Types::ValidationException

    AWSIdentityStore = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.identitystore#AWSIdentityStore"
      service.name = "AWSIdentityStore"
      service.version = "2020-06-15"
      service.traits = {"aws.api#service" => {"sdkId" => "identitystore", "arnNamespace" => "identitystore", "cloudFormationName" => "IdentityStore", "cloudTrailEventSource" => "identitystore.amazonaws.com", "endpointPrefix" => "identitystore"}, "aws.auth#sigv4" => {"name" => "identitystore"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS SSO Identity Store"}
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_group_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#CreateGroupMembership"
        operation.name = "CreateGroupMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupMembershipInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupMembershipOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#CreateUser"
        operation.name = "CreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_group_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DeleteGroupMembership"
        operation.name = "DeleteGroupMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupMembershipInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupMembershipOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeGroup"
        operation.name = "DescribeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_group_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeGroupMembership"
        operation.name = "DescribeGroupMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupMembershipInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupMembershipOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_group_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#GetGroupId"
        operation.name = "GetGroupId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupIdOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_group_membership_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#GetGroupMembershipId"
        operation.name = "GetGroupMembershipId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupMembershipIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupMembershipIdOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#GetUserId"
        operation.name = "GetUserId"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserIdInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserIdOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:is_member_in_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#IsMemberInGroups"
        operation.name = "IsMemberInGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsMemberInGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsMemberInGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_group_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListGroupMemberships"
        operation.name = "ListGroupMemberships"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembershipsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembershipsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupMemberships.new
      end)
      service.add_operation(:list_group_memberships_for_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListGroupMembershipsForMember"
        operation.name = "ListGroupMembershipsForMember"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembershipsForMemberInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembershipsForMemberOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupMembershipsForMember.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListGroups"
        operation.name = "ListGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListUsers"
        operation.name = "ListUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
