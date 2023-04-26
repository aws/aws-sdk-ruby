# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OSIS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeProgressStage = Shapes::StructureShape.new(name: 'ChangeProgressStage')
    ChangeProgressStageList = Shapes::ListShape.new(name: 'ChangeProgressStageList')
    ChangeProgressStageStatuses = Shapes::StringShape.new(name: 'ChangeProgressStageStatuses')
    ChangeProgressStatus = Shapes::StructureShape.new(name: 'ChangeProgressStatus')
    ChangeProgressStatusList = Shapes::ListShape.new(name: 'ChangeProgressStatusList')
    ChangeProgressStatuses = Shapes::StringShape.new(name: 'ChangeProgressStatuses')
    CloudWatchLogDestination = Shapes::StructureShape.new(name: 'CloudWatchLogDestination')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreatePipelineRequest = Shapes::StructureShape.new(name: 'CreatePipelineRequest')
    CreatePipelineResponse = Shapes::StructureShape.new(name: 'CreatePipelineResponse')
    DeletePipelineRequest = Shapes::StructureShape.new(name: 'DeletePipelineRequest')
    DeletePipelineResponse = Shapes::StructureShape.new(name: 'DeletePipelineResponse')
    GetPipelineBlueprintRequest = Shapes::StructureShape.new(name: 'GetPipelineBlueprintRequest')
    GetPipelineBlueprintResponse = Shapes::StructureShape.new(name: 'GetPipelineBlueprintResponse')
    GetPipelineChangeProgressRequest = Shapes::StructureShape.new(name: 'GetPipelineChangeProgressRequest')
    GetPipelineChangeProgressResponse = Shapes::StructureShape.new(name: 'GetPipelineChangeProgressResponse')
    GetPipelineRequest = Shapes::StructureShape.new(name: 'GetPipelineRequest')
    GetPipelineResponse = Shapes::StructureShape.new(name: 'GetPipelineResponse')
    IngestEndpointUrlsList = Shapes::ListShape.new(name: 'IngestEndpointUrlsList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListPipelineBlueprintsRequest = Shapes::StructureShape.new(name: 'ListPipelineBlueprintsRequest')
    ListPipelineBlueprintsResponse = Shapes::StructureShape.new(name: 'ListPipelineBlueprintsResponse')
    ListPipelinesRequest = Shapes::StructureShape.new(name: 'ListPipelinesRequest')
    ListPipelinesResponse = Shapes::StructureShape.new(name: 'ListPipelinesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogPublishingOptions = Shapes::StructureShape.new(name: 'LogPublishingOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Pipeline = Shapes::StructureShape.new(name: 'Pipeline')
    PipelineArn = Shapes::StringShape.new(name: 'PipelineArn')
    PipelineBlueprint = Shapes::StructureShape.new(name: 'PipelineBlueprint')
    PipelineBlueprintSummary = Shapes::StructureShape.new(name: 'PipelineBlueprintSummary')
    PipelineBlueprintsSummaryList = Shapes::ListShape.new(name: 'PipelineBlueprintsSummaryList')
    PipelineConfigurationBody = Shapes::StringShape.new(name: 'PipelineConfigurationBody')
    PipelineName = Shapes::StringShape.new(name: 'PipelineName')
    PipelineStatus = Shapes::StringShape.new(name: 'PipelineStatus')
    PipelineStatusReason = Shapes::StructureShape.new(name: 'PipelineStatusReason')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PipelineSummaryList = Shapes::ListShape.new(name: 'PipelineSummaryList')
    PipelineUnits = Shapes::IntegerShape.new(name: 'PipelineUnits')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    StartPipelineRequest = Shapes::StructureShape.new(name: 'StartPipelineRequest')
    StartPipelineResponse = Shapes::StructureShape.new(name: 'StartPipelineResponse')
    StopPipelineRequest = Shapes::StructureShape.new(name: 'StopPipelineRequest')
    StopPipelineResponse = Shapes::StructureShape.new(name: 'StopPipelineResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdatePipelineRequest = Shapes::StructureShape.new(name: 'UpdatePipelineRequest')
    UpdatePipelineResponse = Shapes::StructureShape.new(name: 'UpdatePipelineResponse')
    ValidatePipelineRequest = Shapes::StructureShape.new(name: 'ValidatePipelineRequest')
    ValidatePipelineResponse = Shapes::StructureShape.new(name: 'ValidatePipelineResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationMessage = Shapes::StructureShape.new(name: 'ValidationMessage')
    ValidationMessageList = Shapes::ListShape.new(name: 'ValidationMessageList')
    VpcEndpoint = Shapes::StructureShape.new(name: 'VpcEndpoint')
    VpcEndpointsList = Shapes::ListShape.new(name: 'VpcEndpointsList')
    VpcOptions = Shapes::StructureShape.new(name: 'VpcOptions')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    ChangeProgressStage.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ChangeProgressStage.add_member(:status, Shapes::ShapeRef.new(shape: ChangeProgressStageStatuses, location_name: "Status"))
    ChangeProgressStage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ChangeProgressStage.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    ChangeProgressStage.struct_class = Types::ChangeProgressStage

    ChangeProgressStageList.member = Shapes::ShapeRef.new(shape: ChangeProgressStage)

    ChangeProgressStatus.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    ChangeProgressStatus.add_member(:status, Shapes::ShapeRef.new(shape: ChangeProgressStatuses, location_name: "Status"))
    ChangeProgressStatus.add_member(:total_number_of_stages, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalNumberOfStages"))
    ChangeProgressStatus.add_member(:change_progress_stages, Shapes::ShapeRef.new(shape: ChangeProgressStageList, location_name: "ChangeProgressStages"))
    ChangeProgressStatus.struct_class = Types::ChangeProgressStatus

    ChangeProgressStatusList.member = Shapes::ShapeRef.new(shape: ChangeProgressStatus)

    CloudWatchLogDestination.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, required: true, location_name: "LogGroup"))
    CloudWatchLogDestination.struct_class = Types::CloudWatchLogDestination

    ConflictException.struct_class = Types::ConflictException

    CreatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    CreatePipelineRequest.add_member(:min_units, Shapes::ShapeRef.new(shape: PipelineUnits, required: true, location_name: "MinUnits"))
    CreatePipelineRequest.add_member(:max_units, Shapes::ShapeRef.new(shape: PipelineUnits, required: true, location_name: "MaxUnits"))
    CreatePipelineRequest.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: PipelineConfigurationBody, required: true, location_name: "PipelineConfigurationBody"))
    CreatePipelineRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreatePipelineRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "VpcOptions"))
    CreatePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePipelineRequest.struct_class = Types::CreatePipelineRequest

    CreatePipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    CreatePipelineResponse.struct_class = Types::CreatePipelineResponse

    DeletePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    DeletePipelineRequest.struct_class = Types::DeletePipelineRequest

    DeletePipelineResponse.struct_class = Types::DeletePipelineResponse

    GetPipelineBlueprintRequest.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "BlueprintName"))
    GetPipelineBlueprintRequest.struct_class = Types::GetPipelineBlueprintRequest

    GetPipelineBlueprintResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: PipelineBlueprint, location_name: "Blueprint"))
    GetPipelineBlueprintResponse.struct_class = Types::GetPipelineBlueprintResponse

    GetPipelineChangeProgressRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    GetPipelineChangeProgressRequest.struct_class = Types::GetPipelineChangeProgressRequest

    GetPipelineChangeProgressResponse.add_member(:change_progress_statuses, Shapes::ShapeRef.new(shape: ChangeProgressStatusList, location_name: "ChangeProgressStatuses"))
    GetPipelineChangeProgressResponse.struct_class = Types::GetPipelineChangeProgressResponse

    GetPipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    GetPipelineRequest.struct_class = Types::GetPipelineRequest

    GetPipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    GetPipelineResponse.struct_class = Types::GetPipelineResponse

    IngestEndpointUrlsList.member = Shapes::ShapeRef.new(shape: String)

    InternalException.struct_class = Types::InternalException

    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    LimitExceededException.struct_class = Types::LimitExceededException

    ListPipelineBlueprintsRequest.struct_class = Types::ListPipelineBlueprintsRequest

    ListPipelineBlueprintsResponse.add_member(:blueprints, Shapes::ShapeRef.new(shape: PipelineBlueprintsSummaryList, location_name: "Blueprints"))
    ListPipelineBlueprintsResponse.struct_class = Types::ListPipelineBlueprintsResponse

    ListPipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPipelinesRequest.struct_class = Types::ListPipelinesRequest

    ListPipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelinesResponse.add_member(:pipelines, Shapes::ShapeRef.new(shape: PipelineSummaryList, location_name: "Pipelines"))
    ListPipelinesResponse.struct_class = Types::ListPipelinesResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogPublishingOptions.add_member(:is_logging_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLoggingEnabled"))
    LogPublishingOptions.add_member(:cloud_watch_log_destination, Shapes::ShapeRef.new(shape: CloudWatchLogDestination, location_name: "CloudWatchLogDestination"))
    LogPublishingOptions.struct_class = Types::LogPublishingOptions

    Pipeline.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: String, location_name: "PipelineName"))
    Pipeline.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: String, location_name: "PipelineArn"))
    Pipeline.add_member(:min_units, Shapes::ShapeRef.new(shape: Integer, location_name: "MinUnits"))
    Pipeline.add_member(:max_units, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxUnits"))
    Pipeline.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "Status"))
    Pipeline.add_member(:status_reason, Shapes::ShapeRef.new(shape: PipelineStatusReason, location_name: "StatusReason"))
    Pipeline.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: String, location_name: "PipelineConfigurationBody"))
    Pipeline.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Pipeline.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    Pipeline.add_member(:ingest_endpoint_urls, Shapes::ShapeRef.new(shape: IngestEndpointUrlsList, location_name: "IngestEndpointUrls"))
    Pipeline.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    Pipeline.add_member(:vpc_endpoints, Shapes::ShapeRef.new(shape: VpcEndpointsList, location_name: "VpcEndpoints"))
    Pipeline.struct_class = Types::Pipeline

    PipelineBlueprint.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: String, location_name: "BlueprintName"))
    PipelineBlueprint.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: String, location_name: "PipelineConfigurationBody"))
    PipelineBlueprint.struct_class = Types::PipelineBlueprint

    PipelineBlueprintSummary.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: String, location_name: "BlueprintName"))
    PipelineBlueprintSummary.struct_class = Types::PipelineBlueprintSummary

    PipelineBlueprintsSummaryList.member = Shapes::ShapeRef.new(shape: PipelineBlueprintSummary)

    PipelineStatusReason.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PipelineStatusReason.struct_class = Types::PipelineStatusReason

    PipelineSummary.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "Status"))
    PipelineSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: PipelineStatusReason, location_name: "StatusReason"))
    PipelineSummary.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, location_name: "PipelineName"))
    PipelineSummary.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    PipelineSummary.add_member(:min_units, Shapes::ShapeRef.new(shape: PipelineUnits, location_name: "MinUnits"))
    PipelineSummary.add_member(:max_units, Shapes::ShapeRef.new(shape: PipelineUnits, location_name: "MaxUnits"))
    PipelineSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    PipelineSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    PipelineSummary.struct_class = Types::PipelineSummary

    PipelineSummaryList.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    StartPipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    StartPipelineRequest.struct_class = Types::StartPipelineRequest

    StartPipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    StartPipelineResponse.struct_class = Types::StartPipelineResponse

    StopPipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    StopPipelineRequest.struct_class = Types::StopPipelineRequest

    StopPipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    StopPipelineResponse.struct_class = Types::StopPipelineResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location: "querystring", location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location: "querystring", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    UpdatePipelineRequest.add_member(:min_units, Shapes::ShapeRef.new(shape: PipelineUnits, location_name: "MinUnits"))
    UpdatePipelineRequest.add_member(:max_units, Shapes::ShapeRef.new(shape: PipelineUnits, location_name: "MaxUnits"))
    UpdatePipelineRequest.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: PipelineConfigurationBody, location_name: "PipelineConfigurationBody"))
    UpdatePipelineRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    UpdatePipelineRequest.struct_class = Types::UpdatePipelineRequest

    UpdatePipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    UpdatePipelineResponse.struct_class = Types::UpdatePipelineResponse

    ValidatePipelineRequest.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: PipelineConfigurationBody, required: true, location_name: "PipelineConfigurationBody"))
    ValidatePipelineRequest.struct_class = Types::ValidatePipelineRequest

    ValidatePipelineResponse.add_member(:is_valid, Shapes::ShapeRef.new(shape: Boolean, location_name: "isValid"))
    ValidatePipelineResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ValidationMessageList, location_name: "Errors"))
    ValidatePipelineResponse.struct_class = Types::ValidatePipelineResponse

    ValidationException.struct_class = Types::ValidationException

    ValidationMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationMessage.struct_class = Types::ValidationMessage

    ValidationMessageList.member = Shapes::ShapeRef.new(shape: ValidationMessage)

    VpcEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    VpcEndpoint.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "VpcOptions"))
    VpcEndpoint.struct_class = Types::VpcEndpoint

    VpcEndpointsList.member = Shapes::ShapeRef.new(shape: VpcEndpoint)

    VpcOptions.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    VpcOptions.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcOptions.struct_class = Types::VpcOptions


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-01-01"

      api.metadata = {
        "apiVersion" => "2022-01-01",
        "endpointPrefix" => "osis",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon OpenSearch Ingestion",
        "serviceId" => "OSIS",
        "signatureVersion" => "v4",
        "uid" => "osis-2022-01-01",
      }

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/createPipeline"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/2022-01-01/osis/deletePipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipeline"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/getPipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_pipeline_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipelineBlueprint"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_pipeline_change_progress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipelineChangeProgress"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineChangeProgressRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineChangeProgressResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_pipeline_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/listPipelineBlueprints"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineBlueprintsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/listPipelines"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
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
        o.http_request_uri = "/2022-01-01/osis/listTagsForResource/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/2022-01-01/osis/startPipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: StartPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:stop_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/2022-01-01/osis/stopPipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: StopPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: StopPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/tagResource/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/untagResource/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/2022-01-01/osis/updatePipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:validate_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/validatePipeline"
        o.input = Shapes::ShapeRef.new(shape: ValidatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: ValidatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
