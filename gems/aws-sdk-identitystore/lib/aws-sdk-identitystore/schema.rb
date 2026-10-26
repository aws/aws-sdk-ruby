# frozen_string_literal: true

# This is generated code!

module Aws::Identitystore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#AccessDeniedExceptionReason", name: "AccessDeniedExceptionReason")
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Address", name: "Address")
    Addresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Addresses", name: "Addresses", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AlternateIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.identitystore#AlternateIdentifier", name: "AlternateIdentifier")
    AttributeOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#AttributeOperation", name: "AttributeOperation")
    AttributeOperations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#AttributeOperations", name: "AttributeOperations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AttributePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#AttributePath", name: "AttributePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?:\\p{L}+:\\p{L}+:\\p{L}+(?:\\.\\p{L}+){0,3}|\\p{L}+(?:\\.\\p{L}+){0,2})$"})
    AttributeValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.identitystore#AttributeValue", name: "AttributeValue")
    BooleanType = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.identitystore#BooleanType", name: "BooleanType", traits: {"smithy.api#default" => false})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#ConflictExceptionReason", name: "ConflictExceptionReason")
    CreateGroupMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupMembershipRequest", name: "CreateGroupMembershipRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}, {"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    CreateGroupMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupMembershipResponse", name: "CreateGroupMembershipResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupRequest", name: "CreateGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateGroupResponse", name: "CreateGroupResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateUserRequest", name: "CreateUserRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    CreateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#CreateUserResponse", name: "CreateUserResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.identitystore#DateType", name: "DateType")
    DeleteGroupMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupMembershipRequest", name: "DeleteGroupMembershipRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DeleteGroupMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupMembershipResponse", name: "DeleteGroupMembershipResponse")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupRequest", name: "DeleteGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DeleteGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteGroupResponse", name: "DeleteGroupResponse")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteUserRequest", name: "DeleteUserRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DeleteUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DeleteUserResponse", name: "DeleteUserResponse")
    DescribeGroupMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupMembershipRequest", name: "DescribeGroupMembershipRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DescribeGroupMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupMembershipResponse", name: "DescribeGroupMembershipResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}, {"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DescribeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupRequest", name: "DescribeGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DescribeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeGroupResponse", name: "DescribeGroupResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DescribeIdentityStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeIdentityStoreRequest", name: "DescribeIdentityStoreRequest")
    DescribeIdentityStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeIdentityStoreResponse", name: "DescribeIdentityStoreResponse")
    DescribeUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeUserRequest", name: "DescribeUserRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    DescribeUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#DescribeUserResponse", name: "DescribeUserResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    Email = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Email", name: "Email")
    Emails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Emails", name: "Emails", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExceptionMessage", name: "ExceptionMessage")
    ExtensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExtensionName", name: "ExtensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^aws:identitystore:[a-z]{1,20}$"})
    ExtensionNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#ExtensionNames", name: "ExtensionNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    Extensions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.identitystore#Extensions", name: "Extensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ExternalId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ExternalId", name: "ExternalId")
    ExternalIdIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExternalIdIdentifier", name: "ExternalIdIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    ExternalIdIssuer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ExternalIdIssuer", name: "ExternalIdIssuer", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    ExternalIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#ExternalIds", name: "ExternalIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Filter", name: "Filter")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    GetGroupIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupIdRequest", name: "GetGroupIdRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    GetGroupIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupIdResponse", name: "GetGroupIdResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}, {"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    GetGroupMembershipIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupMembershipIdRequest", name: "GetGroupMembershipIdRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}, {"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    GetGroupMembershipIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetGroupMembershipIdResponse", name: "GetGroupMembershipIdResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}, {"resource" => "com.amazonaws.identitystore#GroupMembershipResource"}]})
    GetUserIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetUserIdRequest", name: "GetUserIdRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    GetUserIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GetUserIdResponse", name: "GetUserIdResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}, {"resource" => "com.amazonaws.identitystore#UserResource"}]})
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Group", name: "Group", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    GroupDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#GroupDisplayName", name: "GroupDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  　]+$", "smithy.api#sensitive" => {}})
    GroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#GroupIds", name: "GroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    GroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GroupMembership", name: "GroupMembership", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}, {"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    GroupMembershipExistenceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#GroupMembershipExistenceResult", name: "GroupMembershipExistenceResult", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}]})
    GroupMembershipExistenceResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#GroupMembershipExistenceResults", name: "GroupMembershipExistenceResults")
    GroupMemberships = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#GroupMemberships", name: "GroupMemberships")
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Groups", name: "Groups")
    IdentityStore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#IdentityStore", name: "IdentityStore")
    IdentityStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#IdentityStoreArn", name: "IdentityStoreArn", traits: {"smithy.api#length" => {"min" => 62, "max" => 93}, "smithy.api#pattern" => "^arn:aws[a-z-]*:identitystore::\\d{12}:identitystore/(d-[0-9a-f]{10}|[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$"})
    IdentityStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#IdentityStoreId", name: "IdentityStoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 93}, "smithy.api#pattern" => "^(arn:aws[a-z-]*:identitystore::\\d{12}:identitystore/)?(d-[0-9a-f]{10}|[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$"})
    IdentityStores = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#IdentityStores", name: "IdentityStores")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpCidrList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#IpCidrList", name: "IpCidrList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    IpCidrType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#IpCidrType", name: "IpCidrType", traits: {"smithy.api#length" => {"min" => 2, "max" => 43}, "smithy.api#pattern" => "^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))?|(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:(:[0-9a-fA-F]{1,4}){1,6}|:((:[0-9a-fA-F]{1,4}){1,7}|:))(\\/(12[0-8]|1[0-1][0-9]|[1-9][0-9]|[0-9]))?)$"})
    IsMemberInGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#IsMemberInGroupsRequest", name: "IsMemberInGroupsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    IsMemberInGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#IsMemberInGroupsResponse", name: "IsMemberInGroupsResponse")
    ListGroupMembershipsForMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsForMemberRequest", name: "ListGroupMembershipsForMemberRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    ListGroupMembershipsForMemberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsForMemberResponse", name: "ListGroupMembershipsForMemberResponse")
    ListGroupMembershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsRequest", name: "ListGroupMembershipsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#GroupResource"}, {"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    ListGroupMembershipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupMembershipsResponse", name: "ListGroupMembershipsResponse")
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupsRequest", name: "ListGroupsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListGroupsResponse", name: "ListGroupsResponse")
    ListIdentityStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListIdentityStoresRequest", name: "ListIdentityStoresRequest")
    ListIdentityStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListIdentityStoresResponse", name: "ListIdentityStoresResponse")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListUsersRequest", name: "ListUsersRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    ListUsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ListUsersResponse", name: "ListUsersResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.identitystore#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MemberId = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.identitystore#MemberId", name: "MemberId")
    Name = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Name", name: "Name")
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#NetworkConfiguration", name: "NetworkConfiguration")
    NetworkConfigurationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#NetworkConfigurationDetails", name: "NetworkConfigurationDetails")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}, "smithy.api#pattern" => "^[-a-zA-Z0-9+=/:_]*$"})
    PhoneNumber = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#PhoneNumber", name: "PhoneNumber")
    PhoneNumbers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#PhoneNumbers", name: "PhoneNumbers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Photo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Photo", name: "Photo")
    Photos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Photos", name: "Photos", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 100}, "smithy.api#pattern" => "^arn:aws[a-z-]*:identitystore:::(user|group|membership)/([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(arn:aws[a-z-]*:identitystore:::(user|group|membership)/)?([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#ResourceNotFoundExceptionReason", name: "ResourceNotFoundExceptionReason")
    ResourceRevision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#ResourceRevision", name: "ResourceRevision", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9]+$"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#ResourceType", name: "ResourceType")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.identitystore#RetryAfterSeconds", name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0})
    Role = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#Role", name: "Role")
    Roles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Roles", name: "Roles", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SensitiveStringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#SensitiveStringType", name: "SensitiveStringType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  　]+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#StringType", name: "StringType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    ThrottlingExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#ThrottlingExceptionReason", name: "ThrottlingExceptionReason")
    UniqueAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UniqueAttribute", name: "UniqueAttribute")
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateGroupRequest", name: "UpdateGroupRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    UpdateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateGroupResponse", name: "UpdateGroupResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    UpdateIdentityStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateIdentityStoreRequest", name: "UpdateIdentityStoreRequest")
    UpdateIdentityStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateIdentityStoreResponse", name: "UpdateIdentityStoreResponse")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateUserRequest", name: "UpdateUserRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    UpdateUserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#UpdateUserResponse", name: "UpdateUserResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#User", name: "User", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.identitystore#IdentityStoreResource"}]})
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    UserStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#UserStatus", name: "UserStatus")
    Users = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#Users", name: "Users")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.identitystore#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.identitystore#ValidationExceptionReason", name: "ValidationExceptionReason")
    VpcIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.identitystore#VpcIdList", name: "VpcIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    VpcIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.identitystore#VpcIdType", name: "VpcIdType", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-([0-9a-f]){8}(([0-9a-f]){9})?$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedExceptionReason, name: "Reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedExceptionReason.add_member(:kms_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "KMS_ACCESS_DENIED"}))
    Address.add_member(:street_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "StreetAddress"))
    Address.add_member(:locality, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Locality"))
    Address.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Region"))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "PostalCode"))
    Address.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Country"))
    Address.add_member(:formatted, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Formatted"))
    Address.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Type"))
    Address.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Primary", traits: {"smithy.api#default" => false}))
    Address.type = Types::Address
    Addresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "member"))
    AlternateIdentifier.add_member(:external_id, Types::AlternateIdentifier::ExternalId, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "ExternalId"))
    AlternateIdentifier.add_member(:unique_attribute, Types::AlternateIdentifier::UniqueAttribute, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueAttribute, name: "UniqueAttribute"))
    AlternateIdentifier.add_member(:unknown, Types::AlternateIdentifier::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AlternateIdentifier.type = Types::AlternateIdentifier
    AttributeOperation.add_member(:attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributePath, name: "AttributePath", traits: {"smithy.api#required" => {}}))
    AttributeOperation.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue"))
    AttributeOperation.type = Types::AttributeOperation
    AttributeOperations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeOperation, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ConflictException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ConflictException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictExceptionReason, name: "Reason"))
    ConflictException.type = Types::ConflictException
    ConflictExceptionReason.add_member(:uniqueness_constraint_violation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIQUENESS_CONSTRAINT_VIOLATION", traits: {"smithy.api#enumValue" => "UNIQUENESS_CONSTRAINT_VIOLATION"}))
    ConflictExceptionReason.add_member(:concurrent_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENT_MODIFICATION", traits: {"smithy.api#enumValue" => "CONCURRENT_MODIFICATION"}))
    CreateGroupMembershipRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipRequest.type = Types::CreateGroupMembershipRequest
    CreateGroupMembershipResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipResponse.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "MembershipId", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipResponse.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "MembershipArn", traits: {"smithy.api#required" => {}}))
    CreateGroupMembershipResponse.type = Types::CreateGroupMembershipResponse
    CreateGroupRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDisplayName, name: "DisplayName"))
    CreateGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Description"))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateGroupResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    CreateGroupResponse.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "GroupArn", traits: {"smithy.api#required" => {}}))
    CreateGroupResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    CreateGroupResponse.type = Types::CreateGroupResponse
    CreateUserRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "UserName"))
    CreateUserRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateUserRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "DisplayName"))
    CreateUserRequest.add_member(:nick_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "NickName"))
    CreateUserRequest.add_member(:profile_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "ProfileUrl"))
    CreateUserRequest.add_member(:emails, ::Smithy::Schema::Shapes::MemberShape.new(target: Emails, name: "Emails"))
    CreateUserRequest.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Addresses"))
    CreateUserRequest.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumbers, name: "PhoneNumbers"))
    CreateUserRequest.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "UserType"))
    CreateUserRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Title"))
    CreateUserRequest.add_member(:preferred_language, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "PreferredLanguage"))
    CreateUserRequest.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Locale"))
    CreateUserRequest.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Timezone"))
    CreateUserRequest.add_member(:photos, ::Smithy::Schema::Shapes::MemberShape.new(target: Photos, name: "Photos"))
    CreateUserRequest.add_member(:website, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Website"))
    CreateUserRequest.add_member(:birthdate, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Birthdate"))
    CreateUserRequest.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: Roles, name: "Roles"))
    CreateUserRequest.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Extensions, name: "Extensions"))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    CreateUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    CreateUserResponse.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "UserArn", traits: {"smithy.api#required" => {}}))
    CreateUserResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    CreateUserResponse.type = Types::CreateUserResponse
    DeleteGroupMembershipRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DeleteGroupMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "MembershipId", traits: {"smithy.api#required" => {}}))
    DeleteGroupMembershipRequest.type = Types::DeleteGroupMembershipRequest
    DeleteGroupMembershipResponse.type = Types::DeleteGroupMembershipResponse
    DeleteGroupRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision"))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    DeleteUserRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision"))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DescribeGroupMembershipRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "MembershipId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipRequest.type = Types::DescribeGroupMembershipRequest
    DescribeGroupMembershipResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipResponse.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "MembershipId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipResponse.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "MembershipArn", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipResponse.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId", traits: {"smithy.api#required" => {}}))
    DescribeGroupMembershipResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt"))
    DescribeGroupMembershipResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdatedAt"))
    DescribeGroupMembershipResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CreatedBy"))
    DescribeGroupMembershipResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UpdatedBy"))
    DescribeGroupMembershipResponse.type = Types::DescribeGroupMembershipResponse
    DescribeGroupRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribeGroupRequest.type = Types::DescribeGroupRequest
    DescribeGroupResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeGroupResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribeGroupResponse.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "GroupArn", traits: {"smithy.api#required" => {}}))
    DescribeGroupResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    DescribeGroupResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDisplayName, name: "DisplayName"))
    DescribeGroupResponse.add_member(:external_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIds, name: "ExternalIds"))
    DescribeGroupResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Description"))
    DescribeGroupResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt"))
    DescribeGroupResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdatedAt"))
    DescribeGroupResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CreatedBy"))
    DescribeGroupResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UpdatedBy"))
    DescribeGroupResponse.type = Types::DescribeGroupResponse
    DescribeIdentityStoreRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeIdentityStoreRequest.type = Types::DescribeIdentityStoreRequest
    DescribeIdentityStoreResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeIdentityStoreResponse.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreArn, name: "IdentityStoreArn", traits: {"smithy.api#required" => {}}))
    DescribeIdentityStoreResponse.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfigurationDetails, name: "NetworkConfiguration"))
    DescribeIdentityStoreResponse.type = Types::DescribeIdentityStoreResponse
    DescribeUserRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionNames, name: "Extensions"))
    DescribeUserRequest.type = Types::DescribeUserRequest
    DescribeUserResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    DescribeUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    DescribeUserResponse.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "UserArn", traits: {"smithy.api#required" => {}}))
    DescribeUserResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    DescribeUserResponse.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "UserName"))
    DescribeUserResponse.add_member(:external_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIds, name: "ExternalIds"))
    DescribeUserResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    DescribeUserResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "DisplayName"))
    DescribeUserResponse.add_member(:nick_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "NickName"))
    DescribeUserResponse.add_member(:profile_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "ProfileUrl"))
    DescribeUserResponse.add_member(:emails, ::Smithy::Schema::Shapes::MemberShape.new(target: Emails, name: "Emails"))
    DescribeUserResponse.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Addresses"))
    DescribeUserResponse.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumbers, name: "PhoneNumbers"))
    DescribeUserResponse.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "UserType"))
    DescribeUserResponse.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Title"))
    DescribeUserResponse.add_member(:preferred_language, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "PreferredLanguage"))
    DescribeUserResponse.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Locale"))
    DescribeUserResponse.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Timezone"))
    DescribeUserResponse.add_member(:user_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatus, name: "UserStatus"))
    DescribeUserResponse.add_member(:photos, ::Smithy::Schema::Shapes::MemberShape.new(target: Photos, name: "Photos"))
    DescribeUserResponse.add_member(:website, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Website"))
    DescribeUserResponse.add_member(:birthdate, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Birthdate"))
    DescribeUserResponse.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: Roles, name: "Roles"))
    DescribeUserResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt"))
    DescribeUserResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CreatedBy"))
    DescribeUserResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdatedAt"))
    DescribeUserResponse.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UpdatedBy"))
    DescribeUserResponse.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Extensions, name: "Extensions"))
    DescribeUserResponse.type = Types::DescribeUserResponse
    Email.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Value"))
    Email.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Type"))
    Email.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Primary", traits: {"smithy.api#default" => false}))
    Email.type = Types::Email
    Emails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "member"))
    ExtensionNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionName, name: "member"))
    Extensions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionName, name: "key"))
    Extensions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    ExternalId.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdIssuer, name: "Issuer", traits: {"smithy.api#required" => {}}))
    ExternalId.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIdIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    ExternalId.type = Types::ExternalId
    ExternalIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "member"))
    Filter.add_member(:attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributePath, name: "AttributePath", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    Filters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetGroupIdRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupIdRequest.add_member(:alternate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateIdentifier, name: "AlternateIdentifier", traits: {"smithy.api#required" => {}}))
    GetGroupIdRequest.type = Types::GetGroupIdRequest
    GetGroupIdResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupIdResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    GetGroupIdResponse.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "GroupArn", traits: {"smithy.api#required" => {}}))
    GetGroupIdResponse.type = Types::GetGroupIdResponse
    GetGroupMembershipIdRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdRequest.type = Types::GetGroupMembershipIdRequest
    GetGroupMembershipIdResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdResponse.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "MembershipId", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdResponse.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "MembershipArn", traits: {"smithy.api#required" => {}}))
    GetGroupMembershipIdResponse.type = Types::GetGroupMembershipIdResponse
    GetUserIdRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetUserIdRequest.add_member(:alternate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AlternateIdentifier, name: "AlternateIdentifier", traits: {"smithy.api#required" => {}}))
    GetUserIdRequest.type = Types::GetUserIdRequest
    GetUserIdResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GetUserIdResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    GetUserIdResponse.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "UserArn", traits: {"smithy.api#required" => {}}))
    GetUserIdResponse.type = Types::GetUserIdResponse
    Group.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    Group.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    Group.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "GroupArn", traits: {"smithy.api#required" => {}}))
    Group.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    Group.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupDisplayName, name: "DisplayName"))
    Group.add_member(:external_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIds, name: "ExternalIds"))
    Group.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Description"))
    Group.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt"))
    Group.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdatedAt"))
    Group.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CreatedBy"))
    Group.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UpdatedBy"))
    Group.type = Types::Group
    GroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member"))
    GroupMembership.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    GroupMembership.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "MembershipId", traits: {"smithy.api#required" => {}}))
    GroupMembership.add_member(:membership_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "MembershipArn", traits: {"smithy.api#required" => {}}))
    GroupMembership.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId"))
    GroupMembership.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId"))
    GroupMembership.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt"))
    GroupMembership.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdatedAt"))
    GroupMembership.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CreatedBy"))
    GroupMembership.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UpdatedBy"))
    GroupMembership.type = Types::GroupMembership
    GroupMembershipExistenceResult.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId"))
    GroupMembershipExistenceResult.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId"))
    GroupMembershipExistenceResult.add_member(:membership_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "MembershipExists", traits: {"smithy.api#default" => false}))
    GroupMembershipExistenceResult.type = Types::GroupMembershipExistenceResult
    GroupMembershipExistenceResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMembershipExistenceResult, name: "member"))
    GroupMemberships.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMembership, name: "member"))
    Groups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "member"))
    IdentityStore.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    IdentityStore.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreArn, name: "IdentityStoreArn", traits: {"smithy.api#required" => {}}))
    IdentityStore.type = Types::IdentityStore
    IdentityStores.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStore, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InternalServerException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    IpCidrList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IpCidrType, name: "member"))
    IsMemberInGroupsRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsRequest.add_member(:group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIds, name: "GroupIds", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsRequest.type = Types::IsMemberInGroupsRequest
    IsMemberInGroupsResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMembershipExistenceResults, name: "Results", traits: {"smithy.api#required" => {}}))
    IsMemberInGroupsResponse.type = Types::IsMemberInGroupsResponse
    ListGroupMembershipsForMemberRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsForMemberRequest.add_member(:member_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberId, name: "MemberId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsForMemberRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#addedDefault" => {}, "smithy.api#clientOptional" => {}, "smithy.api#default" => 100}))
    ListGroupMembershipsForMemberRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupMembershipsForMemberRequest.type = Types::ListGroupMembershipsForMemberRequest
    ListGroupMembershipsForMemberResponse.add_member(:group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMemberships, name: "GroupMemberships", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsForMemberResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupMembershipsForMemberResponse.type = Types::ListGroupMembershipsForMemberResponse
    ListGroupMembershipsRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#addedDefault" => {}, "smithy.api#clientOptional" => {}, "smithy.api#default" => 100}))
    ListGroupMembershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupMembershipsRequest.type = Types::ListGroupMembershipsRequest
    ListGroupMembershipsResponse.add_member(:group_memberships, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMemberships, name: "GroupMemberships", traits: {"smithy.api#required" => {}}))
    ListGroupMembershipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupMembershipsResponse.type = Types::ListGroupMembershipsResponse
    ListGroupsRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#addedDefault" => {}, "smithy.api#clientOptional" => {}, "smithy.api#default" => 100}))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters", traits: {"smithy.api#deprecated" => {"message" => "Using filters with ListGroups API is deprecated, please use GetGroupId API instead."}}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Groups, name: "Groups", traits: {"smithy.api#required" => {}}))
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListIdentityStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListIdentityStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIdentityStoresRequest.type = Types::ListIdentityStoresRequest
    ListIdentityStoresResponse.add_member(:identity_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStores, name: "IdentityStores", traits: {"smithy.api#required" => {}}))
    ListIdentityStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIdentityStoresResponse.type = Types::ListIdentityStoresResponse
    ListUsersRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    ListUsersRequest.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionNames, name: "Extensions"))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#addedDefault" => {}, "smithy.api#clientOptional" => {}, "smithy.api#default" => 100}))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListUsersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters", traits: {"smithy.api#deprecated" => {"message" => "Using filters with ListUsers API is deprecated, please use GetUserId API instead."}}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResponse.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: Users, name: "Users", traits: {"smithy.api#required" => {}}))
    ListUsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListUsersResponse.type = Types::ListUsersResponse
    MemberId.add_member(:user_id, Types::MemberId::UserId, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    MemberId.add_member(:unknown, Types::MemberId::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemberId.type = Types::MemberId
    Name.add_member(:formatted, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Formatted"))
    Name.add_member(:family_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "FamilyName"))
    Name.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "GivenName"))
    Name.add_member(:middle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "MiddleName"))
    Name.add_member(:honorific_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "HonorificPrefix"))
    Name.add_member(:honorific_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "HonorificSuffix"))
    Name.type = Types::Name
    NetworkConfiguration.add_member(:vpce_access_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "VpceAccessRequired", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    NetworkConfiguration.add_member(:api_restrict_source_vpcs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdList, name: "ApiRestrictSourceVpcs"))
    NetworkConfiguration.add_member(:api_allow_source_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpCidrList, name: "ApiAllowSourceIps"))
    NetworkConfiguration.add_member(:scim_allow_source_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpCidrList, name: "ScimAllowSourceIps"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NetworkConfigurationDetails.add_member(:vpce_access_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "VpceAccessRequired", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    NetworkConfigurationDetails.add_member(:api_restrict_source_vpcs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdList, name: "ApiRestrictSourceVpcs"))
    NetworkConfigurationDetails.add_member(:api_allow_source_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpCidrList, name: "ApiAllowSourceIps"))
    NetworkConfigurationDetails.add_member(:scim_allow_source_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpCidrList, name: "ScimAllowSourceIps"))
    NetworkConfigurationDetails.type = Types::NetworkConfigurationDetails
    PhoneNumber.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Value"))
    PhoneNumber.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Type"))
    PhoneNumber.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Primary", traits: {"smithy.api#default" => false}))
    PhoneNumber.type = Types::PhoneNumber
    PhoneNumbers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "member"))
    Photo.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Value", traits: {"smithy.api#required" => {}}))
    Photo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Type"))
    Photo.add_member(:display, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Display"))
    Photo.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Primary", traits: {"smithy.api#default" => false}))
    Photo.type = Types::Photo
    Photos.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Photo, name: "member"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResourceNotFoundException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundExceptionReason, name: "Reason"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResourceNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceNotFoundExceptionReason.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_NOT_FOUND", traits: {"smithy.api#enumValue" => "KMS_KEY_NOT_FOUND"}))
    ResourceType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    ResourceType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ResourceType.add_member(:identity_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_STORE", traits: {"smithy.api#enumValue" => "IDENTITY_STORE"}))
    ResourceType.add_member(:group_membership, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP_MEMBERSHIP", traits: {"smithy.api#enumValue" => "GROUP_MEMBERSHIP"}))
    ResourceType.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_POLICY", traits: {"smithy.api#enumValue" => "RESOURCE_POLICY"}))
    Role.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Value"))
    Role.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Type"))
    Role.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanType, name: "Primary", traits: {"smithy.api#default" => false}))
    Role.type = Types::Role
    Roles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ServiceQuotaExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ThrottlingException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingExceptionReason, name: "Reason"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingExceptionReason.add_member(:kms_throttling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_THROTTLING", traits: {"smithy.api#enumValue" => "KMS_THROTTLING"}))
    UniqueAttribute.add_member(:attribute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributePath, name: "AttributePath", traits: {"smithy.api#required" => {}}))
    UniqueAttribute.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    UniqueAttribute.type = Types::UniqueAttribute
    UpdateGroupRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeOperations, name: "Operations", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision"))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateGroupResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    UpdateGroupResponse.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "GroupArn", traits: {"smithy.api#required" => {}}))
    UpdateGroupResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    UpdateGroupResponse.type = Types::UpdateGroupResponse
    UpdateIdentityStoreRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateIdentityStoreRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "NetworkConfiguration"))
    UpdateIdentityStoreRequest.type = Types::UpdateIdentityStoreRequest
    UpdateIdentityStoreResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateIdentityStoreResponse.add_member(:identity_store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreArn, name: "IdentityStoreArn", traits: {"smithy.api#required" => {}}))
    UpdateIdentityStoreResponse.type = Types::UpdateIdentityStoreResponse
    UpdateUserRequest.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeOperations, name: "Operations", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision"))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "UserArn", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    UpdateUserResponse.type = Types::UpdateUserResponse
    User.add_member(:identity_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityStoreId, name: "IdentityStoreId", traits: {"smithy.api#required" => {}}))
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UserId", traits: {"smithy.api#required" => {}}))
    User.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "UserArn", traits: {"smithy.api#required" => {}}))
    User.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRevision, name: "Revision", traits: {"smithy.api#required" => {}}))
    User.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "UserName"))
    User.add_member(:external_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalIds, name: "ExternalIds"))
    User.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    User.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "DisplayName"))
    User.add_member(:nick_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "NickName"))
    User.add_member(:profile_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "ProfileUrl"))
    User.add_member(:emails, ::Smithy::Schema::Shapes::MemberShape.new(target: Emails, name: "Emails"))
    User.add_member(:addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: Addresses, name: "Addresses"))
    User.add_member(:phone_numbers, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumbers, name: "PhoneNumbers"))
    User.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "UserType"))
    User.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Title"))
    User.add_member(:preferred_language, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "PreferredLanguage"))
    User.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Locale"))
    User.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Timezone"))
    User.add_member(:user_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStatus, name: "UserStatus"))
    User.add_member(:photos, ::Smithy::Schema::Shapes::MemberShape.new(target: Photos, name: "Photos"))
    User.add_member(:website, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Website"))
    User.add_member(:birthdate, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveStringType, name: "Birthdate"))
    User.add_member(:roles, ::Smithy::Schema::Shapes::MemberShape.new(target: Roles, name: "Roles"))
    User.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "CreatedAt"))
    User.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "CreatedBy"))
    User.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateType, name: "UpdatedAt"))
    User.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "UpdatedBy"))
    User.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Extensions, name: "Extensions"))
    User.type = Types::User
    UserStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Users.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ValidationException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "RequestId"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:kms_invalid_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_INVALID_ARN", traits: {"smithy.api#enumValue" => "KMS_INVALID_ARN"}))
    ValidationExceptionReason.add_member(:kms_invalid_key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_INVALID_KEY_USAGE", traits: {"smithy.api#enumValue" => "KMS_INVALID_KEY_USAGE"}))
    ValidationExceptionReason.add_member(:kms_invalid_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_INVALID_STATE", traits: {"smithy.api#enumValue" => "KMS_INVALID_STATE"}))
    ValidationExceptionReason.add_member(:kms_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_DISABLED", traits: {"smithy.api#enumValue" => "KMS_DISABLED"}))
    VpcIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdType, name: "member"))

    AWSIdentityStore = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.identitystore#AWSIdentityStore"
      service.name = "AWSIdentityStore"
      service.version = "2020-06-15"
      service.traits = {"aws.api#service" => {"sdkId" => "identitystore", "arnNamespace" => "identitystore", "cloudFormationName" => "IdentityStore", "cloudTrailEventSource" => "identitystore.amazonaws.com", "endpointPrefix" => "identitystore"}, "aws.auth#sigv4" => {"name" => "identitystore"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS SSO Identity Store", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://identitystore-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://identitystore.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://identitystore-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://identitystore.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://identitystore.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupRequest
        operation.output = CreateGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_group_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#CreateGroupMembership"
        operation.name = "CreateGroupMembership"
        operation.input = CreateGroupMembershipRequest
        operation.output = CreateGroupMembershipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = DeleteGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_group_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DeleteGroupMembership"
        operation.name = "DeleteGroupMembership"
        operation.input = DeleteGroupMembershipRequest
        operation.output = DeleteGroupMembershipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = DeleteUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeGroup"
        operation.name = "DescribeGroup"
        operation.input = DescribeGroupRequest
        operation.output = DescribeGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_group_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeGroupMembership"
        operation.name = "DescribeGroupMembership"
        operation.input = DescribeGroupMembershipRequest
        operation.output = DescribeGroupMembershipResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_identity_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeIdentityStore"
        operation.name = "DescribeIdentityStore"
        operation.input = DescribeIdentityStoreRequest
        operation.output = DescribeIdentityStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = DescribeUserRequest
        operation.output = DescribeUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_group_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#GetGroupId"
        operation.name = "GetGroupId"
        operation.input = GetGroupIdRequest
        operation.output = GetGroupIdResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_group_membership_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#GetGroupMembershipId"
        operation.name = "GetGroupMembershipId"
        operation.input = GetGroupMembershipIdRequest
        operation.output = GetGroupMembershipIdResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#GetUserId"
        operation.name = "GetUserId"
        operation.input = GetUserIdRequest
        operation.output = GetUserIdResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:is_member_in_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#IsMemberInGroups"
        operation.name = "IsMemberInGroups"
        operation.input = IsMemberInGroupsRequest
        operation.output = IsMemberInGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_group_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListGroupMemberships"
        operation.name = "ListGroupMemberships"
        operation.input = ListGroupMembershipsRequest
        operation.output = ListGroupMembershipsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupMemberships.new
      end)
      service.add_operation(:list_group_memberships_for_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListGroupMembershipsForMember"
        operation.name = "ListGroupMembershipsForMember"
        operation.input = ListGroupMembershipsForMemberRequest
        operation.output = ListGroupMembershipsForMemberResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupMembershipsForMember.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsRequest
        operation.output = ListGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_identity_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListIdentityStores"
        operation.name = "ListIdentityStores"
        operation.input = ListIdentityStoresRequest
        operation.output = ListIdentityStoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdentityStores.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupRequest
        operation.output = UpdateGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_identity_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#UpdateIdentityStore"
        operation.name = "UpdateIdentityStore"
        operation.input = UpdateIdentityStoreRequest
        operation.output = UpdateIdentityStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.identitystore#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
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
