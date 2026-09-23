# frozen_string_literal: true

# This is generated code!

module Aws::Keyspaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#ARN", name: "ARN", traits: {"smithy.api#length" => {"min" => 20, "max" => 1000}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):cassandra:.+"})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AutoScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#AutoScalingPolicy", name: "AutoScalingPolicy")
    AutoScalingSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#AutoScalingSettings", name: "AutoScalingSettings")
    AutoScalingSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#AutoScalingSpecification", name: "AutoScalingSpecification")
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.keyspaces#BooleanObject", name: "BooleanObject", traits: {"smithy.api#default" => false})
    CapacitySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CapacitySpecification", name: "CapacitySpecification")
    CapacitySpecificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CapacitySpecificationSummary", name: "CapacitySpecificationSummary")
    CapacityUnits = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.keyspaces#CapacityUnits", name: "CapacityUnits", traits: {"smithy.api#range" => {"min" => 1}})
    CdcPropagateTags = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#CdcPropagateTags", name: "CdcPropagateTags", traits: {"smithy.api#enum" => [{"value" => "TABLE", "name" => "TABLE"}, {"value" => "NONE", "name" => "NONE"}]})
    CdcSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CdcSpecification", name: "CdcSpecification")
    CdcSpecificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CdcSpecificationSummary", name: "CdcSpecificationSummary")
    CdcStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#CdcStatus", name: "CdcStatus", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "ENABLING", "name" => "ENABLING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "DISABLING", "name" => "DISABLING"}]})
    ClientSideTimestamps = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ClientSideTimestamps", name: "ClientSideTimestamps")
    ClientSideTimestampsStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#ClientSideTimestampsStatus", name: "ClientSideTimestampsStatus", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}]})
    ClusteringKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ClusteringKey", name: "ClusteringKey")
    ClusteringKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#ClusteringKeyList", name: "ClusteringKeyList")
    ColumnDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ColumnDefinition", name: "ColumnDefinition")
    ColumnDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#ColumnDefinitionList", name: "ColumnDefinitionList", traits: {"smithy.api#length" => {"min" => 1}})
    Comment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#Comment", name: "Comment")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateKeyspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CreateKeyspaceInput", name: "CreateKeyspaceInput")
    CreateKeyspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CreateKeyspaceOutput", name: "CreateKeyspaceOutput")
    CreateTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CreateTableInput", name: "CreateTableInput")
    CreateTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CreateTableOutput", name: "CreateTableOutput")
    CreateTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CreateTypeRequest", name: "CreateTypeRequest")
    CreateTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#CreateTypeResponse", name: "CreateTypeResponse")
    DefaultTimeToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.keyspaces#DefaultTimeToLive", name: "DefaultTimeToLive", traits: {"smithy.api#range" => {"min" => 0, "max" => 630720000}})
    DeleteKeyspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#DeleteKeyspaceInput", name: "DeleteKeyspaceInput")
    DeleteKeyspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#DeleteKeyspaceOutput", name: "DeleteKeyspaceOutput")
    DeleteTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#DeleteTableInput", name: "DeleteTableInput")
    DeleteTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#DeleteTableOutput", name: "DeleteTableOutput")
    DeleteTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#DeleteTypeRequest", name: "DeleteTypeRequest")
    DeleteTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#DeleteTypeResponse", name: "DeleteTypeResponse")
    Depth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.keyspaces#Depth", name: "Depth", traits: {"smithy.api#default" => 0})
    DoubleObject = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.keyspaces#DoubleObject", name: "DoubleObject", traits: {"smithy.api#default" => 0})
    EncryptionSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#EncryptionSpecification", name: "EncryptionSpecification")
    EncryptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#EncryptionType", name: "EncryptionType", traits: {"smithy.api#enum" => [{"value" => "CUSTOMER_MANAGED_KMS_KEY", "name" => "CUSTOMER_MANAGED_KMS_KEY"}, {"value" => "AWS_OWNED_KMS_KEY", "name" => "AWS_OWNED_KMS_KEY"}]})
    FieldDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#FieldDefinition", name: "FieldDefinition")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#FieldList", name: "FieldList", traits: {"smithy.api#length" => {"min" => 1}})
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#GenericString", name: "GenericString")
    GetKeyspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetKeyspaceInput", name: "GetKeyspaceInput")
    GetKeyspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetKeyspaceOutput", name: "GetKeyspaceOutput")
    GetTableAutoScalingSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetTableAutoScalingSettingsRequest", name: "GetTableAutoScalingSettingsRequest")
    GetTableAutoScalingSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetTableAutoScalingSettingsResponse", name: "GetTableAutoScalingSettingsResponse")
    GetTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetTableInput", name: "GetTableInput")
    GetTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetTableOutput", name: "GetTableOutput")
    GetTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetTypeRequest", name: "GetTypeRequest")
    GetTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#GetTypeResponse", name: "GetTypeResponse")
    IntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.keyspaces#IntegerObject", name: "IntegerObject", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyspaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#KeyspaceName", name: "KeyspaceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    KeyspaceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#KeyspaceStatus", name: "KeyspaceStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}]})
    KeyspaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#KeyspaceSummary", name: "KeyspaceSummary")
    KeyspaceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#KeyspaceSummaryList", name: "KeyspaceSummaryList")
    ListKeyspacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListKeyspacesInput", name: "ListKeyspacesInput")
    ListKeyspacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListKeyspacesOutput", name: "ListKeyspacesOutput")
    ListTablesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListTablesInput", name: "ListTablesInput")
    ListTablesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListTablesOutput", name: "ListTablesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListTypesRequest", name: "ListTypesRequest")
    ListTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ListTypesResponse", name: "ListTypesResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.keyspaces#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PartitionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#PartitionKey", name: "PartitionKey")
    PartitionKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#PartitionKeyList", name: "PartitionKeyList", traits: {"smithy.api#length" => {"min" => 1}})
    PointInTimeRecovery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#PointInTimeRecovery", name: "PointInTimeRecovery")
    PointInTimeRecoveryStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#PointInTimeRecoveryStatus", name: "PointInTimeRecoveryStatus", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    PointInTimeRecoverySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#PointInTimeRecoverySummary", name: "PointInTimeRecoverySummary")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#RegionList", name: "RegionList", traits: {"smithy.api#length" => {"min" => 2}})
    ReplicaAutoScalingSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ReplicaAutoScalingSpecification", name: "ReplicaAutoScalingSpecification")
    ReplicaAutoScalingSpecificationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#ReplicaAutoScalingSpecificationList", name: "ReplicaAutoScalingSpecificationList", traits: {"smithy.api#length" => {"min" => 0}})
    ReplicaSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ReplicaSpecification", name: "ReplicaSpecification")
    ReplicaSpecificationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#ReplicaSpecificationList", name: "ReplicaSpecificationList", traits: {"smithy.api#length" => {"min" => 1}})
    ReplicaSpecificationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ReplicaSpecificationSummary", name: "ReplicaSpecificationSummary")
    ReplicaSpecificationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#ReplicaSpecificationSummaryList", name: "ReplicaSpecificationSummaryList", traits: {"smithy.api#length" => {"min" => 0}})
    ReplicationGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ReplicationGroupStatus", name: "ReplicationGroupStatus")
    ReplicationGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#ReplicationGroupStatusList", name: "ReplicationGroupStatusList", traits: {"smithy.api#length" => {"min" => 2}})
    ReplicationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ReplicationSpecification", name: "ReplicationSpecification")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#RestoreTableInput", name: "RestoreTableInput")
    RestoreTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#RestoreTableOutput", name: "RestoreTableOutput")
    SchemaDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#SchemaDefinition", name: "SchemaDefinition")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceededException", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#SortOrder", name: "SortOrder", traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    StaticColumn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#StaticColumn", name: "StaticColumn")
    StaticColumnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#StaticColumnList", name: "StaticColumnList")
    StreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#StreamArn", name: "StreamArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):cassandra:.+"})
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    TableNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#TableNameList", name: "TableNameList")
    TableStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TableStatus", name: "TableStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "RESTORING", "name" => "RESTORING"}, {"value" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "name" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS"}]})
    TableSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#TableSummary", name: "TableSummary")
    TableSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#TableSummaryList", name: "TableSummaryList")
    TablesReplicationProgress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TablesReplicationProgress", name: "TablesReplicationProgress", traits: {"smithy.api#length" => {"min" => 2, "max" => 7}, "smithy.api#pattern" => "^[0-9]{1,3}(?:[.][0-9]{1,2})?%$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    TargetTrackingScalingPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#TargetTrackingScalingPolicyConfiguration", name: "TargetTrackingScalingPolicyConfiguration")
    ThroughputMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#ThroughputMode", name: "ThroughputMode", traits: {"smithy.api#enum" => [{"value" => "PAY_PER_REQUEST", "name" => "PAY_PER_REQUEST"}, {"value" => "PROVISIONED", "name" => "PROVISIONED"}]})
    TimeToLive = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#TimeToLive", name: "TimeToLive")
    TimeToLiveStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TimeToLiveStatus", name: "TimeToLiveStatus", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}]})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.keyspaces#Timestamp", name: "Timestamp")
    TypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TypeName", name: "TypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}})
    TypeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspaces#TypeNameList", name: "TypeNameList")
    TypeStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#TypeStatus", name: "TypeStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "RESTORING", "name" => "RESTORING"}]})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateKeyspaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#UpdateKeyspaceRequest", name: "UpdateKeyspaceRequest")
    UpdateKeyspaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#UpdateKeyspaceResponse", name: "UpdateKeyspaceResponse")
    UpdateTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#UpdateTableInput", name: "UpdateTableInput")
    UpdateTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#UpdateTableOutput", name: "UpdateTableOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspaces#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client"})
    ViewType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#ViewType", name: "ViewType", traits: {"smithy.api#enum" => [{"value" => "NEW_IMAGE", "name" => "NEW_IMAGE"}, {"value" => "OLD_IMAGE", "name" => "OLD_IMAGE"}, {"value" => "KEYS_ONLY", "name" => "KEYS_ONLY"}, {"value" => "NEW_AND_OLD_IMAGES", "name" => "NEW_AND_OLD_IMAGES"}]})
    KmsKeyARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#kmsKeyARN", name: "KmsKeyARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 5096}})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#region", name: "Region", traits: {"smithy.api#length" => {"min" => 2, "max" => 25}})
    Rs = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspaces#rs", name: "Rs", traits: {"smithy.api#enum" => [{"value" => "SINGLE_REGION", "name" => "SINGLE_REGION"}, {"value" => "MULTI_REGION", "name" => "MULTI_REGION"}], "smithy.api#length" => {"min" => 1, "max" => 20}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AutoScalingPolicy.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingPolicyConfiguration, name: "targetTrackingScalingPolicyConfiguration"))
    AutoScalingPolicy.type = Types::AutoScalingPolicy
    AutoScalingSettings.add_member(:auto_scaling_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "autoScalingDisabled", traits: {"smithy.api#default" => false}))
    AutoScalingSettings.add_member(:minimum_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "minimumUnits"))
    AutoScalingSettings.add_member(:maximum_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "maximumUnits"))
    AutoScalingSettings.add_member(:scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicy, name: "scalingPolicy"))
    AutoScalingSettings.type = Types::AutoScalingSettings
    AutoScalingSpecification.add_member(:write_capacity_auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettings, name: "writeCapacityAutoScaling"))
    AutoScalingSpecification.add_member(:read_capacity_auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettings, name: "readCapacityAutoScaling"))
    AutoScalingSpecification.type = Types::AutoScalingSpecification
    CapacitySpecification.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "throughputMode", traits: {"smithy.api#required" => {}}))
    CapacitySpecification.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "readCapacityUnits"))
    CapacitySpecification.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "writeCapacityUnits"))
    CapacitySpecification.type = Types::CapacitySpecification
    CapacitySpecificationSummary.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "throughputMode", traits: {"smithy.api#required" => {}}))
    CapacitySpecificationSummary.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "readCapacityUnits"))
    CapacitySpecificationSummary.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "writeCapacityUnits"))
    CapacitySpecificationSummary.add_member(:last_update_to_pay_per_request_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateToPayPerRequestTimestamp"))
    CapacitySpecificationSummary.type = Types::CapacitySpecificationSummary
    CdcSpecification.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CdcStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CdcSpecification.add_member(:view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "viewType"))
    CdcSpecification.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CdcSpecification.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: CdcPropagateTags, name: "propagateTags"))
    CdcSpecification.type = Types::CdcSpecification
    CdcSpecificationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CdcStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CdcSpecificationSummary.add_member(:view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewType, name: "viewType"))
    CdcSpecificationSummary.type = Types::CdcSpecificationSummary
    ClientSideTimestamps.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideTimestampsStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ClientSideTimestamps.type = Types::ClientSideTimestamps
    ClusteringKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#required" => {}}))
    ClusteringKey.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "orderBy", traits: {"smithy.api#required" => {}}))
    ClusteringKey.type = Types::ClusteringKey
    ClusteringKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusteringKey, name: "member"))
    ColumnDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#required" => {}}))
    ColumnDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "type", traits: {"smithy.api#required" => {}}))
    ColumnDefinition.type = Types::ColumnDefinition
    ColumnDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDefinition, name: "member"))
    Comment.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    Comment.type = Types::Comment
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateKeyspaceInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    CreateKeyspaceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateKeyspaceInput.add_member(:replication_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSpecification, name: "replicationSpecification"))
    CreateKeyspaceInput.type = Types::CreateKeyspaceInput
    CreateKeyspaceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CreateKeyspaceOutput.type = Types::CreateKeyspaceOutput
    CreateTableInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    CreateTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    CreateTableInput.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaDefinition, name: "schemaDefinition", traits: {"smithy.api#required" => {}}))
    CreateTableInput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    CreateTableInput.add_member(:capacity_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacitySpecification, name: "capacitySpecification"))
    CreateTableInput.add_member(:encryption_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSpecification, name: "encryptionSpecification"))
    CreateTableInput.add_member(:point_in_time_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecovery, name: "pointInTimeRecovery"))
    CreateTableInput.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "ttl"))
    CreateTableInput.add_member(:default_time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultTimeToLive, name: "defaultTimeToLive"))
    CreateTableInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateTableInput.add_member(:client_side_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideTimestamps, name: "clientSideTimestamps"))
    CreateTableInput.add_member(:auto_scaling_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSpecification, name: "autoScalingSpecification"))
    CreateTableInput.add_member(:replica_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSpecificationList, name: "replicaSpecifications"))
    CreateTableInput.add_member(:cdc_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CdcSpecification, name: "cdcSpecification"))
    CreateTableInput.type = Types::CreateTableInput
    CreateTableOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CreateTableOutput.type = Types::CreateTableOutput
    CreateTypeRequest.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "typeName", traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.add_member(:field_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fieldDefinitions", traits: {"smithy.api#required" => {}}))
    CreateTypeRequest.type = Types::CreateTypeRequest
    CreateTypeResponse.add_member(:keyspace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "keyspaceArn", traits: {"smithy.api#required" => {}}))
    CreateTypeResponse.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "typeName", traits: {"smithy.api#required" => {}}))
    CreateTypeResponse.type = Types::CreateTypeResponse
    DeleteKeyspaceInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    DeleteKeyspaceInput.type = Types::DeleteKeyspaceInput
    DeleteKeyspaceOutput.type = Types::DeleteKeyspaceOutput
    DeleteTableInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    DeleteTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    DeleteTableInput.type = Types::DeleteTableInput
    DeleteTableOutput.type = Types::DeleteTableOutput
    DeleteTypeRequest.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    DeleteTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "typeName", traits: {"smithy.api#required" => {}}))
    DeleteTypeRequest.type = Types::DeleteTypeRequest
    DeleteTypeResponse.add_member(:keyspace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "keyspaceArn", traits: {"smithy.api#required" => {}}))
    DeleteTypeResponse.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "typeName", traits: {"smithy.api#required" => {}}))
    DeleteTypeResponse.type = Types::DeleteTypeResponse
    EncryptionSpecification.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "type", traits: {"smithy.api#required" => {}}))
    EncryptionSpecification.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyARN, name: "kmsKeyIdentifier"))
    EncryptionSpecification.type = Types::EncryptionSpecification
    FieldDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#required" => {}}))
    FieldDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "type", traits: {"smithy.api#required" => {}}))
    FieldDefinition.type = Types::FieldDefinition
    FieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDefinition, name: "member"))
    GetKeyspaceInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetKeyspaceInput.type = Types::GetKeyspaceInput
    GetKeyspaceOutput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetKeyspaceOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetKeyspaceOutput.add_member(:replication_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: Rs, name: "replicationStrategy", traits: {"smithy.api#required" => {}}))
    GetKeyspaceOutput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "replicationRegions"))
    GetKeyspaceOutput.add_member(:replication_group_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupStatusList, name: "replicationGroupStatuses"))
    GetKeyspaceOutput.type = Types::GetKeyspaceOutput
    GetTableAutoScalingSettingsRequest.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetTableAutoScalingSettingsRequest.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GetTableAutoScalingSettingsRequest.type = Types::GetTableAutoScalingSettingsRequest
    GetTableAutoScalingSettingsResponse.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetTableAutoScalingSettingsResponse.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GetTableAutoScalingSettingsResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetTableAutoScalingSettingsResponse.add_member(:auto_scaling_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSpecification, name: "autoScalingSpecification"))
    GetTableAutoScalingSettingsResponse.add_member(:replica_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaAutoScalingSpecificationList, name: "replicaSpecifications"))
    GetTableAutoScalingSettingsResponse.type = Types::GetTableAutoScalingSettingsResponse
    GetTableInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GetTableInput.type = Types::GetTableInput
    GetTableOutput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetTableOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GetTableOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetTableOutput.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "creationTimestamp"))
    GetTableOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatus, name: "status"))
    GetTableOutput.add_member(:schema_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaDefinition, name: "schemaDefinition"))
    GetTableOutput.add_member(:capacity_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacitySpecificationSummary, name: "capacitySpecification"))
    GetTableOutput.add_member(:encryption_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSpecification, name: "encryptionSpecification"))
    GetTableOutput.add_member(:point_in_time_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecoverySummary, name: "pointInTimeRecovery"))
    GetTableOutput.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "ttl"))
    GetTableOutput.add_member(:default_time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultTimeToLive, name: "defaultTimeToLive"))
    GetTableOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    GetTableOutput.add_member(:client_side_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideTimestamps, name: "clientSideTimestamps"))
    GetTableOutput.add_member(:replica_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSpecificationSummaryList, name: "replicaSpecifications"))
    GetTableOutput.add_member(:latest_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "latestStreamArn"))
    GetTableOutput.add_member(:cdc_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CdcSpecificationSummary, name: "cdcSpecification"))
    GetTableOutput.type = Types::GetTableOutput
    GetTypeRequest.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetTypeRequest.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "typeName", traits: {"smithy.api#required" => {}}))
    GetTypeRequest.type = Types::GetTypeRequest
    GetTypeResponse.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetTypeResponse.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "typeName", traits: {"smithy.api#required" => {}}))
    GetTypeResponse.add_member(:field_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fieldDefinitions"))
    GetTypeResponse.add_member(:last_modified_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedTimestamp"))
    GetTypeResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeStatus, name: "status"))
    GetTypeResponse.add_member(:direct_referring_tables, ::Smithy::Schema::Shapes::MemberShape.new(target: TableNameList, name: "directReferringTables"))
    GetTypeResponse.add_member(:direct_parent_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeNameList, name: "directParentTypes"))
    GetTypeResponse.add_member(:max_nesting_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: Depth, name: "maxNestingDepth", traits: {"smithy.api#default" => 0}))
    GetTypeResponse.add_member(:keyspace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "keyspaceArn", traits: {"smithy.api#required" => {}}))
    GetTypeResponse.type = Types::GetTypeResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    KeyspaceSummary.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    KeyspaceSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    KeyspaceSummary.add_member(:replication_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: Rs, name: "replicationStrategy", traits: {"smithy.api#required" => {}}))
    KeyspaceSummary.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "replicationRegions"))
    KeyspaceSummary.type = Types::KeyspaceSummary
    KeyspaceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceSummary, name: "member"))
    ListKeyspacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListKeyspacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListKeyspacesInput.type = Types::ListKeyspacesInput
    ListKeyspacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListKeyspacesOutput.add_member(:keyspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceSummaryList, name: "keyspaces", traits: {"smithy.api#required" => {}}))
    ListKeyspacesOutput.type = Types::ListKeyspacesOutput
    ListTablesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTablesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTablesInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    ListTablesInput.type = Types::ListTablesInput
    ListTablesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTablesOutput.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: TableSummaryList, name: "tables"))
    ListTablesOutput.type = Types::ListTablesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTypesRequest.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    ListTypesRequest.type = Types::ListTypesRequest
    ListTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTypesResponse.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeNameList, name: "types", traits: {"smithy.api#required" => {}}))
    ListTypesResponse.type = Types::ListTypesResponse
    PartitionKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#required" => {}}))
    PartitionKey.type = Types::PartitionKey
    PartitionKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "member"))
    PointInTimeRecovery.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecoveryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PointInTimeRecovery.type = Types::PointInTimeRecovery
    PointInTimeRecoverySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecoveryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PointInTimeRecoverySummary.add_member(:earliest_restorable_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "earliestRestorableTimestamp"))
    PointInTimeRecoverySummary.type = Types::PointInTimeRecoverySummary
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ReplicaAutoScalingSpecification.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region"))
    ReplicaAutoScalingSpecification.add_member(:auto_scaling_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSpecification, name: "autoScalingSpecification"))
    ReplicaAutoScalingSpecification.type = Types::ReplicaAutoScalingSpecification
    ReplicaAutoScalingSpecificationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaAutoScalingSpecification, name: "member"))
    ReplicaSpecification.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region", traits: {"smithy.api#required" => {}}))
    ReplicaSpecification.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnits, name: "readCapacityUnits"))
    ReplicaSpecification.add_member(:read_capacity_auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettings, name: "readCapacityAutoScaling"))
    ReplicaSpecification.type = Types::ReplicaSpecification
    ReplicaSpecificationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSpecification, name: "member"))
    ReplicaSpecificationSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region"))
    ReplicaSpecificationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatus, name: "status"))
    ReplicaSpecificationSummary.add_member(:capacity_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacitySpecificationSummary, name: "capacitySpecification"))
    ReplicaSpecificationSummary.type = Types::ReplicaSpecificationSummary
    ReplicaSpecificationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSpecificationSummary, name: "member"))
    ReplicationGroupStatus.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "region", traits: {"smithy.api#required" => {}}))
    ReplicationGroupStatus.add_member(:keyspace_status, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceStatus, name: "keyspaceStatus", traits: {"smithy.api#required" => {}}))
    ReplicationGroupStatus.add_member(:tables_replication_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: TablesReplicationProgress, name: "tablesReplicationProgress"))
    ReplicationGroupStatus.type = Types::ReplicationGroupStatus
    ReplicationGroupStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupStatus, name: "member"))
    ReplicationSpecification.add_member(:replication_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: Rs, name: "replicationStrategy", traits: {"smithy.api#required" => {}}))
    ReplicationSpecification.add_member(:region_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regionList"))
    ReplicationSpecification.type = Types::ReplicationSpecification
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreTableInput.add_member(:source_keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "sourceKeyspaceName", traits: {"smithy.api#required" => {}}))
    RestoreTableInput.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "sourceTableName", traits: {"smithy.api#required" => {}}))
    RestoreTableInput.add_member(:target_keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "targetKeyspaceName", traits: {"smithy.api#required" => {}}))
    RestoreTableInput.add_member(:target_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "targetTableName", traits: {"smithy.api#required" => {}}))
    RestoreTableInput.add_member(:restore_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "restoreTimestamp"))
    RestoreTableInput.add_member(:capacity_specification_override, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacitySpecification, name: "capacitySpecificationOverride"))
    RestoreTableInput.add_member(:encryption_specification_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSpecification, name: "encryptionSpecificationOverride"))
    RestoreTableInput.add_member(:point_in_time_recovery_override, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecovery, name: "pointInTimeRecoveryOverride"))
    RestoreTableInput.add_member(:tags_override, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tagsOverride"))
    RestoreTableInput.add_member(:auto_scaling_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSpecification, name: "autoScalingSpecification"))
    RestoreTableInput.add_member(:replica_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSpecificationList, name: "replicaSpecifications"))
    RestoreTableInput.type = Types::RestoreTableInput
    RestoreTableOutput.add_member(:restored_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "restoredTableARN", traits: {"smithy.api#required" => {}}))
    RestoreTableOutput.type = Types::RestoreTableOutput
    SchemaDefinition.add_member(:all_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDefinitionList, name: "allColumns", traits: {"smithy.api#required" => {}}))
    SchemaDefinition.add_member(:partition_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKeyList, name: "partitionKeys", traits: {"smithy.api#required" => {}}))
    SchemaDefinition.add_member(:clustering_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusteringKeyList, name: "clusteringKeys"))
    SchemaDefinition.add_member(:static_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticColumnList, name: "staticColumns"))
    SchemaDefinition.type = Types::SchemaDefinition
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StaticColumn.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "name", traits: {"smithy.api#required" => {}}))
    StaticColumn.type = Types::StaticColumn
    StaticColumnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticColumn, name: "member"))
    TableNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "member"))
    TableSummary.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    TableSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TableSummary.type = Types::TableSummary
    TableSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableSummary, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetTrackingScalingPolicyConfiguration.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "disableScaleIn", traits: {"smithy.api#default" => false}))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "scaleInCooldown", traits: {"smithy.api#default" => 0}))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "scaleOutCooldown", traits: {"smithy.api#default" => 0}))
    TargetTrackingScalingPolicyConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, name: "targetValue", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TargetTrackingScalingPolicyConfiguration.type = Types::TargetTrackingScalingPolicyConfiguration
    TimeToLive.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveStatus, name: "status", traits: {"smithy.api#required" => {}}))
    TimeToLive.type = Types::TimeToLive
    TypeNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "member"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateKeyspaceRequest.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    UpdateKeyspaceRequest.add_member(:replication_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationSpecification, name: "replicationSpecification", traits: {"smithy.api#required" => {}}))
    UpdateKeyspaceRequest.add_member(:client_side_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideTimestamps, name: "clientSideTimestamps"))
    UpdateKeyspaceRequest.type = Types::UpdateKeyspaceRequest
    UpdateKeyspaceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UpdateKeyspaceResponse.type = Types::UpdateKeyspaceResponse
    UpdateTableInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    UpdateTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    UpdateTableInput.add_member(:add_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnDefinitionList, name: "addColumns"))
    UpdateTableInput.add_member(:capacity_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacitySpecification, name: "capacitySpecification"))
    UpdateTableInput.add_member(:encryption_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionSpecification, name: "encryptionSpecification"))
    UpdateTableInput.add_member(:point_in_time_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecovery, name: "pointInTimeRecovery"))
    UpdateTableInput.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLive, name: "ttl"))
    UpdateTableInput.add_member(:default_time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultTimeToLive, name: "defaultTimeToLive"))
    UpdateTableInput.add_member(:client_side_timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSideTimestamps, name: "clientSideTimestamps"))
    UpdateTableInput.add_member(:auto_scaling_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSpecification, name: "autoScalingSpecification"))
    UpdateTableInput.add_member(:replica_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSpecificationList, name: "replicaSpecifications"))
    UpdateTableInput.add_member(:cdc_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CdcSpecification, name: "cdcSpecification"))
    UpdateTableInput.type = Types::UpdateTableInput
    UpdateTableOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UpdateTableOutput.type = Types::UpdateTableOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    KeyspacesService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.keyspaces#KeyspacesService"
      service.name = "KeyspacesService"
      service.version = "2022-02-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Keyspaces", "cloudFormationName" => "Cassandra", "arnNamespace" => "cassandra", "cloudTrailEventSource" => "cassandra.amazonaws.com", "endpointPrefix" => "cassandra"}, "aws.auth#sigv4" => {"name" => "cassandra"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Keyspaces"}
      service.add_operation(:create_keyspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#CreateKeyspace"
        operation.name = "CreateKeyspace"
        operation.input = CreateKeyspaceInput
        operation.output = CreateKeyspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#CreateTable"
        operation.name = "CreateTable"
        operation.input = CreateTableInput
        operation.output = CreateTableOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#CreateType"
        operation.name = "CreateType"
        operation.input = CreateTypeRequest
        operation.output = CreateTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_keyspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#DeleteKeyspace"
        operation.name = "DeleteKeyspace"
        operation.input = DeleteKeyspaceInput
        operation.output = DeleteKeyspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = DeleteTableInput
        operation.output = DeleteTableOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#DeleteType"
        operation.name = "DeleteType"
        operation.input = DeleteTypeRequest
        operation.output = DeleteTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_keyspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetKeyspace"
        operation.name = "GetKeyspace"
        operation.input = GetKeyspaceInput
        operation.output = GetKeyspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetTable"
        operation.name = "GetTable"
        operation.input = GetTableInput
        operation.output = GetTableOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_table_auto_scaling_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetTableAutoScalingSettings"
        operation.name = "GetTableAutoScalingSettings"
        operation.input = GetTableAutoScalingSettingsRequest
        operation.output = GetTableAutoScalingSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#GetType"
        operation.name = "GetType"
        operation.input = GetTypeRequest
        operation.output = GetTypeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_keyspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListKeyspaces"
        operation.name = "ListKeyspaces"
        operation.input = ListKeyspacesInput
        operation.output = ListKeyspacesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListKeyspaces.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListTables"
        operation.name = "ListTables"
        operation.input = ListTablesInput
        operation.output = ListTablesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#ListTypes"
        operation.name = "ListTypes"
        operation.input = ListTypesRequest
        operation.output = ListTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTypes.new
      end)
      service.add_operation(:restore_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#RestoreTable"
        operation.name = "RestoreTable"
        operation.input = RestoreTableInput
        operation.output = RestoreTableOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_keyspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#UpdateKeyspace"
        operation.name = "UpdateKeyspace"
        operation.input = UpdateKeyspaceRequest
        operation.output = UpdateKeyspaceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspaces#UpdateTable"
        operation.name = "UpdateTable"
        operation.input = UpdateTableInput
        operation.output = UpdateTableOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {}
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
