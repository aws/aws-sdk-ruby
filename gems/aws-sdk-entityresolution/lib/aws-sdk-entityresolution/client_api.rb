# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EntityResolution
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttributeMatchingModel = Shapes::StringShape.new(name: 'AttributeMatchingModel')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsAccountIdList = Shapes::ListShape.new(name: 'AwsAccountIdList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateIdMappingWorkflowInput = Shapes::StructureShape.new(name: 'CreateIdMappingWorkflowInput')
    CreateIdMappingWorkflowOutput = Shapes::StructureShape.new(name: 'CreateIdMappingWorkflowOutput')
    CreateMatchingWorkflowInput = Shapes::StructureShape.new(name: 'CreateMatchingWorkflowInput')
    CreateMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'CreateMatchingWorkflowOutput')
    CreateSchemaMappingInput = Shapes::StructureShape.new(name: 'CreateSchemaMappingInput')
    CreateSchemaMappingOutput = Shapes::StructureShape.new(name: 'CreateSchemaMappingOutput')
    DeleteIdMappingWorkflowInput = Shapes::StructureShape.new(name: 'DeleteIdMappingWorkflowInput')
    DeleteIdMappingWorkflowOutput = Shapes::StructureShape.new(name: 'DeleteIdMappingWorkflowOutput')
    DeleteMatchingWorkflowInput = Shapes::StructureShape.new(name: 'DeleteMatchingWorkflowInput')
    DeleteMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'DeleteMatchingWorkflowOutput')
    DeleteSchemaMappingInput = Shapes::StructureShape.new(name: 'DeleteSchemaMappingInput')
    DeleteSchemaMappingOutput = Shapes::StructureShape.new(name: 'DeleteSchemaMappingOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceedsLimitException = Shapes::StructureShape.new(name: 'ExceedsLimitException')
    GetIdMappingJobInput = Shapes::StructureShape.new(name: 'GetIdMappingJobInput')
    GetIdMappingJobOutput = Shapes::StructureShape.new(name: 'GetIdMappingJobOutput')
    GetIdMappingWorkflowInput = Shapes::StructureShape.new(name: 'GetIdMappingWorkflowInput')
    GetIdMappingWorkflowOutput = Shapes::StructureShape.new(name: 'GetIdMappingWorkflowOutput')
    GetMatchIdInput = Shapes::StructureShape.new(name: 'GetMatchIdInput')
    GetMatchIdOutput = Shapes::StructureShape.new(name: 'GetMatchIdOutput')
    GetMatchingJobInput = Shapes::StructureShape.new(name: 'GetMatchingJobInput')
    GetMatchingJobOutput = Shapes::StructureShape.new(name: 'GetMatchingJobOutput')
    GetMatchingWorkflowInput = Shapes::StructureShape.new(name: 'GetMatchingWorkflowInput')
    GetMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'GetMatchingWorkflowOutput')
    GetProviderServiceInput = Shapes::StructureShape.new(name: 'GetProviderServiceInput')
    GetProviderServiceOutput = Shapes::StructureShape.new(name: 'GetProviderServiceOutput')
    GetSchemaMappingInput = Shapes::StructureShape.new(name: 'GetSchemaMappingInput')
    GetSchemaMappingOutput = Shapes::StructureShape.new(name: 'GetSchemaMappingOutput')
    IdMappingJobMetrics = Shapes::StructureShape.new(name: 'IdMappingJobMetrics')
    IdMappingTechniques = Shapes::StructureShape.new(name: 'IdMappingTechniques')
    IdMappingType = Shapes::StringShape.new(name: 'IdMappingType')
    IdMappingWorkflowArn = Shapes::StringShape.new(name: 'IdMappingWorkflowArn')
    IdMappingWorkflowInputSource = Shapes::StructureShape.new(name: 'IdMappingWorkflowInputSource')
    IdMappingWorkflowInputSourceConfig = Shapes::ListShape.new(name: 'IdMappingWorkflowInputSourceConfig')
    IdMappingWorkflowInputSourceInputSourceARNString = Shapes::StringShape.new(name: 'IdMappingWorkflowInputSourceInputSourceARNString')
    IdMappingWorkflowList = Shapes::ListShape.new(name: 'IdMappingWorkflowList')
    IdMappingWorkflowOutputSource = Shapes::StructureShape.new(name: 'IdMappingWorkflowOutputSource')
    IdMappingWorkflowOutputSourceConfig = Shapes::ListShape.new(name: 'IdMappingWorkflowOutputSourceConfig')
    IdMappingWorkflowSummary = Shapes::StructureShape.new(name: 'IdMappingWorkflowSummary')
    IncrementalRunConfig = Shapes::StructureShape.new(name: 'IncrementalRunConfig')
    IncrementalRunType = Shapes::StringShape.new(name: 'IncrementalRunType')
    InputSource = Shapes::StructureShape.new(name: 'InputSource')
    InputSourceConfig = Shapes::ListShape.new(name: 'InputSourceConfig')
    InputSourceInputSourceARNString = Shapes::StringShape.new(name: 'InputSourceInputSourceARNString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntermediateSourceConfiguration = Shapes::StructureShape.new(name: 'IntermediateSourceConfiguration')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobMetrics = Shapes::StructureShape.new(name: 'JobMetrics')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    KMSArn = Shapes::StringShape.new(name: 'KMSArn')
    ListIdMappingJobsInput = Shapes::StructureShape.new(name: 'ListIdMappingJobsInput')
    ListIdMappingJobsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListIdMappingJobsInputMaxResultsInteger')
    ListIdMappingJobsOutput = Shapes::StructureShape.new(name: 'ListIdMappingJobsOutput')
    ListIdMappingWorkflowsInput = Shapes::StructureShape.new(name: 'ListIdMappingWorkflowsInput')
    ListIdMappingWorkflowsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListIdMappingWorkflowsInputMaxResultsInteger')
    ListIdMappingWorkflowsOutput = Shapes::StructureShape.new(name: 'ListIdMappingWorkflowsOutput')
    ListMatchingJobsInput = Shapes::StructureShape.new(name: 'ListMatchingJobsInput')
    ListMatchingJobsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMatchingJobsInputMaxResultsInteger')
    ListMatchingJobsOutput = Shapes::StructureShape.new(name: 'ListMatchingJobsOutput')
    ListMatchingWorkflowsInput = Shapes::StructureShape.new(name: 'ListMatchingWorkflowsInput')
    ListMatchingWorkflowsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMatchingWorkflowsInputMaxResultsInteger')
    ListMatchingWorkflowsOutput = Shapes::StructureShape.new(name: 'ListMatchingWorkflowsOutput')
    ListProviderServicesInput = Shapes::StructureShape.new(name: 'ListProviderServicesInput')
    ListProviderServicesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListProviderServicesInputMaxResultsInteger')
    ListProviderServicesOutput = Shapes::StructureShape.new(name: 'ListProviderServicesOutput')
    ListSchemaMappingsInput = Shapes::StructureShape.new(name: 'ListSchemaMappingsInput')
    ListSchemaMappingsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSchemaMappingsInputMaxResultsInteger')
    ListSchemaMappingsOutput = Shapes::StructureShape.new(name: 'ListSchemaMappingsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MatchingWorkflowArn = Shapes::StringShape.new(name: 'MatchingWorkflowArn')
    MatchingWorkflowList = Shapes::ListShape.new(name: 'MatchingWorkflowList')
    MatchingWorkflowSummary = Shapes::StructureShape.new(name: 'MatchingWorkflowSummary')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OutputAttribute = Shapes::StructureShape.new(name: 'OutputAttribute')
    OutputSource = Shapes::StructureShape.new(name: 'OutputSource')
    OutputSourceConfig = Shapes::ListShape.new(name: 'OutputSourceConfig')
    OutputSourceOutputList = Shapes::ListShape.new(name: 'OutputSourceOutputList')
    ProviderEndpointConfiguration = Shapes::UnionShape.new(name: 'ProviderEndpointConfiguration')
    ProviderIntermediateDataAccessConfiguration = Shapes::StructureShape.new(name: 'ProviderIntermediateDataAccessConfiguration')
    ProviderMarketplaceConfiguration = Shapes::StructureShape.new(name: 'ProviderMarketplaceConfiguration')
    ProviderProperties = Shapes::StructureShape.new(name: 'ProviderProperties')
    ProviderServiceArn = Shapes::StringShape.new(name: 'ProviderServiceArn')
    ProviderServiceDisplayName = Shapes::StringShape.new(name: 'ProviderServiceDisplayName')
    ProviderServiceList = Shapes::ListShape.new(name: 'ProviderServiceList')
    ProviderServiceSummary = Shapes::StructureShape.new(name: 'ProviderServiceSummary')
    RecordAttributeMap = Shapes::MapShape.new(name: 'RecordAttributeMap')
    RecordAttributeMapKeyString = Shapes::StringShape.new(name: 'RecordAttributeMapKeyString')
    RecordAttributeMapValueString = Shapes::StringShape.new(name: 'RecordAttributeMapValueString')
    RequiredBucketActionsList = Shapes::ListShape.new(name: 'RequiredBucketActionsList')
    ResolutionTechniques = Shapes::StructureShape.new(name: 'ResolutionTechniques')
    ResolutionType = Shapes::StringShape.new(name: 'ResolutionType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleBasedProperties = Shapes::StructureShape.new(name: 'RuleBasedProperties')
    RuleBasedPropertiesRulesList = Shapes::ListShape.new(name: 'RuleBasedPropertiesRulesList')
    RuleMatchingKeysList = Shapes::ListShape.new(name: 'RuleMatchingKeysList')
    RuleRuleNameString = Shapes::StringShape.new(name: 'RuleRuleNameString')
    S3Path = Shapes::StringShape.new(name: 'S3Path')
    SchemaAttributeType = Shapes::StringShape.new(name: 'SchemaAttributeType')
    SchemaInputAttribute = Shapes::StructureShape.new(name: 'SchemaInputAttribute')
    SchemaInputAttributes = Shapes::ListShape.new(name: 'SchemaInputAttributes')
    SchemaMappingArn = Shapes::StringShape.new(name: 'SchemaMappingArn')
    SchemaMappingList = Shapes::ListShape.new(name: 'SchemaMappingList')
    SchemaMappingSummary = Shapes::StructureShape.new(name: 'SchemaMappingSummary')
    ServiceType = Shapes::StringShape.new(name: 'ServiceType')
    StartIdMappingJobInput = Shapes::StructureShape.new(name: 'StartIdMappingJobInput')
    StartIdMappingJobOutput = Shapes::StructureShape.new(name: 'StartIdMappingJobOutput')
    StartMatchingJobInput = Shapes::StructureShape.new(name: 'StartMatchingJobInput')
    StartMatchingJobOutput = Shapes::StructureShape.new(name: 'StartMatchingJobOutput')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateIdMappingWorkflowInput = Shapes::StructureShape.new(name: 'UpdateIdMappingWorkflowInput')
    UpdateIdMappingWorkflowOutput = Shapes::StructureShape.new(name: 'UpdateIdMappingWorkflowOutput')
    UpdateMatchingWorkflowInput = Shapes::StructureShape.new(name: 'UpdateMatchingWorkflowInput')
    UpdateMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'UpdateMatchingWorkflowOutput')
    UpdateSchemaMappingInput = Shapes::StructureShape.new(name: 'UpdateSchemaMappingInput')
    UpdateSchemaMappingOutput = Shapes::StructureShape.new(name: 'UpdateSchemaMappingOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VeniceGlobalArn = Shapes::StringShape.new(name: 'VeniceGlobalArn')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AwsAccountIdList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateIdMappingWorkflowInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIdMappingWorkflowInput.add_member(:id_mapping_techniques, Shapes::ShapeRef.new(shape: IdMappingTechniques, required: true, location_name: "idMappingTechniques"))
    CreateIdMappingWorkflowInput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, required: true, location_name: "inputSourceConfig"))
    CreateIdMappingWorkflowInput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    CreateIdMappingWorkflowInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateIdMappingWorkflowInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateIdMappingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    CreateIdMappingWorkflowInput.struct_class = Types::CreateIdMappingWorkflowInput

    CreateIdMappingWorkflowOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIdMappingWorkflowOutput.add_member(:id_mapping_techniques, Shapes::ShapeRef.new(shape: IdMappingTechniques, required: true, location_name: "idMappingTechniques"))
    CreateIdMappingWorkflowOutput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, required: true, location_name: "inputSourceConfig"))
    CreateIdMappingWorkflowOutput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    CreateIdMappingWorkflowOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateIdMappingWorkflowOutput.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, required: true, location_name: "workflowArn"))
    CreateIdMappingWorkflowOutput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    CreateIdMappingWorkflowOutput.struct_class = Types::CreateIdMappingWorkflowOutput

    CreateMatchingWorkflowInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateMatchingWorkflowInput.add_member(:incremental_run_config, Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: "incrementalRunConfig"))
    CreateMatchingWorkflowInput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: InputSourceConfig, required: true, location_name: "inputSourceConfig"))
    CreateMatchingWorkflowInput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: OutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    CreateMatchingWorkflowInput.add_member(:resolution_techniques, Shapes::ShapeRef.new(shape: ResolutionTechniques, required: true, location_name: "resolutionTechniques"))
    CreateMatchingWorkflowInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateMatchingWorkflowInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMatchingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    CreateMatchingWorkflowInput.struct_class = Types::CreateMatchingWorkflowInput

    CreateMatchingWorkflowOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateMatchingWorkflowOutput.add_member(:incremental_run_config, Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: "incrementalRunConfig"))
    CreateMatchingWorkflowOutput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: InputSourceConfig, required: true, location_name: "inputSourceConfig"))
    CreateMatchingWorkflowOutput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: OutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    CreateMatchingWorkflowOutput.add_member(:resolution_techniques, Shapes::ShapeRef.new(shape: ResolutionTechniques, required: true, location_name: "resolutionTechniques"))
    CreateMatchingWorkflowOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateMatchingWorkflowOutput.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: MatchingWorkflowArn, required: true, location_name: "workflowArn"))
    CreateMatchingWorkflowOutput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    CreateMatchingWorkflowOutput.struct_class = Types::CreateMatchingWorkflowOutput

    CreateSchemaMappingInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSchemaMappingInput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    CreateSchemaMappingInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    CreateSchemaMappingInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSchemaMappingInput.struct_class = Types::CreateSchemaMappingInput

    CreateSchemaMappingOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    CreateSchemaMappingOutput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    CreateSchemaMappingOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    CreateSchemaMappingOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    CreateSchemaMappingOutput.struct_class = Types::CreateSchemaMappingOutput

    DeleteIdMappingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    DeleteIdMappingWorkflowInput.struct_class = Types::DeleteIdMappingWorkflowInput

    DeleteIdMappingWorkflowOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DeleteIdMappingWorkflowOutput.struct_class = Types::DeleteIdMappingWorkflowOutput

    DeleteMatchingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    DeleteMatchingWorkflowInput.struct_class = Types::DeleteMatchingWorkflowInput

    DeleteMatchingWorkflowOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DeleteMatchingWorkflowOutput.struct_class = Types::DeleteMatchingWorkflowOutput

    DeleteSchemaMappingInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "schemaName"))
    DeleteSchemaMappingInput.struct_class = Types::DeleteSchemaMappingInput

    DeleteSchemaMappingOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DeleteSchemaMappingOutput.struct_class = Types::DeleteSchemaMappingOutput

    ErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ExceedsLimitException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExceedsLimitException.add_member(:quota_name, Shapes::ShapeRef.new(shape: String, location_name: "quotaName"))
    ExceedsLimitException.add_member(:quota_value, Shapes::ShapeRef.new(shape: Integer, location_name: "quotaValue"))
    ExceedsLimitException.struct_class = Types::ExceedsLimitException

    GetIdMappingJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetIdMappingJobInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    GetIdMappingJobInput.struct_class = Types::GetIdMappingJobInput

    GetIdMappingJobOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetIdMappingJobOutput.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorDetails"))
    GetIdMappingJobOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    GetIdMappingJobOutput.add_member(:metrics, Shapes::ShapeRef.new(shape: IdMappingJobMetrics, location_name: "metrics"))
    GetIdMappingJobOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetIdMappingJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    GetIdMappingJobOutput.struct_class = Types::GetIdMappingJobOutput

    GetIdMappingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    GetIdMappingWorkflowInput.struct_class = Types::GetIdMappingWorkflowInput

    GetIdMappingWorkflowOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetIdMappingWorkflowOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetIdMappingWorkflowOutput.add_member(:id_mapping_techniques, Shapes::ShapeRef.new(shape: IdMappingTechniques, required: true, location_name: "idMappingTechniques"))
    GetIdMappingWorkflowOutput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, required: true, location_name: "inputSourceConfig"))
    GetIdMappingWorkflowOutput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    GetIdMappingWorkflowOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetIdMappingWorkflowOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetIdMappingWorkflowOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetIdMappingWorkflowOutput.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, required: true, location_name: "workflowArn"))
    GetIdMappingWorkflowOutput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    GetIdMappingWorkflowOutput.struct_class = Types::GetIdMappingWorkflowOutput

    GetMatchIdInput.add_member(:record, Shapes::ShapeRef.new(shape: RecordAttributeMap, required: true, location_name: "record"))
    GetMatchIdInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    GetMatchIdInput.struct_class = Types::GetMatchIdInput

    GetMatchIdOutput.add_member(:match_id, Shapes::ShapeRef.new(shape: String, location_name: "matchId"))
    GetMatchIdOutput.struct_class = Types::GetMatchIdOutput

    GetMatchingJobInput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetMatchingJobInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    GetMatchingJobInput.struct_class = Types::GetMatchingJobInput

    GetMatchingJobOutput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetMatchingJobOutput.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errorDetails"))
    GetMatchingJobOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    GetMatchingJobOutput.add_member(:metrics, Shapes::ShapeRef.new(shape: JobMetrics, location_name: "metrics"))
    GetMatchingJobOutput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetMatchingJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    GetMatchingJobOutput.struct_class = Types::GetMatchingJobOutput

    GetMatchingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    GetMatchingWorkflowInput.struct_class = Types::GetMatchingWorkflowInput

    GetMatchingWorkflowOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetMatchingWorkflowOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetMatchingWorkflowOutput.add_member(:incremental_run_config, Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: "incrementalRunConfig"))
    GetMatchingWorkflowOutput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: InputSourceConfig, required: true, location_name: "inputSourceConfig"))
    GetMatchingWorkflowOutput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: OutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    GetMatchingWorkflowOutput.add_member(:resolution_techniques, Shapes::ShapeRef.new(shape: ResolutionTechniques, required: true, location_name: "resolutionTechniques"))
    GetMatchingWorkflowOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    GetMatchingWorkflowOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMatchingWorkflowOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetMatchingWorkflowOutput.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: MatchingWorkflowArn, required: true, location_name: "workflowArn"))
    GetMatchingWorkflowOutput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    GetMatchingWorkflowOutput.struct_class = Types::GetMatchingWorkflowOutput

    GetProviderServiceInput.add_member(:provider_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "providerName"))
    GetProviderServiceInput.add_member(:provider_service_name, Shapes::ShapeRef.new(shape: ProviderServiceArn, required: true, location: "uri", location_name: "providerServiceName"))
    GetProviderServiceInput.struct_class = Types::GetProviderServiceInput

    GetProviderServiceOutput.add_member(:anonymized_output, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "anonymizedOutput"))
    GetProviderServiceOutput.add_member(:provider_configuration_definition, Shapes::ShapeRef.new(shape: Document, location_name: "providerConfigurationDefinition"))
    GetProviderServiceOutput.add_member(:provider_endpoint_configuration, Shapes::ShapeRef.new(shape: ProviderEndpointConfiguration, required: true, location_name: "providerEndpointConfiguration"))
    GetProviderServiceOutput.add_member(:provider_entity_output_definition, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "providerEntityOutputDefinition"))
    GetProviderServiceOutput.add_member(:provider_intermediate_data_access_configuration, Shapes::ShapeRef.new(shape: ProviderIntermediateDataAccessConfiguration, location_name: "providerIntermediateDataAccessConfiguration"))
    GetProviderServiceOutput.add_member(:provider_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "providerName"))
    GetProviderServiceOutput.add_member(:provider_service_arn, Shapes::ShapeRef.new(shape: ProviderServiceArn, required: true, location_name: "providerServiceArn"))
    GetProviderServiceOutput.add_member(:provider_service_display_name, Shapes::ShapeRef.new(shape: ProviderServiceDisplayName, required: true, location_name: "providerServiceDisplayName"))
    GetProviderServiceOutput.add_member(:provider_service_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "providerServiceName"))
    GetProviderServiceOutput.add_member(:provider_service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "providerServiceType"))
    GetProviderServiceOutput.struct_class = Types::GetProviderServiceOutput

    GetSchemaMappingInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "schemaName"))
    GetSchemaMappingInput.struct_class = Types::GetSchemaMappingInput

    GetSchemaMappingOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetSchemaMappingOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetSchemaMappingOutput.add_member(:has_workflows, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "hasWorkflows"))
    GetSchemaMappingOutput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    GetSchemaMappingOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    GetSchemaMappingOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    GetSchemaMappingOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSchemaMappingOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetSchemaMappingOutput.struct_class = Types::GetSchemaMappingOutput

    IdMappingJobMetrics.add_member(:input_records, Shapes::ShapeRef.new(shape: Integer, location_name: "inputRecords"))
    IdMappingJobMetrics.add_member(:records_not_processed, Shapes::ShapeRef.new(shape: Integer, location_name: "recordsNotProcessed"))
    IdMappingJobMetrics.add_member(:total_records_processed, Shapes::ShapeRef.new(shape: Integer, location_name: "totalRecordsProcessed"))
    IdMappingJobMetrics.struct_class = Types::IdMappingJobMetrics

    IdMappingTechniques.add_member(:id_mapping_type, Shapes::ShapeRef.new(shape: IdMappingType, required: true, location_name: "idMappingType"))
    IdMappingTechniques.add_member(:provider_properties, Shapes::ShapeRef.new(shape: ProviderProperties, required: true, location_name: "providerProperties"))
    IdMappingTechniques.struct_class = Types::IdMappingTechniques

    IdMappingWorkflowInputSource.add_member(:input_source_arn, Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceInputSourceARNString, required: true, location_name: "inputSourceARN"))
    IdMappingWorkflowInputSource.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    IdMappingWorkflowInputSource.struct_class = Types::IdMappingWorkflowInputSource

    IdMappingWorkflowInputSourceConfig.member = Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSource)

    IdMappingWorkflowList.member = Shapes::ShapeRef.new(shape: IdMappingWorkflowSummary)

    IdMappingWorkflowOutputSource.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KMSArn, location_name: "KMSArn"))
    IdMappingWorkflowOutputSource.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "outputS3Path"))
    IdMappingWorkflowOutputSource.struct_class = Types::IdMappingWorkflowOutputSource

    IdMappingWorkflowOutputSourceConfig.member = Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSource)

    IdMappingWorkflowSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    IdMappingWorkflowSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    IdMappingWorkflowSummary.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, required: true, location_name: "workflowArn"))
    IdMappingWorkflowSummary.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    IdMappingWorkflowSummary.struct_class = Types::IdMappingWorkflowSummary

    IncrementalRunConfig.add_member(:incremental_run_type, Shapes::ShapeRef.new(shape: IncrementalRunType, location_name: "incrementalRunType"))
    IncrementalRunConfig.struct_class = Types::IncrementalRunConfig

    InputSource.add_member(:apply_normalization, Shapes::ShapeRef.new(shape: Boolean, location_name: "applyNormalization"))
    InputSource.add_member(:input_source_arn, Shapes::ShapeRef.new(shape: InputSourceInputSourceARNString, required: true, location_name: "inputSourceARN"))
    InputSource.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    InputSource.struct_class = Types::InputSource

    InputSourceConfig.member = Shapes::ShapeRef.new(shape: InputSource)

    IntermediateSourceConfiguration.add_member(:intermediate_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "intermediateS3Path"))
    IntermediateSourceConfiguration.struct_class = Types::IntermediateSourceConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobList.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobMetrics.add_member(:input_records, Shapes::ShapeRef.new(shape: Integer, location_name: "inputRecords"))
    JobMetrics.add_member(:match_i_ds, Shapes::ShapeRef.new(shape: Integer, location_name: "matchIDs"))
    JobMetrics.add_member(:records_not_processed, Shapes::ShapeRef.new(shape: Integer, location_name: "recordsNotProcessed"))
    JobMetrics.add_member(:total_records_processed, Shapes::ShapeRef.new(shape: Integer, location_name: "totalRecordsProcessed"))
    JobMetrics.struct_class = Types::JobMetrics

    JobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    JobSummary.struct_class = Types::JobSummary

    ListIdMappingJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIdMappingJobsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListIdMappingJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIdMappingJobsInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    ListIdMappingJobsInput.struct_class = Types::ListIdMappingJobsInput

    ListIdMappingJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, location_name: "jobs"))
    ListIdMappingJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIdMappingJobsOutput.struct_class = Types::ListIdMappingJobsOutput

    ListIdMappingWorkflowsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIdMappingWorkflowsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListIdMappingWorkflowsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIdMappingWorkflowsInput.struct_class = Types::ListIdMappingWorkflowsInput

    ListIdMappingWorkflowsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIdMappingWorkflowsOutput.add_member(:workflow_summaries, Shapes::ShapeRef.new(shape: IdMappingWorkflowList, location_name: "workflowSummaries"))
    ListIdMappingWorkflowsOutput.struct_class = Types::ListIdMappingWorkflowsOutput

    ListMatchingJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMatchingJobsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMatchingJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMatchingJobsInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    ListMatchingJobsInput.struct_class = Types::ListMatchingJobsInput

    ListMatchingJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: JobList, location_name: "jobs"))
    ListMatchingJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMatchingJobsOutput.struct_class = Types::ListMatchingJobsOutput

    ListMatchingWorkflowsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMatchingWorkflowsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMatchingWorkflowsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMatchingWorkflowsInput.struct_class = Types::ListMatchingWorkflowsInput

    ListMatchingWorkflowsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMatchingWorkflowsOutput.add_member(:workflow_summaries, Shapes::ShapeRef.new(shape: MatchingWorkflowList, location_name: "workflowSummaries"))
    ListMatchingWorkflowsOutput.struct_class = Types::ListMatchingWorkflowsOutput

    ListProviderServicesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProviderServicesInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListProviderServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProviderServicesInput.add_member(:provider_name, Shapes::ShapeRef.new(shape: EntityName, location: "querystring", location_name: "providerName"))
    ListProviderServicesInput.struct_class = Types::ListProviderServicesInput

    ListProviderServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProviderServicesOutput.add_member(:provider_service_summaries, Shapes::ShapeRef.new(shape: ProviderServiceList, location_name: "providerServiceSummaries"))
    ListProviderServicesOutput.struct_class = Types::ListProviderServicesOutput

    ListSchemaMappingsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSchemaMappingsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListSchemaMappingsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSchemaMappingsInput.struct_class = Types::ListSchemaMappingsInput

    ListSchemaMappingsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSchemaMappingsOutput.add_member(:schema_list, Shapes::ShapeRef.new(shape: SchemaMappingList, location_name: "schemaList"))
    ListSchemaMappingsOutput.struct_class = Types::ListSchemaMappingsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: VeniceGlobalArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MatchingWorkflowList.member = Shapes::ShapeRef.new(shape: MatchingWorkflowSummary)

    MatchingWorkflowSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MatchingWorkflowSummary.add_member(:resolution_type, Shapes::ShapeRef.new(shape: ResolutionType, required: true, location_name: "resolutionType"))
    MatchingWorkflowSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    MatchingWorkflowSummary.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: MatchingWorkflowArn, required: true, location_name: "workflowArn"))
    MatchingWorkflowSummary.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    MatchingWorkflowSummary.struct_class = Types::MatchingWorkflowSummary

    OutputAttribute.add_member(:hashed, Shapes::ShapeRef.new(shape: Boolean, location_name: "hashed"))
    OutputAttribute.add_member(:name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "name"))
    OutputAttribute.struct_class = Types::OutputAttribute

    OutputSource.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KMSArn, location_name: "KMSArn"))
    OutputSource.add_member(:apply_normalization, Shapes::ShapeRef.new(shape: Boolean, location_name: "applyNormalization"))
    OutputSource.add_member(:output, Shapes::ShapeRef.new(shape: OutputSourceOutputList, required: true, location_name: "output"))
    OutputSource.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "outputS3Path"))
    OutputSource.struct_class = Types::OutputSource

    OutputSourceConfig.member = Shapes::ShapeRef.new(shape: OutputSource)

    OutputSourceOutputList.member = Shapes::ShapeRef.new(shape: OutputAttribute)

    ProviderEndpointConfiguration.add_member(:marketplace_configuration, Shapes::ShapeRef.new(shape: ProviderMarketplaceConfiguration, location_name: "marketplaceConfiguration"))
    ProviderEndpointConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProviderEndpointConfiguration.add_member_subclass(:marketplace_configuration, Types::ProviderEndpointConfiguration::MarketplaceConfiguration)
    ProviderEndpointConfiguration.add_member_subclass(:unknown, Types::ProviderEndpointConfiguration::Unknown)
    ProviderEndpointConfiguration.struct_class = Types::ProviderEndpointConfiguration

    ProviderIntermediateDataAccessConfiguration.add_member(:aws_account_ids, Shapes::ShapeRef.new(shape: AwsAccountIdList, location_name: "awsAccountIds"))
    ProviderIntermediateDataAccessConfiguration.add_member(:required_bucket_actions, Shapes::ShapeRef.new(shape: RequiredBucketActionsList, location_name: "requiredBucketActions"))
    ProviderIntermediateDataAccessConfiguration.struct_class = Types::ProviderIntermediateDataAccessConfiguration

    ProviderMarketplaceConfiguration.add_member(:asset_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "assetId"))
    ProviderMarketplaceConfiguration.add_member(:data_set_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataSetId"))
    ProviderMarketplaceConfiguration.add_member(:listing_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "listingId"))
    ProviderMarketplaceConfiguration.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "revisionId"))
    ProviderMarketplaceConfiguration.struct_class = Types::ProviderMarketplaceConfiguration

    ProviderProperties.add_member(:intermediate_source_configuration, Shapes::ShapeRef.new(shape: IntermediateSourceConfiguration, location_name: "intermediateSourceConfiguration"))
    ProviderProperties.add_member(:provider_configuration, Shapes::ShapeRef.new(shape: Document, location_name: "providerConfiguration"))
    ProviderProperties.add_member(:provider_service_arn, Shapes::ShapeRef.new(shape: ProviderServiceArn, required: true, location_name: "providerServiceArn"))
    ProviderProperties.struct_class = Types::ProviderProperties

    ProviderServiceList.member = Shapes::ShapeRef.new(shape: ProviderServiceSummary)

    ProviderServiceSummary.add_member(:provider_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "providerName"))
    ProviderServiceSummary.add_member(:provider_service_arn, Shapes::ShapeRef.new(shape: ProviderServiceArn, required: true, location_name: "providerServiceArn"))
    ProviderServiceSummary.add_member(:provider_service_display_name, Shapes::ShapeRef.new(shape: ProviderServiceDisplayName, required: true, location_name: "providerServiceDisplayName"))
    ProviderServiceSummary.add_member(:provider_service_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "providerServiceName"))
    ProviderServiceSummary.add_member(:provider_service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "providerServiceType"))
    ProviderServiceSummary.struct_class = Types::ProviderServiceSummary

    RecordAttributeMap.key = Shapes::ShapeRef.new(shape: RecordAttributeMapKeyString)
    RecordAttributeMap.value = Shapes::ShapeRef.new(shape: RecordAttributeMapValueString)

    RequiredBucketActionsList.member = Shapes::ShapeRef.new(shape: String)

    ResolutionTechniques.add_member(:provider_properties, Shapes::ShapeRef.new(shape: ProviderProperties, location_name: "providerProperties"))
    ResolutionTechniques.add_member(:resolution_type, Shapes::ShapeRef.new(shape: ResolutionType, required: true, location_name: "resolutionType"))
    ResolutionTechniques.add_member(:rule_based_properties, Shapes::ShapeRef.new(shape: RuleBasedProperties, location_name: "ruleBasedProperties"))
    ResolutionTechniques.struct_class = Types::ResolutionTechniques

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Rule.add_member(:matching_keys, Shapes::ShapeRef.new(shape: RuleMatchingKeysList, required: true, location_name: "matchingKeys"))
    Rule.add_member(:rule_name, Shapes::ShapeRef.new(shape: RuleRuleNameString, required: true, location_name: "ruleName"))
    Rule.struct_class = Types::Rule

    RuleBasedProperties.add_member(:attribute_matching_model, Shapes::ShapeRef.new(shape: AttributeMatchingModel, required: true, location_name: "attributeMatchingModel"))
    RuleBasedProperties.add_member(:rules, Shapes::ShapeRef.new(shape: RuleBasedPropertiesRulesList, required: true, location_name: "rules"))
    RuleBasedProperties.struct_class = Types::RuleBasedProperties

    RuleBasedPropertiesRulesList.member = Shapes::ShapeRef.new(shape: Rule)

    RuleMatchingKeysList.member = Shapes::ShapeRef.new(shape: AttributeName)

    SchemaInputAttribute.add_member(:field_name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "fieldName"))
    SchemaInputAttribute.add_member(:group_name, Shapes::ShapeRef.new(shape: AttributeName, location_name: "groupName"))
    SchemaInputAttribute.add_member(:match_key, Shapes::ShapeRef.new(shape: AttributeName, location_name: "matchKey"))
    SchemaInputAttribute.add_member(:sub_type, Shapes::ShapeRef.new(shape: AttributeName, location_name: "subType"))
    SchemaInputAttribute.add_member(:type, Shapes::ShapeRef.new(shape: SchemaAttributeType, required: true, location_name: "type"))
    SchemaInputAttribute.struct_class = Types::SchemaInputAttribute

    SchemaInputAttributes.member = Shapes::ShapeRef.new(shape: SchemaInputAttribute)

    SchemaMappingList.member = Shapes::ShapeRef.new(shape: SchemaMappingSummary)

    SchemaMappingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SchemaMappingSummary.add_member(:has_workflows, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "hasWorkflows"))
    SchemaMappingSummary.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    SchemaMappingSummary.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    SchemaMappingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    SchemaMappingSummary.struct_class = Types::SchemaMappingSummary

    StartIdMappingJobInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    StartIdMappingJobInput.struct_class = Types::StartIdMappingJobInput

    StartIdMappingJobOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StartIdMappingJobOutput.struct_class = Types::StartIdMappingJobOutput

    StartMatchingJobInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    StartMatchingJobInput.struct_class = Types::StartMatchingJobInput

    StartMatchingJobOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StartMatchingJobOutput.struct_class = Types::StartMatchingJobOutput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: VeniceGlobalArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: VeniceGlobalArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateIdMappingWorkflowInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIdMappingWorkflowInput.add_member(:id_mapping_techniques, Shapes::ShapeRef.new(shape: IdMappingTechniques, required: true, location_name: "idMappingTechniques"))
    UpdateIdMappingWorkflowInput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, required: true, location_name: "inputSourceConfig"))
    UpdateIdMappingWorkflowInput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    UpdateIdMappingWorkflowInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdateIdMappingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    UpdateIdMappingWorkflowInput.struct_class = Types::UpdateIdMappingWorkflowInput

    UpdateIdMappingWorkflowOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIdMappingWorkflowOutput.add_member(:id_mapping_techniques, Shapes::ShapeRef.new(shape: IdMappingTechniques, required: true, location_name: "idMappingTechniques"))
    UpdateIdMappingWorkflowOutput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowInputSourceConfig, required: true, location_name: "inputSourceConfig"))
    UpdateIdMappingWorkflowOutput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: IdMappingWorkflowOutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    UpdateIdMappingWorkflowOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    UpdateIdMappingWorkflowOutput.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: IdMappingWorkflowArn, required: true, location_name: "workflowArn"))
    UpdateIdMappingWorkflowOutput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    UpdateIdMappingWorkflowOutput.struct_class = Types::UpdateIdMappingWorkflowOutput

    UpdateMatchingWorkflowInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateMatchingWorkflowInput.add_member(:incremental_run_config, Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: "incrementalRunConfig"))
    UpdateMatchingWorkflowInput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: InputSourceConfig, required: true, location_name: "inputSourceConfig"))
    UpdateMatchingWorkflowInput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: OutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    UpdateMatchingWorkflowInput.add_member(:resolution_techniques, Shapes::ShapeRef.new(shape: ResolutionTechniques, required: true, location_name: "resolutionTechniques"))
    UpdateMatchingWorkflowInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    UpdateMatchingWorkflowInput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "workflowName"))
    UpdateMatchingWorkflowInput.struct_class = Types::UpdateMatchingWorkflowInput

    UpdateMatchingWorkflowOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateMatchingWorkflowOutput.add_member(:incremental_run_config, Shapes::ShapeRef.new(shape: IncrementalRunConfig, location_name: "incrementalRunConfig"))
    UpdateMatchingWorkflowOutput.add_member(:input_source_config, Shapes::ShapeRef.new(shape: InputSourceConfig, required: true, location_name: "inputSourceConfig"))
    UpdateMatchingWorkflowOutput.add_member(:output_source_config, Shapes::ShapeRef.new(shape: OutputSourceConfig, required: true, location_name: "outputSourceConfig"))
    UpdateMatchingWorkflowOutput.add_member(:resolution_techniques, Shapes::ShapeRef.new(shape: ResolutionTechniques, required: true, location_name: "resolutionTechniques"))
    UpdateMatchingWorkflowOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    UpdateMatchingWorkflowOutput.add_member(:workflow_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "workflowName"))
    UpdateMatchingWorkflowOutput.struct_class = Types::UpdateMatchingWorkflowOutput

    UpdateSchemaMappingInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSchemaMappingInput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    UpdateSchemaMappingInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "schemaName"))
    UpdateSchemaMappingInput.struct_class = Types::UpdateSchemaMappingInput

    UpdateSchemaMappingOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateSchemaMappingOutput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    UpdateSchemaMappingOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    UpdateSchemaMappingOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    UpdateSchemaMappingOutput.struct_class = Types::UpdateSchemaMappingOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "entityresolution",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWSEntityResolution",
        "serviceFullName" => "AWS EntityResolution",
        "serviceId" => "EntityResolution",
        "signatureVersion" => "v4",
        "signingName" => "entityresolution",
        "uid" => "entityresolution-2018-05-10",
      }

      api.add_operation(:create_id_mapping_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdMappingWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/idmappingworkflows"
        o.input = Shapes::ShapeRef.new(shape: CreateIdMappingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIdMappingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExceedsLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_matching_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMatchingWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/matchingworkflows"
        o.input = Shapes::ShapeRef.new(shape: CreateMatchingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMatchingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExceedsLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_schema_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSchemaMapping"
        o.http_method = "POST"
        o.http_request_uri = "/schemas"
        o.input = Shapes::ShapeRef.new(shape: CreateSchemaMappingInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSchemaMappingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExceedsLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_id_mapping_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdMappingWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/idmappingworkflows/{workflowName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdMappingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIdMappingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_matching_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMatchingWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/matchingworkflows/{workflowName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMatchingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMatchingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_schema_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchemaMapping"
        o.http_method = "DELETE"
        o.http_request_uri = "/schemas/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSchemaMappingInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSchemaMappingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_id_mapping_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdMappingJob"
        o.http_method = "GET"
        o.http_request_uri = "/idmappingworkflows/{workflowName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetIdMappingJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdMappingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_id_mapping_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdMappingWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/idmappingworkflows/{workflowName}"
        o.input = Shapes::ShapeRef.new(shape: GetIdMappingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdMappingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_match_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMatchId"
        o.http_method = "POST"
        o.http_request_uri = "/matchingworkflows/{workflowName}/matches"
        o.input = Shapes::ShapeRef.new(shape: GetMatchIdInput)
        o.output = Shapes::ShapeRef.new(shape: GetMatchIdOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_matching_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMatchingJob"
        o.http_method = "GET"
        o.http_request_uri = "/matchingworkflows/{workflowName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetMatchingJobInput)
        o.output = Shapes::ShapeRef.new(shape: GetMatchingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_matching_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMatchingWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/matchingworkflows/{workflowName}"
        o.input = Shapes::ShapeRef.new(shape: GetMatchingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: GetMatchingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_provider_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProviderService"
        o.http_method = "GET"
        o.http_request_uri = "/providerservices/{providerName}/{providerServiceName}"
        o.input = Shapes::ShapeRef.new(shape: GetProviderServiceInput)
        o.output = Shapes::ShapeRef.new(shape: GetProviderServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_schema_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchemaMapping"
        o.http_method = "GET"
        o.http_request_uri = "/schemas/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaMappingInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaMappingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_id_mapping_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdMappingJobs"
        o.http_method = "GET"
        o.http_request_uri = "/idmappingworkflows/{workflowName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListIdMappingJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdMappingJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_id_mapping_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdMappingWorkflows"
        o.http_method = "GET"
        o.http_request_uri = "/idmappingworkflows"
        o.input = Shapes::ShapeRef.new(shape: ListIdMappingWorkflowsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdMappingWorkflowsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_matching_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMatchingJobs"
        o.http_method = "GET"
        o.http_request_uri = "/matchingworkflows/{workflowName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListMatchingJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMatchingJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_matching_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMatchingWorkflows"
        o.http_method = "GET"
        o.http_request_uri = "/matchingworkflows"
        o.input = Shapes::ShapeRef.new(shape: ListMatchingWorkflowsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMatchingWorkflowsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_provider_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProviderServices"
        o.http_method = "GET"
        o.http_request_uri = "/providerservices"
        o.input = Shapes::ShapeRef.new(shape: ListProviderServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProviderServicesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_schema_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSchemaMappings"
        o.http_method = "GET"
        o.http_request_uri = "/schemas"
        o.input = Shapes::ShapeRef.new(shape: ListSchemaMappingsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSchemaMappingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_id_mapping_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartIdMappingJob"
        o.http_method = "POST"
        o.http_request_uri = "/idmappingworkflows/{workflowName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: StartIdMappingJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartIdMappingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExceedsLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_matching_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMatchingJob"
        o.http_method = "POST"
        o.http_request_uri = "/matchingworkflows/{workflowName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: StartMatchingJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartMatchingJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ExceedsLimitException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_id_mapping_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdMappingWorkflow"
        o.http_method = "PUT"
        o.http_request_uri = "/idmappingworkflows/{workflowName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdMappingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdMappingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_matching_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMatchingWorkflow"
        o.http_method = "PUT"
        o.http_request_uri = "/matchingworkflows/{workflowName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMatchingWorkflowInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMatchingWorkflowOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_schema_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSchemaMapping"
        o.http_method = "PUT"
        o.http_request_uri = "/schemas/{schemaName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSchemaMappingInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSchemaMappingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
