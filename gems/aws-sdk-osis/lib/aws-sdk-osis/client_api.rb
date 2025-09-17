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
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BlueprintFormat = Shapes::StringShape.new(name: 'BlueprintFormat')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BufferOptions = Shapes::StructureShape.new(name: 'BufferOptions')
    ChangeProgressStage = Shapes::StructureShape.new(name: 'ChangeProgressStage')
    ChangeProgressStageList = Shapes::ListShape.new(name: 'ChangeProgressStageList')
    ChangeProgressStageStatuses = Shapes::StringShape.new(name: 'ChangeProgressStageStatuses')
    ChangeProgressStatus = Shapes::StructureShape.new(name: 'ChangeProgressStatus')
    ChangeProgressStatusList = Shapes::ListShape.new(name: 'ChangeProgressStatusList')
    ChangeProgressStatuses = Shapes::StringShape.new(name: 'ChangeProgressStatuses')
    CidrBlock = Shapes::StringShape.new(name: 'CidrBlock')
    CloudWatchLogDestination = Shapes::StructureShape.new(name: 'CloudWatchLogDestination')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreatePipelineEndpointRequest = Shapes::StructureShape.new(name: 'CreatePipelineEndpointRequest')
    CreatePipelineEndpointResponse = Shapes::StructureShape.new(name: 'CreatePipelineEndpointResponse')
    CreatePipelineRequest = Shapes::StructureShape.new(name: 'CreatePipelineRequest')
    CreatePipelineResponse = Shapes::StructureShape.new(name: 'CreatePipelineResponse')
    DeletePipelineEndpointRequest = Shapes::StructureShape.new(name: 'DeletePipelineEndpointRequest')
    DeletePipelineEndpointResponse = Shapes::StructureShape.new(name: 'DeletePipelineEndpointResponse')
    DeletePipelineRequest = Shapes::StructureShape.new(name: 'DeletePipelineRequest')
    DeletePipelineResponse = Shapes::StructureShape.new(name: 'DeletePipelineResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DisabledOperationException = Shapes::StructureShape.new(name: 'DisabledOperationException')
    EncryptionAtRestOptions = Shapes::StructureShape.new(name: 'EncryptionAtRestOptions')
    GetPipelineBlueprintRequest = Shapes::StructureShape.new(name: 'GetPipelineBlueprintRequest')
    GetPipelineBlueprintResponse = Shapes::StructureShape.new(name: 'GetPipelineBlueprintResponse')
    GetPipelineChangeProgressRequest = Shapes::StructureShape.new(name: 'GetPipelineChangeProgressRequest')
    GetPipelineChangeProgressResponse = Shapes::StructureShape.new(name: 'GetPipelineChangeProgressResponse')
    GetPipelineRequest = Shapes::StructureShape.new(name: 'GetPipelineRequest')
    GetPipelineResponse = Shapes::StructureShape.new(name: 'GetPipelineResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    IngestEndpointUrlsList = Shapes::ListShape.new(name: 'IngestEndpointUrlsList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListPipelineBlueprintsRequest = Shapes::StructureShape.new(name: 'ListPipelineBlueprintsRequest')
    ListPipelineBlueprintsResponse = Shapes::StructureShape.new(name: 'ListPipelineBlueprintsResponse')
    ListPipelineEndpointConnectionsRequest = Shapes::StructureShape.new(name: 'ListPipelineEndpointConnectionsRequest')
    ListPipelineEndpointConnectionsResponse = Shapes::StructureShape.new(name: 'ListPipelineEndpointConnectionsResponse')
    ListPipelineEndpointsRequest = Shapes::StructureShape.new(name: 'ListPipelineEndpointsRequest')
    ListPipelineEndpointsResponse = Shapes::StructureShape.new(name: 'ListPipelineEndpointsResponse')
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
    PipelineDestination = Shapes::StructureShape.new(name: 'PipelineDestination')
    PipelineDestinationList = Shapes::ListShape.new(name: 'PipelineDestinationList')
    PipelineEndpoint = Shapes::StructureShape.new(name: 'PipelineEndpoint')
    PipelineEndpointConnection = Shapes::StructureShape.new(name: 'PipelineEndpointConnection')
    PipelineEndpointConnectionsSummaryList = Shapes::ListShape.new(name: 'PipelineEndpointConnectionsSummaryList')
    PipelineEndpointId = Shapes::StringShape.new(name: 'PipelineEndpointId')
    PipelineEndpointIdsList = Shapes::ListShape.new(name: 'PipelineEndpointIdsList')
    PipelineEndpointStatus = Shapes::StringShape.new(name: 'PipelineEndpointStatus')
    PipelineEndpointVpcOptions = Shapes::StructureShape.new(name: 'PipelineEndpointVpcOptions')
    PipelineEndpointsSummaryList = Shapes::ListShape.new(name: 'PipelineEndpointsSummaryList')
    PipelineName = Shapes::StringShape.new(name: 'PipelineName')
    PipelineRoleArn = Shapes::StringShape.new(name: 'PipelineRoleArn')
    PipelineStatus = Shapes::StringShape.new(name: 'PipelineStatus')
    PipelineStatusReason = Shapes::StructureShape.new(name: 'PipelineStatusReason')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PipelineSummaryList = Shapes::ListShape.new(name: 'PipelineSummaryList')
    PipelineUnits = Shapes::IntegerShape.new(name: 'PipelineUnits')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StringShape.new(name: 'ResourcePolicy')
    RevokePipelineEndpointConnectionsRequest = Shapes::StructureShape.new(name: 'RevokePipelineEndpointConnectionsRequest')
    RevokePipelineEndpointConnectionsResponse = Shapes::StructureShape.new(name: 'RevokePipelineEndpointConnectionsResponse')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceVpcEndpoint = Shapes::StructureShape.new(name: 'ServiceVpcEndpoint')
    ServiceVpcEndpointsList = Shapes::ListShape.new(name: 'ServiceVpcEndpointsList')
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
    VpcAttachmentOptions = Shapes::StructureShape.new(name: 'VpcAttachmentOptions')
    VpcEndpoint = Shapes::StructureShape.new(name: 'VpcEndpoint')
    VpcEndpointManagement = Shapes::StringShape.new(name: 'VpcEndpointManagement')
    VpcEndpointServiceName = Shapes::StringShape.new(name: 'VpcEndpointServiceName')
    VpcEndpointsList = Shapes::ListShape.new(name: 'VpcEndpointsList')
    VpcOptions = Shapes::StructureShape.new(name: 'VpcOptions')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    BufferOptions.add_member(:persistent_buffer_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "PersistentBufferEnabled"))
    BufferOptions.struct_class = Types::BufferOptions

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

    CreatePipelineEndpointRequest.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location_name: "PipelineArn"))
    CreatePipelineEndpointRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: PipelineEndpointVpcOptions, required: true, location_name: "VpcOptions"))
    CreatePipelineEndpointRequest.struct_class = Types::CreatePipelineEndpointRequest

    CreatePipelineEndpointResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    CreatePipelineEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: PipelineEndpointId, location_name: "EndpointId"))
    CreatePipelineEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: PipelineEndpointStatus, location_name: "Status"))
    CreatePipelineEndpointResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    CreatePipelineEndpointResponse.struct_class = Types::CreatePipelineEndpointResponse

    CreatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location_name: "PipelineName"))
    CreatePipelineRequest.add_member(:min_units, Shapes::ShapeRef.new(shape: PipelineUnits, required: true, location_name: "MinUnits"))
    CreatePipelineRequest.add_member(:max_units, Shapes::ShapeRef.new(shape: PipelineUnits, required: true, location_name: "MaxUnits"))
    CreatePipelineRequest.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: PipelineConfigurationBody, required: true, location_name: "PipelineConfigurationBody"))
    CreatePipelineRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreatePipelineRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "VpcOptions"))
    CreatePipelineRequest.add_member(:buffer_options, Shapes::ShapeRef.new(shape: BufferOptions, location_name: "BufferOptions"))
    CreatePipelineRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    CreatePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePipelineRequest.add_member(:pipeline_role_arn, Shapes::ShapeRef.new(shape: PipelineRoleArn, location_name: "PipelineRoleArn"))
    CreatePipelineRequest.struct_class = Types::CreatePipelineRequest

    CreatePipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    CreatePipelineResponse.struct_class = Types::CreatePipelineResponse

    DeletePipelineEndpointRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: PipelineEndpointId, required: true, location: "uri", location_name: "EndpointId"))
    DeletePipelineEndpointRequest.struct_class = Types::DeletePipelineEndpointRequest

    DeletePipelineEndpointResponse.struct_class = Types::DeletePipelineEndpointResponse

    DeletePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    DeletePipelineRequest.struct_class = Types::DeletePipelineRequest

    DeletePipelineResponse.struct_class = Types::DeletePipelineResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location: "uri", location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DisabledOperationException.struct_class = Types::DisabledOperationException

    EncryptionAtRestOptions.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "KmsKeyArn"))
    EncryptionAtRestOptions.struct_class = Types::EncryptionAtRestOptions

    GetPipelineBlueprintRequest.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "BlueprintName"))
    GetPipelineBlueprintRequest.add_member(:format, Shapes::ShapeRef.new(shape: BlueprintFormat, location: "querystring", location_name: "format"))
    GetPipelineBlueprintRequest.struct_class = Types::GetPipelineBlueprintRequest

    GetPipelineBlueprintResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: PipelineBlueprint, location_name: "Blueprint"))
    GetPipelineBlueprintResponse.add_member(:format, Shapes::ShapeRef.new(shape: String, location_name: "Format"))
    GetPipelineBlueprintResponse.struct_class = Types::GetPipelineBlueprintResponse

    GetPipelineChangeProgressRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    GetPipelineChangeProgressRequest.struct_class = Types::GetPipelineChangeProgressRequest

    GetPipelineChangeProgressResponse.add_member(:change_progress_statuses, Shapes::ShapeRef.new(shape: ChangeProgressStatusList, location_name: "ChangeProgressStatuses"))
    GetPipelineChangeProgressResponse.struct_class = Types::GetPipelineChangeProgressResponse

    GetPipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: PipelineName, required: true, location: "uri", location_name: "PipelineName"))
    GetPipelineRequest.struct_class = Types::GetPipelineRequest

    GetPipelineResponse.add_member(:pipeline, Shapes::ShapeRef.new(shape: Pipeline, location_name: "Pipeline"))
    GetPipelineResponse.struct_class = Types::GetPipelineResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location: "uri", location_name: "ResourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "ResourceArn"))
    GetResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    IngestEndpointUrlsList.member = Shapes::ShapeRef.new(shape: String)

    InternalException.struct_class = Types::InternalException

    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    LimitExceededException.struct_class = Types::LimitExceededException

    ListPipelineBlueprintsRequest.struct_class = Types::ListPipelineBlueprintsRequest

    ListPipelineBlueprintsResponse.add_member(:blueprints, Shapes::ShapeRef.new(shape: PipelineBlueprintsSummaryList, location_name: "Blueprints"))
    ListPipelineBlueprintsResponse.struct_class = Types::ListPipelineBlueprintsResponse

    ListPipelineEndpointConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPipelineEndpointConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPipelineEndpointConnectionsRequest.struct_class = Types::ListPipelineEndpointConnectionsRequest

    ListPipelineEndpointConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineEndpointConnectionsResponse.add_member(:pipeline_endpoint_connections, Shapes::ShapeRef.new(shape: PipelineEndpointConnectionsSummaryList, location_name: "PipelineEndpointConnections"))
    ListPipelineEndpointConnectionsResponse.struct_class = Types::ListPipelineEndpointConnectionsResponse

    ListPipelineEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPipelineEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPipelineEndpointsRequest.struct_class = Types::ListPipelineEndpointsRequest

    ListPipelineEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListPipelineEndpointsResponse.add_member(:pipeline_endpoints, Shapes::ShapeRef.new(shape: PipelineEndpointsSummaryList, location_name: "PipelineEndpoints"))
    ListPipelineEndpointsResponse.struct_class = Types::ListPipelineEndpointsResponse

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
    Pipeline.add_member(:buffer_options, Shapes::ShapeRef.new(shape: BufferOptions, location_name: "BufferOptions"))
    Pipeline.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    Pipeline.add_member(:vpc_endpoint_service, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointService"))
    Pipeline.add_member(:service_vpc_endpoints, Shapes::ShapeRef.new(shape: ServiceVpcEndpointsList, location_name: "ServiceVpcEndpoints"))
    Pipeline.add_member(:destinations, Shapes::ShapeRef.new(shape: PipelineDestinationList, location_name: "Destinations"))
    Pipeline.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Pipeline.add_member(:pipeline_role_arn, Shapes::ShapeRef.new(shape: PipelineRoleArn, location_name: "PipelineRoleArn"))
    Pipeline.struct_class = Types::Pipeline

    PipelineBlueprint.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: String, location_name: "BlueprintName"))
    PipelineBlueprint.add_member(:pipeline_configuration_body, Shapes::ShapeRef.new(shape: String, location_name: "PipelineConfigurationBody"))
    PipelineBlueprint.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    PipelineBlueprint.add_member(:display_description, Shapes::ShapeRef.new(shape: String, location_name: "DisplayDescription"))
    PipelineBlueprint.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "Service"))
    PipelineBlueprint.add_member(:use_case, Shapes::ShapeRef.new(shape: String, location_name: "UseCase"))
    PipelineBlueprint.struct_class = Types::PipelineBlueprint

    PipelineBlueprintSummary.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: String, location_name: "BlueprintName"))
    PipelineBlueprintSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    PipelineBlueprintSummary.add_member(:display_description, Shapes::ShapeRef.new(shape: String, location_name: "DisplayDescription"))
    PipelineBlueprintSummary.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "Service"))
    PipelineBlueprintSummary.add_member(:use_case, Shapes::ShapeRef.new(shape: String, location_name: "UseCase"))
    PipelineBlueprintSummary.struct_class = Types::PipelineBlueprintSummary

    PipelineBlueprintsSummaryList.member = Shapes::ShapeRef.new(shape: PipelineBlueprintSummary)

    PipelineDestination.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "ServiceName"))
    PipelineDestination.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    PipelineDestination.struct_class = Types::PipelineDestination

    PipelineDestinationList.member = Shapes::ShapeRef.new(shape: PipelineDestination)

    PipelineEndpoint.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    PipelineEndpoint.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: PipelineEndpointId, location_name: "EndpointId"))
    PipelineEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: PipelineEndpointStatus, location_name: "Status"))
    PipelineEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    PipelineEndpoint.add_member(:vpc_options, Shapes::ShapeRef.new(shape: PipelineEndpointVpcOptions, location_name: "VpcOptions"))
    PipelineEndpoint.add_member(:ingest_endpoint_url, Shapes::ShapeRef.new(shape: String, location_name: "IngestEndpointUrl"))
    PipelineEndpoint.struct_class = Types::PipelineEndpoint

    PipelineEndpointConnection.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    PipelineEndpointConnection.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: PipelineEndpointId, location_name: "EndpointId"))
    PipelineEndpointConnection.add_member(:status, Shapes::ShapeRef.new(shape: PipelineEndpointStatus, location_name: "Status"))
    PipelineEndpointConnection.add_member(:vpc_endpoint_owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "VpcEndpointOwner"))
    PipelineEndpointConnection.struct_class = Types::PipelineEndpointConnection

    PipelineEndpointConnectionsSummaryList.member = Shapes::ShapeRef.new(shape: PipelineEndpointConnection)

    PipelineEndpointIdsList.member = Shapes::ShapeRef.new(shape: PipelineEndpointId)

    PipelineEndpointVpcOptions.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    PipelineEndpointVpcOptions.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    PipelineEndpointVpcOptions.struct_class = Types::PipelineEndpointVpcOptions

    PipelineEndpointsSummaryList.member = Shapes::ShapeRef.new(shape: PipelineEndpoint)

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
    PipelineSummary.add_member(:destinations, Shapes::ShapeRef.new(shape: PipelineDestinationList, location_name: "Destinations"))
    PipelineSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PipelineSummary.struct_class = Types::PipelineSummary

    PipelineSummaryList.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location: "uri", location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RevokePipelineEndpointConnectionsRequest.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, required: true, location_name: "PipelineArn"))
    RevokePipelineEndpointConnectionsRequest.add_member(:endpoint_ids, Shapes::ShapeRef.new(shape: PipelineEndpointIdsList, required: true, location_name: "EndpointIds"))
    RevokePipelineEndpointConnectionsRequest.struct_class = Types::RevokePipelineEndpointConnectionsRequest

    RevokePipelineEndpointConnectionsResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: PipelineArn, location_name: "PipelineArn"))
    RevokePipelineEndpointConnectionsResponse.struct_class = Types::RevokePipelineEndpointConnectionsResponse

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceVpcEndpoint.add_member(:service_name, Shapes::ShapeRef.new(shape: VpcEndpointServiceName, location_name: "ServiceName"))
    ServiceVpcEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointId"))
    ServiceVpcEndpoint.struct_class = Types::ServiceVpcEndpoint

    ServiceVpcEndpointsList.member = Shapes::ShapeRef.new(shape: ServiceVpcEndpoint)

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
    UpdatePipelineRequest.add_member(:buffer_options, Shapes::ShapeRef.new(shape: BufferOptions, location_name: "BufferOptions"))
    UpdatePipelineRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    UpdatePipelineRequest.add_member(:pipeline_role_arn, Shapes::ShapeRef.new(shape: PipelineRoleArn, location_name: "PipelineRoleArn"))
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

    VpcAttachmentOptions.add_member(:attach_to_vpc, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "AttachToVpc"))
    VpcAttachmentOptions.add_member(:cidr_block, Shapes::ShapeRef.new(shape: CidrBlock, location_name: "CidrBlock"))
    VpcAttachmentOptions.struct_class = Types::VpcAttachmentOptions

    VpcEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    VpcEndpoint.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VpcOptions, location_name: "VpcOptions"))
    VpcEndpoint.struct_class = Types::VpcEndpoint

    VpcEndpointsList.member = Shapes::ShapeRef.new(shape: VpcEndpoint)

    VpcOptions.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    VpcOptions.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcOptions.add_member(:vpc_attachment_options, Shapes::ShapeRef.new(shape: VpcAttachmentOptions, location_name: "VpcAttachmentOptions"))
    VpcOptions.add_member(:vpc_endpoint_management, Shapes::ShapeRef.new(shape: VpcEndpointManagement, location_name: "VpcEndpointManagement"))
    VpcOptions.struct_class = Types::VpcOptions


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-01-01"

      api.metadata = {
        "apiVersion" => "2022-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "osis",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_pipeline_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipelineEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/createPipelineEndpoint"
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/2022-01-01/osis/deletePipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_pipeline_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipelineEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/2022-01-01/osis/deletePipelineEndpoint/{EndpointId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipelineEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/2022-01-01/osis/resourcePolicy/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPipeline"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/getPipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: GetPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/resourcePolicy/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_pipeline_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/listPipelineBlueprints"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineBlueprintsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
      end)

      api.add_operation(:list_pipeline_endpoint_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineEndpointConnections"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/listPipelineEndpointConnections"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineEndpointConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineEndpointConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipeline_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/listPipelineEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListPipelineEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "GET"
        o.http_request_uri = "/2022-01-01/osis/listPipelines"
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/2022-01-01/osis/resourcePolicy/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:revoke_pipeline_endpoint_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokePipelineEndpointConnections"
        o.http_method = "POST"
        o.http_request_uri = "/2022-01-01/osis/revokePipelineEndpointConnections"
        o.input = Shapes::ShapeRef.new(shape: RevokePipelineEndpointConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokePipelineEndpointConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/2022-01-01/osis/startPipeline/{PipelineName}"
        o.input = Shapes::ShapeRef.new(shape: StartPipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
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
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
