# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AgentRegistry
  # @api private
  module ClientApi

    include Seahorse::Model

    A2aAgentCardDescriptor = Shapes::StructureShape.new(name: 'A2aAgentCardDescriptor')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgentSkillsAdditionalData = Shapes::StructureShape.new(name: 'AgentSkillsAdditionalData')
    AgentSkillsDefinitionDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsDefinitionDescriptor')
    AgentSkillsMdDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsMdDescriptor')
    BatchGetDiscoverableRegistryRecordError = Shapes::StructureShape.new(name: 'BatchGetDiscoverableRegistryRecordError')
    BatchGetDiscoverableRegistryRecordErrorCode = Shapes::StringShape.new(name: 'BatchGetDiscoverableRegistryRecordErrorCode')
    BatchGetDiscoverableRegistryRecordErrorList = Shapes::ListShape.new(name: 'BatchGetDiscoverableRegistryRecordErrorList')
    BatchGetDiscoverableRegistryRecordRequest = Shapes::StructureShape.new(name: 'BatchGetDiscoverableRegistryRecordRequest')
    BatchGetDiscoverableRegistryRecordRequestEntriesList = Shapes::ListShape.new(name: 'BatchGetDiscoverableRegistryRecordRequestEntriesList')
    BatchGetDiscoverableRegistryRecordResponse = Shapes::StructureShape.new(name: 'BatchGetDiscoverableRegistryRecordResponse')
    CustomDescriptor = Shapes::StructureShape.new(name: 'CustomDescriptor')
    DataSchemaVersion = Shapes::StringShape.new(name: 'DataSchemaVersion')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptorData = Shapes::StringShape.new(name: 'DescriptorData')
    DescriptorSource = Shapes::StructureShape.new(name: 'DescriptorSource')
    DescriptorSourceFromUrl = Shapes::StructureShape.new(name: 'DescriptorSourceFromUrl')
    DescriptorSourceUrl = Shapes::StringShape.new(name: 'DescriptorSourceUrl')
    Descriptors = Shapes::StructureShape.new(name: 'Descriptors')
    DiscoverableFilterValues = Shapes::ListShape.new(name: 'DiscoverableFilterValues')
    DiscoverableRegistryRecordSummary = Shapes::StructureShape.new(name: 'DiscoverableRegistryRecordSummary')
    DiscoverableRegistryRecordSummaryList = Shapes::ListShape.new(name: 'DiscoverableRegistryRecordSummaryList')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDiscoverableRegistryRecordsRequest = Shapes::StructureShape.new(name: 'ListDiscoverableRegistryRecordsRequest')
    ListDiscoverableRegistryRecordsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDiscoverableRegistryRecordsRequestMaxResultsInteger')
    ListDiscoverableRegistryRecordsRequestNextTokenString = Shapes::StringShape.new(name: 'ListDiscoverableRegistryRecordsRequestNextTokenString')
    ListDiscoverableRegistryRecordsResponse = Shapes::StructureShape.new(name: 'ListDiscoverableRegistryRecordsResponse')
    McpServerAdditionalData = Shapes::StructureShape.new(name: 'McpServerAdditionalData')
    McpServerDescriptor = Shapes::StructureShape.new(name: 'McpServerDescriptor')
    McpToolsDescriptor = Shapes::StructureShape.new(name: 'McpToolsDescriptor')
    MetadataFilterExpression = Shapes::DocumentShape.new(name: 'MetadataFilterExpression', document: true)
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    RecordIdentifier = Shapes::StringShape.new(name: 'RecordIdentifier')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RegistryArn = Shapes::StringShape.new(name: 'RegistryArn')
    RegistryIdentifier = Shapes::StringShape.new(name: 'RegistryIdentifier')
    RegistryRecordArn = Shapes::StringShape.new(name: 'RegistryRecordArn')
    RegistryRecordDisplayName = Shapes::StringShape.new(name: 'RegistryRecordDisplayName')
    RegistryRecordFilter = Shapes::StructureShape.new(name: 'RegistryRecordFilter')
    RegistryRecordFilterList = Shapes::ListShape.new(name: 'RegistryRecordFilterList')
    RegistryRecordFilterName = Shapes::StringShape.new(name: 'RegistryRecordFilterName')
    RegistryRecordId = Shapes::StringShape.new(name: 'RegistryRecordId')
    RegistryRecordName = Shapes::StringShape.new(name: 'RegistryRecordName')
    RegistryRecordStatus = Shapes::StringShape.new(name: 'RegistryRecordStatus')
    RegistryRecordSummary = Shapes::StructureShape.new(name: 'RegistryRecordSummary')
    RegistryRecordSummaryList = Shapes::ListShape.new(name: 'RegistryRecordSummaryList')
    RegistryRecordVersion = Shapes::StringShape.new(name: 'RegistryRecordVersion')
    RegistryRecordsEntry = Shapes::StructureShape.new(name: 'RegistryRecordsEntry')
    RegistryRecordsEntryRecordIdsList = Shapes::ListShape.new(name: 'RegistryRecordsEntryRecordIdsList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SearchDiscoverableRegistryRecordsRequest = Shapes::StructureShape.new(name: 'SearchDiscoverableRegistryRecordsRequest')
    SearchDiscoverableRegistryRecordsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchDiscoverableRegistryRecordsRequestMaxResultsInteger')
    SearchDiscoverableRegistryRecordsRequestRegistryIdsList = Shapes::ListShape.new(name: 'SearchDiscoverableRegistryRecordsRequestRegistryIdsList')
    SearchDiscoverableRegistryRecordsResponse = Shapes::StructureShape.new(name: 'SearchDiscoverableRegistryRecordsResponse')
    SearchQuery = Shapes::StringShape.new(name: 'SearchQuery')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    A2aAgentCardDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    A2aAgentCardDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    A2aAgentCardDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    A2aAgentCardDescriptor.struct_class = Types::A2aAgentCardDescriptor

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgentSkillsAdditionalData.add_member(:skill_md, Shapes::ShapeRef.new(shape: AgentSkillsMdDescriptor, location_name: "skillMd"))
    AgentSkillsAdditionalData.struct_class = Types::AgentSkillsAdditionalData

    AgentSkillsDefinitionDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    AgentSkillsDefinitionDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    AgentSkillsDefinitionDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: AgentSkillsAdditionalData, location_name: "additionalData"))
    AgentSkillsDefinitionDescriptor.struct_class = Types::AgentSkillsDefinitionDescriptor

    AgentSkillsMdDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    AgentSkillsMdDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    AgentSkillsMdDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    AgentSkillsMdDescriptor.struct_class = Types::AgentSkillsMdDescriptor

    BatchGetDiscoverableRegistryRecordError.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location_name: "registryId"))
    BatchGetDiscoverableRegistryRecordError.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location_name: "recordId"))
    BatchGetDiscoverableRegistryRecordError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetDiscoverableRegistryRecordErrorCode, required: true, location_name: "errorCode"))
    BatchGetDiscoverableRegistryRecordError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BatchGetDiscoverableRegistryRecordError.struct_class = Types::BatchGetDiscoverableRegistryRecordError

    BatchGetDiscoverableRegistryRecordErrorList.member = Shapes::ShapeRef.new(shape: BatchGetDiscoverableRegistryRecordError)

    BatchGetDiscoverableRegistryRecordRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchGetDiscoverableRegistryRecordRequestEntriesList, required: true, location_name: "entries"))
    BatchGetDiscoverableRegistryRecordRequest.struct_class = Types::BatchGetDiscoverableRegistryRecordRequest

    BatchGetDiscoverableRegistryRecordRequestEntriesList.member = Shapes::ShapeRef.new(shape: RegistryRecordsEntry)

    BatchGetDiscoverableRegistryRecordResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: RegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    BatchGetDiscoverableRegistryRecordResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetDiscoverableRegistryRecordErrorList, required: true, location_name: "errors"))
    BatchGetDiscoverableRegistryRecordResponse.struct_class = Types::BatchGetDiscoverableRegistryRecordResponse

    CustomDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    CustomDescriptor.struct_class = Types::CustomDescriptor

    DescriptorSource.add_member(:from_url, Shapes::ShapeRef.new(shape: DescriptorSourceFromUrl, location_name: "fromUrl"))
    DescriptorSource.struct_class = Types::DescriptorSource

    DescriptorSourceFromUrl.add_member(:url, Shapes::ShapeRef.new(shape: DescriptorSourceUrl, required: true, location_name: "url"))
    DescriptorSourceFromUrl.struct_class = Types::DescriptorSourceFromUrl

    Descriptors.add_member(:mcp_server, Shapes::ShapeRef.new(shape: McpServerDescriptor, location_name: "mcpServer"))
    Descriptors.add_member(:a2a_agent_card, Shapes::ShapeRef.new(shape: A2aAgentCardDescriptor, location_name: "a2aAgentCard"))
    Descriptors.add_member(:agent_skills_definition, Shapes::ShapeRef.new(shape: AgentSkillsDefinitionDescriptor, location_name: "agentSkillsDefinition"))
    Descriptors.add_member(:custom, Shapes::ShapeRef.new(shape: CustomDescriptor, location_name: "custom"))
    Descriptors.struct_class = Types::Descriptors

    DiscoverableFilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    DiscoverableRegistryRecordSummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    DiscoverableRegistryRecordSummary.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    DiscoverableRegistryRecordSummary.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    DiscoverableRegistryRecordSummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    DiscoverableRegistryRecordSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DiscoverableRegistryRecordSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    DiscoverableRegistryRecordSummary.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    DiscoverableRegistryRecordSummary.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, required: true, location_name: "recordVersion"))
    DiscoverableRegistryRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    DiscoverableRegistryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    DiscoverableRegistryRecordSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    DiscoverableRegistryRecordSummary.struct_class = Types::DiscoverableRegistryRecordSummary

    DiscoverableRegistryRecordSummaryList.member = Shapes::ShapeRef.new(shape: DiscoverableRegistryRecordSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDiscoverableRegistryRecordsRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    ListDiscoverableRegistryRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDiscoverableRegistryRecordsRequestMaxResultsInteger, location_name: "maxResults"))
    ListDiscoverableRegistryRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDiscoverableRegistryRecordsRequestNextTokenString, location_name: "nextToken"))
    ListDiscoverableRegistryRecordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistryRecordFilterList, location_name: "filters"))
    ListDiscoverableRegistryRecordsRequest.struct_class = Types::ListDiscoverableRegistryRecordsRequest

    ListDiscoverableRegistryRecordsResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: DiscoverableRegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    ListDiscoverableRegistryRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDiscoverableRegistryRecordsResponse.struct_class = Types::ListDiscoverableRegistryRecordsResponse

    McpServerAdditionalData.add_member(:tools, Shapes::ShapeRef.new(shape: McpToolsDescriptor, location_name: "tools"))
    McpServerAdditionalData.struct_class = Types::McpServerAdditionalData

    McpServerDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    McpServerDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    McpServerDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: McpServerAdditionalData, location_name: "additionalData"))
    McpServerDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    McpServerDescriptor.struct_class = Types::McpServerDescriptor

    McpToolsDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    McpToolsDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    McpToolsDescriptor.struct_class = Types::McpToolsDescriptor

    RegistryRecordFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordFilterName, required: true, location_name: "name"))
    RegistryRecordFilter.add_member(:values, Shapes::ShapeRef.new(shape: DiscoverableFilterValues, required: true, location_name: "values"))
    RegistryRecordFilter.struct_class = Types::RegistryRecordFilter

    RegistryRecordFilterList.member = Shapes::ShapeRef.new(shape: RegistryRecordFilter)

    RegistryRecordSummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistryRecordSummary.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    RegistryRecordSummary.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    RegistryRecordSummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    RegistryRecordSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistryRecordSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    RegistryRecordSummary.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    RegistryRecordSummary.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, required: true, location_name: "descriptors"))
    RegistryRecordSummary.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, required: true, location_name: "recordVersion"))
    RegistryRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    RegistryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistryRecordSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistryRecordSummary.struct_class = Types::RegistryRecordSummary

    RegistryRecordSummaryList.member = Shapes::ShapeRef.new(shape: RegistryRecordSummary)

    RegistryRecordsEntry.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location_name: "registryId"))
    RegistryRecordsEntry.add_member(:record_ids, Shapes::ShapeRef.new(shape: RegistryRecordsEntryRecordIdsList, required: true, location_name: "recordIds"))
    RegistryRecordsEntry.struct_class = Types::RegistryRecordsEntry

    RegistryRecordsEntryRecordIdsList.member = Shapes::ShapeRef.new(shape: RecordIdentifier)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchDiscoverableRegistryRecordsRequest.add_member(:search_query, Shapes::ShapeRef.new(shape: SearchQuery, required: true, location_name: "searchQuery"))
    SearchDiscoverableRegistryRecordsRequest.add_member(:registry_ids, Shapes::ShapeRef.new(shape: SearchDiscoverableRegistryRecordsRequestRegistryIdsList, required: true, location_name: "registryIds"))
    SearchDiscoverableRegistryRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchDiscoverableRegistryRecordsRequestMaxResultsInteger, location_name: "maxResults"))
    SearchDiscoverableRegistryRecordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MetadataFilterExpression, location_name: "filters"))
    SearchDiscoverableRegistryRecordsRequest.struct_class = Types::SearchDiscoverableRegistryRecordsRequest

    SearchDiscoverableRegistryRecordsRequestRegistryIdsList.member = Shapes::ShapeRef.new(shape: RegistryIdentifier)

    SearchDiscoverableRegistryRecordsResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: RegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    SearchDiscoverableRegistryRecordsResponse.struct_class = Types::SearchDiscoverableRegistryRecordsResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-12-01"

      api.metadata = {
        "apiVersion" => "2025-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "agent-registry",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Agent Registry",
        "serviceId" => "Agent Registry",
        "signatureVersion" => "v4",
        "signingName" => "agent-registry",
        "uid" => "agent-registry-2025-12-01",
      }

      api.add_operation(:batch_get_discoverable_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDiscoverableRegistryRecord"
        o.http_method = "POST"
        o.http_request_uri = "/discoverable-records-batch"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDiscoverableRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDiscoverableRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_discoverable_registry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoverableRegistryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/discoverable-records-list"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoverableRegistryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoverableRegistryRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_discoverable_registry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDiscoverableRegistryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/discoverable-records-search"
        o.input = Shapes::ShapeRef.new(shape: SearchDiscoverableRegistryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDiscoverableRegistryRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
