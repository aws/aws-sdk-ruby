# frozen_string_literal: true

# This is generated code!

module Aws::DSQL
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+$"})
    BypassPolicyLockoutSafetyCheck = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dsql#BypassPolicyLockoutSafetyCheck", name: "BypassPolicyLockoutSafetyCheck")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[!-~]+$"})
    ClusterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClusterArn", name: "ClusterArn", traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.dsql#DSQL", "resource" => "com.amazonaws.dsql#Cluster"}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:dsql:[a-z0-9-]{1,20}:[0-9]{12}:cluster/[a-z0-9]{26}$"})
    ClusterArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#ClusterArnList", name: "ClusterArnList", traits: {"smithy.api#uniqueItems" => {}})
    ClusterCreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dsql#ClusterCreationTime", name: "ClusterCreationTime")
    ClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClusterId", name: "ClusterId", traits: {"smithy.api#pattern" => "^[a-z0-9]{26}$"})
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#ClusterList", name: "ClusterList", traits: {"smithy.api#uniqueItems" => {}})
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#ClusterStatus", name: "ClusterStatus")
    ClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ClusterSummary", name: "ClusterSummary")
    ClusterVpcEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ClusterVpcEndpoint", name: "ClusterVpcEndpoint", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#CreateClusterInput", name: "CreateClusterInput")
    CreateClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#CreateClusterOutput", name: "CreateClusterOutput")
    CreateStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#CreateStreamInput", name: "CreateStreamInput")
    CreateStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#CreateStreamOutput", name: "CreateStreamOutput")
    DeleteClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteClusterInput", name: "DeleteClusterInput")
    DeleteClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteClusterOutput", name: "DeleteClusterOutput")
    DeleteClusterPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteClusterPolicyInput", name: "DeleteClusterPolicyInput")
    DeleteClusterPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteClusterPolicyOutput", name: "DeleteClusterPolicyOutput")
    DeleteStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteStreamInput", name: "DeleteStreamInput")
    DeleteStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#DeleteStreamOutput", name: "DeleteStreamOutput")
    DeletionProtectionEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dsql#DeletionProtectionEnabled", name: "DeletionProtectionEnabled")
    EncryptionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#EncryptionDetails", name: "EncryptionDetails")
    EncryptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#EncryptionStatus", name: "EncryptionStatus")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#EncryptionType", name: "EncryptionType")
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#Endpoint", name: "Endpoint", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    GetClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetClusterInput", name: "GetClusterInput")
    GetClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetClusterOutput", name: "GetClusterOutput")
    GetClusterPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetClusterPolicyInput", name: "GetClusterPolicyInput")
    GetClusterPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetClusterPolicyOutput", name: "GetClusterPolicyOutput")
    GetStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetStreamInput", name: "GetStreamInput")
    GetStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetStreamOutput", name: "GetStreamOutput")
    GetVpcEndpointServiceNameInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetVpcEndpointServiceNameInput", name: "GetVpcEndpointServiceNameInput")
    GetVpcEndpointServiceNameOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#GetVpcEndpointServiceNameOutput", name: "GetVpcEndpointServiceNameOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KinesisStreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#KinesisStreamArn", name: "KinesisStreamArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:kinesis:[a-z0-9-]*:[0-9]{12}:stream/[a-zA-Z0-9+=,.@_/\\-]+$"})
    KinesisTargetDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#KinesisTargetDefinition", name: "KinesisTargetDefinition")
    KmsEncryptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#KmsEncryptionKey", name: "KmsEncryptionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#KmsKeyArn", name: "KmsKeyArn", traits: {"aws.api#arnReference" => {"type" => "AWS::KMS::Key"}})
    ListClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListClustersInput", name: "ListClustersInput")
    ListClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListClustersOutput", name: "ListClustersOutput")
    ListStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListStreamsInput", name: "ListStreamsInput")
    ListStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListStreamsOutput", name: "ListStreamsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dsql#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultiRegionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#MultiRegionProperties", name: "MultiRegionProperties")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#NextToken", name: "NextToken")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}})
    PolicyVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#PolicyVersion", name: "PolicyVersion")
    PutClusterPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#PutClusterPolicyInput", name: "PutClusterPolicyInput")
    PutClusterPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#PutClusterPolicyOutput", name: "PutClusterPolicyOutput")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#Region", name: "Region", traits: {"smithy.api#length" => {"max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role(/[a-zA-Z0-9+=,.@_-]+)+$"})
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^com\\.amazonaws\\.[a-z0-9-]+\\.dsql[a-z0-9-]*$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#StatusReason", name: "StatusReason")
    StreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#StreamArn", name: "StreamArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:dsql:[a-z0-9-]{1,20}:[0-9]{12}:cluster/[a-z0-9]{26}/stream/[a-z0-9]{26}$"})
    StreamCreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dsql#StreamCreationTime", name: "StreamCreationTime")
    StreamFailureErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#StreamFailureErrorCode", name: "StreamFailureErrorCode")
    StreamFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#StreamFormat", name: "StreamFormat")
    StreamId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#StreamId", name: "StreamId", traits: {"smithy.api#pattern" => "^[a-z0-9]{26}$"})
    StreamList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#StreamList", name: "StreamList", traits: {"smithy.api#uniqueItems" => {}})
    StreamOrdering = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#StreamOrdering", name: "StreamOrdering")
    StreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#StreamStatus", name: "StreamStatus")
    StreamSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#StreamSummary", name: "StreamSummary")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:/=+\\-@ ]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dsql#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dsql#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:/=+\\-@ ]*$"})
    TargetDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.dsql#TargetDefinition", name: "TargetDefinition")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#UntagResourceInput", name: "UntagResourceInput")
    UpdateClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#UpdateClusterInput", name: "UpdateClusterInput")
    UpdateClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#UpdateClusterOutput", name: "UpdateClusterOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dsql#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dsql#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dsql#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ClusterArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArn, name: "member"))
    ClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSummary, name: "member"))
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "IDLE"}))
    ClusterStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:pending_setup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_SETUP", traits: {"smithy.api#enumValue" => "PENDING_SETUP"}))
    ClusterStatus.add_member(:pending_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETE", traits: {"smithy.api#enumValue" => "PENDING_DELETE"}))
    ClusterSummary.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ClusterSummary.type = Types::ClusterSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateClusterInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "deletionProtectionEnabled", traits: {"smithy.api#default" => true}))
    CreateClusterInput.add_member(:kms_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionKey, name: "kmsEncryptionKey", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterInput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionProperties, name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterInput.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::MemberShape.new(target: BypassPolicyLockoutSafetyCheck, name: "bypassPolicyLockoutSafetyCheck", traits: {"smithy.api#default" => false, "smithy.api#notProperty" => {}}))
    CreateClusterInput.type = Types::CreateClusterInput
    CreateClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionProperties, name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterOutput.add_member(:encryption_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionDetails, name: "encryptionDetails", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    CreateClusterOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterOutput.type = Types::CreateClusterOutput
    CreateStreamInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStreamInput.add_member(:target_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDefinition, name: "targetDefinition", traits: {"smithy.api#required" => {}}))
    CreateStreamInput.add_member(:ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamOrdering, name: "ordering", traits: {"smithy.api#required" => {}}))
    CreateStreamInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamFormat, name: "format", traits: {"smithy.api#required" => {}}))
    CreateStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateStreamInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStreamInput.type = Types::CreateStreamInput
    CreateStreamOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.add_member(:stream_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "streamIdentifier", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.add_member(:ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamOrdering, name: "ordering", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamFormat, name: "format", traits: {"smithy.api#required" => {}}))
    CreateStreamOutput.type = Types::CreateStreamOutput
    DeleteClusterInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "client-token", "smithy.api#idempotencyToken" => {}}))
    DeleteClusterInput.type = Types::DeleteClusterInput
    DeleteClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DeleteClusterOutput.type = Types::DeleteClusterOutput
    DeleteClusterPolicyInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteClusterPolicyInput.add_member(:expected_policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "expectedPolicyVersion", traits: {"smithy.api#httpQuery" => "expected-policy-version", "smithy.api#notProperty" => {}}))
    DeleteClusterPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "client-token", "smithy.api#idempotencyToken" => {}}))
    DeleteClusterPolicyInput.type = Types::DeleteClusterPolicyInput
    DeleteClusterPolicyOutput.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    DeleteClusterPolicyOutput.type = Types::DeleteClusterPolicyOutput
    DeleteStreamInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStreamInput.add_member(:stream_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "streamIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStreamInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "client-token", "smithy.api#idempotencyToken" => {}}))
    DeleteStreamInput.type = Types::DeleteStreamInput
    DeleteStreamOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteStreamOutput.add_member(:stream_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "streamIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteStreamOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteStreamOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DeleteStreamOutput.type = Types::DeleteStreamOutput
    EncryptionDetails.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionDetails.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    EncryptionDetails.add_member(:encryption_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionStatus, name: "encryptionStatus", traits: {"smithy.api#required" => {}}))
    EncryptionDetails.type = Types::EncryptionDetails
    EncryptionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EncryptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:kms_key_inaccessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_INACCESSIBLE", traits: {"smithy.api#enumValue" => "KMS_KEY_INACCESSIBLE"}))
    EncryptionStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    EncryptionType.add_member(:aws_owned_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KMS_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KMS_KEY"}))
    EncryptionType.add_member(:customer_managed_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KMS_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KMS_KEY"}))
    GetClusterInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClusterInput.type = Types::GetClusterInput
    GetClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "deletionProtectionEnabled", traits: {"smithy.api#required" => {}}))
    GetClusterOutput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionProperties, name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.add_member(:encryption_details, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionDetails, name: "encryptionDetails", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint", traits: {"smithy.api#notProperty" => {}}))
    GetClusterOutput.type = Types::GetClusterOutput
    GetClusterPolicyInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClusterPolicyInput.type = Types::GetClusterPolicyInput
    GetClusterPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetClusterPolicyOutput.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetClusterPolicyOutput.type = Types::GetClusterPolicyOutput
    GetStreamInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamInput.add_member(:stream_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "streamIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamInput.type = Types::GetStreamInput
    GetStreamOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "streamIdentifier", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamOrdering, name: "ordering", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamFormat, name: "format", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:target_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDefinition, name: "targetDefinition", traits: {"smithy.api#notProperty" => {}}))
    GetStreamOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason", traits: {"smithy.api#notProperty" => {}}))
    GetStreamOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetStreamOutput.type = Types::GetStreamOutput
    GetVpcEndpointServiceNameInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVpcEndpointServiceNameInput.type = Types::GetVpcEndpointServiceNameInput
    GetVpcEndpointServiceNameOutput.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "serviceName", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetVpcEndpointServiceNameOutput.add_member(:cluster_vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVpcEndpoint, name: "clusterVpcEndpoint", traits: {"smithy.api#notProperty" => {}}))
    GetVpcEndpointServiceNameOutput.type = Types::GetVpcEndpointServiceNameOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    KinesisTargetDefinition.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamArn, name: "streamArn", traits: {"smithy.api#required" => {}}))
    KinesisTargetDefinition.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    KinesisTargetDefinition.type = Types::KinesisTargetDefinition
    ListClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "max-results"}))
    ListClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListClustersInput.type = Types::ListClustersInput
    ListClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListClustersOutput.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterList, name: "clusters", traits: {"smithy.api#required" => {}}))
    ListClustersOutput.type = Types::ListClustersOutput
    ListStreamsInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStreamsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "max-results"}))
    ListStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListStreamsOutput.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamList, name: "streams", traits: {"smithy.api#required" => {}}))
    ListStreamsOutput.type = Types::ListStreamsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MultiRegionProperties.add_member(:witness_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "witnessRegion"))
    MultiRegionProperties.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArnList, name: "clusters"))
    MultiRegionProperties.type = Types::MultiRegionProperties
    PutClusterPolicyInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutClusterPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    PutClusterPolicyInput.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::MemberShape.new(target: BypassPolicyLockoutSafetyCheck, name: "bypassPolicyLockoutSafetyCheck", traits: {"smithy.api#default" => false, "smithy.api#notProperty" => {}}))
    PutClusterPolicyInput.add_member(:expected_policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "expectedPolicyVersion", traits: {"smithy.api#notProperty" => {}}))
    PutClusterPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutClusterPolicyInput.type = Types::PutClusterPolicyInput
    PutClusterPolicyOutput.add_member(:policy_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyVersion, name: "policyVersion", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    PutClusterPolicyOutput.type = Types::PutClusterPolicyOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StatusReason.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamFailureErrorCode, name: "error", traits: {"smithy.api#required" => {}}))
    StatusReason.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    StatusReason.type = Types::StatusReason
    StreamFailureErrorCode.add_member(:kinesis_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_THROUGHPUT_EXCEEDED", traits: {"smithy.api#enumValue" => "KINESIS_THROUGHPUT_EXCEEDED"}))
    StreamFailureErrorCode.add_member(:kinesis_stream_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_STREAM_NOT_FOUND", traits: {"smithy.api#enumValue" => "KINESIS_STREAM_NOT_FOUND"}))
    StreamFailureErrorCode.add_member(:role_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ROLE_ACCESS_DENIED"}))
    StreamFailureErrorCode.add_member(:kinesis_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "KINESIS_ACCESS_DENIED"}))
    StreamFailureErrorCode.add_member(:kinesis_kms_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_KMS_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "KINESIS_KMS_ACCESS_DENIED"}))
    StreamFailureErrorCode.add_member(:kinesis_oversize_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_OVERSIZE_RECORD", traits: {"smithy.api#enumValue" => "KINESIS_OVERSIZE_RECORD"}))
    StreamFailureErrorCode.add_member(:cluster_cmk_inaccessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_CMK_INACCESSIBLE", traits: {"smithy.api#enumValue" => "CLUSTER_CMK_INACCESSIBLE"}))
    StreamFailureErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    StreamFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    StreamList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSummary, name: "member"))
    StreamOrdering.add_member(:unordered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNORDERED", traits: {"smithy.api#enumValue" => "UNORDERED"}))
    StreamStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    StreamStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StreamStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    StreamStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StreamStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    StreamSummary.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:stream_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "streamIdentifier", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "arn", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StreamSummary.type = Types::StreamSummary
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TargetDefinition.add_member(:kinesis, Types::TargetDefinition::Kinesis, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisTargetDefinition, name: "kinesis"))
    TargetDefinition.add_member(:unknown, Types::TargetDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TargetDefinition.type = Types::TargetDefinition
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateClusterInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClusterInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "deletionProtectionEnabled"))
    UpdateClusterInput.add_member(:kms_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionKey, name: "kmsEncryptionKey", traits: {"smithy.api#notProperty" => {}}))
    UpdateClusterInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterInput.add_member(:multi_region_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionProperties, name: "multiRegionProperties", traits: {"smithy.api#notProperty" => {}}))
    UpdateClusterInput.type = Types::UpdateClusterInput
    UpdateClusterOutput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterId, name: "identifier", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterCreationTime, name: "creationTime", traits: {"smithy.api#required" => {}}))
    UpdateClusterOutput.type = Types::UpdateClusterOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETION_PROTECTION_ENABLED", traits: {"smithy.api#enumValue" => "deletionProtectionEnabled"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    DSQL = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dsql#DSQL"
      service.name = "DSQL"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "DSQL", "arnNamespace" => "dsql", "endpointPrefix" => "dsql", "cloudTrailEventSource" => "dsql.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "dsql"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon Aurora DSQL", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dsql-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dsql.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterInput
        operation.output = CreateClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create new clusters."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster"}}
      end)
      service.add_operation(:create_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#CreateStream"
        operation.name = "CreateStream"
        operation.input = CreateStreamInput
        operation.output = CreateStreamOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a new stream."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/stream/{clusterIdentifier}"}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterInput
        operation.output = DeleteClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a cluster and all of its data."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster/{identifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#DeleteClusterPolicy"
        operation.name = "DeleteClusterPolicy"
        operation.input = DeleteClusterPolicyInput
        operation.output = DeleteClusterPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster/{identifier}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#DeleteStream"
        operation.name = "DeleteStream"
        operation.input = DeleteStreamInput
        operation.output = DeleteStreamOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a stream."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/stream/{clusterIdentifier}/{streamIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#GetCluster"
        operation.name = "GetCluster"
        operation.input = GetClusterInput
        operation.output = GetClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a cluster."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster/{identifier}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetClusterNotFound", "params" => {"identifier" => "ruabtlcu6nqjdl6k6jjcug67ta"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.dsql#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_cluster_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#GetClusterPolicy"
        operation.name = "GetClusterPolicy"
        operation.input = GetClusterPolicyInput
        operation.output = GetClusterPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster/{identifier}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#GetStream"
        operation.name = "GetStream"
        operation.input = GetStreamInput
        operation.output = GetStreamOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a stream."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/stream/{clusterIdentifier}/{streamIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_vpc_endpoint_service_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#GetVpcEndpointServiceName"
        operation.name = "GetVpcEndpointServiceName"
        operation.input = GetVpcEndpointServiceNameInput
        operation.output = GetVpcEndpointServiceNameOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get the VPC Endpoint Service Name for a cluster"}, "smithy.api#http" => {"code" => 200, "uri" => "/clusters/{identifier}/vpc-endpoint-service-name", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetVpcEndpointServiceNameNotFound", "params" => {"identifier" => "ruabtlcu6nqjdl6k6jjcug67ta"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.dsql#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersInput
        operation.output = ListClustersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of cluster ARNs associated with the current endpoint and account."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#ListStreams"
        operation.name = "ListStreams"
        operation.input = ListStreamsInput
        operation.output = ListStreamsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list streams for a cluster."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/stream/{clusterIdentifier}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListStreams.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list all tags for an ARN."}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_cluster_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#PutClusterPolicy"
        operation.name = "PutClusterPolicy"
        operation.input = PutClusterPolicyInput
        operation.output = PutClusterPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{identifier}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to add tags to an ARN."}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from an ARN."}, "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dsql#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterInput
        operation.output = UpdateClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the deletion protection status of a given cluster."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{identifier}"}}
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
