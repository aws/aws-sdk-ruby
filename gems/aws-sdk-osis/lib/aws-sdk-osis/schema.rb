# frozen_string_literal: true

# This is generated code!

module Aws::OSIS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BlueprintFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#BlueprintFormat', name: 'BlueprintFormat', traits: {"smithy.api#pattern" => "^(YAML|JSON)$"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.osis#Boolean', name: 'Boolean')
    BufferOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#BufferOptions', name: 'BufferOptions')
    ChangeProgressStage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ChangeProgressStage', name: 'ChangeProgressStage')
    ChangeProgressStageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#ChangeProgressStageList', name: 'ChangeProgressStageList')
    ChangeProgressStageStatuses = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.osis#ChangeProgressStageStatuses', name: 'ChangeProgressStageStatuses')
    ChangeProgressStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ChangeProgressStatus', name: 'ChangeProgressStatus')
    ChangeProgressStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#ChangeProgressStatusList', name: 'ChangeProgressStatusList')
    ChangeProgressStatuses = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.osis#ChangeProgressStatuses', name: 'ChangeProgressStatuses')
    CidrBlock = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#CidrBlock', name: 'CidrBlock', traits: {"smithy.api#pattern" => "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/(3[0-2]|[12]?[0-9])$"})
    CloudWatchLogDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#CloudWatchLogDestination', name: 'CloudWatchLogDestination')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreatePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#CreatePipelineRequest', name: 'CreatePipelineRequest')
    CreatePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#CreatePipelineResponse', name: 'CreatePipelineResponse')
    DeletePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#DeletePipelineRequest', name: 'DeletePipelineRequest')
    DeletePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#DeletePipelineResponse', name: 'DeletePipelineResponse')
    DisabledOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#DisabledOperationException', name: 'DisabledOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EncryptionAtRestOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#EncryptionAtRestOptions', name: 'EncryptionAtRestOptions')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#ErrorMessage', name: 'ErrorMessage')
    GetPipelineBlueprintRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#GetPipelineBlueprintRequest', name: 'GetPipelineBlueprintRequest')
    GetPipelineBlueprintResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#GetPipelineBlueprintResponse', name: 'GetPipelineBlueprintResponse')
    GetPipelineChangeProgressRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#GetPipelineChangeProgressRequest', name: 'GetPipelineChangeProgressRequest')
    GetPipelineChangeProgressResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#GetPipelineChangeProgressResponse', name: 'GetPipelineChangeProgressResponse')
    GetPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#GetPipelineRequest', name: 'GetPipelineRequest')
    GetPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#GetPipelineResponse', name: 'GetPipelineResponse')
    IngestEndpointUrlsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#IngestEndpointUrlsList', name: 'IngestEndpointUrlsList')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.osis#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#InternalException', name: 'InternalException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPaginationTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#InvalidPaginationTokenException', name: 'InvalidPaginationTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ListPipelineBlueprintsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ListPipelineBlueprintsRequest', name: 'ListPipelineBlueprintsRequest')
    ListPipelineBlueprintsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ListPipelineBlueprintsResponse', name: 'ListPipelineBlueprintsResponse')
    ListPipelinesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ListPipelinesRequest', name: 'ListPipelinesRequest')
    ListPipelinesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ListPipelinesResponse', name: 'ListPipelinesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#LogGroup', name: 'LogGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^\\/aws\\/vendedlogs\\/[\\.\\-_/#A-Za-z0-9]+$"})
    LogPublishingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#LogPublishingOptions', name: 'LogPublishingOptions')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.osis#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}, "smithy.api#pattern" => "^([\\s\\S]*)$"})
    Pipeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#Pipeline', name: 'Pipeline')
    PipelineArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#PipelineArn', name: 'PipelineArn', traits: {"smithy.api#length" => {"min" => 46, "max" => 76}, "smithy.api#pattern" => "^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b):osis:.+:pipeline\\/.+$"})
    PipelineBlueprint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#PipelineBlueprint', name: 'PipelineBlueprint')
    PipelineBlueprintSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#PipelineBlueprintSummary', name: 'PipelineBlueprintSummary')
    PipelineBlueprintsSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#PipelineBlueprintsSummaryList', name: 'PipelineBlueprintsSummaryList')
    PipelineConfigurationBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#PipelineConfigurationBody', name: 'PipelineConfigurationBody', traits: {"smithy.api#length" => {"min" => 1, "max" => 24000}})
    PipelineDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#PipelineDestination', name: 'PipelineDestination')
    PipelineDestinationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#PipelineDestinationList', name: 'PipelineDestinationList')
    PipelineName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#PipelineName', name: 'PipelineName', traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    PipelineRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#PipelineRoleArn', name: 'PipelineRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b|aws\\-iso\\-e|aws\\-iso\\-f):iam::[0-9]+:role\\/.*$"})
    PipelineStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.osis#PipelineStatus', name: 'PipelineStatus')
    PipelineStatusReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#PipelineStatusReason', name: 'PipelineStatusReason')
    PipelineSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#PipelineSummary', name: 'PipelineSummary')
    PipelineSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#PipelineSummaryList', name: 'PipelineSummaryList')
    PipelineUnits = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.osis#PipelineUnits', name: 'PipelineUnits', traits: {"smithy.api#range" => {"min" => 1}})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-\\w{8}(\\w{9})?$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    ServiceVpcEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ServiceVpcEndpoint', name: 'ServiceVpcEndpoint')
    ServiceVpcEndpointsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#ServiceVpcEndpointsList', name: 'ServiceVpcEndpointsList')
    StartPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#StartPipelineRequest', name: 'StartPipelineRequest')
    StartPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#StartPipelineResponse', name: 'StartPipelineResponse')
    StopPipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#StopPipelineRequest', name: 'StopPipelineRequest')
    StopPipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#StopPipelineResponse', name: 'StopPipelineResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#StringList', name: 'StringList')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-\\w{8}(\\w{9})?$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.osis#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.osis#Timestamp', name: 'Timestamp')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdatePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#UpdatePipelineRequest', name: 'UpdatePipelineRequest')
    UpdatePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#UpdatePipelineResponse', name: 'UpdatePipelineResponse')
    ValidatePipelineRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ValidatePipelineRequest', name: 'ValidatePipelineRequest')
    ValidatePipelineResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ValidatePipelineResponse', name: 'ValidatePipelineResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#ValidationMessage', name: 'ValidationMessage')
    ValidationMessageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#ValidationMessageList', name: 'ValidationMessageList')
    VpcAttachmentOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#VpcAttachmentOptions', name: 'VpcAttachmentOptions')
    VpcEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#VpcEndpoint', name: 'VpcEndpoint')
    VpcEndpointManagement = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.osis#VpcEndpointManagement', name: 'VpcEndpointManagement')
    VpcEndpointServiceName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.osis#VpcEndpointServiceName', name: 'VpcEndpointServiceName')
    VpcEndpointsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.osis#VpcEndpointsList', name: 'VpcEndpointsList')
    VpcOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.osis#VpcOptions', name: 'VpcOptions')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BufferOptions.add_member(:persistent_buffer_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PersistentBufferEnabled', traits: {"smithy.api#documentation" => "<p>Whether persistent buffering should be enabled.</p>", "smithy.api#required" => {}}))
    BufferOptions.type = Types::BufferOptions
    ChangeProgressStage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the stage.</p>"}))
    ChangeProgressStage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageStatuses, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the stage that the change is in.</p>"}))
    ChangeProgressStage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the stage.</p>"}))
    ChangeProgressStage.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The most recent updated timestamp of the stage.</p>"}))
    ChangeProgressStage.type = Types::ChangeProgressStage
    ChangeProgressStageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStage)
    ChangeProgressStageStatuses.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeProgressStageStatuses.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChangeProgressStageStatuses.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ChangeProgressStageStatuses.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeProgressStatus.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time at which the configuration change is made on the pipeline.</p>"}))
    ChangeProgressStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStatuses, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The overall status of the pipeline configuration change.</p>"}))
    ChangeProgressStatus.add_member(:total_number_of_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TotalNumberOfStages', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of stages required for the pipeline configuration change.</p>"}))
    ChangeProgressStatus.add_member(:change_progress_stages, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStageList, location_name: 'ChangeProgressStages', traits: {"smithy.api#documentation" => "<p>Information about the stages that the pipeline is going through to perform the configuration change.</p>"}))
    ChangeProgressStatus.type = Types::ChangeProgressStatus
    ChangeProgressStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStatus)
    ChangeProgressStatuses.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeProgressStatuses.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChangeProgressStatuses.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ChangeProgressStatuses.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudWatchLogDestination.add_member(:log_group, Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroup, location_name: 'LogGroup', traits: {"smithy.api#documentation" => "<p>The name of the CloudWatch Logs group to send pipeline logs to. You can specify an existing\n   log group or create a new one. For example,\n   <code>/aws/vendedlogs/OpenSearchService/pipelines</code>.</p>", "smithy.api#required" => {}}))
    CloudWatchLogDestination.type = Types::CloudWatchLogDestination
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreatePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines\n   owned by an account within an Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:min_units, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineUnits, location_name: 'MinUnits', traits: {"smithy.api#documentation" => "<p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>", "smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:max_units, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineUnits, location_name: 'MaxUnits', traits: {"smithy.api#documentation" => "<p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>", "smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:pipeline_configuration_body, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfigurationBody, location_name: 'PipelineConfigurationBody', traits: {"smithy.api#documentation" => "<p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as\n   a string or within a .yaml file. If you provide the configuration as a string, each new line must\n   be escaped with <code>\\n</code>.</p>", "smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure log publishing.</p>"}))
    CreatePipelineRequest.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOptions, location_name: 'VpcOptions', traits: {"smithy.api#documentation" => "<p>Container for the values required to configure VPC access for the pipeline. If you don't specify\n   these values, OpenSearch Ingestion creates the pipeline with a public endpoint.</p>"}))
    CreatePipelineRequest.add_member(:buffer_options, Smithy::Schema::Shapes::ShapeRef.new(shape: BufferOptions, location_name: 'BufferOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure persistent buffering for the pipeline.</p>"}))
    CreatePipelineRequest.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure encryption for data that is written to a persistent buffer.</p>"}))
    CreatePipelineRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>List of tags to add to the pipeline upon creation.</p>"}))
    CreatePipelineRequest.add_member(:pipeline_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineRoleArn, location_name: 'PipelineRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that provides\n   the required permissions for a pipeline to read from the source and write to the sink.\n   For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline-security-overview.html\">Setting up roles and users in Amazon OpenSearch Ingestion</a>.</p>"}))
    CreatePipelineRequest.type = Types::CreatePipelineRequest
    CreatePipelineResponse.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: 'Pipeline', traits: {"smithy.api#documentation" => "<p>Container for information about the created pipeline.</p>"}))
    CreatePipelineResponse.type = Types::CreatePipelineResponse
    DeletePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipelineRequest.type = Types::DeletePipelineRequest
    DeletePipelineResponse.type = Types::DeletePipelineResponse
    DisabledOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DisabledOperationException.type = Types::DisabledOperationException
    EncryptionAtRestOptions.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the KMS key used to encrypt buffer data.\n   By default, data is encrypted using an Amazon Web Services owned key.</p>", "smithy.api#required" => {}}))
    EncryptionAtRestOptions.type = Types::EncryptionAtRestOptions
    GetPipelineBlueprintRequest.add_member(:blueprint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BlueprintName', traits: {"smithy.api#documentation" => "<p>The name of the blueprint to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPipelineBlueprintRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: BlueprintFormat, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The format format of the blueprint to retrieve.</p>", "smithy.api#httpQuery" => "format"}))
    GetPipelineBlueprintRequest.type = Types::GetPipelineBlueprintRequest
    GetPipelineBlueprintResponse.add_member(:blueprint, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineBlueprint, location_name: 'Blueprint', traits: {"smithy.api#documentation" => "<p>The requested blueprint in YAML format.</p>"}))
    GetPipelineBlueprintResponse.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The format of the blueprint.</p>"}))
    GetPipelineBlueprintResponse.type = Types::GetPipelineBlueprintResponse
    GetPipelineChangeProgressRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPipelineChangeProgressRequest.type = Types::GetPipelineChangeProgressRequest
    GetPipelineChangeProgressResponse.add_member(:change_progress_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeProgressStatusList, location_name: 'ChangeProgressStatuses', traits: {"smithy.api#documentation" => "<p>The current status of the change happening on the pipeline.</p>"}))
    GetPipelineChangeProgressResponse.type = Types::GetPipelineChangeProgressResponse
    GetPipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPipelineRequest.type = Types::GetPipelineRequest
    GetPipelineResponse.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: 'Pipeline', traits: {"smithy.api#documentation" => "<p>Detailed information about the requested pipeline.</p>"}))
    GetPipelineResponse.type = Types::GetPipelineResponse
    IngestEndpointUrlsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalException.type = Types::InternalException
    InvalidPaginationTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListPipelineBlueprintsRequest.type = Types::ListPipelineBlueprintsRequest
    ListPipelineBlueprintsResponse.add_member(:blueprints, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineBlueprintsSummaryList, location_name: 'Blueprints', traits: {"smithy.api#documentation" => "<p>A list of available blueprints for Data Prepper.</p>"}))
    ListPipelineBlueprintsResponse.type = Types::ListPipelineBlueprintsResponse
    ListPipelinesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the maximum number of results to return. You can use\n   <code>nextToken</code> to get the next page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPipelinesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If your initial <code>ListPipelines</code> operation returns a <code>nextToken</code>, you\n   can include the returned <code>nextToken</code> in subsequent <code>ListPipelines</code>\n   operations, which returns results in the next page.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPipelinesRequest.type = Types::ListPipelinesRequest
    ListPipelinesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>When <code>nextToken</code> is returned, there are more results available. The value of\n   <code>nextToken</code> is a unique pagination token for each page. Make the call again using\n   the returned token to retrieve the next page.</p>"}))
    ListPipelinesResponse.add_member(:pipelines, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineSummaryList, location_name: 'Pipelines', traits: {"smithy.api#documentation" => "<p>A list of all existing Data Prepper pipelines.</p>"}))
    ListPipelinesResponse.type = Types::ListPipelinesResponse
    ListTagsForResourceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline to retrieve tags for.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the given pipeline.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogPublishingOptions.add_member(:is_logging_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsLoggingEnabled', traits: {"smithy.api#documentation" => "<p>Whether logs should be published.</p>"}))
    LogPublishingOptions.add_member(:cloud_watch_log_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogDestination, location_name: 'CloudWatchLogDestination', traits: {"smithy.api#documentation" => "<p>The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This\n   parameter is required if <code>IsLoggingEnabled</code> is set to <code>true</code>.</p>"}))
    LogPublishingOptions.type = Types::LogPublishingOptions
    Pipeline.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    Pipeline.add_member(:pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PipelineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline.</p>"}))
    Pipeline.add_member(:min_units, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MinUnits', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>"}))
    Pipeline.add_member(:max_units, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxUnits', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>"}))
    Pipeline.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the pipeline.</p>"}))
    Pipeline.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStatusReason, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>The reason for the current status of the pipeline.</p>"}))
    Pipeline.add_member(:pipeline_configuration_body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PipelineConfigurationBody', traits: {"smithy.api#documentation" => "<p>The Data Prepper pipeline configuration in YAML format.</p>"}))
    Pipeline.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the pipeline was created.</p>"}))
    Pipeline.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the pipeline was last updated.</p>"}))
    Pipeline.add_member(:ingest_endpoint_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: IngestEndpointUrlsList, location_name: 'IngestEndpointUrls', traits: {"smithy.api#documentation" => "<p>The ingestion endpoints for the pipeline, which you can send data to.</p>"}))
    Pipeline.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs that represent log publishing settings.</p>"}))
    Pipeline.add_member(:vpc_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointsList, location_name: 'VpcEndpoints', traits: {"smithy.api#documentation" => "<p>The VPC interface endpoints that have access to the pipeline.</p>"}))
    Pipeline.add_member(:buffer_options, Smithy::Schema::Shapes::ShapeRef.new(shape: BufferOptions, location_name: 'BufferOptions'))
    Pipeline.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions'))
    Pipeline.add_member(:vpc_endpoint_service, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointService', traits: {"smithy.api#documentation" => "<p>The VPC endpoint service name for the pipeline.</p>"}))
    Pipeline.add_member(:service_vpc_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceVpcEndpointsList, location_name: 'ServiceVpcEndpoints', traits: {"smithy.api#documentation" => "<p>A list of VPC endpoints that OpenSearch Ingestion has created to other Amazon Web Services services.</p>"}))
    Pipeline.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDestinationList, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>Destinations to which the pipeline writes data.</p>"}))
    Pipeline.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the given pipeline.</p>"}))
    Pipeline.add_member(:pipeline_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineRoleArn, location_name: 'PipelineRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that provides\n   the required permissions for a pipeline to read from the source and write to the sink.</p>"}))
    Pipeline.type = Types::Pipeline
    PipelineBlueprint.add_member(:blueprint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BlueprintName', traits: {"smithy.api#documentation" => "<p>The name of the blueprint.</p>"}))
    PipelineBlueprint.add_member(:pipeline_configuration_body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PipelineConfigurationBody', traits: {"smithy.api#documentation" => "<p>The YAML configuration of the blueprint.</p>"}))
    PipelineBlueprint.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the blueprint.</p>"}))
    PipelineBlueprint.add_member(:display_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayDescription', traits: {"smithy.api#documentation" => "<p>A description of the blueprint.</p>"}))
    PipelineBlueprint.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The name of the service that the blueprint is associated with.</p>"}))
    PipelineBlueprint.add_member(:use_case, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UseCase', traits: {"smithy.api#documentation" => "<p>The use case that the blueprint relates to.</p>"}))
    PipelineBlueprint.type = Types::PipelineBlueprint
    PipelineBlueprintSummary.add_member(:blueprint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BlueprintName', traits: {"smithy.api#documentation" => "<p>The name of the blueprint.</p>"}))
    PipelineBlueprintSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the blueprint.</p>"}))
    PipelineBlueprintSummary.add_member(:display_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayDescription', traits: {"smithy.api#documentation" => "<p>A description of the blueprint.</p>"}))
    PipelineBlueprintSummary.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Service', traits: {"smithy.api#documentation" => "<p>The name of the service that the blueprint is associated with.</p>"}))
    PipelineBlueprintSummary.add_member(:use_case, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UseCase', traits: {"smithy.api#documentation" => "<p>The use case that the blueprint relates to.</p>"}))
    PipelineBlueprintSummary.type = Types::PipelineBlueprintSummary
    PipelineBlueprintsSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineBlueprintSummary)
    PipelineDestination.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the service receiving data from the pipeline.</p>"}))
    PipelineDestination.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The endpoint receiving data from the pipeline.</p>"}))
    PipelineDestination.type = Types::PipelineDestination
    PipelineDestinationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDestination)
    PipelineStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    PipelineStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PipelineStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    PipelineStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PipelineStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PipelineStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    PipelineStatus.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    PipelineStatus.add_member(:start_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_FAILED', traits: {"smithy.api#enumValue" => "START_FAILED"}))
    PipelineStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    PipelineStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    PipelineStatusReason.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of why a pipeline has a certain status.</p>"}))
    PipelineStatusReason.type = Types::PipelineStatusReason
    PipelineSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the pipeline.</p>"}))
    PipelineSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStatusReason, location_name: 'StatusReason'))
    PipelineSummary.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    PipelineSummary.add_member(:pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'PipelineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline.</p>"}))
    PipelineSummary.add_member(:min_units, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineUnits, location_name: 'MinUnits', traits: {"smithy.api#documentation" => "<p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>"}))
    PipelineSummary.add_member(:max_units, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineUnits, location_name: 'MaxUnits', traits: {"smithy.api#documentation" => "<p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>"}))
    PipelineSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the pipeline was created.</p>"}))
    PipelineSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time when the pipeline was last updated.</p>"}))
    PipelineSummary.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDestinationList, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>A list of destinations to which the pipeline writes data.</p>"}))
    PipelineSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the given pipeline.</p>"}))
    PipelineSummary.type = Types::PipelineSummary
    PipelineSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineSummary)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceVpcEndpoint.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointServiceName, location_name: 'ServiceName', traits: {"smithy.api#documentation" => "<p>The name of the service for which a VPC endpoint was created.</p>"}))
    ServiceVpcEndpoint.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the VPC endpoint that was created.</p>"}))
    ServiceVpcEndpoint.type = Types::ServiceVpcEndpoint
    ServiceVpcEndpointsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceVpcEndpoint)
    StartPipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to start.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartPipelineRequest.type = Types::StartPipelineRequest
    StartPipelineResponse.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: 'Pipeline'))
    StartPipelineResponse.type = Types::StartPipelineResponse
    StopPipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to stop.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopPipelineRequest.type = Types::StopPipelineRequest
    StopPipelineResponse.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: 'Pipeline'))
    StopPipelineResponse.type = Types::StopPipelineResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key. Tag keys must be unique for the pipeline to which they are attached.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value assigned to the corresponding tag key. Tag values can be null and don't have to\n   be unique in a tag set. For example, you can have a key value pair in a tag set of\n   <code>project : Trinity</code> and <code>cost-center : Trinity</code>\n         </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline to tag.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value tags to add to the pipeline.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline to remove tags from.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdatePipelineRequest.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'PipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineRequest.add_member(:min_units, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineUnits, location_name: 'MinUnits', traits: {"smithy.api#documentation" => "<p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>"}))
    UpdatePipelineRequest.add_member(:max_units, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineUnits, location_name: 'MaxUnits', traits: {"smithy.api#documentation" => "<p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs)</p>"}))
    UpdatePipelineRequest.add_member(:pipeline_configuration_body, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfigurationBody, location_name: 'PipelineConfigurationBody', traits: {"smithy.api#documentation" => "<p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as\n   a string or within a .yaml file. If you provide the configuration as a string, each new line must\n   be escaped with <code>\\n</code>.</p>"}))
    UpdatePipelineRequest.add_member(:log_publishing_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: 'LogPublishingOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure log publishing.</p>"}))
    UpdatePipelineRequest.add_member(:buffer_options, Smithy::Schema::Shapes::ShapeRef.new(shape: BufferOptions, location_name: 'BufferOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure persistent buffering for the pipeline.</p>"}))
    UpdatePipelineRequest.add_member(:encryption_at_rest_options, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: 'EncryptionAtRestOptions', traits: {"smithy.api#documentation" => "<p>Key-value pairs to configure encryption for data that is written to a persistent buffer.</p>"}))
    UpdatePipelineRequest.add_member(:pipeline_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineRoleArn, location_name: 'PipelineRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that provides\n   the required permissions for a pipeline to read from the source and write to the sink.\n   For more information, see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline-security-overview.html\">Setting up roles and users in Amazon OpenSearch Ingestion</a>.</p>"}))
    UpdatePipelineRequest.type = Types::UpdatePipelineRequest
    UpdatePipelineResponse.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Pipeline, location_name: 'Pipeline', traits: {"smithy.api#documentation" => "<p>Container for information about the updated pipeline.</p>"}))
    UpdatePipelineResponse.type = Types::UpdatePipelineResponse
    ValidatePipelineRequest.add_member(:pipeline_configuration_body, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineConfigurationBody, location_name: 'PipelineConfigurationBody', traits: {"smithy.api#documentation" => "<p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as\n   a string or within a .yaml file. If you provide the configuration as a string, each new line must\n   be escaped with <code>\\n</code>.</p>", "smithy.api#required" => {}}))
    ValidatePipelineRequest.type = Types::ValidatePipelineRequest
    ValidatePipelineResponse.add_member(:is_valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isValid', traits: {"smithy.api#documentation" => "<p>A boolean indicating whether or not the pipeline configuration is valid.</p>"}))
    ValidatePipelineResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessageList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>A list of errors if the configuration is invalid.</p>"}))
    ValidatePipelineResponse.type = Types::ValidatePipelineResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    ValidationMessage.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The validation message.</p>"}))
    ValidationMessage.type = Types::ValidationMessage
    ValidationMessageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessage)
    VpcAttachmentOptions.add_member(:attach_to_vpc, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AttachToVpc', traits: {"smithy.api#documentation" => "<p>Whether a VPC is attached to the pipeline.</p>", "smithy.api#required" => {}}))
    VpcAttachmentOptions.add_member(:cidr_block, Smithy::Schema::Shapes::ShapeRef.new(shape: CidrBlock, location_name: 'CidrBlock', traits: {"smithy.api#documentation" => "<p>The CIDR block to be reserved for OpenSearch Ingestion to create elastic network interfaces (ENIs).</p>"}))
    VpcAttachmentOptions.type = Types::VpcAttachmentOptions
    VpcEndpoint.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the endpoint.</p>"}))
    VpcEndpoint.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID for your VPC. Amazon Web Services PrivateLink generates this value when you create a\n   VPC.</p>"}))
    VpcEndpoint.add_member(:vpc_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcOptions, location_name: 'VpcOptions', traits: {"smithy.api#documentation" => "<p>Information about the VPC, including associated subnets and security groups.</p>"}))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointManagement.add_member(:customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    VpcEndpointManagement.add_member(:service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    VpcEndpointServiceName.add_member(:opensearch_serverless, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPENSEARCH_SERVERLESS', traits: {"smithy.api#enumValue" => "OPENSEARCH_SERVERLESS"}))
    VpcEndpointsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint)
    VpcOptions.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs associated with the VPC endpoint.</p>", "smithy.api#required" => {}}))
    VpcOptions.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of security groups associated with the VPC endpoint.</p>"}))
    VpcOptions.add_member(:vpc_attachment_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcAttachmentOptions, location_name: 'VpcAttachmentOptions', traits: {"smithy.api#documentation" => "<p>Options for attaching a VPC to a pipeline.</p>"}))
    VpcOptions.add_member(:vpc_endpoint_management, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointManagement, location_name: 'VpcEndpointManagement', traits: {"smithy.api#documentation" => "<p>Defines whether you or Amazon OpenSearch Ingestion service create and manage the VPC endpoint configured for the pipeline.</p>"}))
    VpcOptions.type = Types::VpcOptions

    AmazonOpenSearchIngestionService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.osis#AmazonOpenSearchIngestionService"
      service.name = "AmazonOpenSearchIngestionService"
      service.version = "2022-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OSIS", "arnNamespace" => "osis", "cloudFormationName" => "OSIS", "cloudTrailEventSource" => "osis.amazonaws.com", "endpointPrefix" => "osis"}, "aws.auth#sigv4" => {"name" => "osis"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon OpenSearch Ingestion", "smithy.api#xmlNamespace" => {"uri" => "http://osis.amazonaws.com/doc/2022-01-01"}}
      service.add_operation(:create_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/createPipeline", "code" => 200}}
      end)
      service.add_operation(:delete_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2022-01-01/osis/deletePipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:get_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetPipeline"
        operation.name = "GetPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/getPipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:get_pipeline_blueprint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetPipelineBlueprint"
        operation.name = "GetPipelineBlueprint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineBlueprintRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineBlueprintResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}", "code" => 200}}
      end)
      service.add_operation(:get_pipeline_change_progress, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetPipelineChangeProgress"
        operation.name = "GetPipelineChangeProgress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineChangeProgressRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineChangeProgressResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:list_pipeline_blueprints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListPipelineBlueprints"
        operation.name = "ListPipelineBlueprints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelineBlueprintsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelineBlueprintsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/listPipelineBlueprints", "code" => 200}}
      end)
      service.add_operation(:list_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/listPipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/listTagsForResource", "code" => 200}}
      end)
      service.add_operation(:start_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#StartPipeline"
        operation.name = "StartPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/startPipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:stop_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#StopPipeline"
        operation.name = "StopPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/stopPipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/tagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/untagResource", "code" => 200}}
      end)
      service.add_operation(:update_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/updatePipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:validate_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ValidatePipeline"
        operation.name = "ValidatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePipelineRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePipelineResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/validatePipeline", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
