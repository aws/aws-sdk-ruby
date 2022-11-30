# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DocDBElastic
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Auth = Shapes::StringShape.new(name: 'Auth')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterInList = Shapes::StructureShape.new(name: 'ClusterInList')
    ClusterList = Shapes::ListShape.new(name: 'ClusterList')
    ClusterSnapshot = Shapes::StructureShape.new(name: 'ClusterSnapshot')
    ClusterSnapshotInList = Shapes::StructureShape.new(name: 'ClusterSnapshotInList')
    ClusterSnapshotList = Shapes::ListShape.new(name: 'ClusterSnapshotList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateClusterInput = Shapes::StructureShape.new(name: 'CreateClusterInput')
    CreateClusterOutput = Shapes::StructureShape.new(name: 'CreateClusterOutput')
    CreateClusterSnapshotInput = Shapes::StructureShape.new(name: 'CreateClusterSnapshotInput')
    CreateClusterSnapshotInputSnapshotNameString = Shapes::StringShape.new(name: 'CreateClusterSnapshotInputSnapshotNameString')
    CreateClusterSnapshotOutput = Shapes::StructureShape.new(name: 'CreateClusterSnapshotOutput')
    DeleteClusterInput = Shapes::StructureShape.new(name: 'DeleteClusterInput')
    DeleteClusterOutput = Shapes::StructureShape.new(name: 'DeleteClusterOutput')
    DeleteClusterSnapshotInput = Shapes::StructureShape.new(name: 'DeleteClusterSnapshotInput')
    DeleteClusterSnapshotOutput = Shapes::StructureShape.new(name: 'DeleteClusterSnapshotOutput')
    GetClusterInput = Shapes::StructureShape.new(name: 'GetClusterInput')
    GetClusterOutput = Shapes::StructureShape.new(name: 'GetClusterOutput')
    GetClusterSnapshotInput = Shapes::StructureShape.new(name: 'GetClusterSnapshotInput')
    GetClusterSnapshotOutput = Shapes::StructureShape.new(name: 'GetClusterSnapshotOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListClusterSnapshotsInput = Shapes::StructureShape.new(name: 'ListClusterSnapshotsInput')
    ListClusterSnapshotsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListClusterSnapshotsInputMaxResultsInteger')
    ListClusterSnapshotsOutput = Shapes::StructureShape.new(name: 'ListClusterSnapshotsOutput')
    ListClustersInput = Shapes::StructureShape.new(name: 'ListClustersInput')
    ListClustersInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListClustersInputMaxResultsInteger')
    ListClustersOutput = Shapes::StructureShape.new(name: 'ListClustersOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Password = Shapes::StringShape.new(name: 'Password')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreClusterFromSnapshotInput = Shapes::StructureShape.new(name: 'RestoreClusterFromSnapshotInput')
    RestoreClusterFromSnapshotOutput = Shapes::StructureShape.new(name: 'RestoreClusterFromSnapshotOutput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateClusterInput = Shapes::StructureShape.new(name: 'UpdateClusterInput')
    UpdateClusterOutput = Shapes::StructureShape.new(name: 'UpdateClusterOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Cluster.add_member(:admin_user_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "adminUserName"))
    Cluster.add_member(:auth_type, Shapes::ShapeRef.new(shape: Auth, required: true, location_name: "authType"))
    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterArn"))
    Cluster.add_member(:cluster_endpoint, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterEndpoint"))
    Cluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterName"))
    Cluster.add_member(:create_time, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createTime"))
    Cluster.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "kmsKeyId"))
    Cluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, required: true, location_name: "preferredMaintenanceWindow"))
    Cluster.add_member(:shard_capacity, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "shardCapacity"))
    Cluster.add_member(:shard_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "shardCount"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    Cluster.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnetIds"))
    Cluster.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "vpcSecurityGroupIds"))
    Cluster.struct_class = Types::Cluster

    ClusterInList.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterArn"))
    ClusterInList.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterName"))
    ClusterInList.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ClusterInList.struct_class = Types::ClusterInList

    ClusterList.member = Shapes::ShapeRef.new(shape: ClusterInList)

    ClusterSnapshot.add_member(:admin_user_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "adminUserName"))
    ClusterSnapshot.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterArn"))
    ClusterSnapshot.add_member(:cluster_creation_time, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterCreationTime"))
    ClusterSnapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "kmsKeyId"))
    ClusterSnapshot.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotArn"))
    ClusterSnapshot.add_member(:snapshot_creation_time, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotCreationTime"))
    ClusterSnapshot.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    ClusterSnapshot.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ClusterSnapshot.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnetIds"))
    ClusterSnapshot.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "vpcSecurityGroupIds"))
    ClusterSnapshot.struct_class = Types::ClusterSnapshot

    ClusterSnapshotInList.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterArn"))
    ClusterSnapshotInList.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotArn"))
    ClusterSnapshotInList.add_member(:snapshot_creation_time, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotCreationTime"))
    ClusterSnapshotInList.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    ClusterSnapshotInList.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ClusterSnapshotInList.struct_class = Types::ClusterSnapshotInList

    ClusterSnapshotList.member = Shapes::ShapeRef.new(shape: ClusterSnapshotInList)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateClusterInput.add_member(:admin_user_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "adminUserName"))
    CreateClusterInput.add_member(:admin_user_password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "adminUserPassword"))
    CreateClusterInput.add_member(:auth_type, Shapes::ShapeRef.new(shape: Auth, required: true, location_name: "authType"))
    CreateClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateClusterInput.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterName"))
    CreateClusterInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    CreateClusterInput.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "preferredMaintenanceWindow"))
    CreateClusterInput.add_member(:shard_capacity, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "shardCapacity"))
    CreateClusterInput.add_member(:shard_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "shardCount"))
    CreateClusterInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    CreateClusterInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterInput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds"))
    CreateClusterInput.struct_class = Types::CreateClusterInput

    CreateClusterOutput.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, required: true, location_name: "cluster"))
    CreateClusterOutput.struct_class = Types::CreateClusterOutput

    CreateClusterSnapshotInput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterArn"))
    CreateClusterSnapshotInput.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: CreateClusterSnapshotInputSnapshotNameString, required: true, location_name: "snapshotName"))
    CreateClusterSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClusterSnapshotInput.struct_class = Types::CreateClusterSnapshotInput

    CreateClusterSnapshotOutput.add_member(:snapshot, Shapes::ShapeRef.new(shape: ClusterSnapshot, required: true, location_name: "snapshot"))
    CreateClusterSnapshotOutput.struct_class = Types::CreateClusterSnapshotOutput

    DeleteClusterInput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "clusterArn"))
    DeleteClusterInput.struct_class = Types::DeleteClusterInput

    DeleteClusterOutput.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, required: true, location_name: "cluster"))
    DeleteClusterOutput.struct_class = Types::DeleteClusterOutput

    DeleteClusterSnapshotInput.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "snapshotArn"))
    DeleteClusterSnapshotInput.struct_class = Types::DeleteClusterSnapshotInput

    DeleteClusterSnapshotOutput.add_member(:snapshot, Shapes::ShapeRef.new(shape: ClusterSnapshot, required: true, location_name: "snapshot"))
    DeleteClusterSnapshotOutput.struct_class = Types::DeleteClusterSnapshotOutput

    GetClusterInput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "clusterArn"))
    GetClusterInput.struct_class = Types::GetClusterInput

    GetClusterOutput.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, required: true, location_name: "cluster"))
    GetClusterOutput.struct_class = Types::GetClusterOutput

    GetClusterSnapshotInput.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "snapshotArn"))
    GetClusterSnapshotInput.struct_class = Types::GetClusterSnapshotInput

    GetClusterSnapshotOutput.add_member(:snapshot, Shapes::ShapeRef.new(shape: ClusterSnapshot, required: true, location_name: "snapshot"))
    GetClusterSnapshotOutput.struct_class = Types::GetClusterSnapshotOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListClusterSnapshotsInput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clusterArn"))
    ListClusterSnapshotsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClusterSnapshotsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListClusterSnapshotsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListClusterSnapshotsInput.struct_class = Types::ListClusterSnapshotsInput

    ListClusterSnapshotsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListClusterSnapshotsOutput.add_member(:snapshots, Shapes::ShapeRef.new(shape: ClusterSnapshotList, location_name: "snapshots"))
    ListClusterSnapshotsOutput.struct_class = Types::ListClusterSnapshotsOutput

    ListClustersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClustersInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListClustersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListClustersInput.struct_class = Types::ListClustersInput

    ListClustersOutput.add_member(:clusters, Shapes::ShapeRef.new(shape: ClusterList, location_name: "clusters"))
    ListClustersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListClustersOutput.struct_class = Types::ListClustersOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreClusterFromSnapshotInput.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "clusterName"))
    RestoreClusterFromSnapshotInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    RestoreClusterFromSnapshotInput.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "snapshotArn"))
    RestoreClusterFromSnapshotInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    RestoreClusterFromSnapshotInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RestoreClusterFromSnapshotInput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds"))
    RestoreClusterFromSnapshotInput.struct_class = Types::RestoreClusterFromSnapshotInput

    RestoreClusterFromSnapshotOutput.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, required: true, location_name: "cluster"))
    RestoreClusterFromSnapshotOutput.struct_class = Types::RestoreClusterFromSnapshotOutput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateClusterInput.add_member(:admin_user_password, Shapes::ShapeRef.new(shape: Password, location_name: "adminUserPassword"))
    UpdateClusterInput.add_member(:auth_type, Shapes::ShapeRef.new(shape: Auth, location_name: "authType"))
    UpdateClusterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateClusterInput.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "clusterArn"))
    UpdateClusterInput.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "preferredMaintenanceWindow"))
    UpdateClusterInput.add_member(:shard_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "shardCapacity"))
    UpdateClusterInput.add_member(:shard_count, Shapes::ShapeRef.new(shape: Integer, location_name: "shardCount"))
    UpdateClusterInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    UpdateClusterInput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "vpcSecurityGroupIds"))
    UpdateClusterInput.struct_class = Types::UpdateClusterInput

    UpdateClusterOutput.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, required: true, location_name: "cluster"))
    UpdateClusterOutput.struct_class = Types::UpdateClusterOutput

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-11-28"

      api.metadata = {
        "apiVersion" => "2022-11-28",
        "endpointPrefix" => "docdb-elastic",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "DocDB Elastic",
        "serviceFullName" => "Amazon DocumentDB Elastic Clusters",
        "serviceId" => "DocDB Elastic",
        "signatureVersion" => "v4",
        "signingName" => "docdb-elastic",
        "uid" => "docdb-elastic-2022-11-28",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/cluster"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/cluster-snapshot"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/cluster/{clusterArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClusterSnapshot"
        o.http_method = "DELETE"
        o.http_request_uri = "/cluster-snapshot/{snapshotArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCluster"
        o.http_method = "GET"
        o.http_request_uri = "/cluster/{clusterArn}"
        o.input = Shapes::ShapeRef.new(shape: GetClusterInput)
        o.output = Shapes::ShapeRef.new(shape: GetClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClusterSnapshot"
        o.http_method = "GET"
        o.http_request_uri = "/cluster-snapshot/{snapshotArn}"
        o.input = Shapes::ShapeRef.new(shape: GetClusterSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: GetClusterSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusterSnapshots"
        o.http_method = "GET"
        o.http_request_uri = "/cluster-snapshots"
        o.input = Shapes::ShapeRef.new(shape: ListClusterSnapshotsInput)
        o.output = Shapes::ShapeRef.new(shape: ListClusterSnapshotsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListClustersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:restore_cluster_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreClusterFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/cluster-snapshot/{snapshotArn}/restore"
        o.input = Shapes::ShapeRef.new(shape: RestoreClusterFromSnapshotInput)
        o.output = Shapes::ShapeRef.new(shape: RestoreClusterFromSnapshotOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "PUT"
        o.http_request_uri = "/cluster/{clusterArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
