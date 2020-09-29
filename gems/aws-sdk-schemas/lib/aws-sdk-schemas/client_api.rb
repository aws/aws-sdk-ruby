# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Schemas
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Body = Shapes::BlobShape.new(name: 'Body')
    CodeBindingOutput = Shapes::StructureShape.new(name: 'CodeBindingOutput')
    CodeGenerationStatus = Shapes::StringShape.new(name: 'CodeGenerationStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDiscovererInput = Shapes::StructureShape.new(name: 'CreateDiscovererInput')
    CreateDiscovererRequest = Shapes::StructureShape.new(name: 'CreateDiscovererRequest')
    CreateDiscovererResponse = Shapes::StructureShape.new(name: 'CreateDiscovererResponse')
    CreateRegistryInput = Shapes::StructureShape.new(name: 'CreateRegistryInput')
    CreateRegistryRequest = Shapes::StructureShape.new(name: 'CreateRegistryRequest')
    CreateRegistryResponse = Shapes::StructureShape.new(name: 'CreateRegistryResponse')
    CreateSchemaInput = Shapes::StructureShape.new(name: 'CreateSchemaInput')
    CreateSchemaRequest = Shapes::StructureShape.new(name: 'CreateSchemaRequest')
    CreateSchemaResponse = Shapes::StructureShape.new(name: 'CreateSchemaResponse')
    DeleteDiscovererRequest = Shapes::StructureShape.new(name: 'DeleteDiscovererRequest')
    DeleteRegistryRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRequest')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteSchemaRequest = Shapes::StructureShape.new(name: 'DeleteSchemaRequest')
    DeleteSchemaVersionRequest = Shapes::StructureShape.new(name: 'DeleteSchemaVersionRequest')
    DescribeCodeBindingRequest = Shapes::StructureShape.new(name: 'DescribeCodeBindingRequest')
    DescribeCodeBindingResponse = Shapes::StructureShape.new(name: 'DescribeCodeBindingResponse')
    DescribeDiscovererRequest = Shapes::StructureShape.new(name: 'DescribeDiscovererRequest')
    DescribeDiscovererResponse = Shapes::StructureShape.new(name: 'DescribeDiscovererResponse')
    DescribeRegistryRequest = Shapes::StructureShape.new(name: 'DescribeRegistryRequest')
    DescribeRegistryResponse = Shapes::StructureShape.new(name: 'DescribeRegistryResponse')
    DescribeSchemaOutput = Shapes::StructureShape.new(name: 'DescribeSchemaOutput')
    DescribeSchemaRequest = Shapes::StructureShape.new(name: 'DescribeSchemaRequest')
    DescribeSchemaResponse = Shapes::StructureShape.new(name: 'DescribeSchemaResponse')
    DiscovererOutput = Shapes::StructureShape.new(name: 'DiscovererOutput')
    DiscovererState = Shapes::StringShape.new(name: 'DiscovererState')
    DiscovererStateOutput = Shapes::StructureShape.new(name: 'DiscovererStateOutput')
    DiscovererSummary = Shapes::StructureShape.new(name: 'DiscovererSummary')
    ErrorOutput = Shapes::StructureShape.new(name: 'ErrorOutput')
    ExportSchemaOutput = Shapes::StructureShape.new(name: 'ExportSchemaOutput')
    ExportSchemaRequest = Shapes::StructureShape.new(name: 'ExportSchemaRequest')
    ExportSchemaResponse = Shapes::StructureShape.new(name: 'ExportSchemaResponse')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetCodeBindingSourceOutput = Shapes::StringShape.new(name: 'GetCodeBindingSourceOutput')
    GetCodeBindingSourceRequest = Shapes::StructureShape.new(name: 'GetCodeBindingSourceRequest')
    GetCodeBindingSourceResponse = Shapes::StructureShape.new(name: 'GetCodeBindingSourceResponse')
    GetDiscoveredSchemaInput = Shapes::StructureShape.new(name: 'GetDiscoveredSchemaInput')
    GetDiscoveredSchemaOutput = Shapes::StructureShape.new(name: 'GetDiscoveredSchemaOutput')
    GetDiscoveredSchemaRequest = Shapes::StructureShape.new(name: 'GetDiscoveredSchemaRequest')
    GetDiscoveredSchemaResponse = Shapes::StructureShape.new(name: 'GetDiscoveredSchemaResponse')
    GetDiscoveredSchemaVersionItemInput = Shapes::StringShape.new(name: 'GetDiscoveredSchemaVersionItemInput')
    GetResourcePolicyOutput = Shapes::StructureShape.new(name: 'GetResourcePolicyOutput')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GoneException = Shapes::StructureShape.new(name: 'GoneException')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListDiscoverersOutput = Shapes::StructureShape.new(name: 'ListDiscoverersOutput')
    ListDiscoverersRequest = Shapes::StructureShape.new(name: 'ListDiscoverersRequest')
    ListDiscoverersResponse = Shapes::StructureShape.new(name: 'ListDiscoverersResponse')
    ListRegistriesOutput = Shapes::StructureShape.new(name: 'ListRegistriesOutput')
    ListRegistriesRequest = Shapes::StructureShape.new(name: 'ListRegistriesRequest')
    ListRegistriesResponse = Shapes::StructureShape.new(name: 'ListRegistriesResponse')
    ListSchemaVersionsOutput = Shapes::StructureShape.new(name: 'ListSchemaVersionsOutput')
    ListSchemaVersionsRequest = Shapes::StructureShape.new(name: 'ListSchemaVersionsRequest')
    ListSchemaVersionsResponse = Shapes::StructureShape.new(name: 'ListSchemaVersionsResponse')
    ListSchemasOutput = Shapes::StructureShape.new(name: 'ListSchemasOutput')
    ListSchemasRequest = Shapes::StructureShape.new(name: 'ListSchemasRequest')
    ListSchemasResponse = Shapes::StructureShape.new(name: 'ListSchemasResponse')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LockServiceLinkedRoleInput = Shapes::StructureShape.new(name: 'LockServiceLinkedRoleInput')
    LockServiceLinkedRoleOutput = Shapes::StructureShape.new(name: 'LockServiceLinkedRoleOutput')
    LockServiceLinkedRoleRequest = Shapes::StructureShape.new(name: 'LockServiceLinkedRoleRequest')
    LockServiceLinkedRoleResponse = Shapes::StructureShape.new(name: 'LockServiceLinkedRoleResponse')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    PutCodeBindingRequest = Shapes::StructureShape.new(name: 'PutCodeBindingRequest')
    PutCodeBindingResponse = Shapes::StructureShape.new(name: 'PutCodeBindingResponse')
    PutResourcePolicyInput = Shapes::StructureShape.new(name: 'PutResourcePolicyInput')
    PutResourcePolicyOutput = Shapes::StructureShape.new(name: 'PutResourcePolicyOutput')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RegistryOutput = Shapes::StructureShape.new(name: 'RegistryOutput')
    RegistrySummary = Shapes::StructureShape.new(name: 'RegistrySummary')
    SchemaOutput = Shapes::StructureShape.new(name: 'SchemaOutput')
    SchemaSummary = Shapes::StructureShape.new(name: 'SchemaSummary')
    SchemaVersionSummary = Shapes::StructureShape.new(name: 'SchemaVersionSummary')
    SearchSchemaSummary = Shapes::StructureShape.new(name: 'SearchSchemaSummary')
    SearchSchemaVersionSummary = Shapes::StructureShape.new(name: 'SearchSchemaVersionSummary')
    SearchSchemasOutput = Shapes::StructureShape.new(name: 'SearchSchemasOutput')
    SearchSchemasRequest = Shapes::StructureShape.new(name: 'SearchSchemasRequest')
    SearchSchemasResponse = Shapes::StructureShape.new(name: 'SearchSchemasResponse')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartDiscovererRequest = Shapes::StructureShape.new(name: 'StartDiscovererRequest')
    StartDiscovererResponse = Shapes::StructureShape.new(name: 'StartDiscovererResponse')
    StopDiscovererRequest = Shapes::StructureShape.new(name: 'StopDiscovererRequest')
    StopDiscovererResponse = Shapes::StructureShape.new(name: 'StopDiscovererResponse')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Type = Shapes::StringShape.new(name: 'Type')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnlockServiceLinkedRoleInput = Shapes::StructureShape.new(name: 'UnlockServiceLinkedRoleInput')
    UnlockServiceLinkedRoleRequest = Shapes::StructureShape.new(name: 'UnlockServiceLinkedRoleRequest')
    UnlockServiceLinkedRoleResponse = Shapes::StructureShape.new(name: 'UnlockServiceLinkedRoleResponse')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateDiscovererInput = Shapes::StructureShape.new(name: 'UpdateDiscovererInput')
    UpdateDiscovererRequest = Shapes::StructureShape.new(name: 'UpdateDiscovererRequest')
    UpdateDiscovererResponse = Shapes::StructureShape.new(name: 'UpdateDiscovererResponse')
    UpdateRegistryInput = Shapes::StructureShape.new(name: 'UpdateRegistryInput')
    UpdateRegistryRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRequest')
    UpdateRegistryResponse = Shapes::StructureShape.new(name: 'UpdateRegistryResponse')
    UpdateSchemaInput = Shapes::StructureShape.new(name: 'UpdateSchemaInput')
    UpdateSchemaRequest = Shapes::StructureShape.new(name: 'UpdateSchemaRequest')
    UpdateSchemaResponse = Shapes::StructureShape.new(name: 'UpdateSchemaResponse')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMin1Max29000 = Shapes::IntegerShape.new(name: '__integerMin1Max29000')
    __listOfDiscovererSummary = Shapes::ListShape.new(name: '__listOfDiscovererSummary')
    __listOfGetDiscoveredSchemaVersionItemInput = Shapes::ListShape.new(name: '__listOfGetDiscoveredSchemaVersionItemInput')
    __listOfRegistrySummary = Shapes::ListShape.new(name: '__listOfRegistrySummary')
    __listOfSchemaSummary = Shapes::ListShape.new(name: '__listOfSchemaSummary')
    __listOfSchemaVersionSummary = Shapes::ListShape.new(name: '__listOfSchemaVersionSummary')
    __listOfSearchSchemaSummary = Shapes::ListShape.new(name: '__listOfSearchSchemaSummary')
    __listOfSearchSchemaVersionSummary = Shapes::ListShape.new(name: '__listOfSearchSchemaVersionSummary')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin0Max256 = Shapes::StringShape.new(name: '__stringMin0Max256')
    __stringMin0Max36 = Shapes::StringShape.new(name: '__stringMin0Max36')
    __stringMin1Max100000 = Shapes::StringShape.new(name: '__stringMin1Max100000')
    __stringMin1Max1600 = Shapes::StringShape.new(name: '__stringMin1Max1600')
    __stringMin20Max1600 = Shapes::StringShape.new(name: '__stringMin20Max1600')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    CodeBindingOutput.add_member(:creation_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "CreationDate"))
    CodeBindingOutput.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    CodeBindingOutput.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    CodeBindingOutput.add_member(:status, Shapes::ShapeRef.new(shape: CodeGenerationStatus, location_name: "Status"))
    CodeBindingOutput.struct_class = Types::CodeBindingOutput

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDiscovererInput.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    CreateDiscovererInput.add_member(:source_arn, Shapes::ShapeRef.new(shape: __stringMin20Max1600, required: true, location_name: "SourceArn"))
    CreateDiscovererInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDiscovererInput.struct_class = Types::CreateDiscovererInput

    CreateDiscovererRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    CreateDiscovererRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: __stringMin20Max1600, required: true, location_name: "SourceArn"))
    CreateDiscovererRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDiscovererRequest.struct_class = Types::CreateDiscovererRequest

    CreateDiscovererResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    CreateDiscovererResponse.add_member(:discoverer_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererArn"))
    CreateDiscovererResponse.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    CreateDiscovererResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SourceArn"))
    CreateDiscovererResponse.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    CreateDiscovererResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDiscovererResponse.struct_class = Types::CreateDiscovererResponse

    CreateRegistryInput.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    CreateRegistryInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRegistryInput.struct_class = Types::CreateRegistryInput

    CreateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    CreateRegistryRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    CreateRegistryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRegistryRequest.struct_class = Types::CreateRegistryRequest

    CreateRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    CreateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryArn"))
    CreateRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryName"))
    CreateRegistryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRegistryResponse.struct_class = Types::CreateRegistryResponse

    CreateSchemaInput.add_member(:content, Shapes::ShapeRef.new(shape: __stringMin1Max100000, required: true, location_name: "Content"))
    CreateSchemaInput.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    CreateSchemaInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSchemaInput.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    CreateSchemaInput.struct_class = Types::CreateSchemaInput

    CreateSchemaRequest.add_member(:content, Shapes::ShapeRef.new(shape: __stringMin1Max100000, required: true, location_name: "Content"))
    CreateSchemaRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    CreateSchemaRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    CreateSchemaRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    CreateSchemaRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSchemaRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    CreateSchemaRequest.struct_class = Types::CreateSchemaRequest

    CreateSchemaResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    CreateSchemaResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    CreateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    CreateSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    CreateSchemaResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    CreateSchemaResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSchemaResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    CreateSchemaResponse.add_member(:version_created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "VersionCreatedDate"))
    CreateSchemaResponse.struct_class = Types::CreateSchemaResponse

    DeleteDiscovererRequest.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "discovererId"))
    DeleteDiscovererRequest.struct_class = Types::DeleteDiscovererRequest

    DeleteRegistryRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    DeleteRegistryRequest.struct_class = Types::DeleteRegistryRequest

    DeleteResourcePolicyRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "registryName"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteSchemaRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    DeleteSchemaRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    DeleteSchemaRequest.struct_class = Types::DeleteSchemaRequest

    DeleteSchemaVersionRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    DeleteSchemaVersionRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    DeleteSchemaVersionRequest.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaVersion"))
    DeleteSchemaVersionRequest.struct_class = Types::DeleteSchemaVersionRequest

    DescribeCodeBindingRequest.add_member(:language, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "language"))
    DescribeCodeBindingRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    DescribeCodeBindingRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    DescribeCodeBindingRequest.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "schemaVersion"))
    DescribeCodeBindingRequest.struct_class = Types::DescribeCodeBindingRequest

    DescribeCodeBindingResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "CreationDate"))
    DescribeCodeBindingResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    DescribeCodeBindingResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    DescribeCodeBindingResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeGenerationStatus, location_name: "Status"))
    DescribeCodeBindingResponse.struct_class = Types::DescribeCodeBindingResponse

    DescribeDiscovererRequest.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "discovererId"))
    DescribeDiscovererRequest.struct_class = Types::DescribeDiscovererRequest

    DescribeDiscovererResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    DescribeDiscovererResponse.add_member(:discoverer_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererArn"))
    DescribeDiscovererResponse.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    DescribeDiscovererResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SourceArn"))
    DescribeDiscovererResponse.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    DescribeDiscovererResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeDiscovererResponse.struct_class = Types::DescribeDiscovererResponse

    DescribeRegistryRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    DescribeRegistryRequest.struct_class = Types::DescribeRegistryRequest

    DescribeRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    DescribeRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryArn"))
    DescribeRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryName"))
    DescribeRegistryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeRegistryResponse.struct_class = Types::DescribeRegistryResponse

    DescribeSchemaOutput.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "Content"))
    DescribeSchemaOutput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    DescribeSchemaOutput.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    DescribeSchemaOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    DescribeSchemaOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    DescribeSchemaOutput.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    DescribeSchemaOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeSchemaOutput.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    DescribeSchemaOutput.add_member(:version_created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "VersionCreatedDate"))
    DescribeSchemaOutput.struct_class = Types::DescribeSchemaOutput

    DescribeSchemaRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    DescribeSchemaRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    DescribeSchemaRequest.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "schemaVersion"))
    DescribeSchemaRequest.struct_class = Types::DescribeSchemaRequest

    DescribeSchemaResponse.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "Content"))
    DescribeSchemaResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    DescribeSchemaResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    DescribeSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    DescribeSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    DescribeSchemaResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    DescribeSchemaResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeSchemaResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    DescribeSchemaResponse.add_member(:version_created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "VersionCreatedDate"))
    DescribeSchemaResponse.struct_class = Types::DescribeSchemaResponse

    DiscovererOutput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    DiscovererOutput.add_member(:discoverer_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererArn"))
    DiscovererOutput.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    DiscovererOutput.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SourceArn"))
    DiscovererOutput.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    DiscovererOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DiscovererOutput.struct_class = Types::DiscovererOutput

    DiscovererStateOutput.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    DiscovererStateOutput.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    DiscovererStateOutput.struct_class = Types::DiscovererStateOutput

    DiscovererSummary.add_member(:discoverer_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererArn"))
    DiscovererSummary.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    DiscovererSummary.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SourceArn"))
    DiscovererSummary.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    DiscovererSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DiscovererSummary.struct_class = Types::DiscovererSummary

    ErrorOutput.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    ErrorOutput.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ErrorOutput.struct_class = Types::ErrorOutput

    ExportSchemaOutput.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "Content"))
    ExportSchemaOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    ExportSchemaOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    ExportSchemaOutput.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    ExportSchemaOutput.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    ExportSchemaOutput.struct_class = Types::ExportSchemaOutput

    ExportSchemaRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    ExportSchemaRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    ExportSchemaRequest.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "schemaVersion"))
    ExportSchemaRequest.add_member(:type, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "type"))
    ExportSchemaRequest.struct_class = Types::ExportSchemaRequest

    ExportSchemaResponse.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "Content"))
    ExportSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    ExportSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    ExportSchemaResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    ExportSchemaResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    ExportSchemaResponse.struct_class = Types::ExportSchemaResponse

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetCodeBindingSourceRequest.add_member(:language, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "language"))
    GetCodeBindingSourceRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    GetCodeBindingSourceRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    GetCodeBindingSourceRequest.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "schemaVersion"))
    GetCodeBindingSourceRequest.struct_class = Types::GetCodeBindingSourceRequest

    GetCodeBindingSourceResponse.add_member(:body, Shapes::ShapeRef.new(shape: Body, location_name: "Body"))
    GetCodeBindingSourceResponse.struct_class = Types::GetCodeBindingSourceResponse
    GetCodeBindingSourceResponse[:payload] = :body
    GetCodeBindingSourceResponse[:payload_member] = GetCodeBindingSourceResponse.member(:body)

    GetDiscoveredSchemaInput.add_member(:events, Shapes::ShapeRef.new(shape: __listOfGetDiscoveredSchemaVersionItemInput, required: true, location_name: "Events"))
    GetDiscoveredSchemaInput.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    GetDiscoveredSchemaInput.struct_class = Types::GetDiscoveredSchemaInput

    GetDiscoveredSchemaOutput.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "Content"))
    GetDiscoveredSchemaOutput.struct_class = Types::GetDiscoveredSchemaOutput

    GetDiscoveredSchemaRequest.add_member(:events, Shapes::ShapeRef.new(shape: __listOfGetDiscoveredSchemaVersionItemInput, required: true, location_name: "Events"))
    GetDiscoveredSchemaRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    GetDiscoveredSchemaRequest.struct_class = Types::GetDiscoveredSchemaRequest

    GetDiscoveredSchemaResponse.add_member(:content, Shapes::ShapeRef.new(shape: __string, location_name: "Content"))
    GetDiscoveredSchemaResponse.struct_class = Types::GetDiscoveredSchemaResponse

    GetResourcePolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: __string, location_name: "Policy", metadata: {"jsonvalue"=>true}))
    GetResourcePolicyOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location_name: "RevisionId"))
    GetResourcePolicyOutput.struct_class = Types::GetResourcePolicyOutput

    GetResourcePolicyRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "registryName"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: __string, location_name: "Policy", metadata: {"jsonvalue"=>true}))
    GetResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location_name: "RevisionId"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GoneException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    GoneException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    GoneException.struct_class = Types::GoneException

    InternalServerErrorException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListDiscoverersOutput.add_member(:discoverers, Shapes::ShapeRef.new(shape: __listOfDiscovererSummary, location_name: "Discoverers"))
    ListDiscoverersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListDiscoverersOutput.struct_class = Types::ListDiscoverersOutput

    ListDiscoverersRequest.add_member(:discoverer_id_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "discovererIdPrefix"))
    ListDiscoverersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "limit"))
    ListDiscoverersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListDiscoverersRequest.add_member(:source_arn_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "sourceArnPrefix"))
    ListDiscoverersRequest.struct_class = Types::ListDiscoverersRequest

    ListDiscoverersResponse.add_member(:discoverers, Shapes::ShapeRef.new(shape: __listOfDiscovererSummary, location_name: "Discoverers"))
    ListDiscoverersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListDiscoverersResponse.struct_class = Types::ListDiscoverersResponse

    ListRegistriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListRegistriesOutput.add_member(:registries, Shapes::ShapeRef.new(shape: __listOfRegistrySummary, location_name: "Registries"))
    ListRegistriesOutput.struct_class = Types::ListRegistriesOutput

    ListRegistriesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "limit"))
    ListRegistriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListRegistriesRequest.add_member(:registry_name_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "registryNamePrefix"))
    ListRegistriesRequest.add_member(:scope, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "scope"))
    ListRegistriesRequest.struct_class = Types::ListRegistriesRequest

    ListRegistriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListRegistriesResponse.add_member(:registries, Shapes::ShapeRef.new(shape: __listOfRegistrySummary, location_name: "Registries"))
    ListRegistriesResponse.struct_class = Types::ListRegistriesResponse

    ListSchemaVersionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSchemaVersionsOutput.add_member(:schema_versions, Shapes::ShapeRef.new(shape: __listOfSchemaVersionSummary, location_name: "SchemaVersions"))
    ListSchemaVersionsOutput.struct_class = Types::ListSchemaVersionsOutput

    ListSchemaVersionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "limit"))
    ListSchemaVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListSchemaVersionsRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    ListSchemaVersionsRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    ListSchemaVersionsRequest.struct_class = Types::ListSchemaVersionsRequest

    ListSchemaVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSchemaVersionsResponse.add_member(:schema_versions, Shapes::ShapeRef.new(shape: __listOfSchemaVersionSummary, location_name: "SchemaVersions"))
    ListSchemaVersionsResponse.struct_class = Types::ListSchemaVersionsResponse

    ListSchemasOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSchemasOutput.add_member(:schemas, Shapes::ShapeRef.new(shape: __listOfSchemaSummary, location_name: "Schemas"))
    ListSchemasOutput.struct_class = Types::ListSchemasOutput

    ListSchemasRequest.add_member(:limit, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "limit"))
    ListSchemasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListSchemasRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    ListSchemasRequest.add_member(:schema_name_prefix, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "schemaNamePrefix"))
    ListSchemasRequest.struct_class = Types::ListSchemasRequest

    ListSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    ListSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: __listOfSchemaSummary, location_name: "Schemas"))
    ListSchemasResponse.struct_class = Types::ListSchemasResponse

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LockServiceLinkedRoleInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: __stringMin1Max1600, required: true, location_name: "RoleArn"))
    LockServiceLinkedRoleInput.add_member(:timeout, Shapes::ShapeRef.new(shape: __integerMin1Max29000, required: true, location_name: "Timeout"))
    LockServiceLinkedRoleInput.struct_class = Types::LockServiceLinkedRoleInput

    LockServiceLinkedRoleOutput.add_member(:can_be_deleted, Shapes::ShapeRef.new(shape: __boolean, location_name: "CanBeDeleted"))
    LockServiceLinkedRoleOutput.add_member(:reason_of_failure, Shapes::ShapeRef.new(shape: __stringMin1Max1600, location_name: "ReasonOfFailure"))
    LockServiceLinkedRoleOutput.add_member(:related_resources, Shapes::ShapeRef.new(shape: __listOfDiscovererSummary, location_name: "RelatedResources"))
    LockServiceLinkedRoleOutput.struct_class = Types::LockServiceLinkedRoleOutput

    LockServiceLinkedRoleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __stringMin1Max1600, required: true, location_name: "RoleArn"))
    LockServiceLinkedRoleRequest.add_member(:timeout, Shapes::ShapeRef.new(shape: __integerMin1Max29000, required: true, location_name: "Timeout"))
    LockServiceLinkedRoleRequest.struct_class = Types::LockServiceLinkedRoleRequest

    LockServiceLinkedRoleResponse.add_member(:can_be_deleted, Shapes::ShapeRef.new(shape: __boolean, location_name: "CanBeDeleted"))
    LockServiceLinkedRoleResponse.add_member(:reason_of_failure, Shapes::ShapeRef.new(shape: __stringMin1Max1600, location_name: "ReasonOfFailure"))
    LockServiceLinkedRoleResponse.add_member(:related_resources, Shapes::ShapeRef.new(shape: __listOfDiscovererSummary, location_name: "RelatedResources"))
    LockServiceLinkedRoleResponse.struct_class = Types::LockServiceLinkedRoleResponse

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    PreconditionFailedException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    PreconditionFailedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    PreconditionFailedException.struct_class = Types::PreconditionFailedException

    PutCodeBindingRequest.add_member(:language, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "language"))
    PutCodeBindingRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    PutCodeBindingRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    PutCodeBindingRequest.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "schemaVersion"))
    PutCodeBindingRequest.struct_class = Types::PutCodeBindingRequest

    PutCodeBindingResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "CreationDate"))
    PutCodeBindingResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    PutCodeBindingResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    PutCodeBindingResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeGenerationStatus, location_name: "Status"))
    PutCodeBindingResponse.struct_class = Types::PutCodeBindingResponse

    PutResourcePolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Policy", metadata: {"jsonvalue"=>true}))
    PutResourcePolicyInput.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location_name: "RevisionId"))
    PutResourcePolicyInput.struct_class = Types::PutResourcePolicyInput

    PutResourcePolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: __string, location_name: "Policy", metadata: {"jsonvalue"=>true}))
    PutResourcePolicyOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location_name: "RevisionId"))
    PutResourcePolicyOutput.struct_class = Types::PutResourcePolicyOutput

    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Policy", metadata: {"jsonvalue"=>true}))
    PutResourcePolicyRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "registryName"))
    PutResourcePolicyRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location_name: "RevisionId"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: __string, location_name: "Policy", metadata: {"jsonvalue"=>true}))
    PutResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: __string, location_name: "RevisionId"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RegistryOutput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    RegistryOutput.add_member(:registry_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryArn"))
    RegistryOutput.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryName"))
    RegistryOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegistryOutput.struct_class = Types::RegistryOutput

    RegistrySummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryArn"))
    RegistrySummary.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryName"))
    RegistrySummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegistrySummary.struct_class = Types::RegistrySummary

    SchemaOutput.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    SchemaOutput.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    SchemaOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    SchemaOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    SchemaOutput.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    SchemaOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    SchemaOutput.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    SchemaOutput.add_member(:version_created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "VersionCreatedDate"))
    SchemaOutput.struct_class = Types::SchemaOutput

    SchemaSummary.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    SchemaSummary.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    SchemaSummary.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    SchemaSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    SchemaSummary.add_member(:version_count, Shapes::ShapeRef.new(shape: __long, location_name: "VersionCount"))
    SchemaSummary.struct_class = Types::SchemaSummary

    SchemaVersionSummary.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    SchemaVersionSummary.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    SchemaVersionSummary.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    SchemaVersionSummary.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    SchemaVersionSummary.struct_class = Types::SchemaVersionSummary

    SearchSchemaSummary.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryName"))
    SearchSchemaSummary.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    SearchSchemaSummary.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    SearchSchemaSummary.add_member(:schema_versions, Shapes::ShapeRef.new(shape: __listOfSearchSchemaVersionSummary, location_name: "SchemaVersions"))
    SearchSchemaSummary.struct_class = Types::SearchSchemaSummary

    SearchSchemaVersionSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "CreatedDate"))
    SearchSchemaVersionSummary.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    SearchSchemaVersionSummary.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    SearchSchemaVersionSummary.struct_class = Types::SearchSchemaVersionSummary

    SearchSchemasOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    SearchSchemasOutput.add_member(:schemas, Shapes::ShapeRef.new(shape: __listOfSearchSchemaSummary, location_name: "Schemas"))
    SearchSchemasOutput.struct_class = Types::SearchSchemasOutput

    SearchSchemasRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "keywords"))
    SearchSchemasRequest.add_member(:limit, Shapes::ShapeRef.new(shape: __integer, location: "querystring", location_name: "limit"))
    SearchSchemasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    SearchSchemasRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    SearchSchemasRequest.struct_class = Types::SearchSchemasRequest

    SearchSchemasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "NextToken"))
    SearchSchemasResponse.add_member(:schemas, Shapes::ShapeRef.new(shape: __listOfSearchSchemaSummary, location_name: "Schemas"))
    SearchSchemasResponse.struct_class = Types::SearchSchemasResponse

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartDiscovererRequest.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "discovererId"))
    StartDiscovererRequest.struct_class = Types::StartDiscovererRequest

    StartDiscovererResponse.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    StartDiscovererResponse.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    StartDiscovererResponse.struct_class = Types::StartDiscovererResponse

    StopDiscovererRequest.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "discovererId"))
    StopDiscovererRequest.struct_class = Types::StopDiscovererRequest

    StopDiscovererResponse.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    StopDiscovererResponse.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    StopDiscovererResponse.struct_class = Types::StopDiscovererResponse

    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: __string)

    TooManyRequestsException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnauthorizedException.add_member(:code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Code"))
    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UnlockServiceLinkedRoleInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: __stringMin1Max1600, required: true, location_name: "RoleArn"))
    UnlockServiceLinkedRoleInput.struct_class = Types::UnlockServiceLinkedRoleInput

    UnlockServiceLinkedRoleRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __stringMin1Max1600, required: true, location_name: "RoleArn"))
    UnlockServiceLinkedRoleRequest.struct_class = Types::UnlockServiceLinkedRoleRequest

    UnlockServiceLinkedRoleResponse.struct_class = Types::UnlockServiceLinkedRoleResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateDiscovererInput.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    UpdateDiscovererInput.struct_class = Types::UpdateDiscovererInput

    UpdateDiscovererRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    UpdateDiscovererRequest.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "discovererId"))
    UpdateDiscovererRequest.struct_class = Types::UpdateDiscovererRequest

    UpdateDiscovererResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    UpdateDiscovererResponse.add_member(:discoverer_arn, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererArn"))
    UpdateDiscovererResponse.add_member(:discoverer_id, Shapes::ShapeRef.new(shape: __string, location_name: "DiscovererId"))
    UpdateDiscovererResponse.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SourceArn"))
    UpdateDiscovererResponse.add_member(:state, Shapes::ShapeRef.new(shape: DiscovererState, location_name: "State"))
    UpdateDiscovererResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateDiscovererResponse.struct_class = Types::UpdateDiscovererResponse

    UpdateRegistryInput.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    UpdateRegistryInput.struct_class = Types::UpdateRegistryInput

    UpdateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    UpdateRegistryRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    UpdateRegistryRequest.struct_class = Types::UpdateRegistryRequest

    UpdateRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    UpdateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryArn"))
    UpdateRegistryResponse.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, location_name: "RegistryName"))
    UpdateRegistryResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateRegistryResponse.struct_class = Types::UpdateRegistryResponse

    UpdateSchemaInput.add_member(:client_token_id, Shapes::ShapeRef.new(shape: __stringMin0Max36, location_name: "ClientTokenId", metadata: {"idempotencyToken"=>true}))
    UpdateSchemaInput.add_member(:content, Shapes::ShapeRef.new(shape: __stringMin1Max100000, location_name: "Content"))
    UpdateSchemaInput.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    UpdateSchemaInput.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    UpdateSchemaInput.struct_class = Types::UpdateSchemaInput

    UpdateSchemaRequest.add_member(:client_token_id, Shapes::ShapeRef.new(shape: __stringMin0Max36, location_name: "ClientTokenId", metadata: {"idempotencyToken"=>true}))
    UpdateSchemaRequest.add_member(:content, Shapes::ShapeRef.new(shape: __stringMin1Max100000, location_name: "Content"))
    UpdateSchemaRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max256, location_name: "Description"))
    UpdateSchemaRequest.add_member(:registry_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "registryName"))
    UpdateSchemaRequest.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "schemaName"))
    UpdateSchemaRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    UpdateSchemaRequest.struct_class = Types::UpdateSchemaRequest

    UpdateSchemaResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "Description"))
    UpdateSchemaResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "LastModified"))
    UpdateSchemaResponse.add_member(:schema_arn, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaArn"))
    UpdateSchemaResponse.add_member(:schema_name, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaName"))
    UpdateSchemaResponse.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "SchemaVersion"))
    UpdateSchemaResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateSchemaResponse.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "Type"))
    UpdateSchemaResponse.add_member(:version_created_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "VersionCreatedDate"))
    UpdateSchemaResponse.struct_class = Types::UpdateSchemaResponse

    __listOfDiscovererSummary.member = Shapes::ShapeRef.new(shape: DiscovererSummary)

    __listOfGetDiscoveredSchemaVersionItemInput.member = Shapes::ShapeRef.new(shape: GetDiscoveredSchemaVersionItemInput)

    __listOfRegistrySummary.member = Shapes::ShapeRef.new(shape: RegistrySummary)

    __listOfSchemaSummary.member = Shapes::ShapeRef.new(shape: SchemaSummary)

    __listOfSchemaVersionSummary.member = Shapes::ShapeRef.new(shape: SchemaVersionSummary)

    __listOfSearchSchemaSummary.member = Shapes::ShapeRef.new(shape: SearchSchemaSummary)

    __listOfSearchSchemaVersionSummary.member = Shapes::ShapeRef.new(shape: SearchSchemaVersionSummary)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "endpointPrefix" => "schemas",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Schemas",
        "serviceId" => "schemas",
        "signatureVersion" => "v4",
        "signingName" => "schemas",
        "uid" => "schemas-2019-12-02",
      }

      api.add_operation(:create_discoverer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDiscoverer"
        o.http_method = "POST"
        o.http_request_uri = "/v1/discoverers"
        o.input = Shapes::ShapeRef.new(shape: CreateDiscovererRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDiscovererResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/v1/registries/name/{registryName}"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchema"
        o.http_method = "POST"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: CreateSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_discoverer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDiscoverer"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/discoverers/id/{discovererId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDiscovererRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistry"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/registries/name/{registryName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchema"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_schema_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchemaVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_code_binding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCodeBinding"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCodeBindingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCodeBindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_discoverer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDiscoverer"
        o.http_method = "GET"
        o.http_request_uri = "/v1/discoverers/id/{discovererId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDiscovererRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDiscovererResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRegistry"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchema"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_code_binding_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeBindingSource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}/source"
        o.input = Shapes::ShapeRef.new(shape: GetCodeBindingSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeBindingSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_discovered_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDiscoveredSchema"
        o.http_method = "POST"
        o.http_request_uri = "/v1/discover"
        o.input = Shapes::ShapeRef.new(shape: GetDiscoveredSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiscoveredSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v1/policy"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_discoverers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoverers"
        o.http_method = "GET"
        o.http_request_uri = "/v1/discoverers"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoverersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoverersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistries"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries"
        o.input = Shapes::ShapeRef.new(shape: ListRegistriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schema_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemaVersions"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListSchemaVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchemaVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemas"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas"
        o.input = Shapes::ShapeRef.new(shape: ListSchemasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:put_code_binding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutCodeBinding"
        o.http_method = "POST"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}"
        o.input = Shapes::ShapeRef.new(shape: PutCodeBindingRequest)
        o.output = Shapes::ShapeRef.new(shape: PutCodeBindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: GoneException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/policy"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:search_schemas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSchemas"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/search"
        o.input = Shapes::ShapeRef.new(shape: SearchSchemasRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchSchemasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_discoverer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDiscoverer"
        o.http_method = "POST"
        o.http_request_uri = "/v1/discoverers/id/{discovererId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartDiscovererRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDiscovererResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:stop_discoverer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDiscoverer"
        o.http_method = "POST"
        o.http_request_uri = "/v1/discoverers/id/{discovererId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopDiscovererRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDiscovererResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_discoverer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDiscoverer"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/discoverers/id/{discovererId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDiscovererRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDiscovererResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistry"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/registries/name/{registryName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchema"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:export_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportSchema"
        o.http_method = "GET"
        o.http_request_uri = "/v1/registries/name/{registryName}/schemas/name/{schemaName}/export"
        o.input = Shapes::ShapeRef.new(shape: ExportSchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportSchemaResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
