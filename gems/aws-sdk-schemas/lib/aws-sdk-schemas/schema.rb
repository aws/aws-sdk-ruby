# frozen_string_literal: true

# This is generated code!

module Aws::Schemas
  # This module contains a schema composed of shapes used by the client.
  module Schema

    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Body = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.schemas#Body", name: "Body")
    CodeGenerationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.schemas#CodeGenerationStatus", name: "CodeGenerationStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDiscovererRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#CreateDiscovererRequest", name: "CreateDiscovererRequest")
    CreateDiscovererResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#CreateDiscovererResponse", name: "CreateDiscovererResponse")
    CreateRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#CreateRegistryRequest", name: "CreateRegistryRequest")
    CreateRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#CreateRegistryResponse", name: "CreateRegistryResponse")
    CreateSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#CreateSchemaRequest", name: "CreateSchemaRequest")
    CreateSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#CreateSchemaResponse", name: "CreateSchemaResponse")
    DeleteDiscovererRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DeleteDiscovererRequest", name: "DeleteDiscovererRequest")
    DeleteRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DeleteRegistryRequest", name: "DeleteRegistryRequest")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DeleteSchemaRequest", name: "DeleteSchemaRequest")
    DeleteSchemaVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DeleteSchemaVersionRequest", name: "DeleteSchemaVersionRequest")
    DescribeCodeBindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeCodeBindingRequest", name: "DescribeCodeBindingRequest")
    DescribeCodeBindingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeCodeBindingResponse", name: "DescribeCodeBindingResponse")
    DescribeDiscovererRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeDiscovererRequest", name: "DescribeDiscovererRequest")
    DescribeDiscovererResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeDiscovererResponse", name: "DescribeDiscovererResponse")
    DescribeRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeRegistryRequest", name: "DescribeRegistryRequest")
    DescribeRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeRegistryResponse", name: "DescribeRegistryResponse")
    DescribeSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeSchemaRequest", name: "DescribeSchemaRequest")
    DescribeSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DescribeSchemaResponse", name: "DescribeSchemaResponse")
    DiscovererState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.schemas#DiscovererState", name: "DiscovererState")
    DiscovererSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#DiscovererSummary", name: "DiscovererSummary")
    ExportSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ExportSchemaRequest", name: "ExportSchemaRequest")
    ExportSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ExportSchemaResponse", name: "ExportSchemaResponse")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetCodeBindingSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GetCodeBindingSourceRequest", name: "GetCodeBindingSourceRequest")
    GetCodeBindingSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GetCodeBindingSourceResponse", name: "GetCodeBindingSourceResponse")
    GetDiscoveredSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GetDiscoveredSchemaRequest", name: "GetDiscoveredSchemaRequest")
    GetDiscoveredSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GetDiscoveredSchemaResponse", name: "GetDiscoveredSchemaResponse")
    GetDiscoveredSchemaVersionItemInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#GetDiscoveredSchemaVersionItemInput", name: "GetDiscoveredSchemaVersionItemInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}})
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    GoneException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#GoneException", name: "GoneException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListDiscoverersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListDiscoverersRequest", name: "ListDiscoverersRequest")
    ListDiscoverersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListDiscoverersResponse", name: "ListDiscoverersResponse")
    ListRegistriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListRegistriesRequest", name: "ListRegistriesRequest")
    ListRegistriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListRegistriesResponse", name: "ListRegistriesResponse")
    ListSchemaVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListSchemaVersionsRequest", name: "ListSchemaVersionsRequest")
    ListSchemaVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListSchemaVersionsResponse", name: "ListSchemaVersionsResponse")
    ListSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListSchemasRequest", name: "ListSchemasRequest")
    ListSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListSchemasResponse", name: "ListSchemasResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PreconditionFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#PreconditionFailedException", name: "PreconditionFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    PutCodeBindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#PutCodeBindingRequest", name: "PutCodeBindingRequest")
    PutCodeBindingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#PutCodeBindingResponse", name: "PutCodeBindingResponse")
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    RegistrySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#RegistrySummary", name: "RegistrySummary")
    SchemaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#SchemaSummary", name: "SchemaSummary")
    SchemaVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#SchemaVersionSummary", name: "SchemaVersionSummary")
    SearchSchemaSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#SearchSchemaSummary", name: "SearchSchemaSummary")
    SearchSchemaVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#SearchSchemaVersionSummary", name: "SearchSchemaVersionSummary")
    SearchSchemasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#SearchSchemasRequest", name: "SearchSchemasRequest")
    SearchSchemasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#SearchSchemasResponse", name: "SearchSchemasResponse")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartDiscovererRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#StartDiscovererRequest", name: "StartDiscovererRequest")
    StartDiscovererResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#StartDiscovererResponse", name: "StartDiscovererResponse")
    StopDiscovererRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#StopDiscovererRequest", name: "StopDiscovererRequest")
    StopDiscovererResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#StopDiscovererResponse", name: "StopDiscovererResponse")
    SynthesizedJsonString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#SynthesizedJson__string", name: "SynthesizedJsonString", traits: {"smithy.api#mediaType" => "application/json"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#TagResourceRequest", name: "TagResourceRequest")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.schemas#Tags", name: "Tags")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.schemas#Type", name: "Type")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateDiscovererRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UpdateDiscovererRequest", name: "UpdateDiscovererRequest")
    UpdateDiscovererResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UpdateDiscovererResponse", name: "UpdateDiscovererResponse")
    UpdateRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UpdateRegistryRequest", name: "UpdateRegistryRequest")
    UpdateRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UpdateRegistryResponse", name: "UpdateRegistryResponse")
    UpdateSchemaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UpdateSchemaRequest", name: "UpdateSchemaRequest")
    UpdateSchemaResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.schemas#UpdateSchemaResponse", name: "UpdateSchemaResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.schemas#__boolean", name: "Boolean")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.schemas#__integer", name: "Integer")
    Listofdiscoverersummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfDiscovererSummary", name: "Listofdiscoverersummary")
    Listofgetdiscoveredschemaversioniteminput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfGetDiscoveredSchemaVersionItemInput", name: "Listofgetdiscoveredschemaversioniteminput", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Listofregistrysummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfRegistrySummary", name: "Listofregistrysummary")
    Listofschemasummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfSchemaSummary", name: "Listofschemasummary")
    Listofschemaversionsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfSchemaVersionSummary", name: "Listofschemaversionsummary")
    Listofsearchschemasummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfSearchSchemaSummary", name: "Listofsearchschemasummary")
    Listofsearchschemaversionsummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOfSearchSchemaVersionSummary", name: "Listofsearchschemaversionsummary")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.schemas#__listOf__string", name: "ListofString")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.schemas#__long", name: "Long")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#__string", name: "String")
    Stringmin0max256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#__stringMin0Max256", name: "Stringmin0max256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Stringmin0max36 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#__stringMin0Max36", name: "Stringmin0max36", traits: {"smithy.api#length" => {"min" => 0, "max" => 36}})
    Stringmin1max100000 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#__stringMin1Max100000", name: "Stringmin1max100000", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}})
    Stringmin20max1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.schemas#__stringMin20Max1600", name: "Stringmin20max1600", traits: {"smithy.api#length" => {"min" => 20, "max" => 1600}})
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.schemas#__timestampIso8601", name: "Timestampiso8601", traits: {"smithy.api#timestampFormat" => "date-time"})

    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BadRequestException.type = Types::BadRequestException
    CodeGenerationStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CodeGenerationStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    CodeGenerationStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateDiscovererRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256, name: "Description"))
    CreateDiscovererRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin20max1600, name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDiscovererRequest.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrossAccount"))
    CreateDiscovererRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateDiscovererRequest.type = Types::CreateDiscovererRequest
    CreateDiscovererResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateDiscovererResponse.add_member(:discoverer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererArn"))
    CreateDiscovererResponse.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId"))
    CreateDiscovererResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    CreateDiscovererResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererState, name: "State"))
    CreateDiscovererResponse.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrossAccount"))
    CreateDiscovererResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateDiscovererResponse.type = Types::CreateDiscovererResponse
    CreateRegistryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256, name: "Description"))
    CreateRegistryRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRegistryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateRegistryRequest.type = Types::CreateRegistryRequest
    CreateRegistryResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateRegistryResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryArn"))
    CreateRegistryResponse.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName"))
    CreateRegistryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateRegistryResponse.type = Types::CreateRegistryResponse
    CreateSchemaRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max100000, name: "Content", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256, name: "Description"))
    CreateSchemaRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSchemaRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateSchemaRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSchemaRequest.type = Types::CreateSchemaRequest
    CreateSchemaResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateSchemaResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastModified"))
    CreateSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    CreateSchemaResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    CreateSchemaResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    CreateSchemaResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateSchemaResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    CreateSchemaResponse.add_member(:version_created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "VersionCreatedDate"))
    CreateSchemaResponse.type = Types::CreateSchemaResponse
    DeleteDiscovererRequest.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDiscovererRequest.type = Types::DeleteDiscovererRequest
    DeleteRegistryRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRegistryRequest.type = Types::DeleteRegistryRequest
    DeleteResourcePolicyRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpQuery" => "registryName"}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteSchemaRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSchemaRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSchemaRequest.type = Types::DeleteSchemaRequest
    DeleteSchemaVersionRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSchemaVersionRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSchemaVersionRequest.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSchemaVersionRequest.type = Types::DeleteSchemaVersionRequest
    DescribeCodeBindingRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Language", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCodeBindingRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCodeBindingRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCodeBindingRequest.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#httpQuery" => "schemaVersion"}))
    DescribeCodeBindingRequest.type = Types::DescribeCodeBindingRequest
    DescribeCodeBindingResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationDate"))
    DescribeCodeBindingResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastModified"))
    DescribeCodeBindingResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    DescribeCodeBindingResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationStatus, name: "Status"))
    DescribeCodeBindingResponse.type = Types::DescribeCodeBindingResponse
    DescribeDiscovererRequest.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeDiscovererRequest.type = Types::DescribeDiscovererRequest
    DescribeDiscovererResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DescribeDiscovererResponse.add_member(:discoverer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererArn"))
    DescribeDiscovererResponse.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId"))
    DescribeDiscovererResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    DescribeDiscovererResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererState, name: "State"))
    DescribeDiscovererResponse.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrossAccount"))
    DescribeDiscovererResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeDiscovererResponse.type = Types::DescribeDiscovererResponse
    DescribeRegistryRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRegistryRequest.type = Types::DescribeRegistryRequest
    DescribeRegistryResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DescribeRegistryResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryArn"))
    DescribeRegistryResponse.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName"))
    DescribeRegistryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeRegistryResponse.type = Types::DescribeRegistryResponse
    DescribeSchemaRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSchemaRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeSchemaRequest.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#httpQuery" => "schemaVersion"}))
    DescribeSchemaRequest.type = Types::DescribeSchemaRequest
    DescribeSchemaResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Content"))
    DescribeSchemaResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    DescribeSchemaResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastModified"))
    DescribeSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    DescribeSchemaResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    DescribeSchemaResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    DescribeSchemaResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DescribeSchemaResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    DescribeSchemaResponse.add_member(:version_created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "VersionCreatedDate"))
    DescribeSchemaResponse.type = Types::DescribeSchemaResponse
    DiscovererState.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    DiscovererState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DiscovererSummary.add_member(:discoverer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererArn"))
    DiscovererSummary.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId"))
    DiscovererSummary.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    DiscovererSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererState, name: "State"))
    DiscovererSummary.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrossAccount"))
    DiscovererSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    DiscovererSummary.type = Types::DiscovererSummary
    ExportSchemaRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportSchemaRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportSchemaRequest.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#httpQuery" => "schemaVersion"}))
    ExportSchemaRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "type", "smithy.api#required" => {}}))
    ExportSchemaRequest.type = Types::ExportSchemaRequest
    ExportSchemaResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Content"))
    ExportSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    ExportSchemaResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    ExportSchemaResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    ExportSchemaResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    ExportSchemaResponse.type = Types::ExportSchemaResponse
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ForbiddenException.type = Types::ForbiddenException
    GetCodeBindingSourceRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Language", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeBindingSourceRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeBindingSourceRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeBindingSourceRequest.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#httpQuery" => "schemaVersion"}))
    GetCodeBindingSourceRequest.type = Types::GetCodeBindingSourceRequest
    GetCodeBindingSourceResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "Body", traits: {"smithy.api#httpPayload" => {}}))
    GetCodeBindingSourceResponse[:http_payload] = :body
    GetCodeBindingSourceResponse[:http_payload_member] = GetCodeBindingSourceResponse.member(:body)
    GetCodeBindingSourceResponse.type = Types::GetCodeBindingSourceResponse
    GetDiscoveredSchemaRequest.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofgetdiscoveredschemaversioniteminput, name: "Events", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDiscoveredSchemaRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetDiscoveredSchemaRequest.type = Types::GetDiscoveredSchemaRequest
    GetDiscoveredSchemaResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Content"))
    GetDiscoveredSchemaResponse.type = Types::GetDiscoveredSchemaResponse
    GetResourcePolicyRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpQuery" => "registryName"}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonString, name: "Policy"))
    GetResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GoneException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GoneException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GoneException.type = Types::GoneException
    InternalServerErrorException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListDiscoverersRequest.add_member(:discoverer_id_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererIdPrefix", traits: {"smithy.api#httpQuery" => "discovererIdPrefix"}))
    ListDiscoverersRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListDiscoverersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDiscoverersRequest.add_member(:source_arn_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArnPrefix", traits: {"smithy.api#httpQuery" => "sourceArnPrefix"}))
    ListDiscoverersRequest.type = Types::ListDiscoverersRequest
    ListDiscoverersResponse.add_member(:discoverers, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofdiscoverersummary, name: "Discoverers"))
    ListDiscoverersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListDiscoverersResponse.type = Types::ListDiscoverersResponse
    ListRegistriesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListRegistriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRegistriesRequest.add_member(:registry_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryNamePrefix", traits: {"smithy.api#httpQuery" => "registryNamePrefix"}))
    ListRegistriesRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Scope", traits: {"smithy.api#httpQuery" => "scope"}))
    ListRegistriesRequest.type = Types::ListRegistriesRequest
    ListRegistriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListRegistriesResponse.add_member(:registries, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofregistrysummary, name: "Registries"))
    ListRegistriesResponse.type = Types::ListRegistriesResponse
    ListSchemaVersionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListSchemaVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSchemaVersionsRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSchemaVersionsRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSchemaVersionsRequest.type = Types::ListSchemaVersionsRequest
    ListSchemaVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSchemaVersionsResponse.add_member(:schema_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofschemaversionsummary, name: "SchemaVersions"))
    ListSchemaVersionsResponse.type = Types::ListSchemaVersionsResponse
    ListSchemasRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSchemasRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSchemasRequest.add_member(:schema_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaNamePrefix", traits: {"smithy.api#httpQuery" => "schemaNamePrefix"}))
    ListSchemasRequest.type = Types::ListSchemasRequest
    ListSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofschemasummary, name: "Schemas"))
    ListSchemasResponse.type = Types::ListSchemasResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    NotFoundException.type = Types::NotFoundException
    PreconditionFailedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PreconditionFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PreconditionFailedException.type = Types::PreconditionFailedException
    PutCodeBindingRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Language", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutCodeBindingRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutCodeBindingRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutCodeBindingRequest.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion", traits: {"smithy.api#httpQuery" => "schemaVersion"}))
    PutCodeBindingRequest.type = Types::PutCodeBindingRequest
    PutCodeBindingResponse.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreationDate"))
    PutCodeBindingResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastModified"))
    PutCodeBindingResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    PutCodeBindingResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeGenerationStatus, name: "Status"))
    PutCodeBindingResponse.type = Types::PutCodeBindingResponse
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonString, name: "Policy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpQuery" => "registryName"}))
    PutResourcePolicyRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonString, name: "Policy"))
    PutResourcePolicyResponse.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    RegistrySummary.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryArn"))
    RegistrySummary.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName"))
    RegistrySummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    RegistrySummary.type = Types::RegistrySummary
    SchemaSummary.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastModified"))
    SchemaSummary.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    SchemaSummary.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    SchemaSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    SchemaSummary.add_member(:version_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "VersionCount"))
    SchemaSummary.type = Types::SchemaSummary
    SchemaVersionSummary.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    SchemaVersionSummary.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    SchemaVersionSummary.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    SchemaVersionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    SchemaVersionSummary.type = Types::SchemaVersionSummary
    SearchSchemaSummary.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName"))
    SearchSchemaSummary.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    SearchSchemaSummary.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    SearchSchemaSummary.add_member(:schema_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsearchschemaversionsummary, name: "SchemaVersions"))
    SearchSchemaSummary.type = Types::SearchSchemaSummary
    SearchSchemaVersionSummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "CreatedDate"))
    SearchSchemaVersionSummary.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    SearchSchemaVersionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    SearchSchemaVersionSummary.type = Types::SearchSchemaVersionSummary
    SearchSchemasRequest.add_member(:keywords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Keywords", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "keywords", "smithy.api#required" => {}}))
    SearchSchemasRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit", traits: {"smithy.api#httpQuery" => "limit"}))
    SearchSchemasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    SearchSchemasRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchSchemasRequest.type = Types::SearchSchemasRequest
    SearchSchemasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    SearchSchemasResponse.add_member(:schemas, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofsearchschemasummary, name: "Schemas"))
    SearchSchemasResponse.type = Types::SearchSchemasResponse
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartDiscovererRequest.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDiscovererRequest.type = Types::StartDiscovererRequest
    StartDiscovererResponse.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId"))
    StartDiscovererResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererState, name: "State"))
    StartDiscovererResponse.type = Types::StartDiscovererResponse
    StopDiscovererRequest.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDiscovererRequest.type = Types::StopDiscovererRequest
    StopDiscovererResponse.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId"))
    StopDiscovererResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererState, name: "State"))
    StopDiscovererResponse.type = Types::StopDiscovererResponse
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    TooManyRequestsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Type.add_member(:open_api3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OpenApi3", traits: {"smithy.api#enumValue" => "OpenApi3"}))
    Type.add_member(:json_schema_draft4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSONSchemaDraft4", traits: {"smithy.api#enumValue" => "JSONSchemaDraft4"}))
    UnauthorizedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateDiscovererRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256, name: "Description"))
    UpdateDiscovererRequest.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDiscovererRequest.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrossAccount"))
    UpdateDiscovererRequest.type = Types::UpdateDiscovererRequest
    UpdateDiscovererResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateDiscovererResponse.add_member(:discoverer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererArn"))
    UpdateDiscovererResponse.add_member(:discoverer_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DiscovererId"))
    UpdateDiscovererResponse.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    UpdateDiscovererResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererState, name: "State"))
    UpdateDiscovererResponse.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrossAccount"))
    UpdateDiscovererResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateDiscovererResponse.type = Types::UpdateDiscovererResponse
    UpdateRegistryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256, name: "Description"))
    UpdateRegistryRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRegistryRequest.type = Types::UpdateRegistryRequest
    UpdateRegistryResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateRegistryResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryArn"))
    UpdateRegistryResponse.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName"))
    UpdateRegistryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateRegistryResponse.type = Types::UpdateRegistryResponse
    UpdateSchemaRequest.add_member(:client_token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max36, name: "ClientTokenId", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateSchemaRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin1max100000, name: "Content"))
    UpdateSchemaRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max256, name: "Description"))
    UpdateSchemaRequest.add_member(:registry_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RegistryName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSchemaRequest.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSchemaRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    UpdateSchemaRequest.type = Types::UpdateSchemaRequest
    UpdateSchemaResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    UpdateSchemaResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "LastModified"))
    UpdateSchemaResponse.add_member(:schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaArn"))
    UpdateSchemaResponse.add_member(:schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaName"))
    UpdateSchemaResponse.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SchemaVersion"))
    UpdateSchemaResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateSchemaResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    UpdateSchemaResponse.add_member(:version_created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestampiso8601, name: "VersionCreatedDate"))
    UpdateSchemaResponse.type = Types::UpdateSchemaResponse
    Listofdiscoverersummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiscovererSummary, name: "member")
    Listofgetdiscoveredschemaversioniteminput.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetDiscoveredSchemaVersionItemInput, name: "member")
    Listofregistrysummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrySummary, name: "member")
    Listofschemasummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaSummary, name: "member")
    Listofschemaversionsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionSummary, name: "member")
    Listofsearchschemasummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchemaSummary, name: "member")
    Listofsearchschemaversionsummary.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchemaVersionSummary, name: "member")
    ListofString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")

    Schemas = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.schemas#schemas"
      service.name = "Schemas"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "schemas", "arnNamespace" => "schemas", "cloudFormationName" => "EventSchemas", "cloudTrailEventSource" => "schemas.amazonaws.com", "endpointPrefix" => "schemas"}, "aws.auth#sigv4" => {"name" => "schemas"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Schemas"}
      service.add_operation(:create_discoverer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#CreateDiscoverer"
        operation.name = "CreateDiscoverer"
        operation.input = CreateDiscovererRequest
        operation.output = CreateDiscovererResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/discoverers", "code" => 201}}
      end)
      service.add_operation(:create_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#CreateRegistry"
        operation.name = "CreateRegistry"
        operation.input = CreateRegistryRequest
        operation.output = CreateRegistryResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/registries/name/{RegistryName}", "code" => 201}}
      end)
      service.add_operation(:create_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#CreateSchema"
        operation.name = "CreateSchema"
        operation.input = CreateSchemaRequest
        operation.output = CreateSchemaResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", "code" => 201}}
      end)
      service.add_operation(:delete_discoverer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DeleteDiscoverer"
        operation.name = "DeleteDiscoverer"
        operation.input = DeleteDiscovererRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/discoverers/id/{DiscovererId}", "code" => 204}}
      end)
      service.add_operation(:delete_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DeleteRegistry"
        operation.name = "DeleteRegistry"
        operation.input = DeleteRegistryRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/registries/name/{RegistryName}", "code" => 204}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/policy", "code" => 204}}
      end)
      service.add_operation(:delete_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DeleteSchema"
        operation.name = "DeleteSchema"
        operation.input = DeleteSchemaRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", "code" => 204}}
      end)
      service.add_operation(:delete_schema_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DeleteSchemaVersion"
        operation.name = "DeleteSchemaVersion"
        operation.input = DeleteSchemaVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/version/{SchemaVersion}", "code" => 204}}
      end)
      service.add_operation(:describe_code_binding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DescribeCodeBinding"
        operation.name = "DescribeCodeBinding"
        operation.input = DescribeCodeBindingRequest
        operation.output = DescribeCodeBindingResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}", "code" => 200}}
      end)
      service.add_operation(:describe_discoverer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DescribeDiscoverer"
        operation.name = "DescribeDiscoverer"
        operation.input = DescribeDiscovererRequest
        operation.output = DescribeDiscovererResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/discoverers/id/{DiscovererId}", "code" => 200}}
      end)
      service.add_operation(:describe_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DescribeRegistry"
        operation.name = "DescribeRegistry"
        operation.input = DescribeRegistryRequest
        operation.output = DescribeRegistryResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}", "code" => 200}}
      end)
      service.add_operation(:describe_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#DescribeSchema"
        operation.name = "DescribeSchema"
        operation.input = DescribeSchemaRequest
        operation.output = DescribeSchemaResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", "code" => 200}}
      end)
      service.add_operation(:export_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#ExportSchema"
        operation.name = "ExportSchema"
        operation.input = ExportSchemaRequest
        operation.output = ExportSchemaResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/export", "code" => 200}}
      end)
      service.add_operation(:get_code_binding_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#GetCodeBindingSource"
        operation.name = "GetCodeBindingSource"
        operation.input = GetCodeBindingSourceRequest
        operation.output = GetCodeBindingSourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}/source", "code" => 200}}
      end)
      service.add_operation(:get_discovered_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#GetDiscoveredSchema"
        operation.name = "GetDiscoveredSchema"
        operation.input = GetDiscoveredSchemaRequest
        operation.output = GetDiscoveredSchemaResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/discover", "code" => 200}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/policy", "code" => 200}}
      end)
      service.add_operation(:list_discoverers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#ListDiscoverers"
        operation.name = "ListDiscoverers"
        operation.input = ListDiscoverersRequest
        operation.output = ListDiscoverersResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/discoverers", "code" => 200}}
        operation[:paginator] = Paginators::ListDiscoverers.new
      end)
      service.add_operation(:list_registries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#ListRegistries"
        operation.name = "ListRegistries"
        operation.input = ListRegistriesRequest
        operation.output = ListRegistriesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries", "code" => 200}}
        operation[:paginator] = Paginators::ListRegistries.new
      end)
      service.add_operation(:list_schema_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#ListSchemaVersions"
        operation.name = "ListSchemaVersions"
        operation.input = ListSchemaVersionsRequest
        operation.output = ListSchemaVersionsResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListSchemaVersions.new
      end)
      service.add_operation(:list_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#ListSchemas"
        operation.name = "ListSchemas"
        operation.input = ListSchemasRequest
        operation.output = ListSchemasResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas", "code" => 200}}
        operation[:paginator] = Paginators::ListSchemas.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_code_binding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#PutCodeBinding"
        operation.name = "PutCodeBinding"
        operation.input = PutCodeBindingRequest
        operation.output = PutCodeBindingResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << GoneException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}", "code" => 202}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << PreconditionFailedException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/policy", "code" => 200}}
      end)
      service.add_operation(:search_schemas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#SearchSchemas"
        operation.name = "SearchSchemas"
        operation.input = SearchSchemasRequest
        operation.output = SearchSchemasResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/registries/name/{RegistryName}/schemas/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchSchemas.new
      end)
      service.add_operation(:start_discoverer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#StartDiscoverer"
        operation.name = "StartDiscoverer"
        operation.input = StartDiscovererRequest
        operation.output = StartDiscovererResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/discoverers/id/{DiscovererId}/start", "code" => 200}}
      end)
      service.add_operation(:stop_discoverer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#StopDiscoverer"
        operation.name = "StopDiscoverer"
        operation.input = StopDiscovererRequest
        operation.output = StopDiscovererResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/discoverers/id/{DiscovererId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_discoverer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#UpdateDiscoverer"
        operation.name = "UpdateDiscoverer"
        operation.input = UpdateDiscovererRequest
        operation.output = UpdateDiscovererResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/discoverers/id/{DiscovererId}", "code" => 200}}
      end)
      service.add_operation(:update_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#UpdateRegistry"
        operation.name = "UpdateRegistry"
        operation.input = UpdateRegistryRequest
        operation.output = UpdateRegistryResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/registries/name/{RegistryName}", "code" => 200}}
      end)
      service.add_operation(:update_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.schemas#UpdateSchema"
        operation.name = "UpdateSchema"
        operation.input = UpdateSchemaRequest
        operation.output = UpdateSchemaResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", "code" => 200}}
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
