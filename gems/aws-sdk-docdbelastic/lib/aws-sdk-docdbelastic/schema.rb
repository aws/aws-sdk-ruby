# frozen_string_literal: true

# This is generated code!

module Aws::DocDBElastic
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApplyPendingMaintenanceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ApplyPendingMaintenanceActionInput", name: "ApplyPendingMaintenanceActionInput")
    ApplyPendingMaintenanceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ApplyPendingMaintenanceActionOutput", name: "ApplyPendingMaintenanceActionOutput")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Auth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#Auth", name: "Auth", traits: {"smithy.api#enum" => [{"value" => "PLAIN_TEXT", "name" => "PLAIN_TEXT"}, {"value" => "SECRET_ARN", "name" => "SECRET_ARN"}]})
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#Cluster", name: "Cluster")
    ClusterInList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ClusterInList", name: "ClusterInList")
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#ClusterList", name: "ClusterList")
    ClusterSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ClusterSnapshot", name: "ClusterSnapshot")
    ClusterSnapshotInList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ClusterSnapshotInList", name: "ClusterSnapshotInList")
    ClusterSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#ClusterSnapshotList", name: "ClusterSnapshotList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopyClusterSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#CopyClusterSnapshotInput", name: "CopyClusterSnapshotInput")
    CopyClusterSnapshotOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#CopyClusterSnapshotOutput", name: "CopyClusterSnapshotOutput")
    CreateClusterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#CreateClusterOperationInput", name: "CreateClusterOperationInput")
    CreateClusterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#CreateClusterOperationOutput", name: "CreateClusterOperationOutput")
    CreateClusterSnapshotOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#CreateClusterSnapshotOperationInput", name: "CreateClusterSnapshotOperationInput")
    CreateClusterSnapshotOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#CreateClusterSnapshotOperationOutput", name: "CreateClusterSnapshotOperationOutput")
    DeleteClusterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#DeleteClusterOperationInput", name: "DeleteClusterOperationInput")
    DeleteClusterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#DeleteClusterOperationOutput", name: "DeleteClusterOperationOutput")
    DeleteClusterSnapshotOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#DeleteClusterSnapshotOperationInput", name: "DeleteClusterSnapshotOperationInput")
    DeleteClusterSnapshotOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#DeleteClusterSnapshotOperationOutput", name: "DeleteClusterSnapshotOperationOutput")
    GetClusterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#GetClusterOperationInput", name: "GetClusterOperationInput")
    GetClusterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#GetClusterOperationOutput", name: "GetClusterOperationOutput")
    GetClusterSnapshotOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#GetClusterSnapshotOperationInput", name: "GetClusterSnapshotOperationInput")
    GetClusterSnapshotOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#GetClusterSnapshotOperationOutput", name: "GetClusterSnapshotOperationOutput")
    GetPendingMaintenanceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#GetPendingMaintenanceActionInput", name: "GetPendingMaintenanceActionInput")
    GetPendingMaintenanceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#GetPendingMaintenanceActionOutput", name: "GetPendingMaintenanceActionOutput")
    InputString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#InputString", name: "InputString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListClusterSnapshotsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListClusterSnapshotsOperationInput", name: "ListClusterSnapshotsOperationInput")
    ListClusterSnapshotsOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListClusterSnapshotsOperationOutput", name: "ListClusterSnapshotsOperationOutput")
    ListClustersOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListClustersOperationInput", name: "ListClustersOperationInput")
    ListClustersOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListClustersOperationOutput", name: "ListClustersOperationOutput")
    ListPendingMaintenanceActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListPendingMaintenanceActionsInput", name: "ListPendingMaintenanceActionsInput")
    ListPendingMaintenanceActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListPendingMaintenanceActionsOutput", name: "ListPendingMaintenanceActionsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    OptInType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#OptInType", name: "OptInType", traits: {"smithy.api#enum" => [{"value" => "IMMEDIATE", "name" => "IMMEDIATE"}, {"value" => "NEXT_MAINTENANCE", "name" => "NEXT_MAINTENANCE"}, {"value" => "APPLY_ON", "name" => "APPLY_ON"}, {"value" => "UNDO_OPT_IN", "name" => "UNDO_OPT_IN"}]})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#PaginationToken", name: "PaginationToken")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#Password", name: "Password", traits: {"smithy.api#sensitive" => {}})
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#PendingMaintenanceActionDetails", name: "PendingMaintenanceActionDetails")
    PendingMaintenanceActionDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#PendingMaintenanceActionDetailsList", name: "PendingMaintenanceActionDetailsList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ResourcePendingMaintenanceAction", name: "ResourcePendingMaintenanceAction")
    ResourcePendingMaintenanceActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#ResourcePendingMaintenanceActionList", name: "ResourcePendingMaintenanceActionList")
    RestoreClusterFromSnapshotOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#RestoreClusterFromSnapshotOperationInput", name: "RestoreClusterFromSnapshotOperationInput")
    RestoreClusterFromSnapshotOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#RestoreClusterFromSnapshotOperationOutput", name: "RestoreClusterFromSnapshotOperationOutput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Shard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#Shard", name: "Shard")
    ShardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#ShardList", name: "ShardList")
    SnapshotType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#SnapshotType", name: "SnapshotType", traits: {"smithy.api#enum" => [{"value" => "MANUAL", "name" => "MANUAL"}, {"value" => "AUTOMATED", "name" => "AUTOMATED"}]})
    StartClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#StartClusterInput", name: "StartClusterInput")
    StartClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#StartClusterOutput", name: "StartClusterOutput")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#Status", name: "Status", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "VPC_ENDPOINT_LIMIT_EXCEEDED", "name" => "VPC_ENDPOINT_LIMIT_EXCEEDED"}, {"value" => "IP_ADDRESS_LIMIT_EXCEEDED", "name" => "IP_ADDRESS_LIMIT_EXCEEDED"}, {"value" => "INVALID_SECURITY_GROUP_ID", "name" => "INVALID_SECURITY_GROUP_ID"}, {"value" => "INVALID_SUBNET_ID", "name" => "INVALID_SUBNET_ID"}, {"value" => "INACCESSIBLE_ENCRYPTION_CREDS", "name" => "INACCESSIBLE_ENCRYPTION_CREDS"}, {"value" => "INACCESSIBLE_SECRET_ARN", "name" => "INACCESSIBLE_SECRET_ARN"}, {"value" => "INACCESSIBLE_VPC_ENDPOINT", "name" => "INACCESSIBLE_VPC_ENDPOINT"}, {"value" => "INCOMPATIBLE_NETWORK", "name" => "INCOMPATIBLE_NETWORK"}, {"value" => "MERGING", "name" => "MERGING"}, {"value" => "MODIFYING", "name" => "MODIFYING"}, {"value" => "SPLITTING", "name" => "SPLITTING"}, {"value" => "COPYING", "name" => "COPYING"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "MAINTENANCE", "name" => "MAINTENANCE"}, {"value" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS_RECOVERABLE", "name" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS_RECOVERABLE"}]})
    StopClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#StopClusterInput", name: "StopClusterInput")
    StopClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#StopClusterOutput", name: "StopClusterOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#StringList", name: "StringList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.docdbelastic#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateClusterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#UpdateClusterOperationInput", name: "UpdateClusterOperationInput")
    UpdateClusterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#UpdateClusterOperationOutput", name: "UpdateClusterOperationOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.docdbelastic#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.docdbelastic#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.docdbelastic#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplyPendingMaintenanceActionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionInput.add_member(:apply_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: "applyAction", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionInput.add_member(:opt_in_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptInType, location_name: "optInType", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionInput.add_member(:apply_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: "applyOn"))
    ApplyPendingMaintenanceActionInput.type = Types::ApplyPendingMaintenanceActionInput
    ApplyPendingMaintenanceActionOutput.add_member(:resource_pending_maintenance_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceAction, location_name: "resourcePendingMaintenanceAction", traits: {"smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionOutput.type = Types::ApplyPendingMaintenanceActionOutput
    Cluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterEndpoint", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "createTime", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:admin_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adminUserName", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Auth, location_name: "authType", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:shard_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCapacity", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:shard_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCount", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "preferredMaintenanceWindow", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:shards, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShardList, location_name: "shards"))
    Cluster.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "backupRetentionPeriod"))
    Cluster.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "preferredBackupWindow"))
    Cluster.add_member(:shard_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardInstanceCount"))
    Cluster.type = Types::Cluster
    ClusterInList.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName", traits: {"smithy.api#required" => {}}))
    ClusterInList.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#required" => {}}))
    ClusterInList.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    ClusterInList.type = Types::ClusterInList
    ClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterInList)
    ClusterSnapshot.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotName", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotArn", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotCreationTime", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:cluster_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterCreationTime", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:admin_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adminUserName", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotType, location_name: "snapshotType"))
    ClusterSnapshot.type = Types::ClusterSnapshot
    ClusterSnapshotInList.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotName", traits: {"smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotArn", traits: {"smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:snapshot_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotCreationTime", traits: {"smithy.api#required" => {}}))
    ClusterSnapshotInList.type = Types::ClusterSnapshotInList
    ClusterSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotInList)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CopyClusterSnapshotInput.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    CopyClusterSnapshotInput.add_member(:target_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "targetSnapshotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#required" => {}}))
    CopyClusterSnapshotInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyId"))
    CopyClusterSnapshotInput.add_member(:copy_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "copyTags", traits: {"smithy.api#default" => nil}))
    CopyClusterSnapshotInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CopyClusterSnapshotInput.type = Types::CopyClusterSnapshotInput
    CopyClusterSnapshotOutput.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: "snapshot", traits: {"smithy.api#required" => {}}))
    CopyClusterSnapshotOutput.type = Types::CopyClusterSnapshotOutput
    CreateClusterOperationInput.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Auth, location_name: "authType", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:admin_user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "adminUserName", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:admin_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: "adminUserPassword", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:shard_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCapacity", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:shard_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCount", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds"))
    CreateClusterOperationInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    CreateClusterOperationInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyId"))
    CreateClusterOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterOperationInput.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "preferredMaintenanceWindow"))
    CreateClusterOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterOperationInput.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "backupRetentionPeriod"))
    CreateClusterOperationInput.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "preferredBackupWindow"))
    CreateClusterOperationInput.add_member(:shard_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardInstanceCount"))
    CreateClusterOperationInput.type = Types::CreateClusterOperationInput
    CreateClusterOperationOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    CreateClusterOperationOutput.type = Types::CreateClusterOperationOutput
    CreateClusterSnapshotOperationInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#required" => {}}))
    CreateClusterSnapshotOperationInput.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#required" => {}}))
    CreateClusterSnapshotOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterSnapshotOperationInput.type = Types::CreateClusterSnapshotOperationInput
    CreateClusterSnapshotOperationOutput.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: "snapshot", traits: {"smithy.api#required" => {}}))
    CreateClusterSnapshotOperationOutput.type = Types::CreateClusterSnapshotOperationOutput
    DeleteClusterOperationInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    DeleteClusterOperationInput.type = Types::DeleteClusterOperationInput
    DeleteClusterOperationOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    DeleteClusterOperationOutput.type = Types::DeleteClusterOperationOutput
    DeleteClusterSnapshotOperationInput.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    DeleteClusterSnapshotOperationInput.type = Types::DeleteClusterSnapshotOperationInput
    DeleteClusterSnapshotOperationOutput.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: "snapshot", traits: {"smithy.api#required" => {}}))
    DeleteClusterSnapshotOperationOutput.type = Types::DeleteClusterSnapshotOperationOutput
    GetClusterOperationInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    GetClusterOperationInput.type = Types::GetClusterOperationInput
    GetClusterOperationOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    GetClusterOperationOutput.type = Types::GetClusterOperationOutput
    GetClusterSnapshotOperationInput.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    GetClusterSnapshotOperationInput.type = Types::GetClusterSnapshotOperationInput
    GetClusterSnapshotOperationOutput.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: "snapshot", traits: {"smithy.api#required" => {}}))
    GetClusterSnapshotOperationOutput.type = Types::GetClusterSnapshotOperationOutput
    GetPendingMaintenanceActionInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "resourceArn"}))
    GetPendingMaintenanceActionInput.type = Types::GetPendingMaintenanceActionInput
    GetPendingMaintenanceActionOutput.add_member(:resource_pending_maintenance_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceAction, location_name: "resourcePendingMaintenanceAction", traits: {"smithy.api#required" => {}}))
    GetPendingMaintenanceActionOutput.type = Types::GetPendingMaintenanceActionOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListClusterSnapshotsOperationInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#httpQuery" => "clusterArn"}))
    ListClusterSnapshotsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClusterSnapshotsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 20, "max" => 100}}))
    ListClusterSnapshotsOperationInput.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotType", traits: {"smithy.api#httpQuery" => "snapshotType"}))
    ListClusterSnapshotsOperationInput.type = Types::ListClusterSnapshotsOperationInput
    ListClusterSnapshotsOperationOutput.add_member(:snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotList, location_name: "snapshots"))
    ListClusterSnapshotsOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListClusterSnapshotsOperationOutput.type = Types::ListClusterSnapshotsOperationOutput
    ListClustersOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListClustersOperationInput.type = Types::ListClustersOperationInput
    ListClustersOperationOutput.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: "clusters"))
    ListClustersOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListClustersOperationOutput.type = Types::ListClustersOperationOutput
    ListPendingMaintenanceActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPendingMaintenanceActionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPendingMaintenanceActionsInput.type = Types::ListPendingMaintenanceActionsInput
    ListPendingMaintenanceActionsOutput.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActionList, location_name: "resourcePendingMaintenanceActions", traits: {"smithy.api#required" => {}}))
    ListPendingMaintenanceActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPendingMaintenanceActionsOutput.type = Types::ListPendingMaintenanceActionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    PendingMaintenanceActionDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "action", traits: {"smithy.api#required" => {}}))
    PendingMaintenanceActionDetails.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "autoAppliedAfterDate"))
    PendingMaintenanceActionDetails.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "forcedApplyDate"))
    PendingMaintenanceActionDetails.add_member(:opt_in_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "optInStatus"))
    PendingMaintenanceActionDetails.add_member(:current_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "currentApplyDate"))
    PendingMaintenanceActionDetails.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    PendingMaintenanceActionDetails.type = Types::PendingMaintenanceActionDetails
    PendingMaintenanceActionDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePendingMaintenanceAction.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn"))
    ResourcePendingMaintenanceAction.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetailsList, location_name: "pendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceAction.type = Types::ResourcePendingMaintenanceAction
    ResourcePendingMaintenanceActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceAction)
    RestoreClusterFromSnapshotOperationInput.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterName", traits: {"smithy.api#required" => {}}))
    RestoreClusterFromSnapshotOperationInput.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "snapshotArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds"))
    RestoreClusterFromSnapshotOperationInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    RestoreClusterFromSnapshotOperationInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyId"))
    RestoreClusterFromSnapshotOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RestoreClusterFromSnapshotOperationInput.add_member(:shard_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCapacity"))
    RestoreClusterFromSnapshotOperationInput.add_member(:shard_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardInstanceCount"))
    RestoreClusterFromSnapshotOperationInput.type = Types::RestoreClusterFromSnapshotOperationInput
    RestoreClusterFromSnapshotOperationOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    RestoreClusterFromSnapshotOperationOutput.type = Types::RestoreClusterFromSnapshotOperationOutput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Shard.add_member(:shard_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shardId", traits: {"smithy.api#required" => {}}))
    Shard.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "createTime", traits: {"smithy.api#required" => {}}))
    Shard.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status", traits: {"smithy.api#required" => {}}))
    Shard.type = Types::Shard
    ShardList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Shard)
    StartClusterInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    StartClusterInput.type = Types::StartClusterInput
    StartClusterOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    StartClusterOutput.type = Types::StartClusterOutput
    StopClusterInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    StopClusterInput.type = Types::StopClusterInput
    StopClusterOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    StopClusterOutput.type = Types::StopClusterOutput
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateClusterOperationInput.add_member(:cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clusterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    UpdateClusterOperationInput.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Auth, location_name: "authType"))
    UpdateClusterOperationInput.add_member(:shard_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCapacity"))
    UpdateClusterOperationInput.add_member(:shard_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardCount"))
    UpdateClusterOperationInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds"))
    UpdateClusterOperationInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    UpdateClusterOperationInput.add_member(:admin_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: "adminUserPassword"))
    UpdateClusterOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterOperationInput.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "preferredMaintenanceWindow"))
    UpdateClusterOperationInput.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "backupRetentionPeriod"))
    UpdateClusterOperationInput.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "preferredBackupWindow"))
    UpdateClusterOperationInput.add_member(:shard_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "shardInstanceCount"))
    UpdateClusterOperationInput.type = Types::UpdateClusterOperationInput
    UpdateClusterOperationOutput.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateClusterOperationOutput.type = Types::UpdateClusterOperationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ChimeraDbLionfishServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.docdbelastic#ChimeraDbLionfishServiceLambda"
      service.name = "ChimeraDbLionfishServiceLambda"
      service.version = "2022-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "DocDB Elastic", "arnNamespace" => "docdb-elastic", "cloudTrailEventSource" => "CASCADES_EVENT_SOURCE"}, "aws.auth#sigv4" => {"name" => "docdb-elastic"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Amazon DocumentDB Elastic Clusters"}
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/pending-action"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:copy_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#CopyClusterSnapshot"
        operation.name = "CopyClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster-snapshot/{snapshotArn}/copy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#CreateClusterSnapshot"
        operation.name = "CreateClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster-snapshot"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster/{clusterArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#DeleteClusterSnapshot"
        operation.name = "DeleteClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster-snapshot/{snapshotArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#GetCluster"
        operation.name = "GetCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster/{clusterArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#GetClusterSnapshot"
        operation.name = "GetClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterSnapshotOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterSnapshotOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster-snapshot/{snapshotArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#GetPendingMaintenanceAction"
        operation.name = "GetPendingMaintenanceAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingMaintenanceActionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingMaintenanceActionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/pending-action/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListClusterSnapshots"
        operation.name = "ListClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterSnapshotsOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterSnapshotsOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster-snapshots"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListClusterSnapshots.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListClusters"
        operation.name = "ListClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/clusters"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListPendingMaintenanceActions"
        operation.name = "ListPendingMaintenanceActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPendingMaintenanceActionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPendingMaintenanceActionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/pending-actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPendingMaintenanceActions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:restore_cluster_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#RestoreClusterFromSnapshot"
        operation.name = "RestoreClusterFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreClusterFromSnapshotOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreClusterFromSnapshotOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster-snapshot/{snapshotArn}/restore"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#StartCluster"
        operation.name = "StartCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{clusterArn}/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#StopCluster"
        operation.name = "StopCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopClusterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{clusterArn}/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cluster/{clusterArn}"}, "smithy.api#idempotent" => {}}
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
