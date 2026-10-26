# frozen_string_literal: true

# This is generated code!

module Aws::OSIS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\\\d{12}$"})
    BlueprintFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#BlueprintFormat", name: "BlueprintFormat", traits: {"smithy.api#pattern" => "^(YAML|JSON)$"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.osis#Boolean", name: "Boolean")
    BufferOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#BufferOptions", name: "BufferOptions")
    ChangeProgressStage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ChangeProgressStage", name: "ChangeProgressStage")
    ChangeProgressStageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#ChangeProgressStageList", name: "ChangeProgressStageList")
    ChangeProgressStageStatuses = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.osis#ChangeProgressStageStatuses", name: "ChangeProgressStageStatuses")
    ChangeProgressStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ChangeProgressStatus", name: "ChangeProgressStatus")
    ChangeProgressStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#ChangeProgressStatusList", name: "ChangeProgressStatusList")
    ChangeProgressStatuses = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.osis#ChangeProgressStatuses", name: "ChangeProgressStatuses")
    CidrBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#CidrBlock", name: "CidrBlock", traits: {"smithy.api#pattern" => "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/24$"})
    CloudWatchLogDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#CloudWatchLogDestination", name: "CloudWatchLogDestination")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreatePipelineEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#CreatePipelineEndpointRequest", name: "CreatePipelineEndpointRequest")
    CreatePipelineEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#CreatePipelineEndpointResponse", name: "CreatePipelineEndpointResponse")
    CreatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#CreatePipelineRequest", name: "CreatePipelineRequest")
    CreatePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#CreatePipelineResponse", name: "CreatePipelineResponse")
    DeletePipelineEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DeletePipelineEndpointRequest", name: "DeletePipelineEndpointRequest")
    DeletePipelineEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DeletePipelineEndpointResponse", name: "DeletePipelineEndpointResponse")
    DeletePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DeletePipelineRequest", name: "DeletePipelineRequest")
    DeletePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DeletePipelineResponse", name: "DeletePipelineResponse")
    DeleteResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DeleteResourcePolicyRequest", name: "DeleteResourcePolicyRequest")
    DeleteResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DeleteResourcePolicyResponse", name: "DeleteResourcePolicyResponse")
    DisabledOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#DisabledOperationException", name: "DisabledOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EncryptionAtRestOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#EncryptionAtRestOptions", name: "EncryptionAtRestOptions")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#ErrorMessage", name: "ErrorMessage")
    GetPipelineBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetPipelineBlueprintRequest", name: "GetPipelineBlueprintRequest")
    GetPipelineBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetPipelineBlueprintResponse", name: "GetPipelineBlueprintResponse")
    GetPipelineChangeProgressRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetPipelineChangeProgressRequest", name: "GetPipelineChangeProgressRequest")
    GetPipelineChangeProgressResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetPipelineChangeProgressResponse", name: "GetPipelineChangeProgressResponse")
    GetPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetPipelineRequest", name: "GetPipelineRequest")
    GetPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetPipelineResponse", name: "GetPipelineResponse")
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetResourcePolicyRequest", name: "GetResourcePolicyRequest")
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#GetResourcePolicyResponse", name: "GetResourcePolicyResponse")
    IngestEndpointUrlsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#IngestEndpointUrlsList", name: "IngestEndpointUrlsList")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.osis#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#InvalidPaginationTokenException", name: "InvalidPaginationTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 7, "max" => 2048}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ListPipelineBlueprintsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelineBlueprintsRequest", name: "ListPipelineBlueprintsRequest")
    ListPipelineBlueprintsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelineBlueprintsResponse", name: "ListPipelineBlueprintsResponse")
    ListPipelineEndpointConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelineEndpointConnectionsRequest", name: "ListPipelineEndpointConnectionsRequest")
    ListPipelineEndpointConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelineEndpointConnectionsResponse", name: "ListPipelineEndpointConnectionsResponse")
    ListPipelineEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelineEndpointsRequest", name: "ListPipelineEndpointsRequest")
    ListPipelineEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelineEndpointsResponse", name: "ListPipelineEndpointsResponse")
    ListPipelinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelinesRequest", name: "ListPipelinesRequest")
    ListPipelinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListPipelinesResponse", name: "ListPipelinesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#LogGroup", name: "LogGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^\\/aws\\/vendedlogs\\/[\\.\\-_/#A-Za-z0-9]+$"})
    LogPublishingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#LogPublishingOptions", name: "LogPublishingOptions")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.osis#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}, "smithy.api#pattern" => "^([\\s\\S]*)$"})
    Pipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#Pipeline", name: "Pipeline")
    PipelineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#PipelineArn", name: "PipelineArn", traits: {"smithy.api#length" => {"min" => 46, "max" => 76}, "smithy.api#pattern" => "^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b):osis:.+:pipeline\\/.+$"})
    PipelineBlueprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineBlueprint", name: "PipelineBlueprint")
    PipelineBlueprintSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineBlueprintSummary", name: "PipelineBlueprintSummary")
    PipelineBlueprintsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#PipelineBlueprintsSummaryList", name: "PipelineBlueprintsSummaryList")
    PipelineConfigurationBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#PipelineConfigurationBody", name: "PipelineConfigurationBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}})
    PipelineDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineDestination", name: "PipelineDestination")
    PipelineDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#PipelineDestinationList", name: "PipelineDestinationList")
    PipelineEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineEndpoint", name: "PipelineEndpoint")
    PipelineEndpointConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineEndpointConnection", name: "PipelineEndpointConnection")
    PipelineEndpointConnectionsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#PipelineEndpointConnectionsSummaryList", name: "PipelineEndpointConnectionsSummaryList")
    PipelineEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#PipelineEndpointId", name: "PipelineEndpointId", traits: {"smithy.api#length" => {"min" => 3, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]+$"})
    PipelineEndpointIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#PipelineEndpointIdsList", name: "PipelineEndpointIdsList")
    PipelineEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.osis#PipelineEndpointStatus", name: "PipelineEndpointStatus")
    PipelineEndpointVpcOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineEndpointVpcOptions", name: "PipelineEndpointVpcOptions")
    PipelineEndpointsSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#PipelineEndpointsSummaryList", name: "PipelineEndpointsSummaryList")
    PipelineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#PipelineName", name: "PipelineName", traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    PipelineRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#PipelineRoleArn", name: "PipelineRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b|aws\\-iso\\-e|aws\\-iso\\-f):iam::[0-9]+:role\\/.*$"})
    PipelineStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.osis#PipelineStatus", name: "PipelineStatus")
    PipelineStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineStatusReason", name: "PipelineStatusReason")
    PipelineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PipelineSummary", name: "PipelineSummary")
    PipelineSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#PipelineSummaryList", name: "PipelineSummaryList")
    PipelineUnits = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.osis#PipelineUnits", name: "PipelineUnits", traits: {"smithy.api#range" => {"min" => 1}})
    PutResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PutResourcePolicyRequest", name: "PutResourcePolicyRequest")
    PutResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#PutResourcePolicyResponse", name: "PutResourcePolicyResponse")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 2, "max" => 204800}})
    RevokePipelineEndpointConnectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#RevokePipelineEndpointConnectionsRequest", name: "RevokePipelineEndpointConnectionsRequest")
    RevokePipelineEndpointConnectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#RevokePipelineEndpointConnectionsResponse", name: "RevokePipelineEndpointConnectionsResponse")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-\\w{8}(\\w{9})?$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    ServiceVpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ServiceVpcEndpoint", name: "ServiceVpcEndpoint")
    ServiceVpcEndpointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#ServiceVpcEndpointsList", name: "ServiceVpcEndpointsList")
    StartPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#StartPipelineRequest", name: "StartPipelineRequest")
    StartPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#StartPipelineResponse", name: "StartPipelineResponse")
    StopPipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#StopPipelineRequest", name: "StopPipelineRequest")
    StopPipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#StopPipelineResponse", name: "StopPipelineResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#StringList", name: "StringList")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-\\w{8}(\\w{9})?$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.osis#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.osis#Timestamp", name: "Timestamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#UntagResourceResponse", name: "UntagResourceResponse")
    UpdatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#UpdatePipelineRequest", name: "UpdatePipelineRequest")
    UpdatePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#UpdatePipelineResponse", name: "UpdatePipelineResponse")
    ValidatePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ValidatePipelineRequest", name: "ValidatePipelineRequest")
    ValidatePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ValidatePipelineResponse", name: "ValidatePipelineResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#ValidationMessage", name: "ValidationMessage")
    ValidationMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#ValidationMessageList", name: "ValidationMessageList")
    VpcAttachmentOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#VpcAttachmentOptions", name: "VpcAttachmentOptions")
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#VpcEndpoint", name: "VpcEndpoint")
    VpcEndpointManagement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.osis#VpcEndpointManagement", name: "VpcEndpointManagement")
    VpcEndpointServiceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.osis#VpcEndpointServiceName", name: "VpcEndpointServiceName")
    VpcEndpointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.osis#VpcEndpointsList", name: "VpcEndpointsList")
    VpcOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.osis#VpcOptions", name: "VpcOptions")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BufferOptions.add_member(:persistent_buffer_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PersistentBufferEnabled", traits: {"smithy.api#required" => {}}))
    BufferOptions.type = Types::BufferOptions
    ChangeProgressStage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    ChangeProgressStage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeProgressStageStatuses, name: "Status"))
    ChangeProgressStage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ChangeProgressStage.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    ChangeProgressStage.type = Types::ChangeProgressStage
    ChangeProgressStageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeProgressStage, name: "member"))
    ChangeProgressStageStatuses.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeProgressStageStatuses.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChangeProgressStageStatuses.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ChangeProgressStageStatuses.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChangeProgressStatus.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    ChangeProgressStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeProgressStatuses, name: "Status"))
    ChangeProgressStatus.add_member(:total_number_of_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalNumberOfStages", traits: {"smithy.api#default" => 0}))
    ChangeProgressStatus.add_member(:change_progress_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeProgressStageList, name: "ChangeProgressStages"))
    ChangeProgressStatus.type = Types::ChangeProgressStatus
    ChangeProgressStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeProgressStatus, name: "member"))
    ChangeProgressStatuses.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ChangeProgressStatuses.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ChangeProgressStatuses.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ChangeProgressStatuses.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CloudWatchLogDestination.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroup, name: "LogGroup", traits: {"smithy.api#required" => {}}))
    CloudWatchLogDestination.type = Types::CloudWatchLogDestination
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    CreatePipelineEndpointRequest.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn", traits: {"smithy.api#required" => {}}))
    CreatePipelineEndpointRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointVpcOptions, name: "VpcOptions", traits: {"smithy.api#required" => {}}))
    CreatePipelineEndpointRequest.type = Types::CreatePipelineEndpointRequest
    CreatePipelineEndpointResponse.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn"))
    CreatePipelineEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointId, name: "EndpointId"))
    CreatePipelineEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointStatus, name: "Status"))
    CreatePipelineEndpointResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    CreatePipelineEndpointResponse.type = Types::CreatePipelineEndpointResponse
    CreatePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:min_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineUnits, name: "MinUnits", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:max_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineUnits, name: "MaxUnits", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:pipeline_configuration_body, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineConfigurationBody, name: "PipelineConfigurationBody", traits: {"smithy.api#required" => {}}))
    CreatePipelineRequest.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LogPublishingOptions, name: "LogPublishingOptions"))
    CreatePipelineRequest.add_member(:vpc_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOptions, name: "VpcOptions"))
    CreatePipelineRequest.add_member(:buffer_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferOptions, name: "BufferOptions"))
    CreatePipelineRequest.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAtRestOptions, name: "EncryptionAtRestOptions"))
    CreatePipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePipelineRequest.add_member(:pipeline_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineRoleArn, name: "PipelineRoleArn"))
    CreatePipelineRequest.type = Types::CreatePipelineRequest
    CreatePipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipeline, name: "Pipeline"))
    CreatePipelineResponse.type = Types::CreatePipelineResponse
    DeletePipelineEndpointRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointId, name: "EndpointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipelineEndpointRequest.type = Types::DeletePipelineEndpointRequest
    DeletePipelineEndpointResponse.type = Types::DeletePipelineEndpointResponse
    DeletePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePipelineRequest.type = Types::DeletePipelineRequest
    DeletePipelineResponse.type = Types::DeletePipelineResponse
    DeleteResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyRequest.type = Types::DeleteResourcePolicyRequest
    DeleteResourcePolicyResponse.type = Types::DeleteResourcePolicyResponse
    DisabledOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DisabledOperationException.type = Types::DisabledOperationException
    EncryptionAtRestOptions.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn", traits: {"smithy.api#required" => {}}))
    EncryptionAtRestOptions.type = Types::EncryptionAtRestOptions
    GetPipelineBlueprintRequest.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BlueprintName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPipelineBlueprintRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintFormat, name: "Format", traits: {"smithy.api#httpQuery" => "format"}))
    GetPipelineBlueprintRequest.type = Types::GetPipelineBlueprintRequest
    GetPipelineBlueprintResponse.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineBlueprint, name: "Blueprint"))
    GetPipelineBlueprintResponse.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Format"))
    GetPipelineBlueprintResponse.type = Types::GetPipelineBlueprintResponse
    GetPipelineChangeProgressRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPipelineChangeProgressRequest.type = Types::GetPipelineChangeProgressRequest
    GetPipelineChangeProgressResponse.add_member(:change_progress_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeProgressStatusList, name: "ChangeProgressStatuses"))
    GetPipelineChangeProgressResponse.type = Types::GetPipelineChangeProgressResponse
    GetPipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPipelineRequest.type = Types::GetPipelineRequest
    GetPipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipeline, name: "Pipeline"))
    GetPipelineResponse.type = Types::GetPipelineResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "ResourceArn"))
    GetResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy"))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    IngestEndpointUrlsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalException.type = Types::InternalException
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListPipelineBlueprintsRequest.type = Types::ListPipelineBlueprintsRequest
    ListPipelineBlueprintsResponse.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineBlueprintsSummaryList, name: "Blueprints"))
    ListPipelineBlueprintsResponse.type = Types::ListPipelineBlueprintsResponse
    ListPipelineEndpointConnectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPipelineEndpointConnectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPipelineEndpointConnectionsRequest.type = Types::ListPipelineEndpointConnectionsRequest
    ListPipelineEndpointConnectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPipelineEndpointConnectionsResponse.add_member(:pipeline_endpoint_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointConnectionsSummaryList, name: "PipelineEndpointConnections"))
    ListPipelineEndpointConnectionsResponse.type = Types::ListPipelineEndpointConnectionsResponse
    ListPipelineEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPipelineEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPipelineEndpointsRequest.type = Types::ListPipelineEndpointsRequest
    ListPipelineEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPipelineEndpointsResponse.add_member(:pipeline_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointsSummaryList, name: "PipelineEndpoints"))
    ListPipelineEndpointsResponse.type = Types::ListPipelineEndpointsResponse
    ListPipelinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPipelinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPipelinesRequest.type = Types::ListPipelinesRequest
    ListPipelinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListPipelinesResponse.add_member(:pipelines, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineSummaryList, name: "Pipelines"))
    ListPipelinesResponse.type = Types::ListPipelinesResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "Arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogPublishingOptions.add_member(:is_logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsLoggingEnabled"))
    LogPublishingOptions.add_member(:cloud_watch_log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogDestination, name: "CloudWatchLogDestination"))
    LogPublishingOptions.type = Types::LogPublishingOptions
    Pipeline.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PipelineName"))
    Pipeline.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PipelineArn"))
    Pipeline.add_member(:min_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MinUnits", traits: {"smithy.api#default" => 0}))
    Pipeline.add_member(:max_units, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxUnits", traits: {"smithy.api#default" => 0}))
    Pipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, name: "Status"))
    Pipeline.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatusReason, name: "StatusReason"))
    Pipeline.add_member(:pipeline_configuration_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PipelineConfigurationBody"))
    Pipeline.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    Pipeline.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    Pipeline.add_member(:ingest_endpoint_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestEndpointUrlsList, name: "IngestEndpointUrls"))
    Pipeline.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LogPublishingOptions, name: "LogPublishingOptions"))
    Pipeline.add_member(:vpc_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointsList, name: "VpcEndpoints"))
    Pipeline.add_member(:buffer_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferOptions, name: "BufferOptions"))
    Pipeline.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAtRestOptions, name: "EncryptionAtRestOptions"))
    Pipeline.add_member(:vpc_endpoint_service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcEndpointService"))
    Pipeline.add_member(:service_vpc_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVpcEndpointsList, name: "ServiceVpcEndpoints"))
    Pipeline.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDestinationList, name: "Destinations"))
    Pipeline.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Pipeline.add_member(:pipeline_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineRoleArn, name: "PipelineRoleArn"))
    Pipeline.type = Types::Pipeline
    PipelineBlueprint.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BlueprintName"))
    PipelineBlueprint.add_member(:pipeline_configuration_body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PipelineConfigurationBody"))
    PipelineBlueprint.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    PipelineBlueprint.add_member(:display_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayDescription"))
    PipelineBlueprint.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Service"))
    PipelineBlueprint.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UseCase"))
    PipelineBlueprint.type = Types::PipelineBlueprint
    PipelineBlueprintSummary.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BlueprintName"))
    PipelineBlueprintSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    PipelineBlueprintSummary.add_member(:display_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayDescription"))
    PipelineBlueprintSummary.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Service"))
    PipelineBlueprintSummary.add_member(:use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UseCase"))
    PipelineBlueprintSummary.type = Types::PipelineBlueprintSummary
    PipelineBlueprintsSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineBlueprintSummary, name: "member"))
    PipelineDestination.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceName"))
    PipelineDestination.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Endpoint"))
    PipelineDestination.type = Types::PipelineDestination
    PipelineDestinationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDestination, name: "member"))
    PipelineEndpoint.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn"))
    PipelineEndpoint.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointId, name: "EndpointId"))
    PipelineEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointStatus, name: "Status"))
    PipelineEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    PipelineEndpoint.add_member(:vpc_options, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointVpcOptions, name: "VpcOptions"))
    PipelineEndpoint.add_member(:ingest_endpoint_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IngestEndpointUrl"))
    PipelineEndpoint.type = Types::PipelineEndpoint
    PipelineEndpointConnection.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn"))
    PipelineEndpointConnection.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointId, name: "EndpointId"))
    PipelineEndpointConnection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointStatus, name: "Status"))
    PipelineEndpointConnection.add_member(:vpc_endpoint_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "VpcEndpointOwner"))
    PipelineEndpointConnection.type = Types::PipelineEndpointConnection
    PipelineEndpointConnectionsSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointConnection, name: "member"))
    PipelineEndpointIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointId, name: "member"))
    PipelineEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    PipelineEndpointStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PipelineEndpointStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PipelineEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    PipelineEndpointStatus.add_member(:revoking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKING", traits: {"smithy.api#enumValue" => "REVOKING"}))
    PipelineEndpointStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "REVOKED"}))
    PipelineEndpointVpcOptions.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds"))
    PipelineEndpointVpcOptions.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    PipelineEndpointVpcOptions.type = Types::PipelineEndpointVpcOptions
    PipelineEndpointsSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpoint, name: "member"))
    PipelineStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    PipelineStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PipelineStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    PipelineStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    PipelineStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PipelineStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    PipelineStatus.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    PipelineStatus.add_member(:start_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_FAILED", traits: {"smithy.api#enumValue" => "START_FAILED"}))
    PipelineStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    PipelineStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    PipelineStatusReason.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    PipelineStatusReason.type = Types::PipelineStatusReason
    PipelineSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, name: "Status"))
    PipelineSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatusReason, name: "StatusReason"))
    PipelineSummary.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName"))
    PipelineSummary.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn"))
    PipelineSummary.add_member(:min_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineUnits, name: "MinUnits"))
    PipelineSummary.add_member(:max_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineUnits, name: "MaxUnits"))
    PipelineSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    PipelineSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    PipelineSummary.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDestinationList, name: "Destinations"))
    PipelineSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PipelineSummary.type = Types::PipelineSummary
    PipelineSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineSummary, name: "member"))
    PutResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyRequest.type = Types::PutResourcePolicyRequest
    PutResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "ResourceArn"))
    PutResourcePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy"))
    PutResourcePolicyResponse.type = Types::PutResourcePolicyResponse
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevokePipelineEndpointConnectionsRequest.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn", traits: {"smithy.api#required" => {}}))
    RevokePipelineEndpointConnectionsRequest.add_member(:endpoint_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineEndpointIdsList, name: "EndpointIds", traits: {"smithy.api#required" => {}}))
    RevokePipelineEndpointConnectionsRequest.type = Types::RevokePipelineEndpointConnectionsRequest
    RevokePipelineEndpointConnectionsResponse.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "PipelineArn"))
    RevokePipelineEndpointConnectionsResponse.type = Types::RevokePipelineEndpointConnectionsResponse
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceVpcEndpoint.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointServiceName, name: "ServiceName"))
    ServiceVpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcEndpointId"))
    ServiceVpcEndpoint.type = Types::ServiceVpcEndpoint
    ServiceVpcEndpointsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVpcEndpoint, name: "member"))
    StartPipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartPipelineRequest.type = Types::StartPipelineRequest
    StartPipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipeline, name: "Pipeline"))
    StartPipelineResponse.type = Types::StartPipelineResponse
    StopPipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopPipelineRequest.type = Types::StopPipelineRequest
    StopPipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipeline, name: "Pipeline"))
    StopPipelineResponse.type = Types::StopPipelineResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "Arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "Arn", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdatePipelineRequest.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "PipelineName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePipelineRequest.add_member(:min_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineUnits, name: "MinUnits"))
    UpdatePipelineRequest.add_member(:max_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineUnits, name: "MaxUnits"))
    UpdatePipelineRequest.add_member(:pipeline_configuration_body, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineConfigurationBody, name: "PipelineConfigurationBody"))
    UpdatePipelineRequest.add_member(:log_publishing_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LogPublishingOptions, name: "LogPublishingOptions"))
    UpdatePipelineRequest.add_member(:buffer_options, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferOptions, name: "BufferOptions"))
    UpdatePipelineRequest.add_member(:encryption_at_rest_options, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionAtRestOptions, name: "EncryptionAtRestOptions"))
    UpdatePipelineRequest.add_member(:pipeline_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineRoleArn, name: "PipelineRoleArn"))
    UpdatePipelineRequest.type = Types::UpdatePipelineRequest
    UpdatePipelineResponse.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: Pipeline, name: "Pipeline"))
    UpdatePipelineResponse.type = Types::UpdatePipelineResponse
    ValidatePipelineRequest.add_member(:pipeline_configuration_body, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineConfigurationBody, name: "PipelineConfigurationBody", traits: {"smithy.api#required" => {}}))
    ValidatePipelineRequest.type = Types::ValidatePipelineRequest
    ValidatePipelineResponse.add_member(:is_valid, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isValid"))
    ValidatePipelineResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessageList, name: "Errors"))
    ValidatePipelineResponse.type = Types::ValidatePipelineResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    ValidationMessage.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationMessage.type = Types::ValidationMessage
    ValidationMessageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMessage, name: "member"))
    VpcAttachmentOptions.add_member(:attach_to_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AttachToVpc", traits: {"smithy.api#required" => {}}))
    VpcAttachmentOptions.add_member(:cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: CidrBlock, name: "CidrBlock"))
    VpcAttachmentOptions.type = Types::VpcAttachmentOptions
    VpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    VpcEndpoint.add_member(:vpc_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcOptions, name: "VpcOptions"))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointManagement.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    VpcEndpointManagement.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    VpcEndpointServiceName.add_member(:opensearch_serverless, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPENSEARCH_SERVERLESS", traits: {"smithy.api#enumValue" => "OPENSEARCH_SERVERLESS"}))
    VpcEndpointsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "member"))
    VpcOptions.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcOptions.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds"))
    VpcOptions.add_member(:vpc_attachment_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcAttachmentOptions, name: "VpcAttachmentOptions"))
    VpcOptions.add_member(:vpc_endpoint_management, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointManagement, name: "VpcEndpointManagement"))
    VpcOptions.type = Types::VpcOptions

    AmazonOpenSearchIngestionService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.osis#AmazonOpenSearchIngestionService"
      service.name = "AmazonOpenSearchIngestionService"
      service.version = "2022-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OSIS", "arnNamespace" => "osis", "cloudFormationName" => "OSIS", "cloudTrailEventSource" => "osis.amazonaws.com", "endpointPrefix" => "osis"}, "aws.auth#sigv4" => {"name" => "osis"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon OpenSearch Ingestion", "smithy.api#xmlNamespace" => {"uri" => "http://osis.amazonaws.com/doc/2022-01-01"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://osis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://osis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://osis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://osis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = CreatePipelineRequest
        operation.output = CreatePipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/createPipeline", "code" => 200}}
      end)
      service.add_operation(:create_pipeline_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#CreatePipelineEndpoint"
        operation.name = "CreatePipelineEndpoint"
        operation.input = CreatePipelineEndpointRequest
        operation.output = CreatePipelineEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/createPipelineEndpoint", "code" => 200}}
      end)
      service.add_operation(:delete_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = DeletePipelineRequest
        operation.output = DeletePipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2022-01-01/osis/deletePipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:delete_pipeline_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#DeletePipelineEndpoint"
        operation.name = "DeletePipelineEndpoint"
        operation.input = DeletePipelineEndpointRequest
        operation.output = DeletePipelineEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2022-01-01/osis/deletePipelineEndpoint/{EndpointId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyRequest
        operation.output = DeleteResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2022-01-01/osis/resourcePolicy/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetPipeline"
        operation.name = "GetPipeline"
        operation.input = GetPipelineRequest
        operation.output = GetPipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/getPipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:get_pipeline_blueprint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetPipelineBlueprint"
        operation.name = "GetPipelineBlueprint"
        operation.input = GetPipelineBlueprintRequest
        operation.output = GetPipelineBlueprintResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}", "code" => 200}}
      end)
      service.add_operation(:get_pipeline_change_progress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetPipelineChangeProgress"
        operation.name = "GetPipelineChangeProgress"
        operation.input = GetPipelineChangeProgressRequest
        operation.output = GetPipelineChangeProgressResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyRequest
        operation.output = GetResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/resourcePolicy/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_pipeline_blueprints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListPipelineBlueprints"
        operation.name = "ListPipelineBlueprints"
        operation.input = ListPipelineBlueprintsRequest
        operation.output = ListPipelineBlueprintsResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << InvalidPaginationTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/listPipelineBlueprints", "code" => 200}}
      end)
      service.add_operation(:list_pipeline_endpoint_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListPipelineEndpointConnections"
        operation.name = "ListPipelineEndpointConnections"
        operation.input = ListPipelineEndpointConnectionsRequest
        operation.output = ListPipelineEndpointConnectionsResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/listPipelineEndpointConnections", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelineEndpointConnections.new
      end)
      service.add_operation(:list_pipeline_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListPipelineEndpoints"
        operation.name = "ListPipelineEndpoints"
        operation.input = ListPipelineEndpointsRequest
        operation.output = ListPipelineEndpointsResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/listPipelineEndpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelineEndpoints.new
      end)
      service.add_operation(:list_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = ListPipelinesRequest
        operation.output = ListPipelinesResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << InvalidPaginationTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/listPipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2022-01-01/osis/listTagsForResource", "code" => 200}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyRequest
        operation.output = PutResourcePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/resourcePolicy/{ResourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:revoke_pipeline_endpoint_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#RevokePipelineEndpointConnections"
        operation.name = "RevokePipelineEndpointConnections"
        operation.input = RevokePipelineEndpointConnectionsRequest
        operation.output = RevokePipelineEndpointConnectionsResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/revokePipelineEndpointConnections", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#StartPipeline"
        operation.name = "StartPipeline"
        operation.input = StartPipelineRequest
        operation.output = StartPipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/startPipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:stop_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#StopPipeline"
        operation.name = "StopPipeline"
        operation.input = StopPipelineRequest
        operation.output = StopPipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/stopPipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/tagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/untagResource", "code" => 200}}
      end)
      service.add_operation(:update_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = UpdatePipelineRequest
        operation.output = UpdatePipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2022-01-01/osis/updatePipeline/{PipelineName}", "code" => 200}}
      end)
      service.add_operation(:validate_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.osis#ValidatePipeline"
        operation.name = "ValidatePipeline"
        operation.input = ValidatePipelineRequest
        operation.output = ValidatePipelineResponse
        operation.errors << AccessDeniedException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2022-01-01/osis/validatePipeline", "code" => 200}}
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
