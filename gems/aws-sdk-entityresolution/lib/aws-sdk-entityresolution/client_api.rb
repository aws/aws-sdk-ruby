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
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateMatchingWorkflowInput = Shapes::StructureShape.new(name: 'CreateMatchingWorkflowInput')
    CreateMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'CreateMatchingWorkflowOutput')
    CreateSchemaMappingInput = Shapes::StructureShape.new(name: 'CreateSchemaMappingInput')
    CreateSchemaMappingOutput = Shapes::StructureShape.new(name: 'CreateSchemaMappingOutput')
    DeleteMatchingWorkflowInput = Shapes::StructureShape.new(name: 'DeleteMatchingWorkflowInput')
    DeleteMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'DeleteMatchingWorkflowOutput')
    DeleteSchemaMappingInput = Shapes::StructureShape.new(name: 'DeleteSchemaMappingInput')
    DeleteSchemaMappingOutput = Shapes::StructureShape.new(name: 'DeleteSchemaMappingOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceedsLimitException = Shapes::StructureShape.new(name: 'ExceedsLimitException')
    GetMatchIdInput = Shapes::StructureShape.new(name: 'GetMatchIdInput')
    GetMatchIdOutput = Shapes::StructureShape.new(name: 'GetMatchIdOutput')
    GetMatchingJobInput = Shapes::StructureShape.new(name: 'GetMatchingJobInput')
    GetMatchingJobOutput = Shapes::StructureShape.new(name: 'GetMatchingJobOutput')
    GetMatchingWorkflowInput = Shapes::StructureShape.new(name: 'GetMatchingWorkflowInput')
    GetMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'GetMatchingWorkflowOutput')
    GetSchemaMappingInput = Shapes::StructureShape.new(name: 'GetSchemaMappingInput')
    GetSchemaMappingOutput = Shapes::StructureShape.new(name: 'GetSchemaMappingOutput')
    IncrementalRunConfig = Shapes::StructureShape.new(name: 'IncrementalRunConfig')
    IncrementalRunType = Shapes::StringShape.new(name: 'IncrementalRunType')
    InputSource = Shapes::StructureShape.new(name: 'InputSource')
    InputSourceConfig = Shapes::ListShape.new(name: 'InputSourceConfig')
    InputSourceInputSourceARNString = Shapes::StringShape.new(name: 'InputSourceInputSourceARNString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobList = Shapes::ListShape.new(name: 'JobList')
    JobMetrics = Shapes::StructureShape.new(name: 'JobMetrics')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    KMSArn = Shapes::StringShape.new(name: 'KMSArn')
    ListMatchingJobsInput = Shapes::StructureShape.new(name: 'ListMatchingJobsInput')
    ListMatchingJobsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMatchingJobsInputMaxResultsInteger')
    ListMatchingJobsOutput = Shapes::StructureShape.new(name: 'ListMatchingJobsOutput')
    ListMatchingWorkflowsInput = Shapes::StructureShape.new(name: 'ListMatchingWorkflowsInput')
    ListMatchingWorkflowsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMatchingWorkflowsInputMaxResultsInteger')
    ListMatchingWorkflowsOutput = Shapes::StructureShape.new(name: 'ListMatchingWorkflowsOutput')
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
    OutputSourceOutputS3PathString = Shapes::StringShape.new(name: 'OutputSourceOutputS3PathString')
    RecordAttributeMap = Shapes::MapShape.new(name: 'RecordAttributeMap')
    RecordAttributeMapKeyString = Shapes::StringShape.new(name: 'RecordAttributeMapKeyString')
    RecordAttributeMapValueString = Shapes::StringShape.new(name: 'RecordAttributeMapValueString')
    ResolutionTechniques = Shapes::StructureShape.new(name: 'ResolutionTechniques')
    ResolutionType = Shapes::StringShape.new(name: 'ResolutionType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleBasedProperties = Shapes::StructureShape.new(name: 'RuleBasedProperties')
    RuleBasedPropertiesRulesList = Shapes::ListShape.new(name: 'RuleBasedPropertiesRulesList')
    RuleMatchingKeysList = Shapes::ListShape.new(name: 'RuleMatchingKeysList')
    RuleRuleNameString = Shapes::StringShape.new(name: 'RuleRuleNameString')
    SchemaAttributeType = Shapes::StringShape.new(name: 'SchemaAttributeType')
    SchemaInputAttribute = Shapes::StructureShape.new(name: 'SchemaInputAttribute')
    SchemaInputAttributes = Shapes::ListShape.new(name: 'SchemaInputAttributes')
    SchemaMappingArn = Shapes::StringShape.new(name: 'SchemaMappingArn')
    SchemaMappingList = Shapes::ListShape.new(name: 'SchemaMappingList')
    SchemaMappingSummary = Shapes::StructureShape.new(name: 'SchemaMappingSummary')
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
    UpdateMatchingWorkflowInput = Shapes::StructureShape.new(name: 'UpdateMatchingWorkflowInput')
    UpdateMatchingWorkflowOutput = Shapes::StructureShape.new(name: 'UpdateMatchingWorkflowOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VeniceGlobalArn = Shapes::StringShape.new(name: 'VeniceGlobalArn')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

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
    CreateSchemaMappingInput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, location_name: "mappedInputFields"))
    CreateSchemaMappingInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    CreateSchemaMappingInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSchemaMappingInput.struct_class = Types::CreateSchemaMappingInput

    CreateSchemaMappingOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    CreateSchemaMappingOutput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    CreateSchemaMappingOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    CreateSchemaMappingOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    CreateSchemaMappingOutput.struct_class = Types::CreateSchemaMappingOutput

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
    ExceedsLimitException.struct_class = Types::ExceedsLimitException

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

    GetSchemaMappingInput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location: "uri", location_name: "schemaName"))
    GetSchemaMappingInput.struct_class = Types::GetSchemaMappingInput

    GetSchemaMappingOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetSchemaMappingOutput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetSchemaMappingOutput.add_member(:mapped_input_fields, Shapes::ShapeRef.new(shape: SchemaInputAttributes, required: true, location_name: "mappedInputFields"))
    GetSchemaMappingOutput.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    GetSchemaMappingOutput.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    GetSchemaMappingOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSchemaMappingOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetSchemaMappingOutput.struct_class = Types::GetSchemaMappingOutput

    IncrementalRunConfig.add_member(:incremental_run_type, Shapes::ShapeRef.new(shape: IncrementalRunType, location_name: "incrementalRunType"))
    IncrementalRunConfig.struct_class = Types::IncrementalRunConfig

    InputSource.add_member(:apply_normalization, Shapes::ShapeRef.new(shape: Boolean, location_name: "applyNormalization"))
    InputSource.add_member(:input_source_arn, Shapes::ShapeRef.new(shape: InputSourceInputSourceARNString, required: true, location_name: "inputSourceARN"))
    InputSource.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    InputSource.struct_class = Types::InputSource

    InputSourceConfig.member = Shapes::ShapeRef.new(shape: InputSource)

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
    OutputSource.add_member(:output_s3_path, Shapes::ShapeRef.new(shape: OutputSourceOutputS3PathString, required: true, location_name: "outputS3Path"))
    OutputSource.struct_class = Types::OutputSource

    OutputSourceConfig.member = Shapes::ShapeRef.new(shape: OutputSource)

    OutputSourceOutputList.member = Shapes::ShapeRef.new(shape: OutputAttribute)

    RecordAttributeMap.key = Shapes::ShapeRef.new(shape: RecordAttributeMapKeyString)
    RecordAttributeMap.value = Shapes::ShapeRef.new(shape: RecordAttributeMapValueString)

    ResolutionTechniques.add_member(:resolution_type, Shapes::ShapeRef.new(shape: ResolutionType, location_name: "resolutionType"))
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
    SchemaInputAttribute.add_member(:type, Shapes::ShapeRef.new(shape: SchemaAttributeType, required: true, location_name: "type"))
    SchemaInputAttribute.struct_class = Types::SchemaInputAttribute

    SchemaInputAttributes.member = Shapes::ShapeRef.new(shape: SchemaInputAttribute)

    SchemaMappingList.member = Shapes::ShapeRef.new(shape: SchemaMappingSummary)

    SchemaMappingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SchemaMappingSummary.add_member(:schema_arn, Shapes::ShapeRef.new(shape: SchemaMappingArn, required: true, location_name: "schemaArn"))
    SchemaMappingSummary.add_member(:schema_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "schemaName"))
    SchemaMappingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    SchemaMappingSummary.struct_class = Types::SchemaMappingSummary

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
    end

  end
end
