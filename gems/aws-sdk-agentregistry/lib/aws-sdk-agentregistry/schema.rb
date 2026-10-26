# frozen_string_literal: true

# This is generated code!

module Aws::AgentRegistry
  # This module contains a schema composed of shapes used by the client.
  module Schema

    A2aAgentCardDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#A2aAgentCardDescriptor", name: "A2aAgentCardDescriptor")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgUiDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#AgUiDescriptor", name: "AgUiDescriptor")
    AgentSkillsAdditionalData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#AgentSkillsAdditionalData", name: "AgentSkillsAdditionalData")
    AgentSkillsDefinitionDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#AgentSkillsDefinitionDescriptor", name: "AgentSkillsDefinitionDescriptor")
    AgentSkillsMdDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#AgentSkillsMdDescriptor", name: "AgentSkillsMdDescriptor")
    BatchGetDiscoverableRegistryRecordError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#BatchGetDiscoverableRegistryRecordError", name: "BatchGetDiscoverableRegistryRecordError")
    BatchGetDiscoverableRegistryRecordErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistry#BatchGetDiscoverableRegistryRecordErrorCode", name: "BatchGetDiscoverableRegistryRecordErrorCode")
    BatchGetDiscoverableRegistryRecordErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#BatchGetDiscoverableRegistryRecordErrorList", name: "BatchGetDiscoverableRegistryRecordErrorList")
    BatchGetDiscoverableRegistryRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#BatchGetDiscoverableRegistryRecordRequest", name: "BatchGetDiscoverableRegistryRecordRequest")
    BatchGetDiscoverableRegistryRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#BatchGetDiscoverableRegistryRecordResponse", name: "BatchGetDiscoverableRegistryRecordResponse")
    CustomDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#CustomDescriptor", name: "CustomDescriptor")
    CustomMetadataDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.agentregistry#CustomMetadataDocument", name: "CustomMetadataDocument", traits: {"smithy.api#sensitive" => {}})
    DataSchemaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#DataSchemaVersion", name: "DataSchemaVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.agentregistry#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    DescriptorData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#DescriptorData", name: "DescriptorData", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#sensitive" => {}})
    DescriptorSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#DescriptorSource", name: "DescriptorSource")
    DescriptorSourceFromUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#DescriptorSourceFromUrl", name: "DescriptorSourceFromUrl")
    DescriptorSourceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#DescriptorSourceUrl", name: "DescriptorSourceUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://.*$"})
    DescriptorTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#DescriptorTypeList", name: "DescriptorTypeList", traits: {"smithy.api#length" => {"max" => 10}})
    Descriptors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#Descriptors", name: "Descriptors")
    DiscoverableFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#DiscoverableFilterValues", name: "DiscoverableFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DiscoverableRegistryRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#DiscoverableRegistryRecordSummary", name: "DiscoverableRegistryRecordSummary")
    DiscoverableRegistryRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#DiscoverableRegistryRecordSummaryList", name: "DiscoverableRegistryRecordSummaryList")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HttpDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#HttpDescriptor", name: "HttpDescriptor")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListDiscoverableRegistryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#ListDiscoverableRegistryRecordsRequest", name: "ListDiscoverableRegistryRecordsRequest")
    ListDiscoverableRegistryRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#ListDiscoverableRegistryRecordsResponse", name: "ListDiscoverableRegistryRecordsResponse")
    McpServerAdditionalData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#McpServerAdditionalData", name: "McpServerAdditionalData")
    McpServerDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#McpServerDescriptor", name: "McpServerDescriptor")
    McpToolsDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#McpToolsDescriptor", name: "McpToolsDescriptor")
    MetadataFilterExpression = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.agentregistry#MetadataFilterExpression", name: "MetadataFilterExpression", traits: {"smithy.api#sensitive" => {}})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#NonBlankString", name: "NonBlankString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    RecordIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RecordIdentifier", name: "RecordIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}/record/)?[a-zA-Z0-9]{12}$"})
    RecordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistry#RecordType", name: "RecordType")
    RegistryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryArn", name: "RegistryArn", traits: {"aws.api#arnReference" => {"type" => "AWS::AgentRegistry::Registry"}, "smithy.api#length" => {"min" => 46, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}$"})
    RegistryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#RegistryIdList", name: "RegistryIdList")
    RegistryIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryIdentifier", name: "RegistryIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/)?[a-zA-Z0-9]{12,16}$"})
    RegistryRecordArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryRecordArn", name: "RegistryRecordArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}/record/[a-zA-Z0-9]{12}$"})
    RegistryRecordDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryRecordDisplayName", name: "RegistryRecordDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RegistryRecordFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#RegistryRecordFilter", name: "RegistryRecordFilter")
    RegistryRecordFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#RegistryRecordFilterList", name: "RegistryRecordFilterList", traits: {"smithy.api#length" => {"max" => 10}})
    RegistryRecordFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistry#RegistryRecordFilterName", name: "RegistryRecordFilterName")
    RegistryRecordId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryRecordId", name: "RegistryRecordId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]{12}$"})
    RegistryRecordIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#RegistryRecordIdList", name: "RegistryRecordIdList")
    RegistryRecordName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryRecordName", name: "RegistryRecordName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_\\-\\.\\/]*$"})
    RegistryRecordStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistry#RegistryRecordStatus", name: "RegistryRecordStatus")
    RegistryRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#RegistryRecordSummary", name: "RegistryRecordSummary")
    RegistryRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#RegistryRecordSummaryList", name: "RegistryRecordSummaryList")
    RegistryRecordVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#RegistryRecordVersion", name: "RegistryRecordVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    RegistryRecordsEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#RegistryRecordsEntry", name: "RegistryRecordsEntry")
    RegistryRecordsEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#RegistryRecordsEntryList", name: "RegistryRecordsEntryList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SearchDiscoverableRegistryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#SearchDiscoverableRegistryRecordsRequest", name: "SearchDiscoverableRegistryRecordsRequest")
    SearchDiscoverableRegistryRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#SearchDiscoverableRegistryRecordsResponse", name: "SearchDiscoverableRegistryRecordsResponse")
    SearchQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistry#SearchQuery", name: "SearchQuery", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistry#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistry#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistry#ValidationExceptionReason", name: "ValidationExceptionReason")

    A2aAgentCardDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    A2aAgentCardDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    A2aAgentCardDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    A2aAgentCardDescriptor.type = Types::A2aAgentCardDescriptor
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AgUiDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    AgUiDescriptor.type = Types::AgUiDescriptor
    AgentSkillsAdditionalData.add_member(:skill_md, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsMdDescriptor, name: "skillMd"))
    AgentSkillsAdditionalData.type = Types::AgentSkillsAdditionalData
    AgentSkillsDefinitionDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    AgentSkillsDefinitionDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    AgentSkillsDefinitionDescriptor.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsAdditionalData, name: "additionalData"))
    AgentSkillsDefinitionDescriptor.type = Types::AgentSkillsDefinitionDescriptor
    AgentSkillsMdDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    AgentSkillsMdDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    AgentSkillsMdDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    AgentSkillsMdDescriptor.type = Types::AgentSkillsMdDescriptor
    BatchGetDiscoverableRegistryRecordError.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#required" => {}}))
    BatchGetDiscoverableRegistryRecordError.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "recordId", traits: {"smithy.api#required" => {}}))
    BatchGetDiscoverableRegistryRecordError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetDiscoverableRegistryRecordErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchGetDiscoverableRegistryRecordError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    BatchGetDiscoverableRegistryRecordError.type = Types::BatchGetDiscoverableRegistryRecordError
    BatchGetDiscoverableRegistryRecordErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    BatchGetDiscoverableRegistryRecordErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    BatchGetDiscoverableRegistryRecordErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    BatchGetDiscoverableRegistryRecordErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetDiscoverableRegistryRecordError, name: "member"))
    BatchGetDiscoverableRegistryRecordRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordsEntryList, name: "entries", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    BatchGetDiscoverableRegistryRecordRequest.type = Types::BatchGetDiscoverableRegistryRecordRequest
    BatchGetDiscoverableRegistryRecordResponse.add_member(:registry_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummaryList, name: "registryRecords", traits: {"smithy.api#required" => {}}))
    BatchGetDiscoverableRegistryRecordResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetDiscoverableRegistryRecordErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetDiscoverableRegistryRecordResponse.type = Types::BatchGetDiscoverableRegistryRecordResponse
    CustomDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    CustomDescriptor.type = Types::CustomDescriptor
    DescriptorSource.add_member(:from_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSourceFromUrl, name: "fromUrl"))
    DescriptorSource.type = Types::DescriptorSource
    DescriptorSourceFromUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSourceUrl, name: "url", traits: {"smithy.api#required" => {}}))
    DescriptorSourceFromUrl.type = Types::DescriptorSourceFromUrl
    DescriptorTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    Descriptors.add_member(:mcp_server, ::Smithy::Schema::Shapes::MemberShape.new(target: McpServerDescriptor, name: "mcpServer"))
    Descriptors.add_member(:a2a_agent_card, ::Smithy::Schema::Shapes::MemberShape.new(target: A2aAgentCardDescriptor, name: "a2aAgentCard"))
    Descriptors.add_member(:agent_skills_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsDefinitionDescriptor, name: "agentSkillsDefinition"))
    Descriptors.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDescriptor, name: "custom"))
    Descriptors.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpDescriptor, name: "http"))
    Descriptors.add_member(:agui, ::Smithy::Schema::Shapes::MemberShape.new(target: AgUiDescriptor, name: "agui"))
    Descriptors.type = Types::Descriptors
    DiscoverableFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    DiscoverableRegistryRecordSummary.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DiscoverableRegistryRecordSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "displayName"))
    DiscoverableRegistryRecordSummary.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    DiscoverableRegistryRecordSummary.add_member(:descriptor_types, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorTypeList, name: "descriptorTypes"))
    DiscoverableRegistryRecordSummary.type = Types::DiscoverableRegistryRecordSummary
    DiscoverableRegistryRecordSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoverableRegistryRecordSummary, name: "member"))
    HttpDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    HttpDescriptor.type = Types::HttpDescriptor
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListDiscoverableRegistryRecordsRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDiscoverableRegistryRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListDiscoverableRegistryRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}}))
    ListDiscoverableRegistryRecordsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordFilterList, name: "filters"))
    ListDiscoverableRegistryRecordsRequest.type = Types::ListDiscoverableRegistryRecordsRequest
    ListDiscoverableRegistryRecordsResponse.add_member(:registry_records, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoverableRegistryRecordSummaryList, name: "registryRecords", traits: {"smithy.api#required" => {}}))
    ListDiscoverableRegistryRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDiscoverableRegistryRecordsResponse.type = Types::ListDiscoverableRegistryRecordsResponse
    McpServerAdditionalData.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: McpToolsDescriptor, name: "tools"))
    McpServerAdditionalData.type = Types::McpServerAdditionalData
    McpServerDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    McpServerDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    McpServerDescriptor.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: McpServerAdditionalData, name: "additionalData"))
    McpServerDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    McpServerDescriptor.type = Types::McpServerDescriptor
    McpToolsDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    McpToolsDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    McpToolsDescriptor.type = Types::McpToolsDescriptor
    RecordType.add_member(:mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP", traits: {"smithy.api#enumValue" => "MCP"}))
    RecordType.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    RecordType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    RecordType.add_member(:skill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKILL", traits: {"smithy.api#enumValue" => "SKILL"}))
    RecordType.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GATEWAY", traits: {"smithy.api#enumValue" => "GATEWAY"}))
    RegistryIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "member"))
    RegistryRecordFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistryRecordFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoverableFilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    RegistryRecordFilter.type = Types::RegistryRecordFilter
    RegistryRecordFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordFilter, name: "member"))
    RegistryRecordFilterName.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECORD_TYPE", traits: {"smithy.api#enumValue" => "recordType"}))
    RegistryRecordFilterName.add_member(:descriptor_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCRIPTOR_TYPE", traits: {"smithy.api#enumValue" => "descriptorType"}))
    RegistryRecordIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "member"))
    RegistryRecordStatus.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    RegistryRecordStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    RegistryRecordStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    RegistryRecordStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    RegistryRecordStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    RegistryRecordStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RegistryRecordStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RegistryRecordStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    RegistryRecordStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    RegistryRecordSummary.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegistryRecordSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "displayName"))
    RegistryRecordSummary.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: Descriptors, name: "descriptors", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataDocument, name: "customMetadata"))
    RegistryRecordSummary.type = Types::RegistryRecordSummary
    RegistryRecordSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummary, name: "member"))
    RegistryRecordsEntry.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#required" => {}}))
    RegistryRecordsEntry.add_member(:record_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordIdList, name: "recordIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RegistryRecordsEntry.type = Types::RegistryRecordsEntry
    RegistryRecordsEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordsEntry, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchDiscoverableRegistryRecordsRequest.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchQuery, name: "searchQuery", traits: {"smithy.api#required" => {}}))
    SearchDiscoverableRegistryRecordsRequest.add_member(:registry_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdList, name: "registryIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    SearchDiscoverableRegistryRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}}))
    SearchDiscoverableRegistryRecordsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataFilterExpression, name: "filters"))
    SearchDiscoverableRegistryRecordsRequest.type = Types::SearchDiscoverableRegistryRecordsRequest
    SearchDiscoverableRegistryRecordsResponse.add_member(:registry_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummaryList, name: "registryRecords", traits: {"smithy.api#required" => {}}))
    SearchDiscoverableRegistryRecordsResponse.type = Types::SearchDiscoverableRegistryRecordsResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "FieldValidationFailed", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:idempotent_parameter_mismatch_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION", traits: {"smithy.api#enumValue" => "IdempotentParameterMismatchException"}))
    ValidationExceptionReason.add_member(:root_event_in_other_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT_EVENT_IN_OTHER_SESSION", traits: {"smithy.api#enumValue" => "EventInOtherSession"}))
    ValidationExceptionReason.add_member(:resource_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_CONFLICT", traits: {"smithy.api#enumValue" => "ResourceConflict"}))

    AgentRegistry = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.agentregistry#AgentRegistry"
      service.name = "AgentRegistry"
      service.version = "2025-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Agent Registry", "arnNamespace" => "agent-registry", "endpointPrefix" => "agent-registry"}, "aws.auth#sigv4" => {"name" => "agent-registry"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Agent Registry", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region of the service.", "type" => "string"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send requests.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}], "results" => [{"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://agent-registry.{Region}.api.aws", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Unable to resolve an Agent Registry endpoint: Region was not set and no explicit Endpoint override was provided.", "type" => "error"}], "root" => 2, "nodeCount" => 3, "nodes" => "/////wAAAAH/////AAAAAAX14QEAAAADAAAAAQX14QIF9eED"}}
      service.add_operation(:batch_get_discoverable_registry_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistry#BatchGetDiscoverableRegistryRecord"
        operation.name = "BatchGetDiscoverableRegistryRecord"
        operation.input = BatchGetDiscoverableRegistryRecordRequest
        operation.output = BatchGetDiscoverableRegistryRecordResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/discoverable-records-batch", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "BatchGetDiscoverableRegistryRecordNonexistentFailure", "params" => {"entries" => [{"registryId" => "aaaaaaaaaaaa", "recordIds" => ["bbbbbbbbbbbb"]}]}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:list_discoverable_registry_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistry#ListDiscoverableRegistryRecords"
        operation.name = "ListDiscoverableRegistryRecords"
        operation.input = ListDiscoverableRegistryRecordsRequest
        operation.output = ListDiscoverableRegistryRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/registries/{registryId}/discoverable-records-list", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListDiscoverableRegistryRecordsNonexistentFailure", "params" => {"registryId" => "aaaaaaaaaaaa"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::ListDiscoverableRegistryRecords.new
      end)
      service.add_operation(:search_discoverable_registry_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistry#SearchDiscoverableRegistryRecords"
        operation.name = "SearchDiscoverableRegistryRecords"
        operation.input = SearchDiscoverableRegistryRecordsRequest
        operation.output = SearchDiscoverableRegistryRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/discoverable-records-search", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "SearchDiscoverableRegistryRecordsNonexistentFailure", "params" => {"searchQuery" => "smoke-test", "registryIds" => ["aaaaaaaaaaaa"]}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"failure" => {}}}]}
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
