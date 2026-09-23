# frozen_string_literal: true

# This is generated code!

module Aws::ElastiCache
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APICallRateForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#APICallRateForCustomerExceededFault", name: "APICallRateForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "APICallRateForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AZMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#AZMode", name: "AZMode")
    AccessString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#AccessString", name: "AccessString", traits: {"smithy.api#pattern" => "\\S"})
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AddTagsToResourceMessage", name: "AddTagsToResourceMessage")
    AddTagsToResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AddTagsToResourceOutput", name: "AddTagsToResourceOutput")
    AllowedNodeGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#AllowedNodeGroupId", name: "AllowedNodeGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^\\d+$"})
    AllowedNodeTypeModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AllowedNodeTypeModificationsMessage", name: "AllowedNodeTypeModificationsMessage")
    AuthTokenUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#AuthTokenUpdateStatus", name: "AuthTokenUpdateStatus")
    AuthTokenUpdateStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#AuthTokenUpdateStrategyType", name: "AuthTokenUpdateStrategyType")
    Authentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Authentication", name: "Authentication")
    AuthenticationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AuthenticationMode", name: "AuthenticationMode")
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#AuthenticationType", name: "AuthenticationType")
    AuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AuthorizationAlreadyExistsFault", name: "AuthorizationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AuthorizationNotFoundFault", name: "AuthorizationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizeCacheSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AuthorizeCacheSecurityGroupIngressMessage", name: "AuthorizeCacheSecurityGroupIngressMessage")
    AuthorizeCacheSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AuthorizeCacheSecurityGroupIngressResult", name: "AuthorizeCacheSecurityGroupIngressResult")
    AutomaticFailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#AutomaticFailoverStatus", name: "AutomaticFailoverStatus")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZonesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#AvailabilityZonesList", name: "AvailabilityZonesList")
    AwsQueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#AwsQueryErrorMessage", name: "AwsQueryErrorMessage")
    BatchApplyUpdateActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#BatchApplyUpdateActionMessage", name: "BatchApplyUpdateActionMessage")
    BatchApplyUpdateActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#BatchApplyUpdateActionOutput", name: "BatchApplyUpdateActionOutput")
    BatchStopUpdateActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#BatchStopUpdateActionMessage", name: "BatchStopUpdateActionMessage")
    BatchStopUpdateActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#BatchStopUpdateActionOutput", name: "BatchStopUpdateActionOutput")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticache#Boolean", name: "Boolean")
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.elasticache#BooleanOptional", name: "BooleanOptional")
    CacheCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheCluster", name: "CacheCluster")
    CacheClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheClusterAlreadyExistsFault", name: "CacheClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheClusterIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheClusterIdList", name: "CacheClusterIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    CacheClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheClusterList", name: "CacheClusterList")
    CacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheClusterMessage", name: "CacheClusterMessage")
    CacheClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheClusterNotFoundFault", name: "CacheClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CacheEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheEngineVersion", name: "CacheEngineVersion")
    CacheEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheEngineVersionList", name: "CacheEngineVersionList")
    CacheEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheEngineVersionMessage", name: "CacheEngineVersionMessage")
    CacheNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheNode", name: "CacheNode")
    CacheNodeIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheNodeIdsList", name: "CacheNodeIdsList")
    CacheNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheNodeList", name: "CacheNodeList")
    CacheNodeTypeSpecificParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheNodeTypeSpecificParameter", name: "CacheNodeTypeSpecificParameter")
    CacheNodeTypeSpecificParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheNodeTypeSpecificParametersList", name: "CacheNodeTypeSpecificParametersList")
    CacheNodeTypeSpecificValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheNodeTypeSpecificValue", name: "CacheNodeTypeSpecificValue")
    CacheNodeTypeSpecificValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheNodeTypeSpecificValueList", name: "CacheNodeTypeSpecificValueList")
    CacheNodeUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheNodeUpdateStatus", name: "CacheNodeUpdateStatus")
    CacheNodeUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheNodeUpdateStatusList", name: "CacheNodeUpdateStatusList")
    CacheParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheParameterGroup", name: "CacheParameterGroup")
    CacheParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheParameterGroupAlreadyExistsFault", name: "CacheParameterGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheParameterGroupList", name: "CacheParameterGroupList")
    CacheParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheParameterGroupNotFoundFault", name: "CacheParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CacheParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheParameterGroupQuotaExceededFault", name: "CacheParameterGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheParameterGroupStatus", name: "CacheParameterGroupStatus")
    CacheParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheParameterGroupsMessage", name: "CacheParameterGroupsMessage")
    CacheSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroup", name: "CacheSecurityGroup")
    CacheSecurityGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupAlreadyExistsFault", name: "CacheSecurityGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupMembership", name: "CacheSecurityGroupMembership")
    CacheSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupMembershipList", name: "CacheSecurityGroupMembershipList")
    CacheSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupMessage", name: "CacheSecurityGroupMessage")
    CacheSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupNameList", name: "CacheSecurityGroupNameList")
    CacheSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupNotFoundFault", name: "CacheSecurityGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CacheSecurityGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroupQuotaExceededFault", name: "CacheSecurityGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.CacheSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheSecurityGroups", name: "CacheSecurityGroups")
    CacheSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroup", name: "CacheSubnetGroup")
    CacheSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroupAlreadyExistsFault", name: "CacheSubnetGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroupInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroupInUse", name: "CacheSubnetGroupInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroupMessage", name: "CacheSubnetGroupMessage")
    CacheSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroupNotFoundFault", name: "CacheSubnetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroupQuotaExceededFault", name: "CacheSubnetGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CacheSubnetGroups", name: "CacheSubnetGroups")
    CacheSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheSubnetQuotaExceededFault", name: "CacheSubnetQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheUsageLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CacheUsageLimits", name: "CacheUsageLimits")
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#ChangeType", name: "ChangeType")
    CloudWatchLogsDestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CloudWatchLogsDestinationDetails", name: "CloudWatchLogsDestinationDetails")
    ClusterIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ClusterIdList", name: "ClusterIdList")
    ClusterMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#ClusterMode", name: "ClusterMode")
    ClusterQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ClusterQuotaForCustomerExceededFault", name: "ClusterQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CompleteMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CompleteMigrationMessage", name: "CompleteMigrationMessage")
    CompleteMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CompleteMigrationResponse", name: "CompleteMigrationResponse")
    ConfigureShard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ConfigureShard", name: "ConfigureShard")
    CopyServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CopyServerlessCacheSnapshotRequest", name: "CopyServerlessCacheSnapshotRequest")
    CopyServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CopyServerlessCacheSnapshotResponse", name: "CopyServerlessCacheSnapshotResponse")
    CopySnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CopySnapshotMessage", name: "CopySnapshotMessage")
    CopySnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CopySnapshotResult", name: "CopySnapshotResult")
    CreateCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheClusterMessage", name: "CreateCacheClusterMessage")
    CreateCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheClusterResult", name: "CreateCacheClusterResult")
    CreateCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheParameterGroupMessage", name: "CreateCacheParameterGroupMessage")
    CreateCacheParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheParameterGroupResult", name: "CreateCacheParameterGroupResult")
    CreateCacheSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheSecurityGroupMessage", name: "CreateCacheSecurityGroupMessage")
    CreateCacheSecurityGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheSecurityGroupResult", name: "CreateCacheSecurityGroupResult")
    CreateCacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheSubnetGroupMessage", name: "CreateCacheSubnetGroupMessage")
    CreateCacheSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateCacheSubnetGroupResult", name: "CreateCacheSubnetGroupResult")
    CreateGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateGlobalReplicationGroupMessage", name: "CreateGlobalReplicationGroupMessage")
    CreateGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateGlobalReplicationGroupResult", name: "CreateGlobalReplicationGroupResult")
    CreateReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateReplicationGroupMessage", name: "CreateReplicationGroupMessage")
    CreateReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateReplicationGroupResult", name: "CreateReplicationGroupResult")
    CreateServerlessCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateServerlessCacheRequest", name: "CreateServerlessCacheRequest")
    CreateServerlessCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateServerlessCacheResponse", name: "CreateServerlessCacheResponse")
    CreateServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateServerlessCacheSnapshotRequest", name: "CreateServerlessCacheSnapshotRequest")
    CreateServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateServerlessCacheSnapshotResponse", name: "CreateServerlessCacheSnapshotResponse")
    CreateSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateSnapshotMessage", name: "CreateSnapshotMessage")
    CreateSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateSnapshotResult", name: "CreateSnapshotResult")
    CreateUserGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateUserGroupMessage", name: "CreateUserGroupMessage")
    CreateUserGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateUserGroupOutput", name: "CreateUserGroupOutput")
    CreateUserMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateUserMessage", name: "CreateUserMessage")
    CreateUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CreateUserOutput", name: "CreateUserOutput")
    CustomerNodeEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#CustomerNodeEndpoint", name: "CustomerNodeEndpoint")
    CustomerNodeEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#CustomerNodeEndpointList", name: "CustomerNodeEndpointList")
    DataStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DataStorage", name: "DataStorage")
    DataStorageUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#DataStorageUnit", name: "DataStorageUnit")
    DataTieringStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#DataTieringStatus", name: "DataTieringStatus")
    DecreaseNodeGroupsInGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DecreaseNodeGroupsInGlobalReplicationGroupMessage", name: "DecreaseNodeGroupsInGlobalReplicationGroupMessage")
    DecreaseNodeGroupsInGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DecreaseNodeGroupsInGlobalReplicationGroupResult", name: "DecreaseNodeGroupsInGlobalReplicationGroupResult")
    DecreaseReplicaCountMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DecreaseReplicaCountMessage", name: "DecreaseReplicaCountMessage")
    DecreaseReplicaCountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DecreaseReplicaCountResult", name: "DecreaseReplicaCountResult")
    DefaultUserAssociatedToUserGroupFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DefaultUserAssociatedToUserGroupFault", name: "DefaultUserAssociatedToUserGroupFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DefaultUserAssociatedToUserGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DefaultUserRequired = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DefaultUserRequired", name: "DefaultUserRequired", traits: {"aws.protocols#awsQueryError" => {"code" => "DefaultUserRequired", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteCacheClusterMessage", name: "DeleteCacheClusterMessage")
    DeleteCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteCacheClusterResult", name: "DeleteCacheClusterResult")
    DeleteCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteCacheParameterGroupMessage", name: "DeleteCacheParameterGroupMessage")
    DeleteCacheSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteCacheSecurityGroupMessage", name: "DeleteCacheSecurityGroupMessage")
    DeleteCacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteCacheSubnetGroupMessage", name: "DeleteCacheSubnetGroupMessage")
    DeleteGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteGlobalReplicationGroupMessage", name: "DeleteGlobalReplicationGroupMessage")
    DeleteGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteGlobalReplicationGroupResult", name: "DeleteGlobalReplicationGroupResult")
    DeleteReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteReplicationGroupMessage", name: "DeleteReplicationGroupMessage")
    DeleteReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteReplicationGroupResult", name: "DeleteReplicationGroupResult")
    DeleteServerlessCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteServerlessCacheRequest", name: "DeleteServerlessCacheRequest")
    DeleteServerlessCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteServerlessCacheResponse", name: "DeleteServerlessCacheResponse")
    DeleteServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteServerlessCacheSnapshotRequest", name: "DeleteServerlessCacheSnapshotRequest")
    DeleteServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteServerlessCacheSnapshotResponse", name: "DeleteServerlessCacheSnapshotResponse")
    DeleteSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteSnapshotMessage", name: "DeleteSnapshotMessage")
    DeleteSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteSnapshotResult", name: "DeleteSnapshotResult")
    DeleteUserGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteUserGroupMessage", name: "DeleteUserGroupMessage")
    DeleteUserGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteUserGroupOutput", name: "DeleteUserGroupOutput")
    DeleteUserMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteUserMessage", name: "DeleteUserMessage")
    DeleteUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DeleteUserOutput", name: "DeleteUserOutput")
    DescribeCacheClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheClustersMessage", name: "DescribeCacheClustersMessage")
    DescribeCacheEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheEngineVersionsMessage", name: "DescribeCacheEngineVersionsMessage")
    DescribeCacheParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheParameterGroupsMessage", name: "DescribeCacheParameterGroupsMessage")
    DescribeCacheParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheParametersMessage", name: "DescribeCacheParametersMessage")
    DescribeCacheParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheParametersOutput", name: "DescribeCacheParametersOutput")
    DescribeCacheSecurityGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheSecurityGroupsMessage", name: "DescribeCacheSecurityGroupsMessage")
    DescribeCacheSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeCacheSubnetGroupsMessage", name: "DescribeCacheSubnetGroupsMessage")
    DescribeEngineDefaultParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeEngineDefaultParametersMessage", name: "DescribeEngineDefaultParametersMessage")
    DescribeEngineDefaultParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeEngineDefaultParametersResult", name: "DescribeEngineDefaultParametersResult")
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeEventsMessage", name: "DescribeEventsMessage")
    DescribeGlobalReplicationGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeGlobalReplicationGroupsMessage", name: "DescribeGlobalReplicationGroupsMessage")
    DescribeGlobalReplicationGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeGlobalReplicationGroupsResult", name: "DescribeGlobalReplicationGroupsResult")
    DescribeReplicationGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeReplicationGroupsMessage", name: "DescribeReplicationGroupsMessage")
    DescribeReservedCacheNodesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeReservedCacheNodesMessage", name: "DescribeReservedCacheNodesMessage")
    DescribeReservedCacheNodesOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeReservedCacheNodesOfferingsMessage", name: "DescribeReservedCacheNodesOfferingsMessage")
    DescribeServerlessCacheSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeServerlessCacheSnapshotsRequest", name: "DescribeServerlessCacheSnapshotsRequest")
    DescribeServerlessCacheSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeServerlessCacheSnapshotsResponse", name: "DescribeServerlessCacheSnapshotsResponse")
    DescribeServerlessCachesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeServerlessCachesRequest", name: "DescribeServerlessCachesRequest")
    DescribeServerlessCachesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeServerlessCachesResponse", name: "DescribeServerlessCachesResponse")
    DescribeServiceUpdatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeServiceUpdatesMessage", name: "DescribeServiceUpdatesMessage")
    DescribeSnapshotsListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeSnapshotsListMessage", name: "DescribeSnapshotsListMessage")
    DescribeSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeSnapshotsMessage", name: "DescribeSnapshotsMessage")
    DescribeUpdateActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeUpdateActionsMessage", name: "DescribeUpdateActionsMessage")
    DescribeUserGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeUserGroupsMessage", name: "DescribeUserGroupsMessage")
    DescribeUserGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeUserGroupsResult", name: "DescribeUserGroupsResult")
    DescribeUsersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeUsersMessage", name: "DescribeUsersMessage")
    DescribeUsersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DescribeUsersResult", name: "DescribeUsersResult")
    DestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DestinationDetails", name: "DestinationDetails")
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#DestinationType", name: "DestinationType")
    DisassociateGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DisassociateGlobalReplicationGroupMessage", name: "DisassociateGlobalReplicationGroupMessage")
    DisassociateGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DisassociateGlobalReplicationGroupResult", name: "DisassociateGlobalReplicationGroupResult")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.elasticache#Double", name: "Double")
    DuplicateUserNameFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#DuplicateUserNameFault", name: "DuplicateUserNameFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateUserName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EC2SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#EC2SecurityGroup", name: "EC2SecurityGroup")
    EC2SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#EC2SecurityGroupList", name: "EC2SecurityGroupList")
    ECPUPerSecond = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ECPUPerSecond", name: "ECPUPerSecond")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Endpoint", name: "Endpoint")
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#EngineDefaults", name: "EngineDefaults")
    EngineType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#EngineType", name: "EngineType", traits: {"smithy.api#pattern" => "^[a-zA-Z]*$"})
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Event", name: "Event")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#EventList", name: "EventList")
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#EventsMessage", name: "EventsMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#ExceptionMessage", name: "ExceptionMessage")
    ExportServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ExportServerlessCacheSnapshotRequest", name: "ExportServerlessCacheSnapshotRequest")
    ExportServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ExportServerlessCacheSnapshotResponse", name: "ExportServerlessCacheSnapshotResponse")
    FailoverGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#FailoverGlobalReplicationGroupMessage", name: "FailoverGlobalReplicationGroupMessage")
    FailoverGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#FailoverGlobalReplicationGroupResult", name: "FailoverGlobalReplicationGroupResult")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#FilterList", name: "FilterList")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#FilterName", name: "FilterName", traits: {"smithy.api#pattern" => "\\S"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#FilterValue", name: "FilterValue", traits: {"smithy.api#pattern" => "\\S"})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#FilterValueList", name: "FilterValueList", traits: {"smithy.api#length" => {"min" => 1}})
    GlobalNodeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#GlobalNodeGroup", name: "GlobalNodeGroup")
    GlobalNodeGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#GlobalNodeGroupIdList", name: "GlobalNodeGroupIdList")
    GlobalNodeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#GlobalNodeGroupList", name: "GlobalNodeGroupList")
    GlobalReplicationGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroup", name: "GlobalReplicationGroup")
    GlobalReplicationGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroupAlreadyExistsFault", name: "GlobalReplicationGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalReplicationGroupAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalReplicationGroupInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroupInfo", name: "GlobalReplicationGroupInfo")
    GlobalReplicationGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroupList", name: "GlobalReplicationGroupList")
    GlobalReplicationGroupMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroupMember", name: "GlobalReplicationGroupMember")
    GlobalReplicationGroupMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroupMemberList", name: "GlobalReplicationGroupMemberList")
    GlobalReplicationGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#GlobalReplicationGroupNotFoundFault", name: "GlobalReplicationGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalReplicationGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IncreaseNodeGroupsInGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#IncreaseNodeGroupsInGlobalReplicationGroupMessage", name: "IncreaseNodeGroupsInGlobalReplicationGroupMessage")
    IncreaseNodeGroupsInGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#IncreaseNodeGroupsInGlobalReplicationGroupResult", name: "IncreaseNodeGroupsInGlobalReplicationGroupResult")
    IncreaseReplicaCountMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#IncreaseReplicaCountMessage", name: "IncreaseReplicaCountMessage")
    IncreaseReplicaCountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#IncreaseReplicaCountResult", name: "IncreaseReplicaCountResult")
    InputAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#InputAuthenticationType", name: "InputAuthenticationType")
    InsufficientCacheClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InsufficientCacheClusterCapacityFault", name: "InsufficientCacheClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientCacheClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticache#Integer", name: "Integer")
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.elasticache#IntegerOptional", name: "IntegerOptional")
    InvalidARNFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidARNFault", name: "InvalidARNFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidARN", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCacheClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidCacheClusterStateFault", name: "InvalidCacheClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCacheClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCacheParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidCacheParameterGroupStateFault", name: "InvalidCacheParameterGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCacheParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCacheSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidCacheSecurityGroupStateFault", name: "InvalidCacheSecurityGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCacheSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCredentialsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidCredentialsException", name: "InvalidCredentialsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCredentialsException", "httpResponseCode" => 408}, "smithy.api#error" => "client", "smithy.api#httpError" => 408})
    InvalidGlobalReplicationGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidGlobalReplicationGroupStateFault", name: "InvalidGlobalReplicationGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalReplicationGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKMSKeyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidKMSKeyFault", name: "InvalidKMSKeyFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKMSKeyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidReplicationGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidReplicationGroupStateFault", name: "InvalidReplicationGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidReplicationGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidServerlessCacheSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidServerlessCacheSnapshotStateFault", name: "InvalidServerlessCacheSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidServerlessCacheSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidServerlessCacheStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidServerlessCacheStateFault", name: "InvalidServerlessCacheStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidServerlessCacheStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidSnapshotStateFault", name: "InvalidSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidSubnet", name: "InvalidSubnet", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidUserGroupStateFault", name: "InvalidUserGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidUserStateFault", name: "InvalidUserStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#InvalidVPCNetworkStateFault", name: "InvalidVPCNetworkStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpDiscovery = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#IpDiscovery", name: "IpDiscovery")
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#KeyList", name: "KeyList")
    KinesisFirehoseDestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#KinesisFirehoseDestinationDetails", name: "KinesisFirehoseDestinationDetails")
    ListAllowedNodeTypeModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ListAllowedNodeTypeModificationsMessage", name: "ListAllowedNodeTypeModificationsMessage")
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ListTagsForResourceMessage", name: "ListTagsForResourceMessage")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LogDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#LogDeliveryConfiguration", name: "LogDeliveryConfiguration")
    LogDeliveryConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#LogDeliveryConfigurationList", name: "LogDeliveryConfigurationList")
    LogDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#LogDeliveryConfigurationRequest", name: "LogDeliveryConfigurationRequest")
    LogDeliveryConfigurationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#LogDeliveryConfigurationRequestList", name: "LogDeliveryConfigurationRequestList")
    LogDeliveryConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#LogDeliveryConfigurationStatus", name: "LogDeliveryConfigurationStatus")
    LogFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#LogFormat", name: "LogFormat")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#LogType", name: "LogType")
    ModifyCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyCacheClusterMessage", name: "ModifyCacheClusterMessage")
    ModifyCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyCacheClusterResult", name: "ModifyCacheClusterResult")
    ModifyCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyCacheParameterGroupMessage", name: "ModifyCacheParameterGroupMessage")
    ModifyCacheParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyCacheParameterGroupOutput", name: "ModifyCacheParameterGroupOutput")
    ModifyCacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyCacheSubnetGroupMessage", name: "ModifyCacheSubnetGroupMessage")
    ModifyCacheSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyCacheSubnetGroupResult", name: "ModifyCacheSubnetGroupResult")
    ModifyGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyGlobalReplicationGroupMessage", name: "ModifyGlobalReplicationGroupMessage")
    ModifyGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyGlobalReplicationGroupResult", name: "ModifyGlobalReplicationGroupResult")
    ModifyReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyReplicationGroupMessage", name: "ModifyReplicationGroupMessage")
    ModifyReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyReplicationGroupResult", name: "ModifyReplicationGroupResult")
    ModifyReplicationGroupShardConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyReplicationGroupShardConfigurationMessage", name: "ModifyReplicationGroupShardConfigurationMessage")
    ModifyReplicationGroupShardConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyReplicationGroupShardConfigurationResult", name: "ModifyReplicationGroupShardConfigurationResult")
    ModifyServerlessCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyServerlessCacheRequest", name: "ModifyServerlessCacheRequest")
    ModifyServerlessCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyServerlessCacheResponse", name: "ModifyServerlessCacheResponse")
    ModifyUserGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyUserGroupMessage", name: "ModifyUserGroupMessage")
    ModifyUserGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyUserGroupOutput", name: "ModifyUserGroupOutput")
    ModifyUserMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyUserMessage", name: "ModifyUserMessage")
    ModifyUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ModifyUserOutput", name: "ModifyUserOutput")
    MultiAZStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#MultiAZStatus", name: "MultiAZStatus")
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#NetworkType", name: "NetworkType")
    NetworkTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NetworkTypeList", name: "NetworkTypeList")
    NoOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NoOperationFault", name: "NoOperationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NoOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroup", name: "NodeGroup")
    NodeGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroupConfiguration", name: "NodeGroupConfiguration")
    NodeGroupConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupConfigurationList", name: "NodeGroupConfigurationList")
    NodeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupList", name: "NodeGroupList")
    NodeGroupMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroupMember", name: "NodeGroupMember")
    NodeGroupMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupMemberList", name: "NodeGroupMemberList")
    NodeGroupMemberUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroupMemberUpdateStatus", name: "NodeGroupMemberUpdateStatus")
    NodeGroupMemberUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupMemberUpdateStatusList", name: "NodeGroupMemberUpdateStatusList")
    NodeGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroupNotFoundFault", name: "NodeGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NodeGroupUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroupUpdateStatus", name: "NodeGroupUpdateStatus")
    NodeGroupUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupUpdateStatusList", name: "NodeGroupUpdateStatusList")
    NodeGroupsPerReplicationGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeGroupsPerReplicationGroupQuotaExceededFault", name: "NodeGroupsPerReplicationGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeGroupsPerReplicationGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeGroupsToRemoveList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupsToRemoveList", name: "NodeGroupsToRemoveList")
    NodeGroupsToRetainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeGroupsToRetainList", name: "NodeGroupsToRetainList")
    NodeQuotaForClusterExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeQuotaForClusterExceededFault", name: "NodeQuotaForClusterExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForClusterExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeQuotaForCustomerExceededFault", name: "NodeQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NodeSnapshot", name: "NodeSnapshot")
    NodeSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeSnapshotList", name: "NodeSnapshotList")
    NodeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#NodeTypeList", name: "NodeTypeList")
    NodeUpdateInitiatedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#NodeUpdateInitiatedBy", name: "NodeUpdateInitiatedBy")
    NodeUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#NodeUpdateStatus", name: "NodeUpdateStatus")
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#NotificationConfiguration", name: "NotificationConfiguration")
    OutpostArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#OutpostArnsList", name: "OutpostArnsList")
    OutpostMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#OutpostMode", name: "OutpostMode")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Parameter", name: "Parameter")
    ParameterNameValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ParameterNameValue", name: "ParameterNameValue")
    ParameterNameValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ParameterNameValueList", name: "ParameterNameValueList")
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ParametersList", name: "ParametersList")
    PasswordListInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#PasswordListInput", name: "PasswordListInput", traits: {"smithy.api#length" => {"min" => 1}})
    PendingAutomaticFailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#PendingAutomaticFailoverStatus", name: "PendingAutomaticFailoverStatus")
    PendingLogDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#PendingLogDeliveryConfiguration", name: "PendingLogDeliveryConfiguration")
    PendingLogDeliveryConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#PendingLogDeliveryConfigurationList", name: "PendingLogDeliveryConfigurationList")
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#PendingModifiedValues", name: "PendingModifiedValues")
    PreferredAvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#PreferredAvailabilityZoneList", name: "PreferredAvailabilityZoneList")
    PreferredOutpostArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#PreferredOutpostArnList", name: "PreferredOutpostArnList")
    ProcessedUpdateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ProcessedUpdateAction", name: "ProcessedUpdateAction")
    ProcessedUpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ProcessedUpdateActionList", name: "ProcessedUpdateActionList")
    PurchaseReservedCacheNodesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#PurchaseReservedCacheNodesOfferingMessage", name: "PurchaseReservedCacheNodesOfferingMessage")
    PurchaseReservedCacheNodesOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#PurchaseReservedCacheNodesOfferingResult", name: "PurchaseReservedCacheNodesOfferingResult")
    RebalanceSlotsInGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RebalanceSlotsInGlobalReplicationGroupMessage", name: "RebalanceSlotsInGlobalReplicationGroupMessage")
    RebalanceSlotsInGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RebalanceSlotsInGlobalReplicationGroupResult", name: "RebalanceSlotsInGlobalReplicationGroupResult")
    RebootCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RebootCacheClusterMessage", name: "RebootCacheClusterMessage")
    RebootCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RebootCacheClusterResult", name: "RebootCacheClusterResult")
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RecurringCharge", name: "RecurringCharge")
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#RecurringChargeList", name: "RecurringChargeList")
    RegionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RegionalConfiguration", name: "RegionalConfiguration")
    RegionalConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#RegionalConfigurationList", name: "RegionalConfigurationList")
    RemoveReplicasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#RemoveReplicasList", name: "RemoveReplicasList")
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RemoveTagsFromResourceMessage", name: "RemoveTagsFromResourceMessage")
    RemoveTagsFromResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RemoveTagsFromResourceOutput", name: "RemoveTagsFromResourceOutput")
    ReplicaConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReplicaConfigurationList", name: "ReplicaConfigurationList")
    ReplicationGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroup", name: "ReplicationGroup")
    ReplicationGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroupAlreadyExistsFault", name: "ReplicationGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationGroupAlreadyUnderMigrationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroupAlreadyUnderMigrationFault", name: "ReplicationGroupAlreadyUnderMigrationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupAlreadyUnderMigrationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReplicationGroupIdList", name: "ReplicationGroupIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ReplicationGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReplicationGroupList", name: "ReplicationGroupList")
    ReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroupMessage", name: "ReplicationGroupMessage")
    ReplicationGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroupNotFoundFault", name: "ReplicationGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationGroupNotUnderMigrationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroupNotUnderMigrationFault", name: "ReplicationGroupNotUnderMigrationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupNotUnderMigrationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationGroupOutpostArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReplicationGroupOutpostArnList", name: "ReplicationGroupOutpostArnList")
    ReplicationGroupPendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReplicationGroupPendingModifiedValues", name: "ReplicationGroupPendingModifiedValues")
    ReservedCacheNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNode", name: "ReservedCacheNode")
    ReservedCacheNodeAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodeAlreadyExistsFault", name: "ReservedCacheNodeAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedCacheNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodeList", name: "ReservedCacheNodeList")
    ReservedCacheNodeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodeMessage", name: "ReservedCacheNodeMessage")
    ReservedCacheNodeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodeNotFoundFault", name: "ReservedCacheNodeNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedCacheNodeQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodeQuotaExceededFault", name: "ReservedCacheNodeQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedCacheNodesOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodesOffering", name: "ReservedCacheNodesOffering")
    ReservedCacheNodesOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodesOfferingList", name: "ReservedCacheNodesOfferingList")
    ReservedCacheNodesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodesOfferingMessage", name: "ReservedCacheNodesOfferingMessage")
    ReservedCacheNodesOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReservedCacheNodesOfferingNotFoundFault", name: "ReservedCacheNodesOfferingNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodesOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResetCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ResetCacheParameterGroupMessage", name: "ResetCacheParameterGroupMessage")
    ResetCacheParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ResetCacheParameterGroupOutput", name: "ResetCacheParameterGroupOutput")
    ReshardingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReshardingConfiguration", name: "ReshardingConfiguration")
    ReshardingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ReshardingConfigurationList", name: "ReshardingConfigurationList")
    ReshardingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ReshardingStatus", name: "ReshardingStatus")
    RevokeCacheSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RevokeCacheSecurityGroupIngressMessage", name: "RevokeCacheSecurityGroupIngressMessage")
    RevokeCacheSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#RevokeCacheSecurityGroupIngressResult", name: "RevokeCacheSecurityGroupIngressResult")
    ScaleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ScaleConfig", name: "ScaleConfig")
    SecurityGroupIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SecurityGroupIdsList", name: "SecurityGroupIdsList")
    SecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SecurityGroupMembership", name: "SecurityGroupMembership")
    SecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SecurityGroupMembershipList", name: "SecurityGroupMembershipList")
    ServerlessCache = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCache", name: "ServerlessCache")
    ServerlessCacheAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheAlreadyExistsFault", name: "ServerlessCacheAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerlessCacheConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheConfiguration", name: "ServerlessCacheConfiguration")
    ServerlessCacheList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ServerlessCacheList", name: "ServerlessCacheList")
    ServerlessCacheNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheNotFoundFault", name: "ServerlessCacheNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerlessCacheQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheQuotaForCustomerExceededFault", name: "ServerlessCacheQuotaForCustomerExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheQuotaForCustomerExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerlessCacheSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheSnapshot", name: "ServerlessCacheSnapshot")
    ServerlessCacheSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheSnapshotAlreadyExistsFault", name: "ServerlessCacheSnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerlessCacheSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ServerlessCacheSnapshotList", name: "ServerlessCacheSnapshotList")
    ServerlessCacheSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheSnapshotNotFoundFault", name: "ServerlessCacheSnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerlessCacheSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServerlessCacheSnapshotQuotaExceededFault", name: "ServerlessCacheSnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheSnapshotQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceLinkedRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServiceLinkedRoleNotFoundFault", name: "ServiceLinkedRoleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServiceUpdate", name: "ServiceUpdate")
    ServiceUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ServiceUpdateList", name: "ServiceUpdateList")
    ServiceUpdateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServiceUpdateNotFoundFault", name: "ServiceUpdateNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceUpdateNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUpdateSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#ServiceUpdateSeverity", name: "ServiceUpdateSeverity")
    ServiceUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#ServiceUpdateStatus", name: "ServiceUpdateStatus")
    ServiceUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#ServiceUpdateStatusList", name: "ServiceUpdateStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    ServiceUpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#ServiceUpdateType", name: "ServiceUpdateType")
    ServiceUpdatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#ServiceUpdatesMessage", name: "ServiceUpdatesMessage")
    SlaMet = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#SlaMet", name: "SlaMet")
    SlotMigration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SlotMigration", name: "SlotMigration")
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Snapshot", name: "Snapshot")
    SnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SnapshotAlreadyExistsFault", name: "SnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SnapshotArnsList", name: "SnapshotArnsList")
    SnapshotFeatureNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SnapshotFeatureNotSupportedFault", name: "SnapshotFeatureNotSupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotFeatureNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SnapshotList", name: "SnapshotList")
    SnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SnapshotNotFoundFault", name: "SnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SnapshotQuotaExceededFault", name: "SnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#SourceType", name: "SourceType")
    StartMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#StartMigrationMessage", name: "StartMigrationMessage")
    StartMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#StartMigrationResponse", name: "StartMigrationResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#String", name: "String")
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Subnet", name: "Subnet")
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SubnetIdsList", name: "SubnetIdsList")
    SubnetInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SubnetInUse", name: "SubnetInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#SubnetList", name: "SubnetList")
    SubnetNotAllowedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SubnetNotAllowedFault", name: "SubnetNotAllowedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetOutpost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#SubnetOutpost", name: "SubnetOutpost")
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.elasticache#TStamp", name: "TStamp")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#TagList", name: "TagList")
    TagNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TagNotFoundFault", name: "TagNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TagNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TagQuotaPerResourceExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TagQuotaPerResourceExceeded", name: "TagQuotaPerResourceExceeded", traits: {"aws.protocols#awsQueryError" => {"code" => "TagQuotaPerResourceExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TestFailoverMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TestFailoverMessage", name: "TestFailoverMessage")
    TestFailoverNotAvailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TestFailoverNotAvailableFault", name: "TestFailoverNotAvailableFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TestFailoverNotAvailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TestFailoverResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TestFailoverResult", name: "TestFailoverResult")
    TestMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TestMigrationMessage", name: "TestMigrationMessage")
    TestMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TestMigrationResponse", name: "TestMigrationResponse")
    TimeRangeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#TimeRangeFilter", name: "TimeRangeFilter")
    TransitEncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#TransitEncryptionMode", name: "TransitEncryptionMode")
    UGReplicationGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UGReplicationGroupIdList", name: "UGReplicationGroupIdList")
    UGServerlessCacheIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UGServerlessCacheIdList", name: "UGServerlessCacheIdList")
    UnprocessedUpdateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UnprocessedUpdateAction", name: "UnprocessedUpdateAction")
    UnprocessedUpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UnprocessedUpdateActionList", name: "UnprocessedUpdateActionList")
    UpdateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UpdateAction", name: "UpdateAction")
    UpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UpdateActionList", name: "UpdateActionList")
    UpdateActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.elasticache#UpdateActionStatus", name: "UpdateActionStatus")
    UpdateActionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UpdateActionStatusList", name: "UpdateActionStatusList", traits: {"smithy.api#length" => {"min" => 0, "max" => 9}})
    UpdateActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UpdateActionsMessage", name: "UpdateActionsMessage")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#User", name: "User")
    UserAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserAlreadyExistsFault", name: "UserAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserGroup", name: "UserGroup")
    UserGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserGroupAlreadyExistsFault", name: "UserGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#UserGroupId", name: "UserGroupId", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    UserGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UserGroupIdList", name: "UserGroupIdList")
    UserGroupIdListInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UserGroupIdListInput", name: "UserGroupIdListInput", traits: {"smithy.api#length" => {"min" => 1}})
    UserGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UserGroupList", name: "UserGroupList")
    UserGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserGroupNotFoundFault", name: "UserGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserGroupPendingChanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserGroupPendingChanges", name: "UserGroupPendingChanges")
    UserGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserGroupQuotaExceededFault", name: "UserGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserGroupsUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserGroupsUpdateStatus", name: "UserGroupsUpdateStatus")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    UserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UserIdList", name: "UserIdList")
    UserIdListInput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UserIdListInput", name: "UserIdListInput", traits: {"smithy.api#length" => {"min" => 1}})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.elasticache#UserList", name: "UserList")
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.elasticache#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1}})
    UserNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserNotFoundFault", name: "UserNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.elasticache#UserQuotaExceededFault", name: "UserQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UserQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    APICallRateForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    APICallRateForCustomerExceededFault.type = Types::APICallRateForCustomerExceededFault
    AZMode.add_member(:single_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ", traits: {"smithy.api#enumValue" => "single-az"}))
    AZMode.add_member(:cross_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_AZ", traits: {"smithy.api#enumValue" => "cross-az"}))
    AddTagsToResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    AddTagsToResourceOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    AddTagsToResourceOutput.type = Types::AddTagsToResourceOutput
    AllowedNodeTypeModificationsMessage.add_member(:scale_up_modifications, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeList, name: "ScaleUpModifications"))
    AllowedNodeTypeModificationsMessage.add_member(:scale_down_modifications, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeTypeList, name: "ScaleDownModifications"))
    AllowedNodeTypeModificationsMessage.type = Types::AllowedNodeTypeModificationsMessage
    AuthTokenUpdateStatus.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SETTING", traits: {"smithy.api#enumValue" => "SETTING"}))
    AuthTokenUpdateStatus.add_member(:rotating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROTATING", traits: {"smithy.api#enumValue" => "ROTATING"}))
    AuthTokenUpdateStrategyType.add_member(:set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SET", traits: {"smithy.api#enumValue" => "SET"}))
    AuthTokenUpdateStrategyType.add_member(:rotate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROTATE", traits: {"smithy.api#enumValue" => "ROTATE"}))
    AuthTokenUpdateStrategyType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    Authentication.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "Type"))
    Authentication.add_member(:password_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "PasswordCount"))
    Authentication.type = Types::Authentication
    AuthenticationMode.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputAuthenticationType, name: "Type"))
    AuthenticationMode.add_member(:passwords, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordListInput, name: "Passwords"))
    AuthenticationMode.type = Types::AuthenticationMode
    AuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    AuthenticationType.add_member(:no_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PASSWORD", traits: {"smithy.api#enumValue" => "no-password"}))
    AuthenticationType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    AuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeCacheSecurityGroupIngressMessage.type = Types::AuthorizeCacheSecurityGroupIngressMessage
    AuthorizeCacheSecurityGroupIngressResult.add_member(:cache_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroup, name: "CacheSecurityGroup"))
    AuthorizeCacheSecurityGroupIngressResult.type = Types::AuthorizeCacheSecurityGroupIngressResult
    AutomaticFailoverStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    AutomaticFailoverStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AutomaticFailoverStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "enabling"}))
    AutomaticFailoverStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "disabling"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZonesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AvailabilityZone"}))
    BatchApplyUpdateActionMessage.add_member(:replication_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupIdList, name: "ReplicationGroupIds"))
    BatchApplyUpdateActionMessage.add_member(:cache_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterIdList, name: "CacheClusterIds"))
    BatchApplyUpdateActionMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchApplyUpdateActionMessage.type = Types::BatchApplyUpdateActionMessage
    BatchApplyUpdateActionOutput.add_member(:processed_update_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedUpdateActionList, name: "ProcessedUpdateActions"))
    BatchApplyUpdateActionOutput.add_member(:unprocessed_update_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedUpdateActionList, name: "UnprocessedUpdateActions"))
    BatchApplyUpdateActionOutput.type = Types::BatchApplyUpdateActionOutput
    BatchStopUpdateActionMessage.add_member(:replication_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupIdList, name: "ReplicationGroupIds"))
    BatchStopUpdateActionMessage.add_member(:cache_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterIdList, name: "CacheClusterIds"))
    BatchStopUpdateActionMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchStopUpdateActionMessage.type = Types::BatchStopUpdateActionMessage
    BatchStopUpdateActionOutput.add_member(:processed_update_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedUpdateActionList, name: "ProcessedUpdateActions"))
    BatchStopUpdateActionOutput.add_member(:unprocessed_update_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedUpdateActionList, name: "UnprocessedUpdateActions"))
    BatchStopUpdateActionOutput.type = Types::BatchStopUpdateActionOutput
    CacheCluster.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    CacheCluster.add_member(:configuration_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ConfigurationEndpoint"))
    CacheCluster.add_member(:client_download_landing_page, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClientDownloadLandingPage"))
    CacheCluster.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    CacheCluster.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CacheCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CacheCluster.add_member(:cache_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterStatus"))
    CacheCluster.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumCacheNodes"))
    CacheCluster.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredAvailabilityZone"))
    CacheCluster.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredOutpostArn"))
    CacheCluster.add_member(:cache_cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CacheClusterCreateTime"))
    CacheCluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CacheCluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedValues, name: "PendingModifiedValues"))
    CacheCluster.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "NotificationConfiguration"))
    CacheCluster.add_member(:cache_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroupMembershipList, name: "CacheSecurityGroups"))
    CacheCluster.add_member(:cache_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheParameterGroupStatus, name: "CacheParameterGroup"))
    CacheCluster.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName"))
    CacheCluster.add_member(:cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeList, name: "CacheNodes"))
    CacheCluster.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade"))
    CacheCluster.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMembershipList, name: "SecurityGroups"))
    CacheCluster.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    CacheCluster.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    CacheCluster.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    CacheCluster.add_member(:auth_token_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AuthTokenEnabled"))
    CacheCluster.add_member(:auth_token_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AuthTokenLastModifiedDate"))
    CacheCluster.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    CacheCluster.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AtRestEncryptionEnabled"))
    CacheCluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    CacheCluster.add_member(:replication_group_log_delivery_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ReplicationGroupLogDeliveryEnabled"))
    CacheCluster.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationList, name: "LogDeliveryConfigurations"))
    CacheCluster.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CacheCluster.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, name: "IpDiscovery"))
    CacheCluster.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitEncryptionMode, name: "TransitEncryptionMode"))
    CacheCluster.type = Types::CacheCluster
    CacheClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheClusterAlreadyExistsFault.type = Types::CacheClusterAlreadyExistsFault
    CacheClusterIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    CacheClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheCluster, name: "member", traits: {"smithy.api#xmlName" => "CacheCluster"}))
    CacheClusterMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CacheClusterMessage.add_member(:cache_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterList, name: "CacheClusters"))
    CacheClusterMessage.type = Types::CacheClusterMessage
    CacheClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheClusterNotFoundFault.type = Types::CacheClusterNotFoundFault
    CacheEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CacheEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CacheEngineVersion.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupFamily"))
    CacheEngineVersion.add_member(:cache_engine_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheEngineDescription"))
    CacheEngineVersion.add_member(:cache_engine_version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheEngineVersionDescription"))
    CacheEngineVersion.type = Types::CacheEngineVersion
    CacheEngineVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheEngineVersion, name: "member", traits: {"smithy.api#xmlName" => "CacheEngineVersion"}))
    CacheEngineVersionMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CacheEngineVersionMessage.add_member(:cache_engine_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheEngineVersionList, name: "CacheEngineVersions"))
    CacheEngineVersionMessage.type = Types::CacheEngineVersionMessage
    CacheNode.add_member(:cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeId"))
    CacheNode.add_member(:cache_node_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeStatus"))
    CacheNode.add_member(:cache_node_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CacheNodeCreateTime"))
    CacheNode.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    CacheNode.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupStatus"))
    CacheNode.add_member(:source_cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceCacheNodeId"))
    CacheNode.add_member(:customer_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomerAvailabilityZone"))
    CacheNode.add_member(:customer_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomerOutpostArn"))
    CacheNode.type = Types::CacheNode
    CacheNodeIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "CacheNodeId"}))
    CacheNodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNode, name: "member", traits: {"smithy.api#xmlName" => "CacheNode"}))
    CacheNodeTypeSpecificParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    CacheNodeTypeSpecificParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CacheNodeTypeSpecificParameter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    CacheNodeTypeSpecificParameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    CacheNodeTypeSpecificParameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    CacheNodeTypeSpecificParameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    CacheNodeTypeSpecificParameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    CacheNodeTypeSpecificParameter.add_member(:cache_node_type_specific_values, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeTypeSpecificValueList, name: "CacheNodeTypeSpecificValues"))
    CacheNodeTypeSpecificParameter.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "ChangeType"))
    CacheNodeTypeSpecificParameter.type = Types::CacheNodeTypeSpecificParameter
    CacheNodeTypeSpecificParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeTypeSpecificParameter, name: "member", traits: {"smithy.api#xmlName" => "CacheNodeTypeSpecificParameter"}))
    CacheNodeTypeSpecificValue.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    CacheNodeTypeSpecificValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    CacheNodeTypeSpecificValue.type = Types::CacheNodeTypeSpecificValue
    CacheNodeTypeSpecificValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeTypeSpecificValue, name: "member", traits: {"smithy.api#xmlName" => "CacheNodeTypeSpecificValue"}))
    CacheNodeUpdateStatus.add_member(:cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeId"))
    CacheNodeUpdateStatus.add_member(:node_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeUpdateStatus, name: "NodeUpdateStatus"))
    CacheNodeUpdateStatus.add_member(:node_deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeDeletionDate"))
    CacheNodeUpdateStatus.add_member(:node_update_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateStartDate"))
    CacheNodeUpdateStatus.add_member(:node_update_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateEndDate"))
    CacheNodeUpdateStatus.add_member(:node_update_initiated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeUpdateInitiatedBy, name: "NodeUpdateInitiatedBy"))
    CacheNodeUpdateStatus.add_member(:node_update_initiated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateInitiatedDate"))
    CacheNodeUpdateStatus.add_member(:node_update_status_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateStatusModifiedDate"))
    CacheNodeUpdateStatus.type = Types::CacheNodeUpdateStatus
    CacheNodeUpdateStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeUpdateStatus, name: "member", traits: {"smithy.api#xmlName" => "CacheNodeUpdateStatus"}))
    CacheParameterGroup.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    CacheParameterGroup.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupFamily"))
    CacheParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CacheParameterGroup.add_member(:is_global, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsGlobal"))
    CacheParameterGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    CacheParameterGroup.type = Types::CacheParameterGroup
    CacheParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheParameterGroupAlreadyExistsFault.type = Types::CacheParameterGroupAlreadyExistsFault
    CacheParameterGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheParameterGroup, name: "member", traits: {"smithy.api#xmlName" => "CacheParameterGroup"}))
    CacheParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheParameterGroupNotFoundFault.type = Types::CacheParameterGroupNotFoundFault
    CacheParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheParameterGroupQuotaExceededFault.type = Types::CacheParameterGroupQuotaExceededFault
    CacheParameterGroupStatus.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    CacheParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterApplyStatus"))
    CacheParameterGroupStatus.add_member(:cache_node_ids_to_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeIdsList, name: "CacheNodeIdsToReboot"))
    CacheParameterGroupStatus.type = Types::CacheParameterGroupStatus
    CacheParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CacheParameterGroupsMessage.add_member(:cache_parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheParameterGroupList, name: "CacheParameterGroups"))
    CacheParameterGroupsMessage.type = Types::CacheParameterGroupsMessage
    CacheSecurityGroup.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerId"))
    CacheSecurityGroup.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName"))
    CacheSecurityGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CacheSecurityGroup.add_member(:ec2_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2SecurityGroupList, name: "EC2SecurityGroups"))
    CacheSecurityGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    CacheSecurityGroup.type = Types::CacheSecurityGroup
    CacheSecurityGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSecurityGroupAlreadyExistsFault.type = Types::CacheSecurityGroupAlreadyExistsFault
    CacheSecurityGroupMembership.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName"))
    CacheSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CacheSecurityGroupMembership.type = Types::CacheSecurityGroupMembership
    CacheSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "CacheSecurityGroup"}))
    CacheSecurityGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CacheSecurityGroupMessage.add_member(:cache_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroups, name: "CacheSecurityGroups"))
    CacheSecurityGroupMessage.type = Types::CacheSecurityGroupMessage
    CacheSecurityGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "CacheSecurityGroupName"}))
    CacheSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSecurityGroupNotFoundFault.type = Types::CacheSecurityGroupNotFoundFault
    CacheSecurityGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSecurityGroupQuotaExceededFault.type = Types::CacheSecurityGroupQuotaExceededFault
    CacheSecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroup, name: "member", traits: {"smithy.api#xmlName" => "CacheSecurityGroup"}))
    CacheSubnetGroup.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName"))
    CacheSubnetGroup.add_member(:cache_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupDescription"))
    CacheSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    CacheSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "Subnets"))
    CacheSubnetGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    CacheSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, name: "SupportedNetworkTypes"))
    CacheSubnetGroup.type = Types::CacheSubnetGroup
    CacheSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSubnetGroupAlreadyExistsFault.type = Types::CacheSubnetGroupAlreadyExistsFault
    CacheSubnetGroupInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSubnetGroupInUse.type = Types::CacheSubnetGroupInUse
    CacheSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CacheSubnetGroupMessage.add_member(:cache_subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSubnetGroups, name: "CacheSubnetGroups"))
    CacheSubnetGroupMessage.type = Types::CacheSubnetGroupMessage
    CacheSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSubnetGroupNotFoundFault.type = Types::CacheSubnetGroupNotFoundFault
    CacheSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSubnetGroupQuotaExceededFault.type = Types::CacheSubnetGroupQuotaExceededFault
    CacheSubnetGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSubnetGroup, name: "member", traits: {"smithy.api#xmlName" => "CacheSubnetGroup"}))
    CacheSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CacheSubnetQuotaExceededFault.type = Types::CacheSubnetQuotaExceededFault
    CacheUsageLimits.add_member(:data_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStorage, name: "DataStorage"))
    CacheUsageLimits.add_member(:ecpu_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ECPUPerSecond, name: "ECPUPerSecond"))
    CacheUsageLimits.type = Types::CacheUsageLimits
    ChangeType.add_member(:immediate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "immediate", traits: {"smithy.api#enumValue" => "immediate"}))
    ChangeType.add_member(:requires_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "requires_reboot", traits: {"smithy.api#enumValue" => "requires-reboot"}))
    CloudWatchLogsDestinationDetails.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogGroup"))
    CloudWatchLogsDestinationDetails.type = Types::CloudWatchLogsDestinationDetails
    ClusterIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ClusterId"}))
    ClusterMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    ClusterMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    ClusterMode.add_member(:compatible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPATIBLE", traits: {"smithy.api#enumValue" => "compatible"}))
    ClusterQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterQuotaForCustomerExceededFault.type = Types::ClusterQuotaForCustomerExceededFault
    CompleteMigrationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CompleteMigrationMessage.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force"))
    CompleteMigrationMessage.type = Types::CompleteMigrationMessage
    CompleteMigrationResponse.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    CompleteMigrationResponse.type = Types::CompleteMigrationResponse
    ConfigureShard.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedNodeGroupId, name: "NodeGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConfigureShard.add_member(:new_replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NewReplicaCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConfigureShard.add_member(:preferred_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredAvailabilityZoneList, name: "PreferredAvailabilityZones"))
    ConfigureShard.add_member(:preferred_outpost_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredOutpostArnList, name: "PreferredOutpostArns"))
    ConfigureShard.type = Types::ConfigureShard
    CopyServerlessCacheSnapshotRequest.add_member(:source_serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceServerlessCacheSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyServerlessCacheSnapshotRequest.add_member(:target_serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetServerlessCacheSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyServerlessCacheSnapshotRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CopyServerlessCacheSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopyServerlessCacheSnapshotRequest.type = Types::CopyServerlessCacheSnapshotRequest
    CopyServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheSnapshot, name: "ServerlessCacheSnapshot"))
    CopyServerlessCacheSnapshotResponse.type = Types::CopyServerlessCacheSnapshotResponse
    CopySnapshotMessage.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopySnapshotMessage.add_member(:target_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopySnapshotMessage.add_member(:target_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetBucket"))
    CopySnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CopySnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CopySnapshotMessage.type = Types::CopySnapshotMessage
    CopySnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    CopySnapshotResult.type = Types::CopySnapshotResult
    CreateCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheClusterMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    CreateCacheClusterMessage.add_member(:az_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AZMode, name: "AZMode"))
    CreateCacheClusterMessage.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredAvailabilityZone"))
    CreateCacheClusterMessage.add_member(:preferred_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredAvailabilityZoneList, name: "PreferredAvailabilityZones"))
    CreateCacheClusterMessage.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumCacheNodes"))
    CreateCacheClusterMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    CreateCacheClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CreateCacheClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateCacheClusterMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    CreateCacheClusterMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName"))
    CreateCacheClusterMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroupNameList, name: "CacheSecurityGroupNames"))
    CreateCacheClusterMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    CreateCacheClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCacheClusterMessage.add_member(:snapshot_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotArnsList, name: "SnapshotArns"))
    CreateCacheClusterMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotName"))
    CreateCacheClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateCacheClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateCacheClusterMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicArn"))
    CreateCacheClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateCacheClusterMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    CreateCacheClusterMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    CreateCacheClusterMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthToken"))
    CreateCacheClusterMessage.add_member(:outpost_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostMode, name: "OutpostMode"))
    CreateCacheClusterMessage.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredOutpostArn"))
    CreateCacheClusterMessage.add_member(:preferred_outpost_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredOutpostArnList, name: "PreferredOutpostArns"))
    CreateCacheClusterMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationRequestList, name: "LogDeliveryConfigurations"))
    CreateCacheClusterMessage.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    CreateCacheClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateCacheClusterMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, name: "IpDiscovery"))
    CreateCacheClusterMessage.type = Types::CreateCacheClusterMessage
    CreateCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheCluster, name: "CacheCluster"))
    CreateCacheClusterResult.type = Types::CreateCacheClusterResult
    CreateCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheParameterGroupMessage.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCacheParameterGroupMessage.type = Types::CreateCacheParameterGroupMessage
    CreateCacheParameterGroupResult.add_member(:cache_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheParameterGroup, name: "CacheParameterGroup"))
    CreateCacheParameterGroupResult.type = Types::CreateCacheParameterGroupResult
    CreateCacheSecurityGroupMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSecurityGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSecurityGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCacheSecurityGroupMessage.type = Types::CreateCacheSecurityGroupMessage
    CreateCacheSecurityGroupResult.add_member(:cache_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroup, name: "CacheSecurityGroup"))
    CreateCacheSecurityGroupResult.type = Types::CreateCacheSecurityGroupResult
    CreateCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSubnetGroupMessage.add_member(:cache_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCacheSubnetGroupMessage.type = Types::CreateCacheSubnetGroupMessage
    CreateCacheSubnetGroupResult.add_member(:cache_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSubnetGroup, name: "CacheSubnetGroup"))
    CreateCacheSubnetGroupResult.type = Types::CreateCacheSubnetGroupResult
    CreateGlobalReplicationGroupMessage.add_member(:global_replication_group_id_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupIdSuffix", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalReplicationGroupMessage.add_member(:global_replication_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupDescription"))
    CreateGlobalReplicationGroupMessage.add_member(:primary_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalReplicationGroupMessage.type = Types::CreateGlobalReplicationGroupMessage
    CreateGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    CreateGlobalReplicationGroupResult.type = Types::CreateGlobalReplicationGroupResult
    CreateReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReplicationGroupMessage.add_member(:replication_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId"))
    CreateReplicationGroupMessage.add_member(:primary_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryClusterId"))
    CreateReplicationGroupMessage.add_member(:automatic_failover_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutomaticFailoverEnabled"))
    CreateReplicationGroupMessage.add_member(:multi_az_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZEnabled"))
    CreateReplicationGroupMessage.add_member(:num_cache_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumCacheClusters"))
    CreateReplicationGroupMessage.add_member(:preferred_cache_cluster_a_zs, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZonesList, name: "PreferredCacheClusterAZs"))
    CreateReplicationGroupMessage.add_member(:num_node_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumNodeGroups"))
    CreateReplicationGroupMessage.add_member(:replicas_per_node_group, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ReplicasPerNodeGroup"))
    CreateReplicationGroupMessage.add_member(:node_group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupConfigurationList, name: "NodeGroupConfiguration"))
    CreateReplicationGroupMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    CreateReplicationGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    CreateReplicationGroupMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    CreateReplicationGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    CreateReplicationGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName"))
    CreateReplicationGroupMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroupNameList, name: "CacheSecurityGroupNames"))
    CreateReplicationGroupMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    CreateReplicationGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateReplicationGroupMessage.add_member(:snapshot_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotArnsList, name: "SnapshotArns"))
    CreateReplicationGroupMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotName"))
    CreateReplicationGroupMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateReplicationGroupMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateReplicationGroupMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicArn"))
    CreateReplicationGroupMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    CreateReplicationGroupMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    CreateReplicationGroupMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    CreateReplicationGroupMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthToken"))
    CreateReplicationGroupMessage.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    CreateReplicationGroupMessage.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AtRestEncryptionEnabled"))
    CreateReplicationGroupMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateReplicationGroupMessage.add_member(:user_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdListInput, name: "UserGroupIds"))
    CreateReplicationGroupMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationRequestList, name: "LogDeliveryConfigurations"))
    CreateReplicationGroupMessage.add_member(:data_tiering_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DataTieringEnabled"))
    CreateReplicationGroupMessage.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    CreateReplicationGroupMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, name: "IpDiscovery"))
    CreateReplicationGroupMessage.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitEncryptionMode, name: "TransitEncryptionMode"))
    CreateReplicationGroupMessage.add_member(:cluster_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMode, name: "ClusterMode"))
    CreateReplicationGroupMessage.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheSnapshotName"))
    CreateReplicationGroupMessage.type = Types::CreateReplicationGroupMessage
    CreateReplicationGroupResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    CreateReplicationGroupResult.type = Types::CreateReplicationGroupResult
    CreateServerlessCacheRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    CreateServerlessCacheRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheRequest.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    CreateServerlessCacheRequest.add_member(:cache_usage_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheUsageLimits, name: "CacheUsageLimits"))
    CreateServerlessCacheRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateServerlessCacheRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    CreateServerlessCacheRequest.add_member(:snapshot_arns_to_restore, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotArnsList, name: "SnapshotArnsToRestore"))
    CreateServerlessCacheRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateServerlessCacheRequest.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    CreateServerlessCacheRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdsList, name: "SubnetIds"))
    CreateServerlessCacheRequest.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    CreateServerlessCacheRequest.add_member(:daily_snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DailySnapshotTime"))
    CreateServerlessCacheRequest.type = Types::CreateServerlessCacheRequest
    CreateServerlessCacheResponse.add_member(:serverless_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCache, name: "ServerlessCache"))
    CreateServerlessCacheResponse.type = Types::CreateServerlessCacheResponse
    CreateServerlessCacheSnapshotRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheSnapshotRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheSnapshotRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateServerlessCacheSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateServerlessCacheSnapshotRequest.type = Types::CreateServerlessCacheSnapshotRequest
    CreateServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheSnapshot, name: "ServerlessCacheSnapshot"))
    CreateServerlessCacheSnapshotResponse.type = Types::CreateServerlessCacheSnapshotResponse
    CreateSnapshotMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    CreateSnapshotMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    CreateSnapshotMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSnapshotMessage.type = Types::CreateSnapshotMessage
    CreateSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    CreateSnapshotResult.type = Types::CreateSnapshotResult
    CreateUserGroupMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserGroupMessage.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdListInput, name: "UserIds"))
    CreateUserGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateUserGroupMessage.type = Types::CreateUserGroupMessage
    CreateUserGroupOutput.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    CreateUserGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CreateUserGroupOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    CreateUserGroupOutput.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIds"))
    CreateUserGroupOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    CreateUserGroupOutput.add_member(:pending_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupPendingChanges, name: "PendingChanges"))
    CreateUserGroupOutput.add_member(:replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UGReplicationGroupIdList, name: "ReplicationGroups"))
    CreateUserGroupOutput.add_member(:serverless_caches, ::Smithy::Schema::Shapes::MemberShape.new(target: UGServerlessCacheIdList, name: "ServerlessCaches"))
    CreateUserGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    CreateUserGroupOutput.type = Types::CreateUserGroupOutput
    CreateUserMessage.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:passwords, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordListInput, name: "Passwords"))
    CreateUserMessage.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessString, name: "AccessString", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:no_password_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "NoPasswordRequired"))
    CreateUserMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateUserMessage.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, name: "AuthenticationMode"))
    CreateUserMessage.type = Types::CreateUserMessage
    CreateUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId"))
    CreateUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName"))
    CreateUserOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CreateUserOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    CreateUserOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    CreateUserOutput.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccessString"))
    CreateUserOutput.add_member(:user_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIds"))
    CreateUserOutput.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "Authentication"))
    CreateUserOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    CreateUserOutput.type = Types::CreateUserOutput
    CustomerNodeEndpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    CustomerNodeEndpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CustomerNodeEndpoint.type = Types::CustomerNodeEndpoint
    CustomerNodeEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerNodeEndpoint, name: "member"))
    DataStorage.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Maximum"))
    DataStorage.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Minimum"))
    DataStorage.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStorageUnit, name: "Unit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DataStorage.type = Types::DataStorage
    DataStorageUnit.add_member(:gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    DataTieringStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    DataTieringStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:node_group_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NodeGroupCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_node_groups_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNodeGroupIdList, name: "GlobalNodeGroupsToRemove"))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_node_groups_to_retain, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNodeGroupIdList, name: "GlobalNodeGroupsToRetain"))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.type = Types::DecreaseNodeGroupsInGlobalReplicationGroupMessage
    DecreaseNodeGroupsInGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    DecreaseNodeGroupsInGlobalReplicationGroupResult.type = Types::DecreaseNodeGroupsInGlobalReplicationGroupResult
    DecreaseReplicaCountMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseReplicaCountMessage.add_member(:new_replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NewReplicaCount"))
    DecreaseReplicaCountMessage.add_member(:replica_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaConfigurationList, name: "ReplicaConfiguration"))
    DecreaseReplicaCountMessage.add_member(:replicas_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoveReplicasList, name: "ReplicasToRemove"))
    DecreaseReplicaCountMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseReplicaCountMessage.type = Types::DecreaseReplicaCountMessage
    DecreaseReplicaCountResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    DecreaseReplicaCountResult.type = Types::DecreaseReplicaCountResult
    DefaultUserAssociatedToUserGroupFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DefaultUserAssociatedToUserGroupFault.type = Types::DefaultUserAssociatedToUserGroupFault
    DefaultUserRequired.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DefaultUserRequired.type = Types::DefaultUserRequired
    DeleteCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheClusterMessage.add_member(:final_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalSnapshotIdentifier"))
    DeleteCacheClusterMessage.type = Types::DeleteCacheClusterMessage
    DeleteCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheCluster, name: "CacheCluster"))
    DeleteCacheClusterResult.type = Types::DeleteCacheClusterResult
    DeleteCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheParameterGroupMessage.type = Types::DeleteCacheParameterGroupMessage
    DeleteCacheSecurityGroupMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheSecurityGroupMessage.type = Types::DeleteCacheSecurityGroupMessage
    DeleteCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheSubnetGroupMessage.type = Types::DeleteCacheSubnetGroupMessage
    DeleteGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalReplicationGroupMessage.add_member(:retain_primary_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RetainPrimaryReplicationGroup", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalReplicationGroupMessage.type = Types::DeleteGlobalReplicationGroupMessage
    DeleteGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    DeleteGlobalReplicationGroupResult.type = Types::DeleteGlobalReplicationGroupResult
    DeleteReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteReplicationGroupMessage.add_member(:retain_primary_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RetainPrimaryCluster"))
    DeleteReplicationGroupMessage.add_member(:final_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalSnapshotIdentifier"))
    DeleteReplicationGroupMessage.type = Types::DeleteReplicationGroupMessage
    DeleteReplicationGroupResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    DeleteReplicationGroupResult.type = Types::DeleteReplicationGroupResult
    DeleteServerlessCacheRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteServerlessCacheRequest.add_member(:final_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalSnapshotName"))
    DeleteServerlessCacheRequest.type = Types::DeleteServerlessCacheRequest
    DeleteServerlessCacheResponse.add_member(:serverless_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCache, name: "ServerlessCache"))
    DeleteServerlessCacheResponse.type = Types::DeleteServerlessCacheResponse
    DeleteServerlessCacheSnapshotRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteServerlessCacheSnapshotRequest.type = Types::DeleteServerlessCacheSnapshotRequest
    DeleteServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheSnapshot, name: "ServerlessCacheSnapshot"))
    DeleteServerlessCacheSnapshotResponse.type = Types::DeleteServerlessCacheSnapshotResponse
    DeleteSnapshotMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotMessage.type = Types::DeleteSnapshotMessage
    DeleteSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    DeleteSnapshotResult.type = Types::DeleteSnapshotResult
    DeleteUserGroupMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUserGroupMessage.type = Types::DeleteUserGroupMessage
    DeleteUserGroupOutput.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    DeleteUserGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DeleteUserGroupOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    DeleteUserGroupOutput.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIds"))
    DeleteUserGroupOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    DeleteUserGroupOutput.add_member(:pending_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupPendingChanges, name: "PendingChanges"))
    DeleteUserGroupOutput.add_member(:replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UGReplicationGroupIdList, name: "ReplicationGroups"))
    DeleteUserGroupOutput.add_member(:serverless_caches, ::Smithy::Schema::Shapes::MemberShape.new(target: UGServerlessCacheIdList, name: "ServerlessCaches"))
    DeleteUserGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    DeleteUserGroupOutput.type = Types::DeleteUserGroupOutput
    DeleteUserMessage.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUserMessage.type = Types::DeleteUserMessage
    DeleteUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId"))
    DeleteUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName"))
    DeleteUserOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DeleteUserOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    DeleteUserOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    DeleteUserOutput.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccessString"))
    DeleteUserOutput.add_member(:user_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIds"))
    DeleteUserOutput.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "Authentication"))
    DeleteUserOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    DeleteUserOutput.type = Types::DeleteUserOutput
    DescribeCacheClustersMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    DescribeCacheClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCacheClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheClustersMessage.add_member(:show_cache_node_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ShowCacheNodeInfo"))
    DescribeCacheClustersMessage.add_member(:show_cache_clusters_not_in_replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ShowCacheClustersNotInReplicationGroups"))
    DescribeCacheClustersMessage.type = Types::DescribeCacheClustersMessage
    DescribeCacheEngineVersionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DescribeCacheEngineVersionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    DescribeCacheEngineVersionsMessage.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupFamily"))
    DescribeCacheEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCacheEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheEngineVersionsMessage.add_member(:default_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DefaultOnly"))
    DescribeCacheEngineVersionsMessage.type = Types::DescribeCacheEngineVersionsMessage
    DescribeCacheParameterGroupsMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    DescribeCacheParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCacheParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheParameterGroupsMessage.type = Types::DescribeCacheParameterGroupsMessage
    DescribeCacheParametersMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeCacheParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DescribeCacheParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCacheParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheParametersMessage.type = Types::DescribeCacheParametersMessage
    DescribeCacheParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    DescribeCacheParametersOutput.add_member(:cache_node_type_specific_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeTypeSpecificParametersList, name: "CacheNodeTypeSpecificParameters"))
    DescribeCacheParametersOutput.type = Types::DescribeCacheParametersOutput
    DescribeCacheSecurityGroupsMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName"))
    DescribeCacheSecurityGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCacheSecurityGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheSecurityGroupsMessage.type = Types::DescribeCacheSecurityGroupsMessage
    DescribeCacheSubnetGroupsMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName"))
    DescribeCacheSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCacheSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCacheSubnetGroupsMessage.type = Types::DescribeCacheSubnetGroupsMessage
    DescribeEngineDefaultParametersMessage.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEngineDefaultParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEngineDefaultParametersMessage.type = Types::DescribeEngineDefaultParametersMessage
    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineDefaults, name: "EngineDefaults"))
    DescribeEngineDefaultParametersResult.type = Types::DescribeEngineDefaultParametersResult
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Duration"))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeGlobalReplicationGroupsMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId"))
    DescribeGlobalReplicationGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeGlobalReplicationGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeGlobalReplicationGroupsMessage.add_member(:show_member_info, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ShowMemberInfo"))
    DescribeGlobalReplicationGroupsMessage.type = Types::DescribeGlobalReplicationGroupsMessage
    DescribeGlobalReplicationGroupsResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeGlobalReplicationGroupsResult.add_member(:global_replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroupList, name: "GlobalReplicationGroups"))
    DescribeGlobalReplicationGroupsResult.type = Types::DescribeGlobalReplicationGroupsResult
    DescribeReplicationGroupsMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    DescribeReplicationGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReplicationGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReplicationGroupsMessage.type = Types::DescribeReplicationGroupsMessage
    DescribeReservedCacheNodesMessage.add_member(:reserved_cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodeId"))
    DescribeReservedCacheNodesMessage.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodesOfferingId"))
    DescribeReservedCacheNodesMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    DescribeReservedCacheNodesMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Duration"))
    DescribeReservedCacheNodesMessage.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    DescribeReservedCacheNodesMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    DescribeReservedCacheNodesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedCacheNodesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedCacheNodesMessage.type = Types::DescribeReservedCacheNodesMessage
    DescribeReservedCacheNodesOfferingsMessage.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodesOfferingId"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Duration"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedCacheNodesOfferingsMessage.type = Types::DescribeReservedCacheNodesOfferingsMessage
    DescribeServerlessCacheSnapshotsRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName"))
    DescribeServerlessCacheSnapshotsRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheSnapshotName"))
    DescribeServerlessCacheSnapshotsRequest.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DescribeServerlessCacheSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeServerlessCacheSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeServerlessCacheSnapshotsRequest.type = Types::DescribeServerlessCacheSnapshotsRequest
    DescribeServerlessCacheSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeServerlessCacheSnapshotsResponse.add_member(:serverless_cache_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheSnapshotList, name: "ServerlessCacheSnapshots"))
    DescribeServerlessCacheSnapshotsResponse.type = Types::DescribeServerlessCacheSnapshotsResponse
    DescribeServerlessCachesRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName"))
    DescribeServerlessCachesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxResults"))
    DescribeServerlessCachesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeServerlessCachesRequest.type = Types::DescribeServerlessCachesRequest
    DescribeServerlessCachesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeServerlessCachesResponse.add_member(:serverless_caches, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheList, name: "ServerlessCaches"))
    DescribeServerlessCachesResponse.type = Types::DescribeServerlessCachesResponse
    DescribeServiceUpdatesMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName"))
    DescribeServiceUpdatesMessage.add_member(:service_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatusList, name: "ServiceUpdateStatus"))
    DescribeServiceUpdatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeServiceUpdatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeServiceUpdatesMessage.type = Types::DescribeServiceUpdatesMessage
    DescribeSnapshotsListMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSnapshotsListMessage.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotList, name: "Snapshots"))
    DescribeSnapshotsListMessage.type = Types::DescribeSnapshotsListMessage
    DescribeSnapshotsMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    DescribeSnapshotsMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    DescribeSnapshotsMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotName"))
    DescribeSnapshotsMessage.add_member(:snapshot_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotSource"))
    DescribeSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeSnapshotsMessage.add_member(:show_node_group_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ShowNodeGroupConfig"))
    DescribeSnapshotsMessage.type = Types::DescribeSnapshotsMessage
    DescribeUpdateActionsMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName"))
    DescribeUpdateActionsMessage.add_member(:replication_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupIdList, name: "ReplicationGroupIds"))
    DescribeUpdateActionsMessage.add_member(:cache_cluster_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheClusterIdList, name: "CacheClusterIds"))
    DescribeUpdateActionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    DescribeUpdateActionsMessage.add_member(:service_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatusList, name: "ServiceUpdateStatus"))
    DescribeUpdateActionsMessage.add_member(:service_update_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRangeFilter, name: "ServiceUpdateTimeRange"))
    DescribeUpdateActionsMessage.add_member(:update_action_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionStatusList, name: "UpdateActionStatus"))
    DescribeUpdateActionsMessage.add_member(:show_node_level_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ShowNodeLevelUpdateStatus"))
    DescribeUpdateActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeUpdateActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUpdateActionsMessage.type = Types::DescribeUpdateActionsMessage
    DescribeUserGroupsMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    DescribeUserGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeUserGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUserGroupsMessage.type = Types::DescribeUserGroupsMessage
    DescribeUserGroupsResult.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupList, name: "UserGroups"))
    DescribeUserGroupsResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUserGroupsResult.type = Types::DescribeUserGroupsResult
    DescribeUsersMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    DescribeUsersMessage.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId"))
    DescribeUsersMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Filters"))
    DescribeUsersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeUsersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUsersMessage.type = Types::DescribeUsersMessage
    DescribeUsersResult.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "Users"))
    DescribeUsersResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUsersResult.type = Types::DescribeUsersResult
    DestinationDetails.add_member(:cloud_watch_logs_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestinationDetails, name: "CloudWatchLogsDetails"))
    DestinationDetails.add_member(:kinesis_firehose_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestinationDetails, name: "KinesisFirehoseDetails"))
    DestinationDetails.type = Types::DestinationDetails
    DestinationType.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudWatchLogs", traits: {"smithy.api#enumValue" => "cloudwatch-logs"}))
    DestinationType.add_member(:kinesis_firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisFirehose", traits: {"smithy.api#enumValue" => "kinesis-firehose"}))
    DisassociateGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateGlobalReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateGlobalReplicationGroupMessage.add_member(:replication_group_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateGlobalReplicationGroupMessage.type = Types::DisassociateGlobalReplicationGroupMessage
    DisassociateGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    DisassociateGlobalReplicationGroupResult.type = Types::DisassociateGlobalReplicationGroupResult
    DuplicateUserNameFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DuplicateUserNameFault.type = Types::DuplicateUserNameFault
    EC2SecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EC2SecurityGroup.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2SecurityGroup, name: "member", traits: {"smithy.api#xmlName" => "EC2SecurityGroup"}))
    ECPUPerSecond.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Maximum"))
    ECPUPerSecond.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Minimum"))
    ECPUPerSecond.type = Types::ECPUPerSecond
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    Endpoint.type = Types::Endpoint
    EngineDefaults.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupFamily"))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    EngineDefaults.add_member(:cache_node_type_specific_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeTypeSpecificParametersList, name: "CacheNodeTypeSpecificParameters"))
    EngineDefaults.type = Types::EngineDefaults
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Date"))
    Event.type = Types::Event
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member", traits: {"smithy.api#xmlName" => "Event"}))
    EventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EventsMessage.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events"))
    EventsMessage.type = Types::EventsMessage
    ExportServerlessCacheSnapshotRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheSnapshotName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportServerlessCacheSnapshotRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportServerlessCacheSnapshotRequest.type = Types::ExportServerlessCacheSnapshotRequest
    ExportServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheSnapshot, name: "ServerlessCacheSnapshot"))
    ExportServerlessCacheSnapshotResponse.type = Types::ExportServerlessCacheSnapshotResponse
    FailoverGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalReplicationGroupMessage.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalReplicationGroupMessage.add_member(:primary_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalReplicationGroupMessage.type = Types::FailoverGlobalReplicationGroupMessage
    FailoverGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    FailoverGlobalReplicationGroupResult.type = Types::FailoverGlobalReplicationGroupResult
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    GlobalNodeGroup.add_member(:global_node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalNodeGroupId"))
    GlobalNodeGroup.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Slots"))
    GlobalNodeGroup.type = Types::GlobalNodeGroup
    GlobalNodeGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "GlobalNodeGroupId"}))
    GlobalNodeGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNodeGroup, name: "member", traits: {"smithy.api#xmlName" => "GlobalNodeGroup"}))
    GlobalReplicationGroup.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId"))
    GlobalReplicationGroup.add_member(:global_replication_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupDescription"))
    GlobalReplicationGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    GlobalReplicationGroup.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    GlobalReplicationGroup.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    GlobalReplicationGroup.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    GlobalReplicationGroup.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroupMemberList, name: "Members"))
    GlobalReplicationGroup.add_member(:cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ClusterEnabled"))
    GlobalReplicationGroup.add_member(:global_node_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalNodeGroupList, name: "GlobalNodeGroups"))
    GlobalReplicationGroup.add_member(:auth_token_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AuthTokenEnabled"))
    GlobalReplicationGroup.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    GlobalReplicationGroup.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AtRestEncryptionEnabled"))
    GlobalReplicationGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    GlobalReplicationGroup.type = Types::GlobalReplicationGroup
    GlobalReplicationGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalReplicationGroupAlreadyExistsFault.type = Types::GlobalReplicationGroupAlreadyExistsFault
    GlobalReplicationGroupInfo.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId"))
    GlobalReplicationGroupInfo.add_member(:global_replication_group_member_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupMemberRole"))
    GlobalReplicationGroupInfo.type = Types::GlobalReplicationGroupInfo
    GlobalReplicationGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "member", traits: {"smithy.api#xmlName" => "GlobalReplicationGroup"}))
    GlobalReplicationGroupMember.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    GlobalReplicationGroupMember.add_member(:replication_group_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupRegion"))
    GlobalReplicationGroupMember.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Role"))
    GlobalReplicationGroupMember.add_member(:automatic_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticFailoverStatus, name: "AutomaticFailover"))
    GlobalReplicationGroupMember.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    GlobalReplicationGroupMember.type = Types::GlobalReplicationGroupMember
    GlobalReplicationGroupMemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroupMember, name: "member", traits: {"smithy.api#xmlName" => "GlobalReplicationGroupMember"}))
    GlobalReplicationGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    GlobalReplicationGroupNotFoundFault.type = Types::GlobalReplicationGroupNotFoundFault
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:node_group_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NodeGroupCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:regional_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalConfigurationList, name: "RegionalConfigurations"))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.type = Types::IncreaseNodeGroupsInGlobalReplicationGroupMessage
    IncreaseNodeGroupsInGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    IncreaseNodeGroupsInGlobalReplicationGroupResult.type = Types::IncreaseNodeGroupsInGlobalReplicationGroupResult
    IncreaseReplicaCountMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseReplicaCountMessage.add_member(:new_replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NewReplicaCount"))
    IncreaseReplicaCountMessage.add_member(:replica_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaConfigurationList, name: "ReplicaConfiguration"))
    IncreaseReplicaCountMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseReplicaCountMessage.type = Types::IncreaseReplicaCountMessage
    IncreaseReplicaCountResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    IncreaseReplicaCountResult.type = Types::IncreaseReplicaCountResult
    InputAuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "password"}))
    InputAuthenticationType.add_member(:no_password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PASSWORD", traits: {"smithy.api#enumValue" => "no-password-required"}))
    InputAuthenticationType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    InsufficientCacheClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientCacheClusterCapacityFault.type = Types::InsufficientCacheClusterCapacityFault
    InvalidARNFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidARNFault.type = Types::InvalidARNFault
    InvalidCacheClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidCacheClusterStateFault.type = Types::InvalidCacheClusterStateFault
    InvalidCacheParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidCacheParameterGroupStateFault.type = Types::InvalidCacheParameterGroupStateFault
    InvalidCacheSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidCacheSecurityGroupStateFault.type = Types::InvalidCacheSecurityGroupStateFault
    InvalidCredentialsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidCredentialsException.type = Types::InvalidCredentialsException
    InvalidGlobalReplicationGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidGlobalReplicationGroupStateFault.type = Types::InvalidGlobalReplicationGroupStateFault
    InvalidKMSKeyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidKMSKeyFault.type = Types::InvalidKMSKeyFault
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsQueryErrorMessage, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidReplicationGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidReplicationGroupStateFault.type = Types::InvalidReplicationGroupStateFault
    InvalidServerlessCacheSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidServerlessCacheSnapshotStateFault.type = Types::InvalidServerlessCacheSnapshotStateFault
    InvalidServerlessCacheStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidServerlessCacheStateFault.type = Types::InvalidServerlessCacheStateFault
    InvalidSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSnapshotStateFault.type = Types::InvalidSnapshotStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidUserGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidUserGroupStateFault.type = Types::InvalidUserGroupStateFault
    InvalidUserStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidUserStateFault.type = Types::InvalidUserStateFault
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IpDiscovery.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    IpDiscovery.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    KinesisFirehoseDestinationDetails.add_member(:delivery_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeliveryStream"))
    KinesisFirehoseDestinationDetails.type = Types::KinesisFirehoseDestinationDetails
    ListAllowedNodeTypeModificationsMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    ListAllowedNodeTypeModificationsMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    ListAllowedNodeTypeModificationsMessage.type = Types::ListAllowedNodeTypeModificationsMessage
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    ListTagsForResourceOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogDeliveryConfiguration.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType"))
    LogDeliveryConfiguration.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType"))
    LogDeliveryConfiguration.add_member(:destination_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDetails, name: "DestinationDetails"))
    LogDeliveryConfiguration.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormat, name: "LogFormat"))
    LogDeliveryConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationStatus, name: "Status"))
    LogDeliveryConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    LogDeliveryConfiguration.type = Types::LogDeliveryConfiguration
    LogDeliveryConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "member", traits: {"smithy.api#xmlName" => "LogDeliveryConfiguration"}))
    LogDeliveryConfigurationRequest.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType"))
    LogDeliveryConfigurationRequest.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType"))
    LogDeliveryConfigurationRequest.add_member(:destination_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDetails, name: "DestinationDetails"))
    LogDeliveryConfigurationRequest.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormat, name: "LogFormat"))
    LogDeliveryConfigurationRequest.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    LogDeliveryConfigurationRequest.type = Types::LogDeliveryConfigurationRequest
    LogDeliveryConfigurationRequestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationRequest, name: "member", traits: {"smithy.api#xmlName" => "LogDeliveryConfigurationRequest"}))
    LogDeliveryConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    LogDeliveryConfigurationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "enabling"}))
    LogDeliveryConfigurationStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "modifying"}))
    LogDeliveryConfigurationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "disabling"}))
    LogDeliveryConfigurationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    LogFormat.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "text"}))
    LogFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "json"}))
    LogType.add_member(:slow_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLOW_LOG", traits: {"smithy.api#enumValue" => "slow-log"}))
    LogType.add_member(:engine_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGINE_LOG", traits: {"smithy.api#enumValue" => "engine-log"}))
    ModifyCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheClusterMessage.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumCacheNodes"))
    ModifyCacheClusterMessage.add_member(:cache_node_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeIdsList, name: "CacheNodeIdsToRemove"))
    ModifyCacheClusterMessage.add_member(:az_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AZMode, name: "AZMode"))
    ModifyCacheClusterMessage.add_member(:new_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredAvailabilityZoneList, name: "NewAvailabilityZones"))
    ModifyCacheClusterMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroupNameList, name: "CacheSecurityGroupNames"))
    ModifyCacheClusterMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    ModifyCacheClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyCacheClusterMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicArn"))
    ModifyCacheClusterMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    ModifyCacheClusterMessage.add_member(:notification_topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicStatus"))
    ModifyCacheClusterMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyCacheClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyCacheClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyCacheClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    ModifyCacheClusterMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    ModifyCacheClusterMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    ModifyCacheClusterMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    ModifyCacheClusterMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthToken"))
    ModifyCacheClusterMessage.add_member(:auth_token_update_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTokenUpdateStrategyType, name: "AuthTokenUpdateStrategy"))
    ModifyCacheClusterMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationRequestList, name: "LogDeliveryConfigurations"))
    ModifyCacheClusterMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, name: "IpDiscovery"))
    ModifyCacheClusterMessage.add_member(:scale_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleConfig, name: "ScaleConfig"))
    ModifyCacheClusterMessage.type = Types::ModifyCacheClusterMessage
    ModifyCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheCluster, name: "CacheCluster"))
    ModifyCacheClusterResult.type = Types::ModifyCacheClusterResult
    ModifyCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheParameterGroupMessage.add_member(:parameter_name_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValueList, name: "ParameterNameValues", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheParameterGroupMessage.type = Types::ModifyCacheParameterGroupMessage
    ModifyCacheParameterGroupOutput.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    ModifyCacheParameterGroupOutput.type = Types::ModifyCacheParameterGroupOutput
    ModifyCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheSubnetGroupMessage.add_member(:cache_subnet_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupDescription"))
    ModifyCacheSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds"))
    ModifyCacheSubnetGroupMessage.type = Types::ModifyCacheSubnetGroupMessage
    ModifyCacheSubnetGroupResult.add_member(:cache_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSubnetGroup, name: "CacheSubnetGroup"))
    ModifyCacheSubnetGroupResult.type = Types::ModifyCacheSubnetGroupResult
    ModifyGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalReplicationGroupMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    ModifyGlobalReplicationGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyGlobalReplicationGroupMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyGlobalReplicationGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    ModifyGlobalReplicationGroupMessage.add_member(:global_replication_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupDescription"))
    ModifyGlobalReplicationGroupMessage.add_member(:automatic_failover_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutomaticFailoverEnabled"))
    ModifyGlobalReplicationGroupMessage.type = Types::ModifyGlobalReplicationGroupMessage
    ModifyGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    ModifyGlobalReplicationGroupResult.type = Types::ModifyGlobalReplicationGroupResult
    ModifyReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupMessage.add_member(:replication_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupDescription"))
    ModifyReplicationGroupMessage.add_member(:primary_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryClusterId"))
    ModifyReplicationGroupMessage.add_member(:snapshotting_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshottingClusterId"))
    ModifyReplicationGroupMessage.add_member(:automatic_failover_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutomaticFailoverEnabled"))
    ModifyReplicationGroupMessage.add_member(:multi_az_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZEnabled"))
    ModifyReplicationGroupMessage.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeGroupId", traits: {"smithy.api#deprecated" => {}}))
    ModifyReplicationGroupMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroupNameList, name: "CacheSecurityGroupNames"))
    ModifyReplicationGroupMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    ModifyReplicationGroupMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyReplicationGroupMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicArn"))
    ModifyReplicationGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    ModifyReplicationGroupMessage.add_member(:notification_topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NotificationTopicStatus"))
    ModifyReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately"))
    ModifyReplicationGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyReplicationGroupMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ModifyReplicationGroupMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoMinorVersionUpgrade"))
    ModifyReplicationGroupMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    ModifyReplicationGroupMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    ModifyReplicationGroupMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    ModifyReplicationGroupMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthToken"))
    ModifyReplicationGroupMessage.add_member(:auth_token_update_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTokenUpdateStrategyType, name: "AuthTokenUpdateStrategy"))
    ModifyReplicationGroupMessage.add_member(:user_group_ids_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIdsToAdd"))
    ModifyReplicationGroupMessage.add_member(:user_group_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIdsToRemove"))
    ModifyReplicationGroupMessage.add_member(:remove_user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RemoveUserGroups"))
    ModifyReplicationGroupMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationRequestList, name: "LogDeliveryConfigurations"))
    ModifyReplicationGroupMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, name: "IpDiscovery"))
    ModifyReplicationGroupMessage.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    ModifyReplicationGroupMessage.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitEncryptionMode, name: "TransitEncryptionMode"))
    ModifyReplicationGroupMessage.add_member(:cluster_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMode, name: "ClusterMode"))
    ModifyReplicationGroupMessage.type = Types::ModifyReplicationGroupMessage
    ModifyReplicationGroupResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    ModifyReplicationGroupResult.type = Types::ModifyReplicationGroupResult
    ModifyReplicationGroupShardConfigurationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_group_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NodeGroupCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:resharding_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReshardingConfigurationList, name: "ReshardingConfiguration"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_groups_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupsToRemoveList, name: "NodeGroupsToRemove"))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_groups_to_retain, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupsToRetainList, name: "NodeGroupsToRetain"))
    ModifyReplicationGroupShardConfigurationMessage.type = Types::ModifyReplicationGroupShardConfigurationMessage
    ModifyReplicationGroupShardConfigurationResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    ModifyReplicationGroupShardConfigurationResult.type = Types::ModifyReplicationGroupShardConfigurationResult
    ModifyServerlessCacheRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyServerlessCacheRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ModifyServerlessCacheRequest.add_member(:cache_usage_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheUsageLimits, name: "CacheUsageLimits"))
    ModifyServerlessCacheRequest.add_member(:remove_user_group, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "RemoveUserGroup"))
    ModifyServerlessCacheRequest.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    ModifyServerlessCacheRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    ModifyServerlessCacheRequest.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    ModifyServerlessCacheRequest.add_member(:daily_snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DailySnapshotTime"))
    ModifyServerlessCacheRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ModifyServerlessCacheRequest.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    ModifyServerlessCacheRequest.type = Types::ModifyServerlessCacheRequest
    ModifyServerlessCacheResponse.add_member(:serverless_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCache, name: "ServerlessCache"))
    ModifyServerlessCacheResponse.type = Types::ModifyServerlessCacheResponse
    ModifyUserGroupMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyUserGroupMessage.add_member(:user_ids_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdListInput, name: "UserIdsToAdd"))
    ModifyUserGroupMessage.add_member(:user_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdListInput, name: "UserIdsToRemove"))
    ModifyUserGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    ModifyUserGroupMessage.type = Types::ModifyUserGroupMessage
    ModifyUserGroupOutput.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    ModifyUserGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ModifyUserGroupOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    ModifyUserGroupOutput.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIds"))
    ModifyUserGroupOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    ModifyUserGroupOutput.add_member(:pending_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupPendingChanges, name: "PendingChanges"))
    ModifyUserGroupOutput.add_member(:replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UGReplicationGroupIdList, name: "ReplicationGroups"))
    ModifyUserGroupOutput.add_member(:serverless_caches, ::Smithy::Schema::Shapes::MemberShape.new(target: UGServerlessCacheIdList, name: "ServerlessCaches"))
    ModifyUserGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ModifyUserGroupOutput.type = Types::ModifyUserGroupOutput
    ModifyUserMessage.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyUserMessage.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessString, name: "AccessString"))
    ModifyUserMessage.add_member(:append_access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessString, name: "AppendAccessString"))
    ModifyUserMessage.add_member(:passwords, ::Smithy::Schema::Shapes::MemberShape.new(target: PasswordListInput, name: "Passwords"))
    ModifyUserMessage.add_member(:no_password_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "NoPasswordRequired"))
    ModifyUserMessage.add_member(:authentication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMode, name: "AuthenticationMode"))
    ModifyUserMessage.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    ModifyUserMessage.type = Types::ModifyUserMessage
    ModifyUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId"))
    ModifyUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName"))
    ModifyUserOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ModifyUserOutput.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    ModifyUserOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    ModifyUserOutput.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccessString"))
    ModifyUserOutput.add_member(:user_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIds"))
    ModifyUserOutput.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "Authentication"))
    ModifyUserOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ModifyUserOutput.type = Types::ModifyUserOutput
    MultiAZStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    MultiAZStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    NetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "ipv6"}))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "dual_stack"}))
    NetworkTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "member"))
    NoOperationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NoOperationFault.type = Types::NoOperationFault
    NodeGroup.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeGroupId"))
    NodeGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    NodeGroup.add_member(:primary_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "PrimaryEndpoint"))
    NodeGroup.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ReaderEndpoint"))
    NodeGroup.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Slots"))
    NodeGroup.add_member(:node_group_members, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupMemberList, name: "NodeGroupMembers"))
    NodeGroup.type = Types::NodeGroup
    NodeGroupConfiguration.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedNodeGroupId, name: "NodeGroupId"))
    NodeGroupConfiguration.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Slots"))
    NodeGroupConfiguration.add_member(:replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ReplicaCount"))
    NodeGroupConfiguration.add_member(:primary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryAvailabilityZone"))
    NodeGroupConfiguration.add_member(:replica_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZonesList, name: "ReplicaAvailabilityZones"))
    NodeGroupConfiguration.add_member(:primary_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryOutpostArn"))
    NodeGroupConfiguration.add_member(:replica_outpost_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: OutpostArnsList, name: "ReplicaOutpostArns"))
    NodeGroupConfiguration.type = Types::NodeGroupConfiguration
    NodeGroupConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupConfiguration, name: "member", traits: {"smithy.api#xmlName" => "NodeGroupConfiguration"}))
    NodeGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroup, name: "member", traits: {"smithy.api#xmlName" => "NodeGroup"}))
    NodeGroupMember.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    NodeGroupMember.add_member(:cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeId"))
    NodeGroupMember.add_member(:read_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ReadEndpoint"))
    NodeGroupMember.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredAvailabilityZone"))
    NodeGroupMember.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredOutpostArn"))
    NodeGroupMember.add_member(:current_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentRole"))
    NodeGroupMember.type = Types::NodeGroupMember
    NodeGroupMemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupMember, name: "member", traits: {"smithy.api#xmlName" => "NodeGroupMember"}))
    NodeGroupMemberUpdateStatus.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    NodeGroupMemberUpdateStatus.add_member(:cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeId"))
    NodeGroupMemberUpdateStatus.add_member(:node_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeUpdateStatus, name: "NodeUpdateStatus"))
    NodeGroupMemberUpdateStatus.add_member(:node_deletion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeDeletionDate"))
    NodeGroupMemberUpdateStatus.add_member(:node_update_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateStartDate"))
    NodeGroupMemberUpdateStatus.add_member(:node_update_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateEndDate"))
    NodeGroupMemberUpdateStatus.add_member(:node_update_initiated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeUpdateInitiatedBy, name: "NodeUpdateInitiatedBy"))
    NodeGroupMemberUpdateStatus.add_member(:node_update_initiated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateInitiatedDate"))
    NodeGroupMemberUpdateStatus.add_member(:node_update_status_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NodeUpdateStatusModifiedDate"))
    NodeGroupMemberUpdateStatus.type = Types::NodeGroupMemberUpdateStatus
    NodeGroupMemberUpdateStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupMemberUpdateStatus, name: "member", traits: {"smithy.api#xmlName" => "NodeGroupMemberUpdateStatus"}))
    NodeGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeGroupNotFoundFault.type = Types::NodeGroupNotFoundFault
    NodeGroupUpdateStatus.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeGroupId"))
    NodeGroupUpdateStatus.add_member(:node_group_member_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupMemberUpdateStatusList, name: "NodeGroupMemberUpdateStatus"))
    NodeGroupUpdateStatus.type = Types::NodeGroupUpdateStatus
    NodeGroupUpdateStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupUpdateStatus, name: "member", traits: {"smithy.api#xmlName" => "NodeGroupUpdateStatus"}))
    NodeGroupsPerReplicationGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeGroupsPerReplicationGroupQuotaExceededFault.type = Types::NodeGroupsPerReplicationGroupQuotaExceededFault
    NodeGroupsToRemoveList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedNodeGroupId, name: "member", traits: {"smithy.api#xmlName" => "NodeGroupToRemove"}))
    NodeGroupsToRetainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedNodeGroupId, name: "member", traits: {"smithy.api#xmlName" => "NodeGroupToRetain"}))
    NodeQuotaForClusterExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeQuotaForClusterExceededFault.type = Types::NodeQuotaForClusterExceededFault
    NodeQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NodeQuotaForCustomerExceededFault.type = Types::NodeQuotaForCustomerExceededFault
    NodeSnapshot.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    NodeSnapshot.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeGroupId"))
    NodeSnapshot.add_member(:cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeId"))
    NodeSnapshot.add_member(:node_group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupConfiguration, name: "NodeGroupConfiguration"))
    NodeSnapshot.add_member(:cache_size, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSize"))
    NodeSnapshot.add_member(:cache_node_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CacheNodeCreateTime"))
    NodeSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotCreateTime"))
    NodeSnapshot.type = Types::NodeSnapshot
    NodeSnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSnapshot, name: "member", traits: {"smithy.api#xmlName" => "NodeSnapshot"}))
    NodeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NodeUpdateInitiatedBy.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "system"}))
    NodeUpdateInitiatedBy.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "customer"}))
    NodeUpdateStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLIED", traits: {"smithy.api#enumValue" => "not-applied"}))
    NodeUpdateStatus.add_member(:waiting_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING_TO_START", traits: {"smithy.api#enumValue" => "waiting-to-start"}))
    NodeUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "in-progress"}))
    NodeUpdateStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "stopping"}))
    NodeUpdateStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "stopped"}))
    NodeUpdateStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "complete"}))
    NotificationConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn"))
    NotificationConfiguration.add_member(:topic_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicStatus"))
    NotificationConfiguration.type = Types::NotificationConfiguration
    OutpostArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "OutpostArn"}))
    OutpostMode.add_member(:single_outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_OUTPOST", traits: {"smithy.api#enumValue" => "single-outpost"}))
    OutpostMode.add_member(:cross_outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_OUTPOST", traits: {"smithy.api#enumValue" => "cross-outpost"}))
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterValue"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    Parameter.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeType, name: "ChangeType"))
    Parameter.type = Types::Parameter
    ParameterNameValue.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    ParameterNameValue.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterValue"))
    ParameterNameValue.type = Types::ParameterNameValue
    ParameterNameValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValue, name: "member", traits: {"smithy.api#xmlName" => "ParameterNameValue"}))
    ParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member", traits: {"smithy.api#xmlName" => "Parameter"}))
    PasswordListInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    PendingAutomaticFailoverStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    PendingAutomaticFailoverStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    PendingLogDeliveryConfiguration.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "LogType"))
    PendingLogDeliveryConfiguration.add_member(:destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationType, name: "DestinationType"))
    PendingLogDeliveryConfiguration.add_member(:destination_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDetails, name: "DestinationDetails"))
    PendingLogDeliveryConfiguration.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormat, name: "LogFormat"))
    PendingLogDeliveryConfiguration.type = Types::PendingLogDeliveryConfiguration
    PendingLogDeliveryConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingLogDeliveryConfiguration, name: "member"))
    PendingModifiedValues.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumCacheNodes"))
    PendingModifiedValues.add_member(:cache_node_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeIdsList, name: "CacheNodeIdsToRemove"))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    PendingModifiedValues.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    PendingModifiedValues.add_member(:auth_token_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTokenUpdateStatus, name: "AuthTokenStatus"))
    PendingModifiedValues.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingLogDeliveryConfigurationList, name: "LogDeliveryConfigurations"))
    PendingModifiedValues.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    PendingModifiedValues.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitEncryptionMode, name: "TransitEncryptionMode"))
    PendingModifiedValues.add_member(:scale_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleConfig, name: "ScaleConfig"))
    PendingModifiedValues.type = Types::PendingModifiedValues
    PreferredAvailabilityZoneList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "PreferredAvailabilityZone"}))
    PreferredOutpostArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "PreferredOutpostArn"}))
    ProcessedUpdateAction.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    ProcessedUpdateAction.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    ProcessedUpdateAction.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName"))
    ProcessedUpdateAction.add_member(:update_action_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionStatus, name: "UpdateActionStatus"))
    ProcessedUpdateAction.type = Types::ProcessedUpdateAction
    ProcessedUpdateActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedUpdateAction, name: "member", traits: {"smithy.api#xmlName" => "ProcessedUpdateAction"}))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodesOfferingId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:reserved_cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodeId"))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:cache_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "CacheNodeCount"))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PurchaseReservedCacheNodesOfferingMessage.type = Types::PurchaseReservedCacheNodesOfferingMessage
    PurchaseReservedCacheNodesOfferingResult.add_member(:reserved_cache_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedCacheNode, name: "ReservedCacheNode"))
    PurchaseReservedCacheNodesOfferingResult.type = Types::PurchaseReservedCacheNodesOfferingResult
    RebalanceSlotsInGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebalanceSlotsInGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ApplyImmediately", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebalanceSlotsInGlobalReplicationGroupMessage.type = Types::RebalanceSlotsInGlobalReplicationGroupMessage
    RebalanceSlotsInGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroup, name: "GlobalReplicationGroup"))
    RebalanceSlotsInGlobalReplicationGroupResult.type = Types::RebalanceSlotsInGlobalReplicationGroupResult
    RebootCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootCacheClusterMessage.add_member(:cache_node_ids_to_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeIdsList, name: "CacheNodeIdsToReboot", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootCacheClusterMessage.type = Types::RebootCacheClusterMessage
    RebootCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheCluster, name: "CacheCluster"))
    RebootCacheClusterResult.type = Types::RebootCacheClusterResult
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecurringChargeFrequency"))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringCharge, name: "member", traits: {"smithy.api#xmlName" => "RecurringCharge"}))
    RegionalConfiguration.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegionalConfiguration.add_member(:replication_group_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegionalConfiguration.add_member(:resharding_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReshardingConfigurationList, name: "ReshardingConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegionalConfiguration.type = Types::RegionalConfiguration
    RegionalConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalConfiguration, name: "member", traits: {"smithy.api#xmlName" => "RegionalConfiguration"}))
    RemoveReplicasList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    RemoveTagsFromResourceOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    RemoveTagsFromResourceOutput.type = Types::RemoveTagsFromResourceOutput
    ReplicaConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigureShard, name: "member", traits: {"smithy.api#xmlName" => "ConfigureShard"}))
    ReplicationGroup.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    ReplicationGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ReplicationGroup.add_member(:global_replication_group_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalReplicationGroupInfo, name: "GlobalReplicationGroupInfo"))
    ReplicationGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ReplicationGroup.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupPendingModifiedValues, name: "PendingModifiedValues"))
    ReplicationGroup.add_member(:member_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdList, name: "MemberClusters"))
    ReplicationGroup.add_member(:node_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupList, name: "NodeGroups"))
    ReplicationGroup.add_member(:snapshotting_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshottingClusterId"))
    ReplicationGroup.add_member(:automatic_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticFailoverStatus, name: "AutomaticFailover"))
    ReplicationGroup.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAZStatus, name: "MultiAZ"))
    ReplicationGroup.add_member(:configuration_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ConfigurationEndpoint"))
    ReplicationGroup.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    ReplicationGroup.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    ReplicationGroup.add_member(:cluster_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ClusterEnabled"))
    ReplicationGroup.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    ReplicationGroup.add_member(:auth_token_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AuthTokenEnabled"))
    ReplicationGroup.add_member(:auth_token_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AuthTokenLastModifiedDate"))
    ReplicationGroup.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    ReplicationGroup.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AtRestEncryptionEnabled"))
    ReplicationGroup.add_member(:member_clusters_outpost_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupOutpostArnList, name: "MemberClustersOutpostArns"))
    ReplicationGroup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ReplicationGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ReplicationGroup.add_member(:user_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIds"))
    ReplicationGroup.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfigurationList, name: "LogDeliveryConfigurations"))
    ReplicationGroup.add_member(:replication_group_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ReplicationGroupCreateTime"))
    ReplicationGroup.add_member(:data_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTieringStatus, name: "DataTiering"))
    ReplicationGroup.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade"))
    ReplicationGroup.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "NetworkType"))
    ReplicationGroup.add_member(:ip_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: IpDiscovery, name: "IpDiscovery"))
    ReplicationGroup.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitEncryptionMode, name: "TransitEncryptionMode"))
    ReplicationGroup.add_member(:cluster_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMode, name: "ClusterMode"))
    ReplicationGroup.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ReplicationGroup.type = Types::ReplicationGroup
    ReplicationGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReplicationGroupAlreadyExistsFault.type = Types::ReplicationGroupAlreadyExistsFault
    ReplicationGroupAlreadyUnderMigrationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReplicationGroupAlreadyUnderMigrationFault.type = Types::ReplicationGroupAlreadyUnderMigrationFault
    ReplicationGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ReplicationGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "member", traits: {"smithy.api#xmlName" => "ReplicationGroup"}))
    ReplicationGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReplicationGroupMessage.add_member(:replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupList, name: "ReplicationGroups"))
    ReplicationGroupMessage.type = Types::ReplicationGroupMessage
    ReplicationGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReplicationGroupNotFoundFault.type = Types::ReplicationGroupNotFoundFault
    ReplicationGroupNotUnderMigrationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReplicationGroupNotUnderMigrationFault.type = Types::ReplicationGroupNotUnderMigrationFault
    ReplicationGroupOutpostArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ReplicationGroupOutpostArn"}))
    ReplicationGroupPendingModifiedValues.add_member(:primary_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrimaryClusterId"))
    ReplicationGroupPendingModifiedValues.add_member(:automatic_failover_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingAutomaticFailoverStatus, name: "AutomaticFailoverStatus"))
    ReplicationGroupPendingModifiedValues.add_member(:resharding, ::Smithy::Schema::Shapes::MemberShape.new(target: ReshardingStatus, name: "Resharding"))
    ReplicationGroupPendingModifiedValues.add_member(:auth_token_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthTokenUpdateStatus, name: "AuthTokenStatus"))
    ReplicationGroupPendingModifiedValues.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupsUpdateStatus, name: "UserGroups"))
    ReplicationGroupPendingModifiedValues.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingLogDeliveryConfigurationList, name: "LogDeliveryConfigurations"))
    ReplicationGroupPendingModifiedValues.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "TransitEncryptionEnabled"))
    ReplicationGroupPendingModifiedValues.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitEncryptionMode, name: "TransitEncryptionMode"))
    ReplicationGroupPendingModifiedValues.add_member(:cluster_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterMode, name: "ClusterMode"))
    ReplicationGroupPendingModifiedValues.type = Types::ReplicationGroupPendingModifiedValues
    ReservedCacheNode.add_member(:reserved_cache_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodeId"))
    ReservedCacheNode.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodesOfferingId"))
    ReservedCacheNode.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    ReservedCacheNode.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    ReservedCacheNode.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Duration"))
    ReservedCacheNode.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedPrice"))
    ReservedCacheNode.add_member(:usage_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "UsagePrice"))
    ReservedCacheNode.add_member(:cache_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CacheNodeCount"))
    ReservedCacheNode.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    ReservedCacheNode.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    ReservedCacheNode.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    ReservedCacheNode.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, name: "RecurringCharges"))
    ReservedCacheNode.add_member(:reservation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservationARN"))
    ReservedCacheNode.type = Types::ReservedCacheNode
    ReservedCacheNodeAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedCacheNodeAlreadyExistsFault.type = Types::ReservedCacheNodeAlreadyExistsFault
    ReservedCacheNodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedCacheNode, name: "member", traits: {"smithy.api#xmlName" => "ReservedCacheNode"}))
    ReservedCacheNodeMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReservedCacheNodeMessage.add_member(:reserved_cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedCacheNodeList, name: "ReservedCacheNodes"))
    ReservedCacheNodeMessage.type = Types::ReservedCacheNodeMessage
    ReservedCacheNodeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedCacheNodeNotFoundFault.type = Types::ReservedCacheNodeNotFoundFault
    ReservedCacheNodeQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedCacheNodeQuotaExceededFault.type = Types::ReservedCacheNodeQuotaExceededFault
    ReservedCacheNodesOffering.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedCacheNodesOfferingId"))
    ReservedCacheNodesOffering.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    ReservedCacheNodesOffering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Duration"))
    ReservedCacheNodesOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedPrice"))
    ReservedCacheNodesOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "UsagePrice"))
    ReservedCacheNodesOffering.add_member(:product_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductDescription"))
    ReservedCacheNodesOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    ReservedCacheNodesOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, name: "RecurringCharges"))
    ReservedCacheNodesOffering.type = Types::ReservedCacheNodesOffering
    ReservedCacheNodesOfferingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedCacheNodesOffering, name: "member", traits: {"smithy.api#xmlName" => "ReservedCacheNodesOffering"}))
    ReservedCacheNodesOfferingMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReservedCacheNodesOfferingMessage.add_member(:reserved_cache_nodes_offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedCacheNodesOfferingList, name: "ReservedCacheNodesOfferings"))
    ReservedCacheNodesOfferingMessage.type = Types::ReservedCacheNodesOfferingMessage
    ReservedCacheNodesOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedCacheNodesOfferingNotFoundFault.type = Types::ReservedCacheNodesOfferingNotFoundFault
    ResetCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetCacheParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ResetAllParameters"))
    ResetCacheParameterGroupMessage.add_member(:parameter_name_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterNameValueList, name: "ParameterNameValues"))
    ResetCacheParameterGroupMessage.type = Types::ResetCacheParameterGroupMessage
    ResetCacheParameterGroupOutput.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    ResetCacheParameterGroupOutput.type = Types::ResetCacheParameterGroupOutput
    ReshardingConfiguration.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedNodeGroupId, name: "NodeGroupId"))
    ReshardingConfiguration.add_member(:preferred_availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZonesList, name: "PreferredAvailabilityZones"))
    ReshardingConfiguration.type = Types::ReshardingConfiguration
    ReshardingConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReshardingConfiguration, name: "member", traits: {"smithy.api#xmlName" => "ReshardingConfiguration"}))
    ReshardingStatus.add_member(:slot_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotMigration, name: "SlotMigration"))
    ReshardingStatus.type = Types::ReshardingStatus
    RevokeCacheSecurityGroupIngressMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeCacheSecurityGroupIngressMessage.type = Types::RevokeCacheSecurityGroupIngressMessage
    RevokeCacheSecurityGroupIngressResult.add_member(:cache_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheSecurityGroup, name: "CacheSecurityGroup"))
    RevokeCacheSecurityGroupIngressResult.type = Types::RevokeCacheSecurityGroupIngressResult
    ScaleConfig.add_member(:scale_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ScalePercentage"))
    ScaleConfig.add_member(:scale_interval_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ScaleIntervalMinutes"))
    ScaleConfig.type = Types::ScaleConfig
    SecurityGroupIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SecurityGroupId"}))
    SecurityGroupMembership.add_member(:security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SecurityGroupId"))
    SecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    SecurityGroupMembership.type = Types::SecurityGroupMembership
    SecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupMembership, name: "member"))
    ServerlessCache.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName"))
    ServerlessCache.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ServerlessCache.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    ServerlessCache.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ServerlessCache.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ServerlessCache.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    ServerlessCache.add_member(:full_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FullEngineVersion"))
    ServerlessCache.add_member(:cache_usage_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheUsageLimits, name: "CacheUsageLimits"))
    ServerlessCache.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ServerlessCache.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdsList, name: "SecurityGroupIds"))
    ServerlessCache.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    ServerlessCache.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "ReaderEndpoint"))
    ServerlessCache.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ServerlessCache.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    ServerlessCache.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdsList, name: "SubnetIds"))
    ServerlessCache.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    ServerlessCache.add_member(:daily_snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DailySnapshotTime"))
    ServerlessCache.type = Types::ServerlessCache
    ServerlessCacheAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerlessCacheAlreadyExistsFault.type = Types::ServerlessCacheAlreadyExistsFault
    ServerlessCacheConfiguration.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheName"))
    ServerlessCacheConfiguration.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ServerlessCacheConfiguration.add_member(:major_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MajorEngineVersion"))
    ServerlessCacheConfiguration.type = Types::ServerlessCacheConfiguration
    ServerlessCacheList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCache, name: "member"))
    ServerlessCacheNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerlessCacheNotFoundFault.type = Types::ServerlessCacheNotFoundFault
    ServerlessCacheQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerlessCacheQuotaForCustomerExceededFault.type = Types::ServerlessCacheQuotaForCustomerExceededFault
    ServerlessCacheSnapshot.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServerlessCacheSnapshotName"))
    ServerlessCacheSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    ServerlessCacheSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ServerlessCacheSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    ServerlessCacheSnapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ServerlessCacheSnapshot.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    ServerlessCacheSnapshot.add_member(:expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ExpiryTime"))
    ServerlessCacheSnapshot.add_member(:bytes_used_for_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BytesUsedForCache"))
    ServerlessCacheSnapshot.add_member(:serverless_cache_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheConfiguration, name: "ServerlessCacheConfiguration"))
    ServerlessCacheSnapshot.type = Types::ServerlessCacheSnapshot
    ServerlessCacheSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerlessCacheSnapshotAlreadyExistsFault.type = Types::ServerlessCacheSnapshotAlreadyExistsFault
    ServerlessCacheSnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessCacheSnapshot, name: "member", traits: {"smithy.api#xmlName" => "ServerlessCacheSnapshot"}))
    ServerlessCacheSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerlessCacheSnapshotNotFoundFault.type = Types::ServerlessCacheSnapshotNotFoundFault
    ServerlessCacheSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServerlessCacheSnapshotQuotaExceededFault.type = Types::ServerlessCacheSnapshotQuotaExceededFault
    ServiceLinkedRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceLinkedRoleNotFoundFault.type = Types::ServiceLinkedRoleNotFoundFault
    ServiceUpdate.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName"))
    ServiceUpdate.add_member(:service_update_release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ServiceUpdateReleaseDate"))
    ServiceUpdate.add_member(:service_update_end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ServiceUpdateEndDate"))
    ServiceUpdate.add_member(:service_update_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateSeverity, name: "ServiceUpdateSeverity"))
    ServiceUpdate.add_member(:service_update_recommended_apply_by_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ServiceUpdateRecommendedApplyByDate"))
    ServiceUpdate.add_member(:service_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatus, name: "ServiceUpdateStatus"))
    ServiceUpdate.add_member(:service_update_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateDescription"))
    ServiceUpdate.add_member(:service_update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateType, name: "ServiceUpdateType"))
    ServiceUpdate.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    ServiceUpdate.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    ServiceUpdate.add_member(:auto_update_after_recommended_apply_by_date, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoUpdateAfterRecommendedApplyByDate"))
    ServiceUpdate.add_member(:estimated_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EstimatedUpdateTime"))
    ServiceUpdate.type = Types::ServiceUpdate
    ServiceUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdate, name: "member", traits: {"smithy.api#xmlName" => "ServiceUpdate"}))
    ServiceUpdateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ServiceUpdateNotFoundFault.type = Types::ServiceUpdateNotFoundFault
    ServiceUpdateSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "critical"}))
    ServiceUpdateSeverity.add_member(:important, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTANT", traits: {"smithy.api#enumValue" => "important"}))
    ServiceUpdateSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "medium"}))
    ServiceUpdateSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "low"}))
    ServiceUpdateStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    ServiceUpdateStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "cancelled"}))
    ServiceUpdateStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "expired"}))
    ServiceUpdateStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatus, name: "member"))
    ServiceUpdateType.add_member(:security_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_UPDATE", traits: {"smithy.api#enumValue" => "security-update"}))
    ServiceUpdatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ServiceUpdatesMessage.add_member(:service_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateList, name: "ServiceUpdates"))
    ServiceUpdatesMessage.type = Types::ServiceUpdatesMessage
    SlaMet.add_member(:yes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YES", traits: {"smithy.api#enumValue" => "yes"}))
    SlaMet.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "no"}))
    SlaMet.add_member(:na, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NA", traits: {"smithy.api#enumValue" => "n/a"}))
    SlotMigration.add_member(:progress_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "ProgressPercentage"))
    SlotMigration.type = Types::SlotMigration
    Snapshot.add_member(:snapshot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotName"))
    Snapshot.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    Snapshot.add_member(:replication_group_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupDescription"))
    Snapshot.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    Snapshot.add_member(:snapshot_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotStatus"))
    Snapshot.add_member(:snapshot_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotSource"))
    Snapshot.add_member(:cache_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheNodeType"))
    Snapshot.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    Snapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineVersion"))
    Snapshot.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumCacheNodes"))
    Snapshot.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredAvailabilityZone"))
    Snapshot.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredOutpostArn"))
    Snapshot.add_member(:cache_cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CacheClusterCreateTime"))
    Snapshot.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    Snapshot.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn"))
    Snapshot.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    Snapshot.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheParameterGroupName"))
    Snapshot.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheSubnetGroupName"))
    Snapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    Snapshot.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AutoMinorVersionUpgrade"))
    Snapshot.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "SnapshotRetentionLimit"))
    Snapshot.add_member(:snapshot_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotWindow"))
    Snapshot.add_member(:num_node_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumNodeGroups"))
    Snapshot.add_member(:automatic_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomaticFailoverStatus, name: "AutomaticFailover"))
    Snapshot.add_member(:node_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeSnapshotList, name: "NodeSnapshots"))
    Snapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    Snapshot.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    Snapshot.add_member(:data_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTieringStatus, name: "DataTiering"))
    Snapshot.type = Types::Snapshot
    SnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotAlreadyExistsFault.type = Types::SnapshotAlreadyExistsFault
    SnapshotArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SnapshotArn"}))
    SnapshotFeatureNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotFeatureNotSupportedFault.type = Types::SnapshotFeatureNotSupportedFault
    SnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "member", traits: {"smithy.api#xmlName" => "Snapshot"}))
    SnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotNotFoundFault.type = Types::SnapshotNotFoundFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceType.add_member(:cache_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cache_cluster", traits: {"smithy.api#enumValue" => "cache-cluster"}))
    SourceType.add_member(:cache_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cache_parameter_group", traits: {"smithy.api#enumValue" => "cache-parameter-group"}))
    SourceType.add_member(:cache_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cache_security_group", traits: {"smithy.api#enumValue" => "cache-security-group"}))
    SourceType.add_member(:cache_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cache_subnet_group", traits: {"smithy.api#enumValue" => "cache-subnet-group"}))
    SourceType.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "replication_group", traits: {"smithy.api#enumValue" => "replication-group"}))
    SourceType.add_member(:serverless_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "serverless_cache", traits: {"smithy.api#enumValue" => "serverless-cache"}))
    SourceType.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "serverless_cache_snapshot", traits: {"smithy.api#enumValue" => "serverless-cache-snapshot"}))
    SourceType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "user", traits: {"smithy.api#enumValue" => "user"}))
    SourceType.add_member(:user_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "user_group", traits: {"smithy.api#enumValue" => "user-group"}))
    StartMigrationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMigrationMessage.add_member(:customer_node_endpoint_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerNodeEndpointList, name: "CustomerNodeEndpointList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMigrationMessage.type = Types::StartMigrationMessage
    StartMigrationResponse.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    StartMigrationResponse.type = Types::StartMigrationResponse
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_outpost, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetOutpost, name: "SubnetOutpost"))
    Subnet.add_member(:supported_network_types, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTypeList, name: "SupportedNetworkTypes"))
    Subnet.type = Types::Subnet
    SubnetIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SubnetIdentifier"}))
    SubnetIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SubnetId"}))
    SubnetInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetInUse.type = Types::SubnetInUse
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member", traits: {"smithy.api#xmlName" => "Subnet"}))
    SubnetNotAllowedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetNotAllowedFault.type = Types::SubnetNotAllowedFault
    SubnetOutpost.add_member(:subnet_outpost_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetOutpostArn"))
    SubnetOutpost.type = Types::SubnetOutpost
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    TagNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TagNotFoundFault.type = Types::TagNotFoundFault
    TagQuotaPerResourceExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TagQuotaPerResourceExceeded.type = Types::TagQuotaPerResourceExceeded
    TestFailoverMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestFailoverMessage.add_member(:node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedNodeGroupId, name: "NodeGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestFailoverMessage.type = Types::TestFailoverMessage
    TestFailoverNotAvailableFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TestFailoverNotAvailableFault.type = Types::TestFailoverNotAvailableFault
    TestFailoverResult.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    TestFailoverResult.type = Types::TestFailoverResult
    TestMigrationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestMigrationMessage.add_member(:customer_node_endpoint_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerNodeEndpointList, name: "CustomerNodeEndpointList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestMigrationMessage.type = Types::TestMigrationMessage
    TestMigrationResponse.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroup, name: "ReplicationGroup"))
    TestMigrationResponse.type = Types::TestMigrationResponse
    TimeRangeFilter.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    TimeRangeFilter.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    TimeRangeFilter.type = Types::TimeRangeFilter
    TransitEncryptionMode.add_member(:preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERRED", traits: {"smithy.api#enumValue" => "preferred"}))
    TransitEncryptionMode.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    UGReplicationGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    UGServerlessCacheIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    UnprocessedUpdateAction.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    UnprocessedUpdateAction.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    UnprocessedUpdateAction.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName"))
    UnprocessedUpdateAction.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorType"))
    UnprocessedUpdateAction.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    UnprocessedUpdateAction.type = Types::UnprocessedUpdateAction
    UnprocessedUpdateActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedUpdateAction, name: "member", traits: {"smithy.api#xmlName" => "UnprocessedUpdateAction"}))
    UpdateAction.add_member(:replication_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicationGroupId"))
    UpdateAction.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CacheClusterId"))
    UpdateAction.add_member(:service_update_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceUpdateName"))
    UpdateAction.add_member(:service_update_release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ServiceUpdateReleaseDate"))
    UpdateAction.add_member(:service_update_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateSeverity, name: "ServiceUpdateSeverity"))
    UpdateAction.add_member(:service_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateStatus, name: "ServiceUpdateStatus"))
    UpdateAction.add_member(:service_update_recommended_apply_by_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ServiceUpdateRecommendedApplyByDate"))
    UpdateAction.add_member(:service_update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUpdateType, name: "ServiceUpdateType"))
    UpdateAction.add_member(:update_action_available_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdateActionAvailableDate"))
    UpdateAction.add_member(:update_action_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionStatus, name: "UpdateActionStatus"))
    UpdateAction.add_member(:nodes_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodesUpdated"))
    UpdateAction.add_member(:update_action_status_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdateActionStatusModifiedDate"))
    UpdateAction.add_member(:sla_met, ::Smithy::Schema::Shapes::MemberShape.new(target: SlaMet, name: "SlaMet"))
    UpdateAction.add_member(:node_group_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeGroupUpdateStatusList, name: "NodeGroupUpdateStatus"))
    UpdateAction.add_member(:cache_node_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheNodeUpdateStatusList, name: "CacheNodeUpdateStatus"))
    UpdateAction.add_member(:estimated_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EstimatedUpdateTime"))
    UpdateAction.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Engine"))
    UpdateAction.type = Types::UpdateAction
    UpdateActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAction, name: "member", traits: {"smithy.api#xmlName" => "UpdateAction"}))
    UpdateActionStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLIED", traits: {"smithy.api#enumValue" => "not-applied"}))
    UpdateActionStatus.add_member(:waiting_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING_TO_START", traits: {"smithy.api#enumValue" => "waiting-to-start"}))
    UpdateActionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "in-progress"}))
    UpdateActionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "stopping"}))
    UpdateActionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "stopped"}))
    UpdateActionStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "complete"}))
    UpdateActionStatus.add_member(:scheduling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULING", traits: {"smithy.api#enumValue" => "scheduling"}))
    UpdateActionStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "scheduled"}))
    UpdateActionStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "not-applicable"}))
    UpdateActionStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionStatus, name: "member"))
    UpdateActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    UpdateActionsMessage.add_member(:update_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateActionList, name: "UpdateActions"))
    UpdateActionsMessage.type = Types::UpdateActionsMessage
    User.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserId"))
    User.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserName"))
    User.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    User.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    User.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    User.add_member(:access_string, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccessString"))
    User.add_member(:user_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIds"))
    User.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "Authentication"))
    User.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    User.type = Types::User
    UserAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UserAlreadyExistsFault.type = Types::UserAlreadyExistsFault
    UserGroup.add_member(:user_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserGroupId"))
    UserGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    UserGroup.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "Engine"))
    UserGroup.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIds"))
    UserGroup.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    UserGroup.add_member(:pending_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupPendingChanges, name: "PendingChanges"))
    UserGroup.add_member(:replication_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: UGReplicationGroupIdList, name: "ReplicationGroups"))
    UserGroup.add_member(:serverless_caches, ::Smithy::Schema::Shapes::MemberShape.new(target: UGServerlessCacheIdList, name: "ServerlessCaches"))
    UserGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ARN"))
    UserGroup.type = Types::UserGroup
    UserGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UserGroupAlreadyExistsFault.type = Types::UserGroupAlreadyExistsFault
    UserGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupId, name: "member"))
    UserGroupIdListInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupId, name: "member"))
    UserGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroup, name: "member"))
    UserGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UserGroupNotFoundFault.type = Types::UserGroupNotFoundFault
    UserGroupPendingChanges.add_member(:user_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIdsToRemove"))
    UserGroupPendingChanges.add_member(:user_ids_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdList, name: "UserIdsToAdd"))
    UserGroupPendingChanges.type = Types::UserGroupPendingChanges
    UserGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UserGroupQuotaExceededFault.type = Types::UserGroupQuotaExceededFault
    UserGroupsUpdateStatus.add_member(:user_group_ids_to_add, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIdsToAdd"))
    UserGroupsUpdateStatus.add_member(:user_group_ids_to_remove, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupIdList, name: "UserGroupIdsToRemove"))
    UserGroupsUpdateStatus.type = Types::UserGroupsUpdateStatus
    UserIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "member"))
    UserIdListInput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "member"))
    UserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    UserNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UserNotFoundFault.type = Types::UserNotFoundFault
    UserQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UserQuotaExceededFault.type = Types::UserQuotaExceededFault

    AmazonElastiCacheV9 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticache#AmazonElastiCacheV9"
      service.name = "AmazonElastiCacheV9"
      service.version = "2015-02-02"
      service.traits = {"aws.api#service" => {"sdkId" => "ElastiCache", "arnNamespace" => "elasticache", "cloudFormationName" => "ElastiCache", "cloudTrailEventSource" => "elasticache.amazonaws.com", "endpointPrefix" => "elasticache"}, "aws.auth#sigv4" => {"name" => "elasticache"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon ElastiCache", "smithy.api#xmlNamespace" => {"uri" => "http://elasticache.amazonaws.com/doc/2015-02-02/"}}
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = AddTagsToResourceMessage
        operation.output = AddTagsToResourceOutput
        operation.errors << CacheClusterNotFoundFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidServerlessCacheSnapshotStateFault
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << ReservedCacheNodeNotFoundFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserGroupNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:authorize_cache_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#AuthorizeCacheSecurityGroupIngress"
        operation.name = "AuthorizeCacheSecurityGroupIngress"
        operation.input = AuthorizeCacheSecurityGroupIngressMessage
        operation.output = AuthorizeCacheSecurityGroupIngressResult
        operation.errors << AuthorizationAlreadyExistsFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << InvalidCacheSecurityGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:batch_apply_update_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#BatchApplyUpdateAction"
        operation.name = "BatchApplyUpdateAction"
        operation.input = BatchApplyUpdateActionMessage
        operation.output = BatchApplyUpdateActionOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUpdateNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:batch_stop_update_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#BatchStopUpdateAction"
        operation.name = "BatchStopUpdateAction"
        operation.input = BatchStopUpdateActionMessage
        operation.output = BatchStopUpdateActionOutput
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUpdateNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:complete_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CompleteMigration"
        operation.name = "CompleteMigration"
        operation.input = CompleteMigrationMessage
        operation.output = CompleteMigrationResponse
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << ReplicationGroupNotUnderMigrationFault
        operation.traits = {}
      end)
      service.add_operation(:copy_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CopyServerlessCacheSnapshot"
        operation.name = "CopyServerlessCacheSnapshot"
        operation.input = CopyServerlessCacheSnapshotRequest
        operation.output = CopyServerlessCacheSnapshotResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheSnapshotStateFault
        operation.errors << ServerlessCacheSnapshotAlreadyExistsFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.errors << ServerlessCacheSnapshotQuotaExceededFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:copy_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CopySnapshot"
        operation.name = "CopySnapshot"
        operation.input = CopySnapshotMessage
        operation.output = CopySnapshotResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidSnapshotStateFault
        operation.errors << SnapshotAlreadyExistsFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << SnapshotQuotaExceededFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheCluster"
        operation.name = "CreateCacheCluster"
        operation.input = CreateCacheClusterMessage
        operation.output = CreateCacheClusterResult
        operation.errors << CacheClusterAlreadyExistsFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheParameterGroup"
        operation.name = "CreateCacheParameterGroup"
        operation.input = CreateCacheParameterGroupMessage
        operation.output = CreateCacheParameterGroupResult
        operation.errors << CacheParameterGroupAlreadyExistsFault
        operation.errors << CacheParameterGroupQuotaExceededFault
        operation.errors << InvalidCacheParameterGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_cache_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheSecurityGroup"
        operation.name = "CreateCacheSecurityGroup"
        operation.input = CreateCacheSecurityGroupMessage
        operation.output = CreateCacheSecurityGroupResult
        operation.errors << CacheSecurityGroupAlreadyExistsFault
        operation.errors << CacheSecurityGroupQuotaExceededFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_cache_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheSubnetGroup"
        operation.name = "CreateCacheSubnetGroup"
        operation.input = CreateCacheSubnetGroupMessage
        operation.output = CreateCacheSubnetGroupResult
        operation.errors << CacheSubnetGroupAlreadyExistsFault
        operation.errors << CacheSubnetGroupQuotaExceededFault
        operation.errors << CacheSubnetQuotaExceededFault
        operation.errors << InvalidSubnet
        operation.errors << SubnetNotAllowedFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateGlobalReplicationGroup"
        operation.name = "CreateGlobalReplicationGroup"
        operation.input = CreateGlobalReplicationGroupMessage
        operation.output = CreateGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupAlreadyExistsFault
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateReplicationGroup"
        operation.name = "CreateReplicationGroup"
        operation.input = CreateReplicationGroupMessage
        operation.output = CreateReplicationGroupResult
        operation.errors << CacheClusterNotFoundFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeGroupsPerReplicationGroupQuotaExceededFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ReplicationGroupAlreadyExistsFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_serverless_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateServerlessCache"
        operation.name = "CreateServerlessCache"
        operation.input = CreateServerlessCacheRequest
        operation.output = CreateServerlessCacheResponse
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << InvalidUserGroupStateFault
        operation.errors << ServerlessCacheAlreadyExistsFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheQuotaForCustomerExceededFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:create_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateServerlessCacheSnapshot"
        operation.name = "CreateServerlessCacheSnapshot"
        operation.input = CreateServerlessCacheSnapshotRequest
        operation.output = CreateServerlessCacheSnapshotResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheSnapshotAlreadyExistsFault
        operation.errors << ServerlessCacheSnapshotQuotaExceededFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = CreateSnapshotMessage
        operation.output = CreateSnapshotResult
        operation.errors << CacheClusterNotFoundFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << SnapshotAlreadyExistsFault
        operation.errors << SnapshotFeatureNotSupportedFault
        operation.errors << SnapshotQuotaExceededFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserMessage
        operation.output = CreateUserOutput
        operation.errors << DuplicateUserNameFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserAlreadyExistsFault
        operation.errors << UserQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_user_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateUserGroup"
        operation.name = "CreateUserGroup"
        operation.input = CreateUserGroupMessage
        operation.output = CreateUserGroupOutput
        operation.errors << DefaultUserRequired
        operation.errors << DuplicateUserNameFault
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.errors << UserGroupAlreadyExistsFault
        operation.errors << UserGroupQuotaExceededFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:decrease_node_groups_in_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DecreaseNodeGroupsInGlobalReplicationGroup"
        operation.name = "DecreaseNodeGroupsInGlobalReplicationGroup"
        operation.input = DecreaseNodeGroupsInGlobalReplicationGroupMessage
        operation.output = DecreaseNodeGroupsInGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:decrease_replica_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DecreaseReplicaCount"
        operation.name = "DecreaseReplicaCount"
        operation.input = DecreaseReplicaCountMessage
        operation.output = DecreaseReplicaCountResult
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeGroupsPerReplicationGroupQuotaExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << NoOperationFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheCluster"
        operation.name = "DeleteCacheCluster"
        operation.input = DeleteCacheClusterMessage
        operation.output = DeleteCacheClusterResult
        operation.errors << CacheClusterNotFoundFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << SnapshotAlreadyExistsFault
        operation.errors << SnapshotFeatureNotSupportedFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheParameterGroup"
        operation.name = "DeleteCacheParameterGroup"
        operation.input = DeleteCacheParameterGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << InvalidCacheParameterGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheSecurityGroup"
        operation.name = "DeleteCacheSecurityGroup"
        operation.input = DeleteCacheSecurityGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << InvalidCacheSecurityGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheSubnetGroup"
        operation.name = "DeleteCacheSubnetGroup"
        operation.input = DeleteCacheSubnetGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CacheSubnetGroupInUse
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteGlobalReplicationGroup"
        operation.name = "DeleteGlobalReplicationGroup"
        operation.input = DeleteGlobalReplicationGroupMessage
        operation.output = DeleteGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteReplicationGroup"
        operation.name = "DeleteReplicationGroup"
        operation.input = DeleteReplicationGroupMessage
        operation.output = DeleteReplicationGroupResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << SnapshotAlreadyExistsFault
        operation.errors << SnapshotFeatureNotSupportedFault
        operation.errors << SnapshotQuotaExceededFault
        operation.traits = {}
      end)
      service.add_operation(:delete_serverless_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteServerlessCache"
        operation.name = "DeleteServerlessCache"
        operation.input = DeleteServerlessCacheRequest
        operation.output = DeleteServerlessCacheResponse
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheSnapshotAlreadyExistsFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteServerlessCacheSnapshot"
        operation.name = "DeleteServerlessCacheSnapshot"
        operation.input = DeleteServerlessCacheSnapshotRequest
        operation.output = DeleteServerlessCacheSnapshotResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheSnapshotStateFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = DeleteSnapshotMessage
        operation.output = DeleteSnapshotResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidSnapshotStateFault
        operation.errors << SnapshotNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserMessage
        operation.output = DeleteUserOutput
        operation.errors << DefaultUserAssociatedToUserGroupFault
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserStateFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_user_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteUserGroup"
        operation.name = "DeleteUserGroup"
        operation.input = DeleteUserGroupMessage
        operation.output = DeleteUserGroupOutput
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserGroupStateFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:describe_cache_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheClusters"
        operation.name = "DescribeCacheClusters"
        operation.input = DescribeCacheClustersMessage
        operation.output = CacheClusterMessage
        operation.errors << CacheClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeCacheClusters.new
      end)
      service.add_operation(:describe_cache_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheEngineVersions"
        operation.name = "DescribeCacheEngineVersions"
        operation.input = DescribeCacheEngineVersionsMessage
        operation.output = CacheEngineVersionMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheEngineVersions.new
      end)
      service.add_operation(:describe_cache_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheParameterGroups"
        operation.name = "DescribeCacheParameterGroups"
        operation.input = DescribeCacheParameterGroupsMessage
        operation.output = CacheParameterGroupsMessage
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheParameterGroups.new
      end)
      service.add_operation(:describe_cache_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheParameters"
        operation.name = "DescribeCacheParameters"
        operation.input = DescribeCacheParametersMessage
        operation.output = DescribeCacheParametersOutput
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheParameters.new
      end)
      service.add_operation(:describe_cache_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheSecurityGroups"
        operation.name = "DescribeCacheSecurityGroups"
        operation.input = DescribeCacheSecurityGroupsMessage
        operation.output = CacheSecurityGroupMessage
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheSecurityGroups.new
      end)
      service.add_operation(:describe_cache_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheSubnetGroups"
        operation.name = "DescribeCacheSubnetGroups"
        operation.input = DescribeCacheSubnetGroupsMessage
        operation.output = CacheSubnetGroupMessage
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeEngineDefaultParameters"
        operation.name = "DescribeEngineDefaultParameters"
        operation.input = DescribeEngineDefaultParametersMessage
        operation.output = DescribeEngineDefaultParametersResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineDefaultParameters.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsMessage
        operation.output = EventsMessage
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeEventsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_global_replication_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeGlobalReplicationGroups"
        operation.name = "DescribeGlobalReplicationGroups"
        operation.input = DescribeGlobalReplicationGroupsMessage
        operation.output = DescribeGlobalReplicationGroupsResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalReplicationGroups.new
      end)
      service.add_operation(:describe_replication_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeReplicationGroups"
        operation.name = "DescribeReplicationGroups"
        operation.input = DescribeReplicationGroupsMessage
        operation.output = ReplicationGroupMessage
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReplicationGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationGroups.new
      end)
      service.add_operation(:describe_reserved_cache_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeReservedCacheNodes"
        operation.name = "DescribeReservedCacheNodes"
        operation.input = DescribeReservedCacheNodesMessage
        operation.output = ReservedCacheNodeMessage
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReservedCacheNodeNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedCacheNodes.new
      end)
      service.add_operation(:describe_reserved_cache_nodes_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeReservedCacheNodesOfferings"
        operation.name = "DescribeReservedCacheNodesOfferings"
        operation.input = DescribeReservedCacheNodesOfferingsMessage
        operation.output = ReservedCacheNodesOfferingMessage
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReservedCacheNodesOfferingNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedCacheNodesOfferings.new
      end)
      service.add_operation(:describe_serverless_cache_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeServerlessCacheSnapshots"
        operation.name = "DescribeServerlessCacheSnapshots"
        operation.input = DescribeServerlessCacheSnapshotsRequest
        operation.output = DescribeServerlessCacheSnapshotsResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServerlessCacheSnapshots.new
      end)
      service.add_operation(:describe_serverless_caches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeServerlessCaches"
        operation.name = "DescribeServerlessCaches"
        operation.input = DescribeServerlessCachesRequest
        operation.output = DescribeServerlessCachesResponse
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerlessCacheNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServerlessCaches.new
      end)
      service.add_operation(:describe_service_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeServiceUpdates"
        operation.name = "DescribeServiceUpdates"
        operation.input = DescribeServiceUpdatesMessage
        operation.output = ServiceUpdatesMessage
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ServiceUpdateNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServiceUpdates.new
      end)
      service.add_operation(:describe_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = DescribeSnapshotsMessage
        operation.output = DescribeSnapshotsListMessage
        operation.errors << CacheClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << SnapshotNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_update_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeUpdateActions"
        operation.name = "DescribeUpdateActions"
        operation.input = DescribeUpdateActionsMessage
        operation.output = UpdateActionsMessage
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUpdateActions.new
      end)
      service.add_operation(:describe_user_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeUserGroups"
        operation.name = "DescribeUserGroups"
        operation.input = DescribeUserGroupsMessage
        operation.output = DescribeUserGroupsResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUserGroups.new
      end)
      service.add_operation(:describe_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = DescribeUsersMessage
        operation.output = DescribeUsersResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsers.new
      end)
      service.add_operation(:disassociate_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DisassociateGlobalReplicationGroup"
        operation.name = "DisassociateGlobalReplicationGroup"
        operation.input = DisassociateGlobalReplicationGroupMessage
        operation.output = DisassociateGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:export_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ExportServerlessCacheSnapshot"
        operation.name = "ExportServerlessCacheSnapshot"
        operation.input = ExportServerlessCacheSnapshotRequest
        operation.output = ExportServerlessCacheSnapshotResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheSnapshotStateFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:failover_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#FailoverGlobalReplicationGroup"
        operation.name = "FailoverGlobalReplicationGroup"
        operation.input = FailoverGlobalReplicationGroupMessage
        operation.output = FailoverGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:increase_node_groups_in_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#IncreaseNodeGroupsInGlobalReplicationGroup"
        operation.name = "IncreaseNodeGroupsInGlobalReplicationGroup"
        operation.input = IncreaseNodeGroupsInGlobalReplicationGroupMessage
        operation.output = IncreaseNodeGroupsInGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:increase_replica_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#IncreaseReplicaCount"
        operation.name = "IncreaseReplicaCount"
        operation.input = IncreaseReplicaCountMessage
        operation.output = IncreaseReplicaCountResult
        operation.errors << ClusterQuotaForCustomerExceededFault
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidKMSKeyFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeGroupsPerReplicationGroupQuotaExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << NoOperationFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:list_allowed_node_type_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ListAllowedNodeTypeModifications"
        operation.name = "ListAllowedNodeTypeModifications"
        operation.input = ListAllowedNodeTypeModificationsMessage
        operation.output = AllowedNodeTypeModificationsMessage
        operation.errors << CacheClusterNotFoundFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReplicationGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceMessage
        operation.output = ListTagsForResourceOutput
        operation.errors << CacheClusterNotFoundFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidServerlessCacheSnapshotStateFault
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << ReservedCacheNodeNotFoundFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyCacheCluster"
        operation.name = "ModifyCacheCluster"
        operation.input = ModifyCacheClusterMessage
        operation.output = ModifyCacheClusterResult
        operation.errors << CacheClusterNotFoundFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidCacheSecurityGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyCacheParameterGroup"
        operation.name = "ModifyCacheParameterGroup"
        operation.input = ModifyCacheParameterGroupMessage
        operation.output = ModifyCacheParameterGroupOutput
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << InvalidCacheParameterGroupStateFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:modify_cache_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyCacheSubnetGroup"
        operation.name = "ModifyCacheSubnetGroup"
        operation.input = ModifyCacheSubnetGroupMessage
        operation.output = ModifyCacheSubnetGroupResult
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.errors << CacheSubnetQuotaExceededFault
        operation.errors << InvalidSubnet
        operation.errors << SubnetInUse
        operation.errors << SubnetNotAllowedFault
        operation.traits = {}
      end)
      service.add_operation(:modify_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyGlobalReplicationGroup"
        operation.name = "ModifyGlobalReplicationGroup"
        operation.input = ModifyGlobalReplicationGroupMessage
        operation.output = ModifyGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyReplicationGroup"
        operation.name = "ModifyReplicationGroup"
        operation.input = ModifyReplicationGroupMessage
        operation.output = ModifyReplicationGroupResult
        operation.errors << CacheClusterNotFoundFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidCacheSecurityGroupStateFault
        operation.errors << InvalidKMSKeyFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidUserGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeQuotaForClusterExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_group_shard_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyReplicationGroupShardConfiguration"
        operation.name = "ModifyReplicationGroupShardConfiguration"
        operation.input = ModifyReplicationGroupShardConfigurationMessage
        operation.output = ModifyReplicationGroupShardConfigurationResult
        operation.errors << InsufficientCacheClusterCapacityFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidKMSKeyFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << NodeGroupsPerReplicationGroupQuotaExceededFault
        operation.errors << NodeQuotaForCustomerExceededFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_serverless_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyServerlessCache"
        operation.name = "ModifyServerlessCache"
        operation.input = ModifyServerlessCacheRequest
        operation.output = ModifyServerlessCacheResponse
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << InvalidUserGroupStateFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyUser"
        operation.name = "ModifyUser"
        operation.input = ModifyUserMessage
        operation.output = ModifyUserOutput
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserStateFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_user_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyUserGroup"
        operation.name = "ModifyUserGroup"
        operation.input = ModifyUserGroupMessage
        operation.output = ModifyUserGroupOutput
        operation.errors << DefaultUserRequired
        operation.errors << DuplicateUserNameFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidUserGroupStateFault
        operation.errors << ServiceLinkedRoleNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_cache_nodes_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#PurchaseReservedCacheNodesOffering"
        operation.name = "PurchaseReservedCacheNodesOffering"
        operation.input = PurchaseReservedCacheNodesOfferingMessage
        operation.output = PurchaseReservedCacheNodesOfferingResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << ReservedCacheNodeAlreadyExistsFault
        operation.errors << ReservedCacheNodeQuotaExceededFault
        operation.errors << ReservedCacheNodesOfferingNotFoundFault
        operation.errors << TagQuotaPerResourceExceeded
        operation.traits = {}
      end)
      service.add_operation(:rebalance_slots_in_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RebalanceSlotsInGlobalReplicationGroup"
        operation.name = "RebalanceSlotsInGlobalReplicationGroup"
        operation.input = RebalanceSlotsInGlobalReplicationGroupMessage
        operation.output = RebalanceSlotsInGlobalReplicationGroupResult
        operation.errors << GlobalReplicationGroupNotFoundFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:reboot_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RebootCacheCluster"
        operation.name = "RebootCacheCluster"
        operation.input = RebootCacheClusterMessage
        operation.output = RebootCacheClusterResult
        operation.errors << CacheClusterNotFoundFault
        operation.errors << InvalidCacheClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = RemoveTagsFromResourceMessage
        operation.output = RemoveTagsFromResourceOutput
        operation.errors << CacheClusterNotFoundFault
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << CacheSubnetGroupNotFoundFault
        operation.errors << InvalidARNFault
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << InvalidServerlessCacheSnapshotStateFault
        operation.errors << InvalidServerlessCacheStateFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << ReservedCacheNodeNotFoundFault
        operation.errors << ServerlessCacheNotFoundFault
        operation.errors << ServerlessCacheSnapshotNotFoundFault
        operation.errors << SnapshotNotFoundFault
        operation.errors << TagNotFoundFault
        operation.errors << UserGroupNotFoundFault
        operation.errors << UserNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:reset_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ResetCacheParameterGroup"
        operation.name = "ResetCacheParameterGroup"
        operation.input = ResetCacheParameterGroupMessage
        operation.output = ResetCacheParameterGroupOutput
        operation.errors << CacheParameterGroupNotFoundFault
        operation.errors << InvalidCacheParameterGroupStateFault
        operation.errors << InvalidGlobalReplicationGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:revoke_cache_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RevokeCacheSecurityGroupIngress"
        operation.name = "RevokeCacheSecurityGroupIngress"
        operation.input = RevokeCacheSecurityGroupIngressMessage
        operation.output = RevokeCacheSecurityGroupIngressResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << CacheSecurityGroupNotFoundFault
        operation.errors << InvalidCacheSecurityGroupStateFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:start_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#StartMigration"
        operation.name = "StartMigration"
        operation.input = StartMigrationMessage
        operation.output = StartMigrationResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << ReplicationGroupAlreadyUnderMigrationFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:test_failover, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#TestFailover"
        operation.name = "TestFailover"
        operation.input = TestFailoverMessage
        operation.output = TestFailoverResult
        operation.errors << APICallRateForCustomerExceededFault
        operation.errors << InvalidCacheClusterStateFault
        operation.errors << InvalidKMSKeyFault
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << NodeGroupNotFoundFault
        operation.errors << ReplicationGroupNotFoundFault
        operation.errors << TestFailoverNotAvailableFault
        operation.traits = {}
      end)
      service.add_operation(:test_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#TestMigration"
        operation.name = "TestMigration"
        operation.input = TestMigrationMessage
        operation.output = TestMigrationResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidReplicationGroupStateFault
        operation.errors << ReplicationGroupAlreadyUnderMigrationFault
        operation.errors << ReplicationGroupNotFoundFault
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
