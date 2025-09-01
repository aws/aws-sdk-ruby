# frozen_string_literal: true

# This is generated code!

module Aws::Keyspaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#ARN', name: 'ARN', traits: {"smithy.api#length" => {"min" => 20, "max" => 1000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):cassandra:.+"})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AutoScalingPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#AutoScalingPolicy', name: 'AutoScalingPolicy')
    AutoScalingSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#AutoScalingSettings', name: 'AutoScalingSettings')
    AutoScalingSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#AutoScalingSpecification', name: 'AutoScalingSpecification')
    BooleanObject = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.keyspaces#BooleanObject', name: 'BooleanObject', traits: {"smithy.api#default" => false})
    CapacitySpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CapacitySpecification', name: 'CapacitySpecification')
    CapacitySpecificationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CapacitySpecificationSummary', name: 'CapacitySpecificationSummary')
    CapacityUnits = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.keyspaces#CapacityUnits', name: 'CapacityUnits', traits: {"smithy.api#range" => {"min" => 1}})
    CdcPropagateTags = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#CdcPropagateTags', name: 'CdcPropagateTags', traits: {"smithy.api#enum" => [{"value" => "TABLE", "name" => "TABLE"}, {"value" => "NONE", "name" => "NONE"}]})
    CdcSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CdcSpecification', name: 'CdcSpecification')
    CdcSpecificationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CdcSpecificationSummary', name: 'CdcSpecificationSummary')
    CdcStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#CdcStatus', name: 'CdcStatus', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "ENABLING", "name" => "ENABLING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "DISABLING", "name" => "DISABLING"}]})
    ClientSideTimestamps = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ClientSideTimestamps', name: 'ClientSideTimestamps')
    ClientSideTimestampsStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#ClientSideTimestampsStatus', name: 'ClientSideTimestampsStatus', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}]})
    ClusteringKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ClusteringKey', name: 'ClusteringKey')
    ClusteringKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#ClusteringKeyList', name: 'ClusteringKeyList')
    ColumnDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ColumnDefinition', name: 'ColumnDefinition')
    ColumnDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#ColumnDefinitionList', name: 'ColumnDefinitionList', traits: {"smithy.api#length" => {"min" => 1}})
    Comment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#Comment', name: 'Comment')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ConflictException', name: 'ConflictException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateKeyspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CreateKeyspaceInput', name: 'CreateKeyspaceInput')
    CreateKeyspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CreateKeyspaceOutput', name: 'CreateKeyspaceOutput')
    CreateTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CreateTableInput', name: 'CreateTableInput')
    CreateTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CreateTableOutput', name: 'CreateTableOutput')
    CreateTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CreateTypeRequest', name: 'CreateTypeRequest')
    CreateTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#CreateTypeResponse', name: 'CreateTypeResponse')
    DefaultTimeToLive = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.keyspaces#DefaultTimeToLive', name: 'DefaultTimeToLive', traits: {"smithy.api#range" => {"min" => 0, "max" => 630720000}})
    DeleteKeyspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#DeleteKeyspaceInput', name: 'DeleteKeyspaceInput')
    DeleteKeyspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#DeleteKeyspaceOutput', name: 'DeleteKeyspaceOutput')
    DeleteTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#DeleteTableInput', name: 'DeleteTableInput')
    DeleteTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#DeleteTableOutput', name: 'DeleteTableOutput')
    DeleteTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#DeleteTypeRequest', name: 'DeleteTypeRequest')
    DeleteTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#DeleteTypeResponse', name: 'DeleteTypeResponse')
    Depth = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.keyspaces#Depth', name: 'Depth', traits: {"smithy.api#default" => 0})
    DoubleObject = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.keyspaces#DoubleObject', name: 'DoubleObject', traits: {"smithy.api#default" => 0})
    EncryptionSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#EncryptionSpecification', name: 'EncryptionSpecification')
    EncryptionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#EncryptionType', name: 'EncryptionType', traits: {"smithy.api#enum" => [{"value" => "CUSTOMER_MANAGED_KMS_KEY", "name" => "CUSTOMER_MANAGED_KMS_KEY"}, {"value" => "AWS_OWNED_KMS_KEY", "name" => "AWS_OWNED_KMS_KEY"}]})
    FieldDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#FieldDefinition', name: 'FieldDefinition')
    FieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#FieldList', name: 'FieldList', traits: {"smithy.api#length" => {"min" => 1}})
    GenericString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#GenericString', name: 'GenericString')
    GetKeyspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetKeyspaceInput', name: 'GetKeyspaceInput')
    GetKeyspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetKeyspaceOutput', name: 'GetKeyspaceOutput')
    GetTableAutoScalingSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetTableAutoScalingSettingsRequest', name: 'GetTableAutoScalingSettingsRequest')
    GetTableAutoScalingSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetTableAutoScalingSettingsResponse', name: 'GetTableAutoScalingSettingsResponse')
    GetTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetTableInput', name: 'GetTableInput')
    GetTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetTableOutput', name: 'GetTableOutput')
    GetTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetTypeRequest', name: 'GetTypeRequest')
    GetTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#GetTypeResponse', name: 'GetTypeResponse')
    IntegerObject = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.keyspaces#IntegerObject', name: 'IntegerObject', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyspaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#KeyspaceName', name: 'KeyspaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    KeyspaceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#KeyspaceStatus', name: 'KeyspaceStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}]})
    KeyspaceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#KeyspaceSummary', name: 'KeyspaceSummary')
    KeyspaceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#KeyspaceSummaryList', name: 'KeyspaceSummaryList')
    ListKeyspacesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListKeyspacesInput', name: 'ListKeyspacesInput')
    ListKeyspacesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListKeyspacesOutput', name: 'ListKeyspacesOutput')
    ListTablesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListTablesInput', name: 'ListTablesInput')
    ListTablesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListTablesOutput', name: 'ListTablesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListTypesRequest', name: 'ListTypesRequest')
    ListTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ListTypesResponse', name: 'ListTypesResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.keyspaces#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PartitionKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#PartitionKey', name: 'PartitionKey')
    PartitionKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#PartitionKeyList', name: 'PartitionKeyList', traits: {"smithy.api#length" => {"min" => 1}})
    PointInTimeRecovery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#PointInTimeRecovery', name: 'PointInTimeRecovery')
    PointInTimeRecoveryStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#PointInTimeRecoveryStatus', name: 'PointInTimeRecoveryStatus', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    PointInTimeRecoverySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#PointInTimeRecoverySummary', name: 'PointInTimeRecoverySummary')
    RegionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#RegionList', name: 'RegionList', traits: {"smithy.api#length" => {"min" => 2}})
    ReplicaAutoScalingSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ReplicaAutoScalingSpecification', name: 'ReplicaAutoScalingSpecification')
    ReplicaAutoScalingSpecificationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#ReplicaAutoScalingSpecificationList', name: 'ReplicaAutoScalingSpecificationList', traits: {"smithy.api#length" => {"min" => 0}})
    ReplicaSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ReplicaSpecification', name: 'ReplicaSpecification')
    ReplicaSpecificationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#ReplicaSpecificationList', name: 'ReplicaSpecificationList', traits: {"smithy.api#length" => {"min" => 1}})
    ReplicaSpecificationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ReplicaSpecificationSummary', name: 'ReplicaSpecificationSummary')
    ReplicaSpecificationSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#ReplicaSpecificationSummaryList', name: 'ReplicaSpecificationSummaryList', traits: {"smithy.api#length" => {"min" => 0}})
    ReplicationGroupStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ReplicationGroupStatus', name: 'ReplicationGroupStatus')
    ReplicationGroupStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#ReplicationGroupStatusList', name: 'ReplicationGroupStatusList', traits: {"smithy.api#length" => {"min" => 2}})
    ReplicationSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ReplicationSpecification', name: 'ReplicationSpecification')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#RestoreTableInput', name: 'RestoreTableInput')
    RestoreTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#RestoreTableOutput', name: 'RestoreTableOutput')
    SchemaDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#SchemaDefinition', name: 'SchemaDefinition')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceededException", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    StaticColumn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#StaticColumn', name: 'StaticColumn')
    StaticColumnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#StaticColumnList', name: 'StaticColumnList')
    StreamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#StreamArn', name: 'StreamArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):cassandra:.+"})
    TableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TableName', name: 'TableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    TableNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#TableNameList', name: 'TableNameList')
    TableStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TableStatus', name: 'TableStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "RESTORING", "name" => "RESTORING"}, {"value" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "name" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS"}]})
    TableSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#TableSummary', name: 'TableSummary')
    TableSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#TableSummaryList', name: 'TableSummaryList')
    TablesReplicationProgress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TablesReplicationProgress', name: 'TablesReplicationProgress', traits: {"smithy.api#length" => {"min" => 2, "max" => 7}, "smithy.api#pattern" => "^[0-9]{1,3}(?:[.][0-9]{1,2})?%$"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TargetTrackingScalingPolicyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#TargetTrackingScalingPolicyConfiguration', name: 'TargetTrackingScalingPolicyConfiguration')
    ThroughputMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#ThroughputMode', name: 'ThroughputMode', traits: {"smithy.api#enum" => [{"value" => "PAY_PER_REQUEST", "name" => "PAY_PER_REQUEST"}, {"value" => "PROVISIONED", "name" => "PROVISIONED"}]})
    TimeToLive = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#TimeToLive', name: 'TimeToLive')
    TimeToLiveStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TimeToLiveStatus', name: 'TimeToLiveStatus', traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}]})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.keyspaces#Timestamp', name: 'Timestamp')
    TypeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TypeName', name: 'TypeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}})
    TypeNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspaces#TypeNameList', name: 'TypeNameList')
    TypeStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#TypeStatus', name: 'TypeStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "RESTORING", "name" => "RESTORING"}]})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateKeyspaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#UpdateKeyspaceRequest', name: 'UpdateKeyspaceRequest')
    UpdateKeyspaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#UpdateKeyspaceResponse', name: 'UpdateKeyspaceResponse')
    UpdateTableInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#UpdateTableInput', name: 'UpdateTableInput')
    UpdateTableOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#UpdateTableOutput', name: 'UpdateTableOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspaces#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ViewType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#ViewType', name: 'ViewType', traits: {"smithy.api#enum" => [{"value" => "NEW_IMAGE", "name" => "NEW_IMAGE"}, {"value" => "OLD_IMAGE", "name" => "OLD_IMAGE"}, {"value" => "KEYS_ONLY", "name" => "KEYS_ONLY"}, {"value" => "NEW_AND_OLD_IMAGES", "name" => "NEW_AND_OLD_IMAGES"}]})
    KmsKeyARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#kmsKeyARN', name: 'KmsKeyARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 5096}})
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#region', name: 'Region', traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    Rs = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspaces#rs', name: 'Rs', traits: {"smithy.api#enum" => [{"value" => "SINGLE_REGION", "name" => "SINGLE_REGION"}, {"value" => "MULTI_REGION", "name" => "MULTI_REGION"}], "smithy.api#length" => {"min" => 1, "max" => 20}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AutoScalingPolicy.add_member(:target_tracking_scaling_policy_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingScalingPolicyConfiguration, location_name: 'targetTrackingScalingPolicyConfiguration', traits: {"smithy.api#documentation" => "<p>Auto scaling scales up capacity automatically when traffic exceeds this target utilization rate, and then back down when it falls below the target. A <code>double</code> between 20 and 90.</p>"}))
    AutoScalingPolicy.type = Types::AutoScalingPolicy
    AutoScalingSettings.add_member(:auto_scaling_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'autoScalingDisabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This optional parameter enables auto scaling for the table if set to <code>false</code>.</p>"}))
    AutoScalingSettings.add_member(:minimum_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'minimumUnits', traits: {"smithy.api#documentation" => "<p>The minimum level of throughput the table should always be ready to support. The value must be between 1 and the max throughput per second quota for your account (40,000 by default).</p>"}))
    AutoScalingSettings.add_member(:maximum_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'maximumUnits', traits: {"smithy.api#documentation" => "<p>Manage costs by specifying the maximum amount of throughput to provision. The value must be between 1 and the max throughput per second quota for your account (40,000 by default).</p>"}))
    AutoScalingSettings.add_member(:scaling_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicy, location_name: 'scalingPolicy', traits: {"smithy.api#documentation" => "<p>Amazon Keyspaces supports the <code>target tracking</code> auto scaling policy. With this policy, Amazon Keyspaces auto scaling ensures that the table's ratio of consumed to provisioned capacity stays at or near the target value that you specify. You define the target value as a percentage between 20 and 90.</p>"}))
    AutoScalingSettings.type = Types::AutoScalingSettings
    AutoScalingSpecification.add_member(:write_capacity_auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettings, location_name: 'writeCapacityAutoScaling', traits: {"smithy.api#documentation" => "<p>The auto scaling settings for the table's write capacity.</p>"}))
    AutoScalingSpecification.add_member(:read_capacity_auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettings, location_name: 'readCapacityAutoScaling', traits: {"smithy.api#documentation" => "<p>The auto scaling settings for the table's read capacity.</p>"}))
    AutoScalingSpecification.type = Types::AutoScalingSpecification
    CapacitySpecification.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'throughputMode', traits: {"smithy.api#documentation" => "<p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CapacitySpecification.add_member(:read_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'readCapacityUnits', traits: {"smithy.api#documentation" => "<p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code> <code>(RCUs)</code>.</p>"}))
    CapacitySpecification.add_member(:write_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'writeCapacityUnits', traits: {"smithy.api#documentation" => "<p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code> <code>(WCUs)</code>.</p>"}))
    CapacitySpecification.type = Types::CapacitySpecification
    CapacitySpecificationSummary.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'throughputMode', traits: {"smithy.api#documentation" => "<p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input. </p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CapacitySpecificationSummary.add_member(:read_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'readCapacityUnits', traits: {"smithy.api#documentation" => "<p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code> <code>(RCUs)</code>.</p>"}))
    CapacitySpecificationSummary.add_member(:write_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'writeCapacityUnits', traits: {"smithy.api#documentation" => "<p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code> <code>(WCUs)</code>.</p>"}))
    CapacitySpecificationSummary.add_member(:last_update_to_pay_per_request_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateToPayPerRequestTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the last operation that changed the provisioned throughput capacity of a table.</p>"}))
    CapacitySpecificationSummary.type = Types::CapacitySpecificationSummary
    CdcSpecification.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CdcStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the CDC stream. You can enable or disable a stream for a table.</p>", "smithy.api#required" => {}}))
    CdcSpecification.add_member(:view_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewType, location_name: 'viewType', traits: {"smithy.api#documentation" => "<p>The view type specifies the changes Amazon Keyspaces records for each changed row in the stream. After you create the stream, you can't make changes to this selection. </p> <p>The options are:</p> <ul> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both versions of the row, before and after the change. This is the default.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the version of the row after the change.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the version of the row before the change.</p> </li> <li> <p> <code>KEYS_ONLY</code> - the partition and clustering keys of the row that was changed.</p> </li> </ul>"}))
    CdcSpecification.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags (key-value pairs) that you want to apply to the stream.</p>"}))
    CdcSpecification.add_member(:propagate_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: CdcPropagateTags, location_name: 'propagateTags', traits: {"smithy.api#documentation" => "<p>Specifies that the stream inherits the tags from the table.</p>"}))
    CdcSpecification.type = Types::CdcSpecification
    CdcSpecificationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CdcStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the CDC stream. Specifies if the table has a CDC stream.</p>", "smithy.api#required" => {}}))
    CdcSpecificationSummary.add_member(:view_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewType, location_name: 'viewType', traits: {"smithy.api#documentation" => "<p>The view type specifies the changes Amazon Keyspaces records for each changed row in the stream. This setting can't be changed, after the stream has been created. </p> <p>The options are:</p> <ul> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both versions of the row, before and after the change. This is the default.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the version of the row after the change.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the version of the row before the change.</p> </li> <li> <p> <code>KEYS_ONLY</code> - the partition and clustering keys of the row that was changed.</p> </li> </ul>"}))
    CdcSpecificationSummary.type = Types::CdcSpecificationSummary
    ClientSideTimestamps.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSideTimestampsStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Shows how to enable client-side timestamps settings for the specified table.</p>", "smithy.api#required" => {}}))
    ClientSideTimestamps.type = Types::ClientSideTimestamps
    ClusteringKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name(s) of the clustering column(s).</p>", "smithy.api#required" => {}}))
    ClusteringKey.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>", "smithy.api#required" => {}}))
    ClusteringKey.type = Types::ClusteringKey
    ClusteringKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusteringKey)
    ColumnDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the column.</p>", "smithy.api#required" => {}}))
    ColumnDefinition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data type of the column. For a list of available data types, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types\">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    ColumnDefinition.type = Types::ColumnDefinition
    ColumnDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDefinition)
    Comment.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An optional description of the table.</p>", "smithy.api#required" => {}}))
    Comment.type = Types::Comment
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateKeyspaceInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace to be created.</p>", "smithy.api#required" => {}}))
    CreateKeyspaceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pair tags to be attached to the keyspace.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateKeyspaceInput.add_member(:replication_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSpecification, location_name: 'replicationSpecification', traits: {"smithy.api#documentation" => "<p> The replication specification of the keyspace includes:</p> <ul> <li> <p> <code>replicationStrategy</code> - the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>.</p> </li> <li> <p> <code>regionList</code> - if the <code>replicationStrategy</code> is <code>MULTI_REGION</code>, the <code>regionList</code> requires the current Region and at least one additional Amazon Web Services Region where the keyspace is going to be replicated in.</p> </li> </ul>"}))
    CreateKeyspaceInput.type = Types::CreateKeyspaceInput
    CreateKeyspaceOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    CreateKeyspaceOutput.type = Types::CreateKeyspaceOutput
    CreateTableInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace that the table is going to be created in.</p>", "smithy.api#required" => {}}))
    CreateTableInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    CreateTableInput.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>The <code>schemaDefinition</code> consists of the following parameters.</p> <p>For each column to be created:</p> <ul> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type. For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types\">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> </li> </ul> <p>The primary key of the table consists of the following columns:</p> <ul> <li> <p> <code>partitionKeys</code> - The partition key can be a single column, or it can be a compound value composed of two or more columns. The partition key portion of the primary key is required and determines how Amazon Keyspaces stores your data.</p> </li> <li> <p> <code>name</code> - The name of each partition key column.</p> </li> <li> <p> <code>clusteringKeys</code> - The optional clustering column portion of your primary key determines how the data is clustered and sorted within each partition.</p> </li> <li> <p> <code>name</code> - The name of the clustering column. </p> </li> <li> <p> <code>orderBy</code> - Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p> <p>To define a column as static use <code>staticColumns</code> - Static columns store values that are shared by all rows in the same partition:</p> </li> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type.</p> </li> </ul>", "smithy.api#required" => {}}))
    CreateTableInput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>This parameter allows to enter a description of the table.</p>"}))
    CreateTableInput.add_member(:capacity_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacitySpecification, location_name: 'capacitySpecification', traits: {"smithy.api#documentation" => "<p>Specifies the read/write throughput capacity mode for the table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateTableInput.add_member(:encryption_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: 'encryptionSpecification', traits: {"smithy.api#documentation" => "<p>Specifies how the encryption key for encryption at rest is managed for the table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input.</p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateTableInput.add_member(:point_in_time_recovery, Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecovery, location_name: 'pointInTimeRecovery', traits: {"smithy.api#documentation" => "<p>Specifies if <code>pointInTimeRecovery</code> is enabled or disabled for the table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateTableInput.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'ttl', traits: {"smithy.api#documentation" => "<p>Enables Time to Live custom settings for the table. The options are:</p> <ul> <li> <p> <code>status:enabled</code> </p> </li> <li> <p> <code>status:disabled</code> </p> </li> </ul> <p>The default is <code>status:disabled</code>. After <code>ttl</code> is enabled, you can't disable it for the table.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html\">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateTableInput.add_member(:default_time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultTimeToLive, location_name: 'defaultTimeToLive', traits: {"smithy.api#documentation" => "<p>The default Time to Live setting in seconds for the table.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl\">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateTableInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pair tags to be attached to the resource. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    CreateTableInput.add_member(:client_side_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: 'clientSideTimestamps', traits: {"smithy.api#documentation" => "<p> Enables client-side timestamps for the table. By default, the setting is disabled. You can enable client-side timestamps with the following option:</p> <ul> <li> <p> <code>status: \"enabled\"</code> </p> </li> </ul> <p>Once client-side timestamps are enabled for a table, this setting cannot be disabled.</p>"}))
    CreateTableInput.add_member(:auto_scaling_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSpecification, location_name: 'autoScalingSpecification', traits: {"smithy.api#documentation" => "<p>The optional auto scaling settings for a table in provisioned capacity mode. Specifies if the service can manage throughput capacity automatically on your behalf.</p> <p>Auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic. For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html\">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>By default, auto scaling is disabled for a table. </p>"}))
    CreateTableInput.add_member(:replica_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSpecificationList, location_name: 'replicaSpecifications', traits: {"smithy.api#documentation" => "<p>The optional Amazon Web Services Region specific settings of a multi-Region table. These settings overwrite the general settings of the table for the specified Region. </p> <p>For a multi-Region table in provisioned capacity mode, you can configure the table's read capacity differently for each Region's replica. The write capacity, however, remains synchronized between all replicas to ensure that there's enough capacity to replicate writes across all Regions. To define the read capacity for a table replica in a specific Region, you can do so by configuring the following parameters.</p> <ul> <li> <p> <code>region</code>: The Region where these settings are applied. (Required)</p> </li> <li> <p> <code>readCapacityUnits</code>: The provisioned read capacity units. (Optional)</p> </li> <li> <p> <code>readCapacityAutoScaling</code>: The read capacity auto scaling settings for the table. (Optional) </p> </li> </ul>"}))
    CreateTableInput.add_member(:cdc_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CdcSpecification, location_name: 'cdcSpecification', traits: {"smithy.api#documentation" => "<p>The CDC stream settings of the table.</p>"}))
    CreateTableInput.type = Types::CreateTableInput
    CreateTableOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    CreateTableOutput.type = Types::CreateTableOutput
    CreateTypeRequest.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace. </p>", "smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p> The name of the user-defined type. </p> <p>UDT names must contain 48 characters or less, must begin with an alphabetic character, and can only contain alpha-numeric characters and underscores. Amazon Keyspaces converts upper case characters automatically into lower case characters. </p> <p>Alternatively, you can declare a UDT name in double quotes. When declaring a UDT name inside double quotes, Amazon Keyspaces preserves upper casing and allows special characters.</p> <p>You can also use double quotes as part of the name when you create the UDT, but you must escape each double quote character with an additional double quote character.</p>", "smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:field_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'fieldDefinitions', traits: {"smithy.api#documentation" => "<p> The field definitions, consisting of names and types, that define this type. </p>", "smithy.api#required" => {}}))
    CreateTypeRequest.type = Types::CreateTypeRequest
    CreateTypeResponse.add_member(:keyspace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'keyspaceArn', traits: {"smithy.api#documentation" => "<p> The unique identifier of the keyspace that contains the new type in the format of an Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    CreateTypeResponse.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p> The formatted name of the user-defined type that was created. Note that Amazon Keyspaces requires the formatted name of the type for other operations, for example <code>GetType</code>. </p>", "smithy.api#required" => {}}))
    CreateTypeResponse.type = Types::CreateTypeResponse
    DeleteKeyspaceInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteKeyspaceInput.type = Types::DeleteKeyspaceInput
    DeleteKeyspaceOutput.type = Types::DeleteKeyspaceOutput
    DeleteTableInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace of the to be deleted table.</p>", "smithy.api#required" => {}}))
    DeleteTableInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteTableInput.type = Types::DeleteTableInput
    DeleteTableOutput.type = Types::DeleteTableOutput
    DeleteTypeRequest.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace of the to be deleted type. </p>", "smithy.api#required" => {}}))
    DeleteTypeRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p> The name of the type to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteTypeRequest.type = Types::DeleteTypeRequest
    DeleteTypeResponse.add_member(:keyspace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'keyspaceArn', traits: {"smithy.api#documentation" => "<p> The unique identifier of the keyspace from which the type was deleted in the format of an Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    DeleteTypeResponse.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p> The name of the type that was deleted. </p>", "smithy.api#required" => {}}))
    DeleteTypeResponse.type = Types::DeleteTypeResponse
    EncryptionSpecification.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The encryption option specified for the table. You can choose one of the following KMS keys (KMS keys):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    EncryptionSpecification.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyARN, location_name: 'kmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer managed KMS key, for example <code>kms_key_identifier:ARN</code>.</p>"}))
    EncryptionSpecification.type = Types::EncryptionSpecification
    FieldDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The identifier. </p>", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    FieldDefinition.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'type', traits: {"smithy.api#documentation" => "<p> Any supported Cassandra data type, including collections and other user-defined types that are contained in the same keyspace. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html#cassandra-data-type\">Cassandra data type support</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    FieldDefinition.type = Types::FieldDefinition
    FieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldDefinition)
    GetKeyspaceInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace.</p>", "smithy.api#required" => {}}))
    GetKeyspaceInput.type = Types::GetKeyspaceInput
    GetKeyspaceOutput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace.</p>", "smithy.api#required" => {}}))
    GetKeyspaceOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>Returns the ARN of the keyspace.</p>", "smithy.api#required" => {}}))
    GetKeyspaceOutput.add_member(:replication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: Rs, location_name: 'replicationStrategy', traits: {"smithy.api#documentation" => "<p> Returns the replication strategy of the keyspace. The options are <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>. </p>", "smithy.api#required" => {}}))
    GetKeyspaceOutput.add_member(:replication_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'replicationRegions', traits: {"smithy.api#documentation" => "<p> If the <code>replicationStrategy</code> of the keyspace is <code>MULTI_REGION</code>, a list of replication Regions is returned. </p>"}))
    GetKeyspaceOutput.add_member(:replication_group_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupStatusList, location_name: 'replicationGroupStatuses', traits: {"smithy.api#documentation" => "<p> A list of all Regions the keyspace is replicated in after the update keyspace operation and their status. </p>"}))
    GetKeyspaceOutput.type = Types::GetKeyspaceOutput
    GetTableAutoScalingSettingsRequest.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace.</p>", "smithy.api#required" => {}}))
    GetTableAutoScalingSettingsRequest.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    GetTableAutoScalingSettingsRequest.type = Types::GetTableAutoScalingSettingsRequest
    GetTableAutoScalingSettingsResponse.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace.</p>", "smithy.api#required" => {}}))
    GetTableAutoScalingSettingsResponse.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    GetTableAutoScalingSettingsResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the table.</p>", "smithy.api#required" => {}}))
    GetTableAutoScalingSettingsResponse.add_member(:auto_scaling_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSpecification, location_name: 'autoScalingSpecification', traits: {"smithy.api#documentation" => "<p>The auto scaling settings of the table.</p>"}))
    GetTableAutoScalingSettingsResponse.add_member(:replica_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAutoScalingSpecificationList, location_name: 'replicaSpecifications', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region specific settings of a multi-Region table. Returns the settings for all Regions the table is replicated in.</p>"}))
    GetTableAutoScalingSettingsResponse.type = Types::GetTableAutoScalingSettingsResponse
    GetTableInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace that the table is stored in.</p>", "smithy.api#required" => {}}))
    GetTableInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    GetTableInput.type = Types::GetTableInput
    GetTableOutput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace that the specified table is stored in.</p>", "smithy.api#required" => {}}))
    GetTableOutput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the specified table.</p>", "smithy.api#required" => {}}))
    GetTableOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the specified table.</p>", "smithy.api#required" => {}}))
    GetTableOutput.add_member(:creation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'creationTimestamp', traits: {"smithy.api#documentation" => "<p>The creation timestamp of the specified table.</p>"}))
    GetTableOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the specified table.</p>"}))
    GetTableOutput.add_member(:schema_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'schemaDefinition', traits: {"smithy.api#documentation" => "<p>The schema definition of the specified table.</p>"}))
    GetTableOutput.add_member(:capacity_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacitySpecificationSummary, location_name: 'capacitySpecification', traits: {"smithy.api#documentation" => "<p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> </p> </li> </ul>"}))
    GetTableOutput.add_member(:encryption_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: 'encryptionSpecification', traits: {"smithy.api#documentation" => "<p>The encryption settings of the specified table.</p>"}))
    GetTableOutput.add_member(:point_in_time_recovery, Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoverySummary, location_name: 'pointInTimeRecovery', traits: {"smithy.api#documentation" => "<p>The point-in-time recovery status of the specified table.</p>"}))
    GetTableOutput.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'ttl', traits: {"smithy.api#documentation" => "<p>The custom Time to Live settings of the specified table.</p>"}))
    GetTableOutput.add_member(:default_time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultTimeToLive, location_name: 'defaultTimeToLive', traits: {"smithy.api#documentation" => "<p>The default Time to Live settings in seconds of the specified table.</p>"}))
    GetTableOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>The the description of the specified table.</p>"}))
    GetTableOutput.add_member(:client_side_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: 'clientSideTimestamps', traits: {"smithy.api#documentation" => "<p> The client-side timestamps setting of the table.</p>"}))
    GetTableOutput.add_member(:replica_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSpecificationSummaryList, location_name: 'replicaSpecifications', traits: {"smithy.api#documentation" => "<p>Returns the Amazon Web Services Region specific settings of all Regions a multi-Region table is replicated in.</p>"}))
    GetTableOutput.add_member(:latest_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'latestStreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the stream.</p>"}))
    GetTableOutput.add_member(:cdc_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CdcSpecificationSummary, location_name: 'cdcSpecification', traits: {"smithy.api#documentation" => "<p>The CDC stream settings of the table.</p>"}))
    GetTableOutput.type = Types::GetTableOutput
    GetTypeRequest.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace that contains this type. </p>", "smithy.api#required" => {}}))
    GetTypeRequest.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p>The formatted name of the type. For example, if the name of the type was created without double quotes, Amazon Keyspaces saved the name in lower-case characters. If the name was created in double quotes, you must use double quotes to specify the type name. </p>", "smithy.api#required" => {}}))
    GetTypeRequest.type = Types::GetTypeRequest
    GetTypeResponse.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace that contains this type. </p>", "smithy.api#required" => {}}))
    GetTypeResponse.add_member(:type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName, location_name: 'typeName', traits: {"smithy.api#documentation" => "<p> The name of the type. </p>", "smithy.api#required" => {}}))
    GetTypeResponse.add_member(:field_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldList, location_name: 'fieldDefinitions', traits: {"smithy.api#documentation" => "<p> The names and types that define this type. </p>"}))
    GetTypeResponse.add_member(:last_modified_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp that shows when this type was last modified. </p>"}))
    GetTypeResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of this type. </p>"}))
    GetTypeResponse.add_member(:direct_referring_tables, Smithy::Schema::Shapes::ShapeRef.new(shape: TableNameList, location_name: 'directReferringTables', traits: {"smithy.api#documentation" => "<p> The tables that use this type. </p>"}))
    GetTypeResponse.add_member(:direct_parent_types, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeNameList, location_name: 'directParentTypes', traits: {"smithy.api#documentation" => "<p> The types that use this type. </p>"}))
    GetTypeResponse.add_member(:max_nesting_depth, Smithy::Schema::Shapes::ShapeRef.new(shape: Depth, location_name: 'maxNestingDepth', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The level of nesting implemented for this type. </p>"}))
    GetTypeResponse.add_member(:keyspace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'keyspaceArn', traits: {"smithy.api#documentation" => "<p> The unique identifier of the keyspace that contains this type in the format of an Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    GetTypeResponse.type = Types::GetTypeResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>"}))
    InternalServerException.type = Types::InternalServerException
    KeyspaceSummary.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace.</p>", "smithy.api#required" => {}}))
    KeyspaceSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    KeyspaceSummary.add_member(:replication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: Rs, location_name: 'replicationStrategy', traits: {"smithy.api#documentation" => "<p> This property specifies if a keyspace is a single Region keyspace or a multi-Region keyspace. The available values are <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>. </p>", "smithy.api#required" => {}}))
    KeyspaceSummary.add_member(:replication_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'replicationRegions', traits: {"smithy.api#documentation" => "<p> If the <code>replicationStrategy</code> of the keyspace is <code>MULTI_REGION</code>, a list of replication Regions is returned. </p>"}))
    KeyspaceSummary.type = Types::KeyspaceSummary
    KeyspaceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceSummary)
    ListKeyspacesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>"}))
    ListKeyspacesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of keyspaces to return in the output. If the total number of keyspaces available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>"}))
    ListKeyspacesInput.type = Types::ListKeyspacesInput
    ListKeyspacesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>"}))
    ListKeyspacesOutput.add_member(:keyspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceSummaryList, location_name: 'keyspaces', traits: {"smithy.api#documentation" => "<p>A list of keyspaces.</p>", "smithy.api#required" => {}}))
    ListKeyspacesOutput.type = Types::ListKeyspacesOutput
    ListTablesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>"}))
    ListTablesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of tables to return in the output. If the total number of tables available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>"}))
    ListTablesInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace.</p>", "smithy.api#required" => {}}))
    ListTablesInput.type = Types::ListTablesInput
    ListTablesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>"}))
    ListTablesOutput.add_member(:tables, Smithy::Schema::Shapes::ShapeRef.new(shape: TableSummaryList, location_name: 'tables', traits: {"smithy.api#documentation" => "<p>A list of tables.</p>"}))
    ListTablesOutput.type = Types::ListTablesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>"}))
    ListTagsForResourceInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The total number of tags to return in the output. If the total number of tags available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>"}))
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>"}))
    ListTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The total number of types to return in the output. If the total number of types available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>"}))
    ListTypesRequest.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace that contains the listed types. </p>", "smithy.api#required" => {}}))
    ListTypesRequest.type = Types::ListTypesRequest
    ListTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>"}))
    ListTypesResponse.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeNameList, location_name: 'types', traits: {"smithy.api#documentation" => "<p> The list of types contained in the specified keyspace. </p>", "smithy.api#required" => {}}))
    ListTypesResponse.type = Types::ListTypesResponse
    PartitionKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name(s) of the partition key column(s).</p>", "smithy.api#required" => {}}))
    PartitionKey.type = Types::PartitionKey
    PartitionKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKey)
    PointInTimeRecovery.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoveryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul>", "smithy.api#required" => {}}))
    PointInTimeRecovery.type = Types::PointInTimeRecovery
    PointInTimeRecoverySummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoveryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Shows if point-in-time recovery is enabled or disabled for the specified table.</p>", "smithy.api#required" => {}}))
    PointInTimeRecoverySummary.add_member(:earliest_restorable_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'earliestRestorableTimestamp', traits: {"smithy.api#documentation" => "<p>Specifies the earliest possible restore point of the table in ISO 8601 format.</p>"}))
    PointInTimeRecoverySummary.type = Types::PointInTimeRecoverySummary
    RegionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ReplicaAutoScalingSpecification.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>"}))
    ReplicaAutoScalingSpecification.add_member(:auto_scaling_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSpecification, location_name: 'autoScalingSpecification', traits: {"smithy.api#documentation" => "<p>The auto scaling settings for a multi-Region table in the specified Amazon Web Services Region.</p>"}))
    ReplicaAutoScalingSpecification.type = Types::ReplicaAutoScalingSpecification
    ReplicaAutoScalingSpecificationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAutoScalingSpecification)
    ReplicaSpecification.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>", "smithy.api#required" => {}}))
    ReplicaSpecification.add_member(:read_capacity_units, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityUnits, location_name: 'readCapacityUnits', traits: {"smithy.api#documentation" => "<p>The provisioned read capacity units for the multi-Region table in the specified Amazon Web Services Region.</p>"}))
    ReplicaSpecification.add_member(:read_capacity_auto_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettings, location_name: 'readCapacityAutoScaling', traits: {"smithy.api#documentation" => "<p>The read capacity auto scaling settings for the multi-Region table in the specified Amazon Web Services Region.</p>"}))
    ReplicaSpecification.type = Types::ReplicaSpecification
    ReplicaSpecificationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSpecification)
    ReplicaSpecificationSummary.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region.</p>"}))
    ReplicaSpecificationSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the multi-Region table in the specified Amazon Web Services Region.</p>"}))
    ReplicaSpecificationSummary.add_member(:capacity_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacitySpecificationSummary, location_name: 'capacitySpecification'))
    ReplicaSpecificationSummary.type = Types::ReplicaSpecificationSummary
    ReplicaSpecificationSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSpecificationSummary)
    ReplicationGroupStatus.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#documentation" => "<p> The name of the Region that was added to the keyspace. </p>", "smithy.api#required" => {}}))
    ReplicationGroupStatus.add_member(:keyspace_status, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceStatus, location_name: 'keyspaceStatus', traits: {"smithy.api#documentation" => "<p> The status of the keyspace. </p>", "smithy.api#required" => {}}))
    ReplicationGroupStatus.add_member(:tables_replication_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: TablesReplicationProgress, location_name: 'tablesReplicationProgress', traits: {"smithy.api#documentation" => "<p> This shows the replication progress of tables in the keyspace. The value is expressed as a percentage of the newly replicated tables with status <code>Active</code> compared to the total number of tables in the keyspace. </p>"}))
    ReplicationGroupStatus.type = Types::ReplicationGroupStatus
    ReplicationGroupStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupStatus)
    ReplicationSpecification.add_member(:replication_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: Rs, location_name: 'replicationStrategy', traits: {"smithy.api#documentation" => "<p> The <code>replicationStrategy</code> of a keyspace, the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>. </p>", "smithy.api#required" => {}}))
    ReplicationSpecification.add_member(:region_list, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regionList', traits: {"smithy.api#documentation" => "<p> The <code>regionList</code> contains the Amazon Web Services Regions where the keyspace is replicated in. </p>"}))
    ReplicationSpecification.type = Types::ReplicationSpecification
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>"}))
    ResourceNotFoundException.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The unique identifier in the format of Amazon Resource Name (ARN) for the resource couldn’t be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreTableInput.add_member(:source_keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'sourceKeyspaceName', traits: {"smithy.api#documentation" => "<p>The keyspace name of the source table.</p>", "smithy.api#required" => {}}))
    RestoreTableInput.add_member(:source_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'sourceTableName', traits: {"smithy.api#documentation" => "<p>The name of the source table.</p>", "smithy.api#required" => {}}))
    RestoreTableInput.add_member(:target_keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'targetKeyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the target keyspace.</p>", "smithy.api#required" => {}}))
    RestoreTableInput.add_member(:target_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'targetTableName', traits: {"smithy.api#documentation" => "<p>The name of the target table.</p>", "smithy.api#required" => {}}))
    RestoreTableInput.add_member(:restore_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'restoreTimestamp', traits: {"smithy.api#documentation" => "<p>The restore timestamp in ISO 8601 format.</p>"}))
    RestoreTableInput.add_member(:capacity_specification_override, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacitySpecification, location_name: 'capacitySpecificationOverride', traits: {"smithy.api#documentation" => "<p>Specifies the read/write throughput capacity mode for the target table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    RestoreTableInput.add_member(:encryption_specification_override, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: 'encryptionSpecificationOverride', traits: {"smithy.api#documentation" => "<p>Specifies the encryption settings for the target table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    RestoreTableInput.add_member(:point_in_time_recovery_override, Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecovery, location_name: 'pointInTimeRecoveryOverride', traits: {"smithy.api#documentation" => "<p>Specifies the <code>pointInTimeRecovery</code> settings for the target table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    RestoreTableInput.add_member(:tags_override, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tagsOverride', traits: {"smithy.api#documentation" => "<p>A list of key-value pair tags to be attached to the restored table. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    RestoreTableInput.add_member(:auto_scaling_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSpecification, location_name: 'autoScalingSpecification', traits: {"smithy.api#documentation" => "<p>The optional auto scaling settings for the restored table in provisioned capacity mode. Specifies if the service can manage throughput capacity of a provisioned table automatically on your behalf. Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html\">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    RestoreTableInput.add_member(:replica_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSpecificationList, location_name: 'replicaSpecifications', traits: {"smithy.api#documentation" => "<p>The optional Region specific settings of a multi-Regional table.</p>"}))
    RestoreTableInput.type = Types::RestoreTableInput
    RestoreTableOutput.add_member(:restored_table_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'restoredTableARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the restored table.</p>", "smithy.api#required" => {}}))
    RestoreTableOutput.type = Types::RestoreTableOutput
    SchemaDefinition.add_member(:all_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDefinitionList, location_name: 'allColumns', traits: {"smithy.api#documentation" => "<p>The regular columns of the table.</p>", "smithy.api#required" => {}}))
    SchemaDefinition.add_member(:partition_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionKeyList, location_name: 'partitionKeys', traits: {"smithy.api#documentation" => "<p>The columns that are part of the partition key of the table .</p>", "smithy.api#required" => {}}))
    SchemaDefinition.add_member(:clustering_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusteringKeyList, location_name: 'clusteringKeys', traits: {"smithy.api#documentation" => "<p>The columns that are part of the clustering key of the table.</p>"}))
    SchemaDefinition.add_member(:static_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: StaticColumnList, location_name: 'staticColumns', traits: {"smithy.api#documentation" => "<p>The columns that have been defined as <code>STATIC</code>. Static columns store values that are shared by all rows in the same partition.</p>"}))
    SchemaDefinition.type = Types::SchemaDefinition
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StaticColumn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the static column.</p>", "smithy.api#required" => {}}))
    StaticColumn.type = Types::StaticColumn
    StaticColumnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StaticColumn)
    TableNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableName)
    TableSummary.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace that the table is stored in.</p>", "smithy.api#required" => {}}))
    TableSummary.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    TableSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    TableSummary.type = Types::TableSummary
    TableSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableSummary)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the tag. Tag keys are case sensitive. Each Amazon Keyspaces resource can only have up to one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the tag. Tag values are case-sensitive and can be null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to which to add tags.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the Amazon Keyspaces resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetTrackingScalingPolicyConfiguration.add_member(:disable_scale_in, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'disableScaleIn', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies if <code>scale-in</code> is enabled.</p> <p>When auto scaling automatically decreases capacity for a table, the table <i>scales in</i>. When scaling policies are set, they can't scale in the table lower than its minimum capacity.</p>"}))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_in_cooldown, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: 'scaleInCooldown', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies a <code>scale-in</code> cool down period.</p> <p>A cooldown period in seconds between scaling activities that lets the table stabilize before another scaling activity starts. </p>"}))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_out_cooldown, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: 'scaleOutCooldown', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies a scale out cool down period.</p> <p>A cooldown period in seconds between scaling activities that lets the table stabilize before another scaling activity starts. </p>"}))
    TargetTrackingScalingPolicyConfiguration.add_member(:target_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleObject, location_name: 'targetValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the target value for the target tracking auto scaling policy.</p> <p>Amazon Keyspaces auto scaling scales up capacity automatically when traffic exceeds this target utilization rate, and then back down when it falls below the target. This ensures that the ratio of consumed capacity to provisioned capacity stays at or near this value. You define <code>targetValue</code> as a percentage. A <code>double</code> between 20 and 90.</p>", "smithy.api#required" => {}}))
    TargetTrackingScalingPolicyConfiguration.type = Types::TargetTrackingScalingPolicyConfiguration
    TimeToLive.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Shows how to enable custom Time to Live (TTL) settings for the specified table.</p>", "smithy.api#required" => {}}))
    TimeToLive.type = Types::TimeToLive
    TypeNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TypeName)
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Keyspaces resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of existing tags to be removed from the Amazon Keyspaces resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateKeyspaceRequest.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace. </p>", "smithy.api#required" => {}}))
    UpdateKeyspaceRequest.add_member(:replication_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationSpecification, location_name: 'replicationSpecification', traits: {"smithy.api#required" => {}}))
    UpdateKeyspaceRequest.add_member(:client_side_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: 'clientSideTimestamps'))
    UpdateKeyspaceRequest.type = Types::UpdateKeyspaceRequest
    UpdateKeyspaceResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p> The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN). </p>", "smithy.api#required" => {}}))
    UpdateKeyspaceResponse.type = Types::UpdateKeyspaceResponse
    UpdateTableInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace the specified table is stored in.</p>", "smithy.api#required" => {}}))
    UpdateTableInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table.</p>", "smithy.api#required" => {}}))
    UpdateTableInput.add_member(:add_columns, Smithy::Schema::Shapes::ShapeRef.new(shape: ColumnDefinitionList, location_name: 'addColumns', traits: {"smithy.api#documentation" => "<p>For each column to be added to the specified table:</p> <ul> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type. For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types\">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> </li> </ul>"}))
    UpdateTableInput.add_member(:capacity_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacitySpecification, location_name: 'capacitySpecification', traits: {"smithy.api#documentation" => "<p>Modifies the read/write throughput capacity mode for the table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    UpdateTableInput.add_member(:encryption_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionSpecification, location_name: 'encryptionSpecification', traits: {"smithy.api#documentation" => "<p>Modifies the encryption settings of the table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    UpdateTableInput.add_member(:point_in_time_recovery, Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecovery, location_name: 'pointInTimeRecovery', traits: {"smithy.api#documentation" => "<p>Modifies the <code>pointInTimeRecovery</code> settings of the table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    UpdateTableInput.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLive, location_name: 'ttl', traits: {"smithy.api#documentation" => "<p>Modifies Time to Live custom settings for the table. The options are:</p> <ul> <li> <p> <code>status:enabled</code> </p> </li> <li> <p> <code>status:disabled</code> </p> </li> </ul> <p>The default is <code>status:disabled</code>. After <code>ttl</code> is enabled, you can't disable it for the table.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html\">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    UpdateTableInput.add_member(:default_time_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultTimeToLive, location_name: 'defaultTimeToLive', traits: {"smithy.api#documentation" => "<p>The default Time to Live setting in seconds for the table.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl\">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    UpdateTableInput.add_member(:client_side_timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSideTimestamps, location_name: 'clientSideTimestamps', traits: {"smithy.api#documentation" => "<p>Enables client-side timestamps for the table. By default, the setting is disabled. You can enable client-side timestamps with the following option:</p> <ul> <li> <p> <code>status: \"enabled\"</code> </p> </li> </ul> <p>Once client-side timestamps are enabled for a table, this setting cannot be disabled.</p>"}))
    UpdateTableInput.add_member(:auto_scaling_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSpecification, location_name: 'autoScalingSpecification', traits: {"smithy.api#documentation" => "<p>The optional auto scaling settings to update for a table in provisioned capacity mode. Specifies if the service can manage throughput capacity of a provisioned table automatically on your behalf. Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic.</p> <p>If auto scaling is already enabled for the table, you can use <code>UpdateTable</code> to update the minimum and maximum values or the auto scaling policy settings independently.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html\">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>"}))
    UpdateTableInput.add_member(:replica_specifications, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSpecificationList, location_name: 'replicaSpecifications', traits: {"smithy.api#documentation" => "<p>The Region specific settings of a multi-Regional table.</p>"}))
    UpdateTableInput.add_member(:cdc_specification, Smithy::Schema::Shapes::ShapeRef.new(shape: CdcSpecification, location_name: 'cdcSpecification', traits: {"smithy.api#documentation" => "<p>The CDC stream settings of the table.</p>"}))
    UpdateTableInput.type = Types::UpdateTableInput
    UpdateTableOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the modified table.</p>", "smithy.api#required" => {}}))
    UpdateTableOutput.type = Types::UpdateTableOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Description of the error.</p>"}))
    ValidationException.type = Types::ValidationException

    KeyspacesService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.keyspaces#KeyspacesService"
      service.name = "KeyspacesService"
      service.version = "2022-02-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Keyspaces", "cloudFormationName" => "Cassandra", "arnNamespace" => "cassandra", "cloudTrailEventSource" => "cassandra.amazonaws.com", "endpointPrefix" => "cassandra"}, "aws.auth#sigv4" => {"name" => "cassandra"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Keyspaces"}
      service.add_operation(:create_keyspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#CreateKeyspace"
        operation.name = "CreateKeyspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#CreateTable"
        operation.name = "CreateTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#CreateType"
        operation.name = "CreateType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_keyspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#DeleteKeyspace"
        operation.name = "DeleteKeyspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#DeleteType"
        operation.name = "DeleteType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_keyspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetKeyspace"
        operation.name = "GetKeyspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetTable"
        operation.name = "GetTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_table_auto_scaling_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetTableAutoScalingSettings"
        operation.name = "GetTableAutoScalingSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableAutoScalingSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTableAutoScalingSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetType"
        operation.name = "GetType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_keyspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListKeyspaces"
        operation.name = "ListKeyspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyspacesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeyspacesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeyspaces.new
      end)
      service.add_operation(:list_tables, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListTables"
        operation.name = "ListTables"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListTypes"
        operation.name = "ListTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTypes.new
      end)
      service.add_operation(:restore_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#RestoreTable"
        operation.name = "RestoreTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_keyspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#UpdateKeyspace"
        operation.name = "UpdateKeyspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyspaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKeyspaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_table, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#UpdateTable"
        operation.name = "UpdateTable"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
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
