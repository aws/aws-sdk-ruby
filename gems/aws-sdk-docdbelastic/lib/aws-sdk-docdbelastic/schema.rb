# frozen_string_literal: true

# This is generated code!

module Aws::DocDBElastic
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ApplyPendingMaintenanceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ApplyPendingMaintenanceActionInput', name: 'ApplyPendingMaintenanceActionInput')
    ApplyPendingMaintenanceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ApplyPendingMaintenanceActionOutput', name: 'ApplyPendingMaintenanceActionOutput')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Auth = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#Auth', name: 'Auth', traits: {"smithy.api#enum" => [{"value" => "PLAIN_TEXT", "name" => "PLAIN_TEXT"}, {"value" => "SECRET_ARN", "name" => "SECRET_ARN"}]})
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#Cluster', name: 'Cluster')
    ClusterInList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ClusterInList', name: 'ClusterInList')
    ClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#ClusterList', name: 'ClusterList')
    ClusterSnapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ClusterSnapshot', name: 'ClusterSnapshot')
    ClusterSnapshotInList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ClusterSnapshotInList', name: 'ClusterSnapshotInList')
    ClusterSnapshotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#ClusterSnapshotList', name: 'ClusterSnapshotList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopyClusterSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#CopyClusterSnapshotInput', name: 'CopyClusterSnapshotInput')
    CopyClusterSnapshotOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#CopyClusterSnapshotOutput', name: 'CopyClusterSnapshotOutput')
    CreateClusterOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#CreateClusterOperationInput', name: 'CreateClusterOperationInput')
    CreateClusterOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#CreateClusterOperationOutput', name: 'CreateClusterOperationOutput')
    CreateClusterSnapshotOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#CreateClusterSnapshotOperationInput', name: 'CreateClusterSnapshotOperationInput')
    CreateClusterSnapshotOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#CreateClusterSnapshotOperationOutput', name: 'CreateClusterSnapshotOperationOutput')
    DeleteClusterOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#DeleteClusterOperationInput', name: 'DeleteClusterOperationInput')
    DeleteClusterOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#DeleteClusterOperationOutput', name: 'DeleteClusterOperationOutput')
    DeleteClusterSnapshotOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#DeleteClusterSnapshotOperationInput', name: 'DeleteClusterSnapshotOperationInput')
    DeleteClusterSnapshotOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#DeleteClusterSnapshotOperationOutput', name: 'DeleteClusterSnapshotOperationOutput')
    GetClusterOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#GetClusterOperationInput', name: 'GetClusterOperationInput')
    GetClusterOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#GetClusterOperationOutput', name: 'GetClusterOperationOutput')
    GetClusterSnapshotOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#GetClusterSnapshotOperationInput', name: 'GetClusterSnapshotOperationInput')
    GetClusterSnapshotOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#GetClusterSnapshotOperationOutput', name: 'GetClusterSnapshotOperationOutput')
    GetPendingMaintenanceActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#GetPendingMaintenanceActionInput', name: 'GetPendingMaintenanceActionInput')
    GetPendingMaintenanceActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#GetPendingMaintenanceActionOutput', name: 'GetPendingMaintenanceActionOutput')
    InputString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#InputString', name: 'InputString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListClusterSnapshotsOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListClusterSnapshotsOperationInput', name: 'ListClusterSnapshotsOperationInput')
    ListClusterSnapshotsOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListClusterSnapshotsOperationOutput', name: 'ListClusterSnapshotsOperationOutput')
    ListClustersOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListClustersOperationInput', name: 'ListClustersOperationInput')
    ListClustersOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListClustersOperationOutput', name: 'ListClustersOperationOutput')
    ListPendingMaintenanceActionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListPendingMaintenanceActionsInput', name: 'ListPendingMaintenanceActionsInput')
    ListPendingMaintenanceActionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListPendingMaintenanceActionsOutput', name: 'ListPendingMaintenanceActionsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    OptInType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#OptInType', name: 'OptInType', traits: {"smithy.api#enum" => [{"value" => "IMMEDIATE", "name" => "IMMEDIATE"}, {"value" => "NEXT_MAINTENANCE", "name" => "NEXT_MAINTENANCE"}, {"value" => "APPLY_ON", "name" => "APPLY_ON"}, {"value" => "UNDO_OPT_IN", "name" => "UNDO_OPT_IN"}]})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#PaginationToken', name: 'PaginationToken')
    Password = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#Password', name: 'Password', traits: {"smithy.api#sensitive" => {}})
    PendingMaintenanceActionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#PendingMaintenanceActionDetails', name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActionDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#PendingMaintenanceActionDetailsList', name: 'PendingMaintenanceActionDetailsList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ResourcePendingMaintenanceAction', name: 'ResourcePendingMaintenanceAction')
    ResourcePendingMaintenanceActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#ResourcePendingMaintenanceActionList', name: 'ResourcePendingMaintenanceActionList')
    RestoreClusterFromSnapshotOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#RestoreClusterFromSnapshotOperationInput', name: 'RestoreClusterFromSnapshotOperationInput')
    RestoreClusterFromSnapshotOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#RestoreClusterFromSnapshotOperationOutput', name: 'RestoreClusterFromSnapshotOperationOutput')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Shard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#Shard', name: 'Shard')
    ShardList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#ShardList', name: 'ShardList')
    SnapshotType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#SnapshotType', name: 'SnapshotType', traits: {"smithy.api#enum" => [{"value" => "MANUAL", "name" => "MANUAL"}, {"value" => "AUTOMATED", "name" => "AUTOMATED"}]})
    StartClusterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#StartClusterInput', name: 'StartClusterInput')
    StartClusterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#StartClusterOutput', name: 'StartClusterOutput')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "VPC_ENDPOINT_LIMIT_EXCEEDED", "name" => "VPC_ENDPOINT_LIMIT_EXCEEDED"}, {"value" => "IP_ADDRESS_LIMIT_EXCEEDED", "name" => "IP_ADDRESS_LIMIT_EXCEEDED"}, {"value" => "INVALID_SECURITY_GROUP_ID", "name" => "INVALID_SECURITY_GROUP_ID"}, {"value" => "INVALID_SUBNET_ID", "name" => "INVALID_SUBNET_ID"}, {"value" => "INACCESSIBLE_ENCRYPTION_CREDS", "name" => "INACCESSIBLE_ENCRYPTION_CREDS"}, {"value" => "INACCESSIBLE_SECRET_ARN", "name" => "INACCESSIBLE_SECRET_ARN"}, {"value" => "INACCESSIBLE_VPC_ENDPOINT", "name" => "INACCESSIBLE_VPC_ENDPOINT"}, {"value" => "INCOMPATIBLE_NETWORK", "name" => "INCOMPATIBLE_NETWORK"}, {"value" => "MERGING", "name" => "MERGING"}, {"value" => "MODIFYING", "name" => "MODIFYING"}, {"value" => "SPLITTING", "name" => "SPLITTING"}, {"value" => "COPYING", "name" => "COPYING"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "MAINTENANCE", "name" => "MAINTENANCE"}, {"value" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS_RECOVERABLE", "name" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS_RECOVERABLE"}]})
    StopClusterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#StopClusterInput', name: 'StopClusterInput')
    StopClusterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#StopClusterOutput', name: 'StopClusterOutput')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#StringList', name: 'StringList')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.docdbelastic#TagMap', name: 'TagMap')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateClusterOperationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#UpdateClusterOperationInput', name: 'UpdateClusterOperationInput')
    UpdateClusterOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#UpdateClusterOperationOutput', name: 'UpdateClusterOperationOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.docdbelastic#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.docdbelastic#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.docdbelastic#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}]})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An error message explaining why access was denied.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplyPendingMaintenanceActionInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to which the pending maintenance action applies.</p>", "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionInput.add_member(:apply_action, Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: 'applyAction', traits: {"smithy.api#documentation" => "<p>The pending maintenance action to apply to the resource.</p>\n         <p>Valid actions are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENGINE_UPDATE<i/>\n                  </code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>ENGINE_UPGRADE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SECURITY_UPDATE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>OS_UPDATE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MASTER_USER_PASSWORD_UPDATE</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionInput.add_member(:opt_in_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OptInType, location_name: 'optInType', traits: {"smithy.api#documentation" => "<p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>IMMEDIATE</code> can't be undone.</p>", "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionInput.add_member(:apply_on, Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: 'applyOn', traits: {"smithy.api#documentation" => "<p>A specific date to apply the pending maintenance action. Required if opt-in-type is <code>APPLY_ON</code>. Format: <code>yyyy/MM/dd HH:mm-yyyy/MM/dd HH:mm</code>\n         </p>"}))
    ApplyPendingMaintenanceActionInput.type = Types::ApplyPendingMaintenanceActionInput
    ApplyPendingMaintenanceActionOutput.add_member(:resource_pending_maintenance_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceAction, location_name: 'resourcePendingMaintenanceAction', traits: {"smithy.api#documentation" => "<p>The output of the pending maintenance action being applied.</p>", "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionOutput.type = Types::ApplyPendingMaintenanceActionOutput
    Cluster.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:cluster_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterEndpoint', traits: {"smithy.api#documentation" => "<p>The URL used to connect to the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the elastic cluster was created in Universal Coordinated Time (UTC).</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:admin_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'adminUserName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster administrator.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Auth, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The authentication type for the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:shard_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCapacity', traits: {"smithy.api#documentation" => "<p>The number of vCPUs assigned to each elastic cluster shard. Maximum is 64. \n      Allowed values are 2, 4, 8, 16, 32, 64.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:shard_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCount', traits: {"smithy.api#documentation" => "<p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of EC2 VPC security groups associated with thie elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 subnet IDs for the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>\n         <p>\n            <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>\n         </p>", "smithy.api#required" => {}}))
    Cluster.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier to use to encrypt the elastic cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:shards, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardList, location_name: 'shards', traits: {"smithy.api#documentation" => "<p>The total number of shards in the cluster.</p>"}))
    Cluster.add_member(:backup_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'backupRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days for which automatic snapshots are retained.</p>"}))
    Cluster.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredBackupWindow', traits: {"smithy.api#documentation" => "<p>The daily time range during which automated backups are created if automated backups are enabled, as determined by <code>backupRetentionPeriod</code>.</p>"}))
    Cluster.add_member(:shard_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardInstanceCount', traits: {"smithy.api#documentation" => "<p>The number of replica instances applying to all shards in the cluster. \n      A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>"}))
    Cluster.type = Types::Cluster
    ClusterInList.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterInList.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterInList.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterInList.type = Types::ClusterInList
    ClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterInList)
    ClusterSnapshot.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 subnet IDs for the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotCreationTime', traits: {"smithy.api#documentation" => "<p>The time when the elastic cluster snapshot was created in Universal Coordinated Time (UTC).</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:cluster_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterCreationTime', traits: {"smithy.api#documentation" => "<p>The time when the elastic cluster was created in Universal Coordinated Time (UTC).</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:admin_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'adminUserName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster administrator.</p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. \n      If you are creating a cluster using the same Amazon account that owns this KMS encryption key, you can use the KMS key alias instead of the ARN as the KMS encryption key.\n      If an encryption key is not specified here, Amazon DocumentDB uses the default encryption key that KMS creates for your account. \n      Your account has a different default encryption key for each Amazon Region.\n    </p>", "smithy.api#required" => {}}))
    ClusterSnapshot.add_member(:snapshot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotType, location_name: 'snapshotType', traits: {"smithy.api#documentation" => "<p>The type of cluster snapshots to be returned. \n      You can specify one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>\n            </li>\n         </ul>"}))
    ClusterSnapshot.type = Types::ClusterSnapshot
    ClusterSnapshotInList.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    ClusterSnapshotInList.add_member(:snapshot_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotCreationTime', traits: {"smithy.api#documentation" => "<p>The time when the elastic cluster snapshot was created in Universal Coordinated Time (UTC).</p>", "smithy.api#required" => {}}))
    ClusterSnapshotInList.type = Types::ClusterSnapshotInList
    ClusterSnapshotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotInList)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource where there was an access conflict.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource where there was an access conflict.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CopyClusterSnapshotInput.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) identifier of the elastic cluster snapshot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    CopyClusterSnapshotInput.add_member(:target_snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'targetSnapshotName', traits: {"smithy.api#documentation" => "<p>The identifier of the new elastic cluster snapshot to create from the source cluster snapshot. \n      This parameter is not case sensitive.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>\n            </li>\n            <li>\n               <p>The first character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>\n         <p>Example: <code>elastic-cluster-snapshot-5</code>\n         </p>", "smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#required" => {}}))
    CopyClusterSnapshotInput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services KMS key ID for an encrypted elastic cluster snapshot. \n      The Amazon Web Services KMS key ID is the Amazon Resource Name (ARN), Amazon Web Services KMS key identifier, or the Amazon Web Services KMS key alias for the Amazon Web Services KMS encryption key.</p>\n         <p>If you copy an encrypted elastic cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new Amazon Web ServicesS KMS encryption key. \n      If you don't specify a value for <code>KmsKeyId</code>, then the copy of the elastic cluster snapshot is encrypted with the same <code>AWS</code> KMS key as the source elastic cluster snapshot.</p>\n         <p>To copy an encrypted elastic cluster snapshot to another Amazon Web Services region, set <code>KmsKeyId</code> to the Amazon Web Services KMS key ID that you want to use to encrypt the copy of the elastic cluster snapshot in the destination region. \n      Amazon Web Services KMS encryption keys are specific to the Amazon Web Services region that they are created in, and you can't use encryption keys from one Amazon Web Services region in another Amazon Web Services region.</p>\n         <p>If you copy an unencrypted elastic cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>"}))
    CopyClusterSnapshotInput.add_member(:copy_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'copyTags', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Set to <code>true</code> to copy all tags from the source cluster snapshot to the target elastic cluster snapshot. \n      The default is <code>false</code>.</p>"}))
    CopyClusterSnapshotInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the elastic cluster snapshot.</p>"}))
    CopyClusterSnapshotInput.type = Types::CopyClusterSnapshotInput
    CopyClusterSnapshotOutput.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: 'snapshot', traits: {"smithy.api#required" => {}}))
    CopyClusterSnapshotOutput.type = Types::CopyClusterSnapshotOutput
    CreateClusterOperationInput.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterName', traits: {"smithy.api#documentation" => "<p>The name of the new elastic cluster. This parameter is stored as\n      a lowercase string.</p>\n         <p>\n            <i>Constraints</i>:</p>\n         <ul>\n            <li>\n               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>\n            </li>\n            <li>\n               <p>The first character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>\n         <p>\n            <i>Example</i>: <code>my-cluster</code>\n         </p>", "smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Auth, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The authentication type used to determine where to fetch the password used for accessing the elastic cluster. \n      Valid types are <code>PLAIN_TEXT</code> or <code>SECRET_ARN</code>.</p>", "smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:admin_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'adminUserName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon DocumentDB elastic clusters administrator.</p>\n         <p>\n            <i>Constraints</i>:</p>\n         <ul>\n            <li>\n               <p>Must be from 1 to 63 letters or numbers.</p>\n            </li>\n            <li>\n               <p>The first character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot be a reserved word.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:admin_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'adminUserPassword', traits: {"smithy.api#documentation" => "<p>The password for the Amazon DocumentDB elastic clusters administrator. The password can contain any printable ASCII characters.</p>\n         <p>\n            <i>Constraints</i>:</p>\n         <ul>\n            <li>\n               <p>Must contain from 8 to 100 characters.</p>\n            </li>\n            <li>\n               <p>Cannot contain a forward slash (/), double quote (\"), or the \"at\" symbol (@).</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:shard_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCapacity', traits: {"smithy.api#documentation" => "<p>The number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64.</p>", "smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:shard_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCount', traits: {"smithy.api#documentation" => "<p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>", "smithy.api#required" => {}}))
    CreateClusterOperationInput.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of EC2 VPC security groups to associate with the new\n      elastic cluster.</p>"}))
    CreateClusterOperationInput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 subnet IDs for the new elastic cluster.</p>"}))
    CreateClusterOperationInput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier to use to encrypt the new elastic cluster.</p>\n         <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS\n        encryption key. If you are creating a cluster using the same Amazon account\n        that owns this KMS encryption key, you can use the KMS key alias instead\n        of the ARN as the KMS encryption key.</p>\n         <p>If an encryption key is not specified, Amazon DocumentDB uses the\n        default encryption key that KMS creates for your account. Your account\n        has a different default encryption key for each Amazon Region.</p>"}))
    CreateClusterOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token for the elastic cluster.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateClusterOperationInput.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range during which system maintenance can occur,\n      in Universal Coordinated Time (UTC).</p>\n         <p>\n            <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>\n         </p>\n         <p>\n            <i>Default</i>: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>\n         <p>\n            <i>Valid days</i>: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>\n         <p>\n            <i>Constraints</i>: Minimum 30-minute window.</p>"}))
    CreateClusterOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the new elastic cluster.</p>"}))
    CreateClusterOperationInput.add_member(:backup_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'backupRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days for which automatic snapshots are retained.</p>"}))
    CreateClusterOperationInput.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredBackupWindow', traits: {"smithy.api#documentation" => "<p>The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>backupRetentionPeriod</code>.</p>"}))
    CreateClusterOperationInput.add_member(:shard_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardInstanceCount', traits: {"smithy.api#documentation" => "<p>The number of replica instances applying to all shards in the elastic cluster. \n      A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>"}))
    CreateClusterOperationInput.type = Types::CreateClusterOperationInput
    CreateClusterOperationOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>The new elastic cluster that has been created.</p>", "smithy.api#required" => {}}))
    CreateClusterOperationOutput.type = Types::CreateClusterOperationOutput
    CreateClusterSnapshotOperationInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster of which you want to create a snapshot.</p>", "smithy.api#required" => {}}))
    CreateClusterSnapshotOperationInput.add_member(:snapshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotName', traits: {"smithy.api#documentation" => "<p>The name of the new elastic cluster snapshot.</p>", "smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#required" => {}}))
    CreateClusterSnapshotOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be assigned to the new elastic cluster snapshot.</p>"}))
    CreateClusterSnapshotOperationInput.type = Types::CreateClusterSnapshotOperationInput
    CreateClusterSnapshotOperationOutput.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>Returns information about the new elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    CreateClusterSnapshotOperationOutput.type = Types::CreateClusterSnapshotOperationOutput
    DeleteClusterOperationInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster that is to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    DeleteClusterOperationInput.type = Types::DeleteClusterOperationInput
    DeleteClusterOperationOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>Returns information about the newly deleted elastic cluster.</p>", "smithy.api#required" => {}}))
    DeleteClusterOperationOutput.type = Types::DeleteClusterOperationOutput
    DeleteClusterSnapshotOperationInput.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster snapshot that is to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    DeleteClusterSnapshotOperationInput.type = Types::DeleteClusterSnapshotOperationInput
    DeleteClusterSnapshotOperationOutput.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>Returns information about the newly deleted elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    DeleteClusterSnapshotOperationOutput.type = Types::DeleteClusterSnapshotOperationOutput
    GetClusterOperationInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    GetClusterOperationInput.type = Types::GetClusterOperationInput
    GetClusterOperationOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>Returns information about a specific elastic cluster.</p>", "smithy.api#required" => {}}))
    GetClusterOperationOutput.type = Types::GetClusterOperationOutput
    GetClusterSnapshotOperationInput.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster snapshot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    GetClusterSnapshotOperationInput.type = Types::GetClusterSnapshotOperationInput
    GetClusterSnapshotOperationOutput.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshot, location_name: 'snapshot', traits: {"smithy.api#documentation" => "<p>Returns information about a specific elastic cluster snapshot.</p>", "smithy.api#required" => {}}))
    GetClusterSnapshotOperationOutput.type = Types::GetClusterSnapshotOperationOutput
    GetPendingMaintenanceActionInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InputString, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>Retrieves pending maintenance actions for a specific Amazon Resource Name (ARN).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "resourceArn"}))
    GetPendingMaintenanceActionInput.type = Types::GetPendingMaintenanceActionInput
    GetPendingMaintenanceActionOutput.add_member(:resource_pending_maintenance_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceAction, location_name: 'resourcePendingMaintenanceAction', traits: {"smithy.api#documentation" => "<p>Provides information about a pending maintenance action for a resource.</p>", "smithy.api#required" => {}}))
    GetPendingMaintenanceActionOutput.type = Types::GetPendingMaintenanceActionOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListClusterSnapshotsOperationInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#httpQuery" => "clusterArn"}))
    ListClusterSnapshotsOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token provided by a previous request. \n      If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>\n         <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClusterSnapshotsOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of elastic cluster snapshot results to receive in the response.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 20, "max" => 100}}))
    ListClusterSnapshotsOperationInput.add_member(:snapshot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotType', traits: {"smithy.api#documentation" => "<p>The type of cluster snapshots to be returned. You can specify one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "snapshotType"}))
    ListClusterSnapshotsOperationInput.type = Types::ListClusterSnapshotsOperationInput
    ListClusterSnapshotsOperationOutput.add_member(:snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotList, location_name: 'snapshots', traits: {"smithy.api#documentation" => "<p>A list of snapshots for a specified elastic cluster.</p>"}))
    ListClusterSnapshotsOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token provided by a previous request. \n      If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>\n         <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>"}))
    ListClusterSnapshotsOperationOutput.type = Types::ListClusterSnapshotsOperationOutput
    ListClustersOperationInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token provided by a previous request. \n      If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>\n         <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClustersOperationInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of elastic cluster snapshot results to receive in the response.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListClustersOperationInput.type = Types::ListClustersOperationInput
    ListClustersOperationOutput.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'clusters', traits: {"smithy.api#documentation" => "<p>A list of Amazon DocumentDB elastic clusters.</p>"}))
    ListClustersOperationOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token provided by a previous request. \n      If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>\n         <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>"}))
    ListClustersOperationOutput.type = Types::ListClustersOperationOutput
    ListPendingMaintenanceActionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>maxResults</code>.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPendingMaintenanceActionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to include in the response. \n      If more records exist than the specified <code>maxResults</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPendingMaintenanceActionsInput.type = Types::ListPendingMaintenanceActionsInput
    ListPendingMaintenanceActionsOutput.add_member(:resource_pending_maintenance_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActionList, location_name: 'resourcePendingMaintenanceActions', traits: {"smithy.api#documentation" => "<p>Provides information about a pending maintenance action for a resource.</p>", "smithy.api#required" => {}}))
    ListPendingMaintenanceActionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous request. If this parameter is displayed, the responses will include only records beyond the marker, up to the value specified by <code>maxResults</code>.</p>"}))
    ListPendingMaintenanceActionsOutput.type = Types::ListPendingMaintenanceActionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the specified elastic cluster resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    PendingMaintenanceActionDetails.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Displays the specific action of a pending maintenance action.</p>", "smithy.api#required" => {}}))
    PendingMaintenanceActionDetails.add_member(:auto_applied_after_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'autoAppliedAfterDate', traits: {"smithy.api#documentation" => "<p>Displays the date of the maintenance window when the action is applied. \n      The maintenance action is applied to the resource during its first maintenance window after this date. \n      If this date is specified, any <code>NEXT_MAINTENANCE</code>\n            <code>optInType</code> requests are ignored.</p>"}))
    PendingMaintenanceActionDetails.add_member(:forced_apply_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'forcedApplyDate', traits: {"smithy.api#documentation" => "<p>Displays the date when the maintenance action is automatically applied. \n      The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. \n      If this date is specified, any <code>IMMEDIATE</code>\n            <code>optInType</code> requests are ignored.</p>"}))
    PendingMaintenanceActionDetails.add_member(:opt_in_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'optInStatus', traits: {"smithy.api#documentation" => "<p>Displays the type of <code>optInType</code> request that has been received for the resource.</p>"}))
    PendingMaintenanceActionDetails.add_member(:current_apply_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'currentApplyDate', traits: {"smithy.api#documentation" => "<p>Displays the effective date when the pending maintenance action is applied to the resource.</p>"}))
    PendingMaintenanceActionDetails.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Displays a description providing more detail about the maintenance action.</p>"}))
    PendingMaintenanceActionDetails.type = Types::PendingMaintenanceActionDetails
    PendingMaintenanceActionDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An error message describing the failure.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that could not be located.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that could not be found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePendingMaintenanceAction.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to which the pending maintenance action applies.</p>"}))
    ResourcePendingMaintenanceAction.add_member(:pending_maintenance_action_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetailsList, location_name: 'pendingMaintenanceActionDetails', traits: {"smithy.api#documentation" => "<p>Provides information about a pending maintenance action for a resource.</p>"}))
    ResourcePendingMaintenanceAction.type = Types::ResourcePendingMaintenanceAction
    ResourcePendingMaintenanceActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceAction)
    RestoreClusterFromSnapshotOperationInput.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterName', traits: {"smithy.api#documentation" => "<p>The name of the elastic cluster.</p>", "smithy.api#required" => {}}))
    RestoreClusterFromSnapshotOperationInput.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'snapshotArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster snapshot.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "snapshotArn"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 subnet IDs for the elastic cluster.</p>"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier to use to encrypt the new Amazon DocumentDB elastic clusters cluster.</p>\n         <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS\n        encryption key. If you are creating a cluster using the same Amazon account\n        that owns this KMS encryption key, you can use the KMS key alias instead\n        of the ARN as the KMS encryption key.</p>\n         <p>If an encryption key is not specified here, Amazon DocumentDB uses the\n        default encryption key that KMS creates for your account. Your account\n        has a different default encryption key for each Amazon Region.</p>"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of the tag names to be assigned to the restored elastic cluster, in the form of an array of key-value pairs in which the key is the tag name and the value is the key value.</p>"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:shard_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCapacity', traits: {"smithy.api#documentation" => "<p>The capacity of each shard in the new restored elastic cluster.</p>"}))
    RestoreClusterFromSnapshotOperationInput.add_member(:shard_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardInstanceCount', traits: {"smithy.api#documentation" => "<p>The number of replica instances applying to all shards in the elastic cluster. \n      A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>"}))
    RestoreClusterFromSnapshotOperationInput.type = Types::RestoreClusterFromSnapshotOperationInput
    RestoreClusterFromSnapshotOperationOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>Returns information about a the restored elastic cluster.</p>", "smithy.api#required" => {}}))
    RestoreClusterFromSnapshotOperationOutput.type = Types::RestoreClusterFromSnapshotOperationOutput
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Shard.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'shardId', traits: {"smithy.api#documentation" => "<p>The ID of the shard.</p>", "smithy.api#required" => {}}))
    Shard.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time when the shard was created in Universal Coordinated Time (UTC).</p>", "smithy.api#required" => {}}))
    Shard.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the shard.</p>", "smithy.api#required" => {}}))
    Shard.type = Types::Shard
    ShardList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Shard)
    StartClusterInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    StartClusterInput.type = Types::StartClusterInput
    StartClusterOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#required" => {}}))
    StartClusterOutput.type = Types::StartClusterOutput
    StopClusterInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    StopClusterInput.type = Types::StopClusterInput
    StopClusterOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#required" => {}}))
    StopClusterOutput.type = Types::StopClusterOutput
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that are assigned to the elastic cluster resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds to wait before retrying the operation.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to be removed from the elastic cluster resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateClusterOperationInput.add_member(:cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterArn', traits: {"smithy.api#documentation" => "<p>The ARN identifier of the elastic cluster.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "clusterArn"}))
    UpdateClusterOperationInput.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Auth, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The authentication type used to determine where to fetch the password used for accessing the elastic cluster. \n      Valid types are <code>PLAIN_TEXT</code> or <code>SECRET_ARN</code>.</p>"}))
    UpdateClusterOperationInput.add_member(:shard_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCapacity', traits: {"smithy.api#documentation" => "<p>The number of vCPUs assigned to each elastic cluster shard. \n      Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64.</p>"}))
    UpdateClusterOperationInput.add_member(:shard_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardCount', traits: {"smithy.api#documentation" => "<p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>"}))
    UpdateClusterOperationInput.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'vpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>"}))
    UpdateClusterOperationInput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 subnet IDs for the elastic cluster.</p>"}))
    UpdateClusterOperationInput.add_member(:admin_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Password, location_name: 'adminUserPassword', traits: {"smithy.api#documentation" => "<p>The password associated with the elastic cluster administrator. \n      This password can contain any printable ASCII character except forward slash (/), double quote (\"), or the \"at\" symbol (@).</p>\n         <p>\n            <i>Constraints</i>: Must contain from 8 to 100 characters.</p>"}))
    UpdateClusterOperationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token for the elastic cluster.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateClusterOperationInput.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>\n         <p>\n            <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>\n         </p>\n         <p>\n            <i>Default</i>: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>\n         <p>\n            <i>Valid days</i>: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>\n         <p>\n            <i>Constraints</i>: Minimum 30-minute window.</p>"}))
    UpdateClusterOperationInput.add_member(:backup_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'backupRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days for which automatic snapshots are retained.</p>"}))
    UpdateClusterOperationInput.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'preferredBackupWindow', traits: {"smithy.api#documentation" => "<p>The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>backupRetentionPeriod</code>.</p>"}))
    UpdateClusterOperationInput.add_member(:shard_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'shardInstanceCount', traits: {"smithy.api#documentation" => "<p>The number of replica instances applying to all shards in the elastic cluster. \n      A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>"}))
    UpdateClusterOperationInput.type = Types::UpdateClusterOperationInput
    UpdateClusterOperationOutput.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>Returns information about the updated elastic cluster.</p>", "smithy.api#required" => {}}))
    UpdateClusterOperationOutput.type = Types::UpdateClusterOperationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An error message describing the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason why the validation exception occurred (one of <code>unknownOperation</code>,\n      <code>cannotParse</code>, <code>fieldValidationFailed</code>, or <code>other</code>).</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of the fields in which the validation exception occurred.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field where the validation exception occurred.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An error message describing the validation exception in this field.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ChimeraDbLionfishServiceLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.docdbelastic#ChimeraDbLionfishServiceLambda"
      service.name = "ChimeraDbLionfishServiceLambda"
      service.version = "2022-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "DocDB Elastic", "arnNamespace" => "docdb-elastic", "cloudTrailEventSource" => "CASCADES_EVENT_SOURCE"}, "aws.auth#sigv4" => {"name" => "docdb-elastic"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Amazon DocumentDB Elastic Clusters"}
      service.add_operation(:apply_pending_maintenance_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/pending-action"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:copy_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#CopyClusterSnapshot"
        operation.name = "CopyClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster-snapshot/{snapshotArn}/copy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#CreateClusterSnapshot"
        operation.name = "CreateClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster-snapshot"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster/{clusterArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#DeleteClusterSnapshot"
        operation.name = "DeleteClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/cluster-snapshot/{snapshotArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#GetCluster"
        operation.name = "GetCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster/{clusterArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#GetClusterSnapshot"
        operation.name = "GetClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterSnapshotOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterSnapshotOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster-snapshot/{snapshotArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_pending_maintenance_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#GetPendingMaintenanceAction"
        operation.name = "GetPendingMaintenanceAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingMaintenanceActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingMaintenanceActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/pending-action/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_cluster_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListClusterSnapshots"
        operation.name = "ListClusterSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterSnapshotsOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClusterSnapshotsOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/cluster-snapshots"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListClusterSnapshots.new
      end)
      service.add_operation(:list_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListClusters"
        operation.name = "ListClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/clusters"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_pending_maintenance_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListPendingMaintenanceActions"
        operation.name = "ListPendingMaintenanceActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPendingMaintenanceActionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPendingMaintenanceActionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/pending-actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPendingMaintenanceActions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:restore_cluster_from_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#RestoreClusterFromSnapshot"
        operation.name = "RestoreClusterFromSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreClusterFromSnapshotOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreClusterFromSnapshotOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster-snapshot/{snapshotArn}/restore"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#StartCluster"
        operation.name = "StartCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartClusterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartClusterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{clusterArn}/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#StopCluster"
        operation.name = "StopCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopClusterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopClusterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/cluster/{clusterArn}/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.docdbelastic#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterOperationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/cluster/{clusterArn}"}, "smithy.api#idempotent" => {}}
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
