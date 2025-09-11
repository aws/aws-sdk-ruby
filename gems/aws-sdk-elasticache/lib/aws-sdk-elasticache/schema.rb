# frozen_string_literal: true

# This is generated code!

module Aws::ElastiCache
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APICallRateForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#APICallRateForCustomerExceededFault', name: 'APICallRateForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "APICallRateForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AZMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#AZMode', name: 'AZMode')
    AccessString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#AccessString', name: 'AccessString', traits: {"smithy.api#pattern" => "\\S"})
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AddTagsToResourceMessage', name: 'AddTagsToResourceMessage')
    AddTagsToResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AddTagsToResourceOutput', name: 'AddTagsToResourceOutput')
    AllowedNodeGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#AllowedNodeGroupId', name: 'AllowedNodeGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#pattern" => "^\\d+$"})
    AllowedNodeTypeModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AllowedNodeTypeModificationsMessage', name: 'AllowedNodeTypeModificationsMessage')
    AuthTokenUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#AuthTokenUpdateStatus', name: 'AuthTokenUpdateStatus')
    AuthTokenUpdateStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#AuthTokenUpdateStrategyType', name: 'AuthTokenUpdateStrategyType')
    Authentication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Authentication', name: 'Authentication')
    AuthenticationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AuthenticationMode', name: 'AuthenticationMode')
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#AuthenticationType', name: 'AuthenticationType')
    AuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AuthorizationAlreadyExistsFault', name: 'AuthorizationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AuthorizationNotFoundFault', name: 'AuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizeCacheSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AuthorizeCacheSecurityGroupIngressMessage', name: 'AuthorizeCacheSecurityGroupIngressMessage')
    AuthorizeCacheSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AuthorizeCacheSecurityGroupIngressResult', name: 'AuthorizeCacheSecurityGroupIngressResult')
    AutomaticFailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#AutomaticFailoverStatus', name: 'AutomaticFailoverStatus')
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZonesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#AvailabilityZonesList', name: 'AvailabilityZonesList')
    AwsQueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#AwsQueryErrorMessage', name: 'AwsQueryErrorMessage')
    BatchApplyUpdateActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#BatchApplyUpdateActionMessage', name: 'BatchApplyUpdateActionMessage')
    BatchApplyUpdateActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#BatchApplyUpdateActionOutput', name: 'BatchApplyUpdateActionOutput')
    BatchStopUpdateActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#BatchStopUpdateActionMessage', name: 'BatchStopUpdateActionMessage')
    BatchStopUpdateActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#BatchStopUpdateActionOutput', name: 'BatchStopUpdateActionOutput')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticache#Boolean', name: 'Boolean')
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticache#BooleanOptional', name: 'BooleanOptional')
    CacheCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheCluster', name: 'CacheCluster')
    CacheClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheClusterAlreadyExistsFault', name: 'CacheClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheClusterIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheClusterIdList', name: 'CacheClusterIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    CacheClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheClusterList', name: 'CacheClusterList')
    CacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheClusterMessage', name: 'CacheClusterMessage')
    CacheClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheClusterNotFoundFault', name: 'CacheClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CacheEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheEngineVersion', name: 'CacheEngineVersion')
    CacheEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheEngineVersionList', name: 'CacheEngineVersionList')
    CacheEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheEngineVersionMessage', name: 'CacheEngineVersionMessage')
    CacheNode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheNode', name: 'CacheNode')
    CacheNodeIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheNodeIdsList', name: 'CacheNodeIdsList')
    CacheNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheNodeList', name: 'CacheNodeList')
    CacheNodeTypeSpecificParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheNodeTypeSpecificParameter', name: 'CacheNodeTypeSpecificParameter')
    CacheNodeTypeSpecificParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheNodeTypeSpecificParametersList', name: 'CacheNodeTypeSpecificParametersList')
    CacheNodeTypeSpecificValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheNodeTypeSpecificValue', name: 'CacheNodeTypeSpecificValue')
    CacheNodeTypeSpecificValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheNodeTypeSpecificValueList', name: 'CacheNodeTypeSpecificValueList')
    CacheNodeUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheNodeUpdateStatus', name: 'CacheNodeUpdateStatus')
    CacheNodeUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheNodeUpdateStatusList', name: 'CacheNodeUpdateStatusList')
    CacheParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroup', name: 'CacheParameterGroup')
    CacheParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroupAlreadyExistsFault', name: 'CacheParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroupList', name: 'CacheParameterGroupList')
    CacheParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroupNotFoundFault', name: 'CacheParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CacheParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroupQuotaExceededFault', name: 'CacheParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroupStatus', name: 'CacheParameterGroupStatus')
    CacheParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheParameterGroupsMessage', name: 'CacheParameterGroupsMessage')
    CacheSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroup', name: 'CacheSecurityGroup')
    CacheSecurityGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupAlreadyExistsFault', name: 'CacheSecurityGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupMembership', name: 'CacheSecurityGroupMembership')
    CacheSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupMembershipList', name: 'CacheSecurityGroupMembershipList')
    CacheSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupMessage', name: 'CacheSecurityGroupMessage')
    CacheSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupNameList', name: 'CacheSecurityGroupNameList')
    CacheSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupNotFoundFault', name: 'CacheSecurityGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CacheSecurityGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroupQuotaExceededFault', name: 'CacheSecurityGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.CacheSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheSecurityGroups', name: 'CacheSecurityGroups')
    CacheSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroup', name: 'CacheSubnetGroup')
    CacheSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroupAlreadyExistsFault', name: 'CacheSubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroupInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroupInUse', name: 'CacheSubnetGroupInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroupMessage', name: 'CacheSubnetGroupMessage')
    CacheSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroupNotFoundFault', name: 'CacheSubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroupQuotaExceededFault', name: 'CacheSubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CacheSubnetGroups', name: 'CacheSubnetGroups')
    CacheSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheSubnetQuotaExceededFault', name: 'CacheSubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CacheSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CacheUsageLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CacheUsageLimits', name: 'CacheUsageLimits')
    ChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#ChangeType', name: 'ChangeType')
    CloudWatchLogsDestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CloudWatchLogsDestinationDetails', name: 'CloudWatchLogsDestinationDetails')
    ClusterIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ClusterIdList', name: 'ClusterIdList')
    ClusterMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#ClusterMode', name: 'ClusterMode')
    ClusterQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ClusterQuotaForCustomerExceededFault', name: 'ClusterQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CompleteMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CompleteMigrationMessage', name: 'CompleteMigrationMessage')
    CompleteMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CompleteMigrationResponse', name: 'CompleteMigrationResponse')
    ConfigureShard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ConfigureShard', name: 'ConfigureShard')
    CopyServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CopyServerlessCacheSnapshotRequest', name: 'CopyServerlessCacheSnapshotRequest')
    CopyServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CopyServerlessCacheSnapshotResponse', name: 'CopyServerlessCacheSnapshotResponse')
    CopySnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CopySnapshotMessage', name: 'CopySnapshotMessage')
    CopySnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CopySnapshotResult', name: 'CopySnapshotResult')
    CreateCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheClusterMessage', name: 'CreateCacheClusterMessage')
    CreateCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheClusterResult', name: 'CreateCacheClusterResult')
    CreateCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheParameterGroupMessage', name: 'CreateCacheParameterGroupMessage')
    CreateCacheParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheParameterGroupResult', name: 'CreateCacheParameterGroupResult')
    CreateCacheSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheSecurityGroupMessage', name: 'CreateCacheSecurityGroupMessage')
    CreateCacheSecurityGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheSecurityGroupResult', name: 'CreateCacheSecurityGroupResult')
    CreateCacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheSubnetGroupMessage', name: 'CreateCacheSubnetGroupMessage')
    CreateCacheSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateCacheSubnetGroupResult', name: 'CreateCacheSubnetGroupResult')
    CreateGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateGlobalReplicationGroupMessage', name: 'CreateGlobalReplicationGroupMessage')
    CreateGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateGlobalReplicationGroupResult', name: 'CreateGlobalReplicationGroupResult')
    CreateReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateReplicationGroupMessage', name: 'CreateReplicationGroupMessage')
    CreateReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateReplicationGroupResult', name: 'CreateReplicationGroupResult')
    CreateServerlessCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateServerlessCacheRequest', name: 'CreateServerlessCacheRequest')
    CreateServerlessCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateServerlessCacheResponse', name: 'CreateServerlessCacheResponse')
    CreateServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateServerlessCacheSnapshotRequest', name: 'CreateServerlessCacheSnapshotRequest')
    CreateServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateServerlessCacheSnapshotResponse', name: 'CreateServerlessCacheSnapshotResponse')
    CreateSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateSnapshotMessage', name: 'CreateSnapshotMessage')
    CreateSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateSnapshotResult', name: 'CreateSnapshotResult')
    CreateUserGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateUserGroupMessage', name: 'CreateUserGroupMessage')
    CreateUserGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateUserGroupOutput', name: 'CreateUserGroupOutput')
    CreateUserMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateUserMessage', name: 'CreateUserMessage')
    CreateUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CreateUserOutput', name: 'CreateUserOutput')
    CustomerNodeEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#CustomerNodeEndpoint', name: 'CustomerNodeEndpoint')
    CustomerNodeEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#CustomerNodeEndpointList', name: 'CustomerNodeEndpointList')
    DataStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DataStorage', name: 'DataStorage')
    DataStorageUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#DataStorageUnit', name: 'DataStorageUnit')
    DataTieringStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#DataTieringStatus', name: 'DataTieringStatus')
    DecreaseNodeGroupsInGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DecreaseNodeGroupsInGlobalReplicationGroupMessage', name: 'DecreaseNodeGroupsInGlobalReplicationGroupMessage')
    DecreaseNodeGroupsInGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DecreaseNodeGroupsInGlobalReplicationGroupResult', name: 'DecreaseNodeGroupsInGlobalReplicationGroupResult')
    DecreaseReplicaCountMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DecreaseReplicaCountMessage', name: 'DecreaseReplicaCountMessage')
    DecreaseReplicaCountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DecreaseReplicaCountResult', name: 'DecreaseReplicaCountResult')
    DefaultUserAssociatedToUserGroupFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DefaultUserAssociatedToUserGroupFault', name: 'DefaultUserAssociatedToUserGroupFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DefaultUserAssociatedToUserGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DefaultUserRequired = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DefaultUserRequired', name: 'DefaultUserRequired', traits: {"aws.protocols#awsQueryError" => {"code" => "DefaultUserRequired", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteCacheClusterMessage', name: 'DeleteCacheClusterMessage')
    DeleteCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteCacheClusterResult', name: 'DeleteCacheClusterResult')
    DeleteCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteCacheParameterGroupMessage', name: 'DeleteCacheParameterGroupMessage')
    DeleteCacheSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteCacheSecurityGroupMessage', name: 'DeleteCacheSecurityGroupMessage')
    DeleteCacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteCacheSubnetGroupMessage', name: 'DeleteCacheSubnetGroupMessage')
    DeleteGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteGlobalReplicationGroupMessage', name: 'DeleteGlobalReplicationGroupMessage')
    DeleteGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteGlobalReplicationGroupResult', name: 'DeleteGlobalReplicationGroupResult')
    DeleteReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteReplicationGroupMessage', name: 'DeleteReplicationGroupMessage')
    DeleteReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteReplicationGroupResult', name: 'DeleteReplicationGroupResult')
    DeleteServerlessCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteServerlessCacheRequest', name: 'DeleteServerlessCacheRequest')
    DeleteServerlessCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteServerlessCacheResponse', name: 'DeleteServerlessCacheResponse')
    DeleteServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteServerlessCacheSnapshotRequest', name: 'DeleteServerlessCacheSnapshotRequest')
    DeleteServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteServerlessCacheSnapshotResponse', name: 'DeleteServerlessCacheSnapshotResponse')
    DeleteSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteSnapshotMessage', name: 'DeleteSnapshotMessage')
    DeleteSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteSnapshotResult', name: 'DeleteSnapshotResult')
    DeleteUserGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteUserGroupMessage', name: 'DeleteUserGroupMessage')
    DeleteUserGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteUserGroupOutput', name: 'DeleteUserGroupOutput')
    DeleteUserMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteUserMessage', name: 'DeleteUserMessage')
    DeleteUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DeleteUserOutput', name: 'DeleteUserOutput')
    DescribeCacheClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheClustersMessage', name: 'DescribeCacheClustersMessage')
    DescribeCacheEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheEngineVersionsMessage', name: 'DescribeCacheEngineVersionsMessage')
    DescribeCacheParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheParameterGroupsMessage', name: 'DescribeCacheParameterGroupsMessage')
    DescribeCacheParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheParametersMessage', name: 'DescribeCacheParametersMessage')
    DescribeCacheParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheParametersOutput', name: 'DescribeCacheParametersOutput')
    DescribeCacheSecurityGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheSecurityGroupsMessage', name: 'DescribeCacheSecurityGroupsMessage')
    DescribeCacheSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeCacheSubnetGroupsMessage', name: 'DescribeCacheSubnetGroupsMessage')
    DescribeEngineDefaultParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeEngineDefaultParametersMessage', name: 'DescribeEngineDefaultParametersMessage')
    DescribeEngineDefaultParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeEngineDefaultParametersResult', name: 'DescribeEngineDefaultParametersResult')
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeGlobalReplicationGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeGlobalReplicationGroupsMessage', name: 'DescribeGlobalReplicationGroupsMessage')
    DescribeGlobalReplicationGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeGlobalReplicationGroupsResult', name: 'DescribeGlobalReplicationGroupsResult')
    DescribeReplicationGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeReplicationGroupsMessage', name: 'DescribeReplicationGroupsMessage')
    DescribeReservedCacheNodesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeReservedCacheNodesMessage', name: 'DescribeReservedCacheNodesMessage')
    DescribeReservedCacheNodesOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeReservedCacheNodesOfferingsMessage', name: 'DescribeReservedCacheNodesOfferingsMessage')
    DescribeServerlessCacheSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeServerlessCacheSnapshotsRequest', name: 'DescribeServerlessCacheSnapshotsRequest')
    DescribeServerlessCacheSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeServerlessCacheSnapshotsResponse', name: 'DescribeServerlessCacheSnapshotsResponse')
    DescribeServerlessCachesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeServerlessCachesRequest', name: 'DescribeServerlessCachesRequest')
    DescribeServerlessCachesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeServerlessCachesResponse', name: 'DescribeServerlessCachesResponse')
    DescribeServiceUpdatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeServiceUpdatesMessage', name: 'DescribeServiceUpdatesMessage')
    DescribeSnapshotsListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeSnapshotsListMessage', name: 'DescribeSnapshotsListMessage')
    DescribeSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeSnapshotsMessage', name: 'DescribeSnapshotsMessage')
    DescribeUpdateActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeUpdateActionsMessage', name: 'DescribeUpdateActionsMessage')
    DescribeUserGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeUserGroupsMessage', name: 'DescribeUserGroupsMessage')
    DescribeUserGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeUserGroupsResult', name: 'DescribeUserGroupsResult')
    DescribeUsersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeUsersMessage', name: 'DescribeUsersMessage')
    DescribeUsersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DescribeUsersResult', name: 'DescribeUsersResult')
    DestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DestinationDetails', name: 'DestinationDetails')
    DestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#DestinationType', name: 'DestinationType')
    DisassociateGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DisassociateGlobalReplicationGroupMessage', name: 'DisassociateGlobalReplicationGroupMessage')
    DisassociateGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DisassociateGlobalReplicationGroupResult', name: 'DisassociateGlobalReplicationGroupResult')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.elasticache#Double', name: 'Double')
    DuplicateUserNameFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#DuplicateUserNameFault', name: 'DuplicateUserNameFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DuplicateUserName", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EC2SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#EC2SecurityGroup', name: 'EC2SecurityGroup')
    EC2SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#EC2SecurityGroupList', name: 'EC2SecurityGroupList')
    ECPUPerSecond = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ECPUPerSecond', name: 'ECPUPerSecond')
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Endpoint', name: 'Endpoint')
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#EngineDefaults', name: 'EngineDefaults')
    EngineType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#EngineType', name: 'EngineType', traits: {"smithy.api#pattern" => "^[a-zA-Z]*$"})
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Event', name: 'Event')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#EventList', name: 'EventList')
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#EventsMessage', name: 'EventsMessage')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#ExceptionMessage', name: 'ExceptionMessage')
    ExportServerlessCacheSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ExportServerlessCacheSnapshotRequest', name: 'ExportServerlessCacheSnapshotRequest')
    ExportServerlessCacheSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ExportServerlessCacheSnapshotResponse', name: 'ExportServerlessCacheSnapshotResponse')
    FailoverGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#FailoverGlobalReplicationGroupMessage', name: 'FailoverGlobalReplicationGroupMessage')
    FailoverGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#FailoverGlobalReplicationGroupResult', name: 'FailoverGlobalReplicationGroupResult')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#FilterList', name: 'FilterList')
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#FilterName', name: 'FilterName', traits: {"smithy.api#pattern" => "\\S"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#FilterValue', name: 'FilterValue', traits: {"smithy.api#pattern" => "\\S"})
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#FilterValueList', name: 'FilterValueList', traits: {"smithy.api#length" => {"min" => 1}})
    GlobalNodeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#GlobalNodeGroup', name: 'GlobalNodeGroup')
    GlobalNodeGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#GlobalNodeGroupIdList', name: 'GlobalNodeGroupIdList')
    GlobalNodeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#GlobalNodeGroupList', name: 'GlobalNodeGroupList')
    GlobalReplicationGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroup', name: 'GlobalReplicationGroup')
    GlobalReplicationGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroupAlreadyExistsFault', name: 'GlobalReplicationGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalReplicationGroupAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalReplicationGroupInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroupInfo', name: 'GlobalReplicationGroupInfo')
    GlobalReplicationGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroupList', name: 'GlobalReplicationGroupList')
    GlobalReplicationGroupMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroupMember', name: 'GlobalReplicationGroupMember')
    GlobalReplicationGroupMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroupMemberList', name: 'GlobalReplicationGroupMemberList')
    GlobalReplicationGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#GlobalReplicationGroupNotFoundFault', name: 'GlobalReplicationGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalReplicationGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IncreaseNodeGroupsInGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#IncreaseNodeGroupsInGlobalReplicationGroupMessage', name: 'IncreaseNodeGroupsInGlobalReplicationGroupMessage')
    IncreaseNodeGroupsInGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#IncreaseNodeGroupsInGlobalReplicationGroupResult', name: 'IncreaseNodeGroupsInGlobalReplicationGroupResult')
    IncreaseReplicaCountMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#IncreaseReplicaCountMessage', name: 'IncreaseReplicaCountMessage')
    IncreaseReplicaCountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#IncreaseReplicaCountResult', name: 'IncreaseReplicaCountResult')
    InputAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#InputAuthenticationType', name: 'InputAuthenticationType')
    InsufficientCacheClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InsufficientCacheClusterCapacityFault', name: 'InsufficientCacheClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientCacheClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticache#Integer', name: 'Integer')
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticache#IntegerOptional', name: 'IntegerOptional')
    InvalidARNFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidARNFault', name: 'InvalidARNFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidARN", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCacheClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidCacheClusterStateFault', name: 'InvalidCacheClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCacheClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCacheParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidCacheParameterGroupStateFault', name: 'InvalidCacheParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCacheParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCacheSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidCacheSecurityGroupStateFault', name: 'InvalidCacheSecurityGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCacheSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidCredentialsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidCredentialsException', name: 'InvalidCredentialsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCredentialsException", "httpResponseCode" => 408}, "smithy.api#error" => "client", "smithy.api#httpError" => 408})
    InvalidGlobalReplicationGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidGlobalReplicationGroupStateFault', name: 'InvalidGlobalReplicationGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalReplicationGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidKMSKeyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidKMSKeyFault', name: 'InvalidKMSKeyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidKMSKeyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidParameterCombinationException', name: 'InvalidParameterCombinationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterCombination", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameterValue", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidReplicationGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidReplicationGroupStateFault', name: 'InvalidReplicationGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidReplicationGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidServerlessCacheSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidServerlessCacheSnapshotStateFault', name: 'InvalidServerlessCacheSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidServerlessCacheSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidServerlessCacheStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidServerlessCacheStateFault', name: 'InvalidServerlessCacheStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidServerlessCacheStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidSnapshotStateFault', name: 'InvalidSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidUserGroupStateFault', name: 'InvalidUserGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUserStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidUserStateFault', name: 'InvalidUserStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUserState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpDiscovery = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#IpDiscovery', name: 'IpDiscovery')
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#KeyList', name: 'KeyList')
    KinesisFirehoseDestinationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#KinesisFirehoseDestinationDetails', name: 'KinesisFirehoseDestinationDetails')
    ListAllowedNodeTypeModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ListAllowedNodeTypeModificationsMessage', name: 'ListAllowedNodeTypeModificationsMessage')
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ListTagsForResourceMessage', name: 'ListTagsForResourceMessage')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    LogDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#LogDeliveryConfiguration', name: 'LogDeliveryConfiguration')
    LogDeliveryConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#LogDeliveryConfigurationList', name: 'LogDeliveryConfigurationList')
    LogDeliveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#LogDeliveryConfigurationRequest', name: 'LogDeliveryConfigurationRequest')
    LogDeliveryConfigurationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#LogDeliveryConfigurationRequestList', name: 'LogDeliveryConfigurationRequestList')
    LogDeliveryConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#LogDeliveryConfigurationStatus', name: 'LogDeliveryConfigurationStatus')
    LogFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#LogFormat', name: 'LogFormat')
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#LogType', name: 'LogType')
    ModifyCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyCacheClusterMessage', name: 'ModifyCacheClusterMessage')
    ModifyCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyCacheClusterResult', name: 'ModifyCacheClusterResult')
    ModifyCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyCacheParameterGroupMessage', name: 'ModifyCacheParameterGroupMessage')
    ModifyCacheParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyCacheParameterGroupOutput', name: 'ModifyCacheParameterGroupOutput')
    ModifyCacheSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyCacheSubnetGroupMessage', name: 'ModifyCacheSubnetGroupMessage')
    ModifyCacheSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyCacheSubnetGroupResult', name: 'ModifyCacheSubnetGroupResult')
    ModifyGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyGlobalReplicationGroupMessage', name: 'ModifyGlobalReplicationGroupMessage')
    ModifyGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyGlobalReplicationGroupResult', name: 'ModifyGlobalReplicationGroupResult')
    ModifyReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyReplicationGroupMessage', name: 'ModifyReplicationGroupMessage')
    ModifyReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyReplicationGroupResult', name: 'ModifyReplicationGroupResult')
    ModifyReplicationGroupShardConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyReplicationGroupShardConfigurationMessage', name: 'ModifyReplicationGroupShardConfigurationMessage')
    ModifyReplicationGroupShardConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyReplicationGroupShardConfigurationResult', name: 'ModifyReplicationGroupShardConfigurationResult')
    ModifyServerlessCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyServerlessCacheRequest', name: 'ModifyServerlessCacheRequest')
    ModifyServerlessCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyServerlessCacheResponse', name: 'ModifyServerlessCacheResponse')
    ModifyUserGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyUserGroupMessage', name: 'ModifyUserGroupMessage')
    ModifyUserGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyUserGroupOutput', name: 'ModifyUserGroupOutput')
    ModifyUserMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyUserMessage', name: 'ModifyUserMessage')
    ModifyUserOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ModifyUserOutput', name: 'ModifyUserOutput')
    MultiAZStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#MultiAZStatus', name: 'MultiAZStatus')
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#NetworkType', name: 'NetworkType')
    NetworkTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NetworkTypeList', name: 'NetworkTypeList')
    NoOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NoOperationFault', name: 'NoOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NoOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroup', name: 'NodeGroup')
    NodeGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroupConfiguration', name: 'NodeGroupConfiguration')
    NodeGroupConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupConfigurationList', name: 'NodeGroupConfigurationList')
    NodeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupList', name: 'NodeGroupList')
    NodeGroupMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroupMember', name: 'NodeGroupMember')
    NodeGroupMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupMemberList', name: 'NodeGroupMemberList')
    NodeGroupMemberUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroupMemberUpdateStatus', name: 'NodeGroupMemberUpdateStatus')
    NodeGroupMemberUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupMemberUpdateStatusList', name: 'NodeGroupMemberUpdateStatusList')
    NodeGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroupNotFoundFault', name: 'NodeGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NodeGroupUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroupUpdateStatus', name: 'NodeGroupUpdateStatus')
    NodeGroupUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupUpdateStatusList', name: 'NodeGroupUpdateStatusList')
    NodeGroupsPerReplicationGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeGroupsPerReplicationGroupQuotaExceededFault', name: 'NodeGroupsPerReplicationGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeGroupsPerReplicationGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeGroupsToRemoveList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupsToRemoveList', name: 'NodeGroupsToRemoveList')
    NodeGroupsToRetainList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeGroupsToRetainList', name: 'NodeGroupsToRetainList')
    NodeQuotaForClusterExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeQuotaForClusterExceededFault', name: 'NodeQuotaForClusterExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForClusterExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeQuotaForCustomerExceededFault', name: 'NodeQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NodeQuotaForCustomerExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NodeSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NodeSnapshot', name: 'NodeSnapshot')
    NodeSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeSnapshotList', name: 'NodeSnapshotList')
    NodeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#NodeTypeList', name: 'NodeTypeList')
    NodeUpdateInitiatedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#NodeUpdateInitiatedBy', name: 'NodeUpdateInitiatedBy')
    NodeUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#NodeUpdateStatus', name: 'NodeUpdateStatus')
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#NotificationConfiguration', name: 'NotificationConfiguration')
    OutpostArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#OutpostArnsList', name: 'OutpostArnsList')
    OutpostMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#OutpostMode', name: 'OutpostMode')
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Parameter', name: 'Parameter')
    ParameterNameValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ParameterNameValue', name: 'ParameterNameValue')
    ParameterNameValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ParameterNameValueList', name: 'ParameterNameValueList')
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ParametersList', name: 'ParametersList')
    PasswordListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#PasswordListInput', name: 'PasswordListInput', traits: {"smithy.api#length" => {"min" => 1}})
    PendingAutomaticFailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#PendingAutomaticFailoverStatus', name: 'PendingAutomaticFailoverStatus')
    PendingLogDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#PendingLogDeliveryConfiguration', name: 'PendingLogDeliveryConfiguration')
    PendingLogDeliveryConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#PendingLogDeliveryConfigurationList', name: 'PendingLogDeliveryConfigurationList')
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#PendingModifiedValues', name: 'PendingModifiedValues')
    PreferredAvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#PreferredAvailabilityZoneList', name: 'PreferredAvailabilityZoneList')
    PreferredOutpostArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#PreferredOutpostArnList', name: 'PreferredOutpostArnList')
    ProcessedUpdateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ProcessedUpdateAction', name: 'ProcessedUpdateAction')
    ProcessedUpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ProcessedUpdateActionList', name: 'ProcessedUpdateActionList')
    PurchaseReservedCacheNodesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#PurchaseReservedCacheNodesOfferingMessage', name: 'PurchaseReservedCacheNodesOfferingMessage')
    PurchaseReservedCacheNodesOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#PurchaseReservedCacheNodesOfferingResult', name: 'PurchaseReservedCacheNodesOfferingResult')
    RebalanceSlotsInGlobalReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RebalanceSlotsInGlobalReplicationGroupMessage', name: 'RebalanceSlotsInGlobalReplicationGroupMessage')
    RebalanceSlotsInGlobalReplicationGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RebalanceSlotsInGlobalReplicationGroupResult', name: 'RebalanceSlotsInGlobalReplicationGroupResult')
    RebootCacheClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RebootCacheClusterMessage', name: 'RebootCacheClusterMessage')
    RebootCacheClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RebootCacheClusterResult', name: 'RebootCacheClusterResult')
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#RecurringChargeList', name: 'RecurringChargeList')
    RegionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RegionalConfiguration', name: 'RegionalConfiguration')
    RegionalConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#RegionalConfigurationList', name: 'RegionalConfigurationList')
    RemoveReplicasList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#RemoveReplicasList', name: 'RemoveReplicasList')
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RemoveTagsFromResourceMessage', name: 'RemoveTagsFromResourceMessage')
    RemoveTagsFromResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RemoveTagsFromResourceOutput', name: 'RemoveTagsFromResourceOutput')
    ReplicaConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReplicaConfigurationList', name: 'ReplicaConfigurationList')
    ReplicationGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroup', name: 'ReplicationGroup')
    ReplicationGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupAlreadyExistsFault', name: 'ReplicationGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationGroupAlreadyUnderMigrationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupAlreadyUnderMigrationFault', name: 'ReplicationGroupAlreadyUnderMigrationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupAlreadyUnderMigrationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupIdList', name: 'ReplicationGroupIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ReplicationGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupList', name: 'ReplicationGroupList')
    ReplicationGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupMessage', name: 'ReplicationGroupMessage')
    ReplicationGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupNotFoundFault', name: 'ReplicationGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationGroupNotUnderMigrationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupNotUnderMigrationFault', name: 'ReplicationGroupNotUnderMigrationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReplicationGroupNotUnderMigrationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReplicationGroupOutpostArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupOutpostArnList', name: 'ReplicationGroupOutpostArnList')
    ReplicationGroupPendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReplicationGroupPendingModifiedValues', name: 'ReplicationGroupPendingModifiedValues')
    ReservedCacheNode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNode', name: 'ReservedCacheNode')
    ReservedCacheNodeAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodeAlreadyExistsFault', name: 'ReservedCacheNodeAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedCacheNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodeList', name: 'ReservedCacheNodeList')
    ReservedCacheNodeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodeMessage', name: 'ReservedCacheNodeMessage')
    ReservedCacheNodeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodeNotFoundFault', name: 'ReservedCacheNodeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedCacheNodeQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodeQuotaExceededFault', name: 'ReservedCacheNodeQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedCacheNodesOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodesOffering', name: 'ReservedCacheNodesOffering')
    ReservedCacheNodesOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodesOfferingList', name: 'ReservedCacheNodesOfferingList')
    ReservedCacheNodesOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodesOfferingMessage', name: 'ReservedCacheNodesOfferingMessage')
    ReservedCacheNodesOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReservedCacheNodesOfferingNotFoundFault', name: 'ReservedCacheNodesOfferingNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedCacheNodesOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResetCacheParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ResetCacheParameterGroupMessage', name: 'ResetCacheParameterGroupMessage')
    ResetCacheParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ResetCacheParameterGroupOutput', name: 'ResetCacheParameterGroupOutput')
    ReshardingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReshardingConfiguration', name: 'ReshardingConfiguration')
    ReshardingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ReshardingConfigurationList', name: 'ReshardingConfigurationList')
    ReshardingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ReshardingStatus', name: 'ReshardingStatus')
    RevokeCacheSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RevokeCacheSecurityGroupIngressMessage', name: 'RevokeCacheSecurityGroupIngressMessage')
    RevokeCacheSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#RevokeCacheSecurityGroupIngressResult', name: 'RevokeCacheSecurityGroupIngressResult')
    ScaleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ScaleConfig', name: 'ScaleConfig')
    SecurityGroupIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SecurityGroupIdsList', name: 'SecurityGroupIdsList')
    SecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SecurityGroupMembership', name: 'SecurityGroupMembership')
    SecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SecurityGroupMembershipList', name: 'SecurityGroupMembershipList')
    ServerlessCache = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCache', name: 'ServerlessCache')
    ServerlessCacheAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheAlreadyExistsFault', name: 'ServerlessCacheAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerlessCacheConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheConfiguration', name: 'ServerlessCacheConfiguration')
    ServerlessCacheList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheList', name: 'ServerlessCacheList')
    ServerlessCacheNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheNotFoundFault', name: 'ServerlessCacheNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerlessCacheQuotaForCustomerExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheQuotaForCustomerExceededFault', name: 'ServerlessCacheQuotaForCustomerExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheQuotaForCustomerExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerlessCacheSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheSnapshot', name: 'ServerlessCacheSnapshot')
    ServerlessCacheSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheSnapshotAlreadyExistsFault', name: 'ServerlessCacheSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServerlessCacheSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheSnapshotList', name: 'ServerlessCacheSnapshotList')
    ServerlessCacheSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheSnapshotNotFoundFault', name: 'ServerlessCacheSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServerlessCacheSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServerlessCacheSnapshotQuotaExceededFault', name: 'ServerlessCacheSnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServerlessCacheSnapshotQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceLinkedRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServiceLinkedRoleNotFoundFault', name: 'ServiceLinkedRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLinkedRoleNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServiceUpdate', name: 'ServiceUpdate')
    ServiceUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ServiceUpdateList', name: 'ServiceUpdateList')
    ServiceUpdateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServiceUpdateNotFoundFault', name: 'ServiceUpdateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceUpdateNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUpdateSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#ServiceUpdateSeverity', name: 'ServiceUpdateSeverity')
    ServiceUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#ServiceUpdateStatus', name: 'ServiceUpdateStatus')
    ServiceUpdateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#ServiceUpdateStatusList', name: 'ServiceUpdateStatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    ServiceUpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#ServiceUpdateType', name: 'ServiceUpdateType')
    ServiceUpdatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#ServiceUpdatesMessage', name: 'ServiceUpdatesMessage')
    SlaMet = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#SlaMet', name: 'SlaMet')
    SlotMigration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SlotMigration', name: 'SlotMigration')
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Snapshot', name: 'Snapshot')
    SnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SnapshotAlreadyExistsFault', name: 'SnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SnapshotArnsList', name: 'SnapshotArnsList')
    SnapshotFeatureNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SnapshotFeatureNotSupportedFault', name: 'SnapshotFeatureNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotFeatureNotSupportedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SnapshotList', name: 'SnapshotList')
    SnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SnapshotNotFoundFault', name: 'SnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SnapshotQuotaExceededFault', name: 'SnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#SourceType', name: 'SourceType')
    StartMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#StartMigrationMessage', name: 'StartMigrationMessage')
    StartMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#StartMigrationResponse', name: 'StartMigrationResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#String', name: 'String')
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Subnet', name: 'Subnet')
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SubnetIdsList', name: 'SubnetIdsList')
    SubnetInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SubnetInUse', name: 'SubnetInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#SubnetList', name: 'SubnetList')
    SubnetNotAllowedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SubnetNotAllowedFault', name: 'SubnetNotAllowedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetNotAllowedFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetOutpost = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#SubnetOutpost', name: 'SubnetOutpost')
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticache#TStamp', name: 'TStamp')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#Tag', name: 'Tag')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#TagList', name: 'TagList')
    TagNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TagNotFoundFault', name: 'TagNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TagNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TagQuotaPerResourceExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TagQuotaPerResourceExceeded', name: 'TagQuotaPerResourceExceeded', traits: {"aws.protocols#awsQueryError" => {"code" => "TagQuotaPerResourceExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TestFailoverMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TestFailoverMessage', name: 'TestFailoverMessage')
    TestFailoverNotAvailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TestFailoverNotAvailableFault', name: 'TestFailoverNotAvailableFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TestFailoverNotAvailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TestFailoverResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TestFailoverResult', name: 'TestFailoverResult')
    TestMigrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TestMigrationMessage', name: 'TestMigrationMessage')
    TestMigrationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TestMigrationResponse', name: 'TestMigrationResponse')
    TimeRangeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#TimeRangeFilter', name: 'TimeRangeFilter')
    TransitEncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#TransitEncryptionMode', name: 'TransitEncryptionMode')
    UGReplicationGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UGReplicationGroupIdList', name: 'UGReplicationGroupIdList')
    UGServerlessCacheIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UGServerlessCacheIdList', name: 'UGServerlessCacheIdList')
    UnprocessedUpdateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UnprocessedUpdateAction', name: 'UnprocessedUpdateAction')
    UnprocessedUpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UnprocessedUpdateActionList', name: 'UnprocessedUpdateActionList')
    UpdateAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UpdateAction', name: 'UpdateAction')
    UpdateActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UpdateActionList', name: 'UpdateActionList')
    UpdateActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticache#UpdateActionStatus', name: 'UpdateActionStatus')
    UpdateActionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UpdateActionStatusList', name: 'UpdateActionStatusList', traits: {"smithy.api#length" => {"min" => 0, "max" => 9}})
    UpdateActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UpdateActionsMessage', name: 'UpdateActionsMessage')
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#User', name: 'User')
    UserAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserAlreadyExistsFault', name: 'UserAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserGroup', name: 'UserGroup')
    UserGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserGroupAlreadyExistsFault', name: 'UserGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#UserGroupId', name: 'UserGroupId', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    UserGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UserGroupIdList', name: 'UserGroupIdList')
    UserGroupIdListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UserGroupIdListInput', name: 'UserGroupIdListInput', traits: {"smithy.api#length" => {"min" => 1}})
    UserGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UserGroupList', name: 'UserGroupList')
    UserGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserGroupNotFoundFault', name: 'UserGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserGroupPendingChanges = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserGroupPendingChanges', name: 'UserGroupPendingChanges')
    UserGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserGroupQuotaExceededFault', name: 'UserGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UserGroupsUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserGroupsUpdateStatus', name: 'UserGroupsUpdateStatus')
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    UserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UserIdList', name: 'UserIdList')
    UserIdListInput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UserIdListInput', name: 'UserIdListInput', traits: {"smithy.api#length" => {"min" => 1}})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticache#UserList', name: 'UserList')
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticache#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1}})
    UserNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserNotFoundFault', name: 'UserNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UserQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticache#UserQuotaExceededFault', name: 'UserQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UserQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    APICallRateForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    APICallRateForCustomerExceededFault.type = Types::APICallRateForCustomerExceededFault
    AZMode.add_member(:single_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_AZ', traits: {"smithy.api#enumValue" => "single-az"}))
    AZMode.add_member(:cross_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CROSS_AZ', traits: {"smithy.api#enumValue" => "cross-az"}))
    AddTagsToResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    AddTagsToResourceOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    AddTagsToResourceOutput.type = Types::AddTagsToResourceOutput
    AllowedNodeTypeModificationsMessage.add_member(:scale_up_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeList, location_name: 'ScaleUpModifications'))
    AllowedNodeTypeModificationsMessage.add_member(:scale_down_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeTypeList, location_name: 'ScaleDownModifications'))
    AllowedNodeTypeModificationsMessage.type = Types::AllowedNodeTypeModificationsMessage
    AuthTokenUpdateStatus.add_member(:setting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SETTING', traits: {"smithy.api#enumValue" => "SETTING"}))
    AuthTokenUpdateStatus.add_member(:rotating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATING', traits: {"smithy.api#enumValue" => "ROTATING"}))
    AuthTokenUpdateStrategyType.add_member(:set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SET', traits: {"smithy.api#enumValue" => "SET"}))
    AuthTokenUpdateStrategyType.add_member(:rotate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROTATE', traits: {"smithy.api#enumValue" => "ROTATE"}))
    AuthTokenUpdateStrategyType.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    Authentication.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'Type'))
    Authentication.add_member(:password_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PasswordCount'))
    Authentication.type = Types::Authentication
    AuthenticationMode.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputAuthenticationType, location_name: 'Type'))
    AuthenticationMode.add_member(:passwords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordListInput, location_name: 'Passwords'))
    AuthenticationMode.type = Types::AuthenticationMode
    AuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "password"}))
    AuthenticationType.add_member(:no_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_PASSWORD', traits: {"smithy.api#enumValue" => "no-password"}))
    AuthenticationType.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "iam"}))
    AuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeCacheSecurityGroupIngressMessage.type = Types::AuthorizeCacheSecurityGroupIngressMessage
    AuthorizeCacheSecurityGroupIngressResult.add_member(:cache_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: 'CacheSecurityGroup'))
    AuthorizeCacheSecurityGroupIngressResult.type = Types::AuthorizeCacheSecurityGroupIngressResult
    AutomaticFailoverStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    AutomaticFailoverStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    AutomaticFailoverStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "enabling"}))
    AutomaticFailoverStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "disabling"}))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZonesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    BatchApplyUpdateActionMessage.add_member(:replication_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupIdList, location_name: 'ReplicationGroupIds'))
    BatchApplyUpdateActionMessage.add_member(:cache_cluster_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterIdList, location_name: 'CacheClusterIds'))
    BatchApplyUpdateActionMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchApplyUpdateActionMessage.type = Types::BatchApplyUpdateActionMessage
    BatchApplyUpdateActionOutput.add_member(:processed_update_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedUpdateActionList, location_name: 'ProcessedUpdateActions'))
    BatchApplyUpdateActionOutput.add_member(:unprocessed_update_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedUpdateActionList, location_name: 'UnprocessedUpdateActions'))
    BatchApplyUpdateActionOutput.type = Types::BatchApplyUpdateActionOutput
    BatchStopUpdateActionMessage.add_member(:replication_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupIdList, location_name: 'ReplicationGroupIds'))
    BatchStopUpdateActionMessage.add_member(:cache_cluster_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterIdList, location_name: 'CacheClusterIds'))
    BatchStopUpdateActionMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchStopUpdateActionMessage.type = Types::BatchStopUpdateActionMessage
    BatchStopUpdateActionOutput.add_member(:processed_update_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedUpdateActionList, location_name: 'ProcessedUpdateActions'))
    BatchStopUpdateActionOutput.add_member(:unprocessed_update_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedUpdateActionList, location_name: 'UnprocessedUpdateActions'))
    BatchStopUpdateActionOutput.type = Types::BatchStopUpdateActionOutput
    CacheCluster.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    CacheCluster.add_member(:configuration_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ConfigurationEndpoint'))
    CacheCluster.add_member(:client_download_landing_page, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClientDownloadLandingPage'))
    CacheCluster.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    CacheCluster.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CacheCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CacheCluster.add_member(:cache_cluster_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterStatus'))
    CacheCluster.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumCacheNodes'))
    CacheCluster.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAvailabilityZone'))
    CacheCluster.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredOutpostArn'))
    CacheCluster.add_member(:cache_cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CacheClusterCreateTime'))
    CacheCluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CacheCluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: 'PendingModifiedValues'))
    CacheCluster.add_member(:notification_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'NotificationConfiguration'))
    CacheCluster.add_member(:cache_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupMembershipList, location_name: 'CacheSecurityGroups'))
    CacheCluster.add_member(:cache_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupStatus, location_name: 'CacheParameterGroup'))
    CacheCluster.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName'))
    CacheCluster.add_member(:cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeList, location_name: 'CacheNodes'))
    CacheCluster.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade'))
    CacheCluster.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupMembershipList, location_name: 'SecurityGroups'))
    CacheCluster.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    CacheCluster.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    CacheCluster.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    CacheCluster.add_member(:auth_token_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AuthTokenEnabled'))
    CacheCluster.add_member(:auth_token_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthTokenLastModifiedDate'))
    CacheCluster.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    CacheCluster.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AtRestEncryptionEnabled'))
    CacheCluster.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    CacheCluster.add_member(:replication_group_log_delivery_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReplicationGroupLogDeliveryEnabled'))
    CacheCluster.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationList, location_name: 'LogDeliveryConfigurations'))
    CacheCluster.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType'))
    CacheCluster.add_member(:ip_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery'))
    CacheCluster.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitEncryptionMode, location_name: 'TransitEncryptionMode'))
    CacheCluster.type = Types::CacheCluster
    CacheClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheClusterAlreadyExistsFault.type = Types::CacheClusterAlreadyExistsFault
    CacheClusterIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    CacheClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheCluster, traits: {"smithy.api#xmlName" => "CacheCluster"})
    CacheClusterMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CacheClusterMessage.add_member(:cache_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterList, location_name: 'CacheClusters'))
    CacheClusterMessage.type = Types::CacheClusterMessage
    CacheClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheClusterNotFoundFault.type = Types::CacheClusterNotFoundFault
    CacheEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CacheEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CacheEngineVersion.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupFamily'))
    CacheEngineVersion.add_member(:cache_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheEngineDescription'))
    CacheEngineVersion.add_member(:cache_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheEngineVersionDescription'))
    CacheEngineVersion.type = Types::CacheEngineVersion
    CacheEngineVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheEngineVersion, traits: {"smithy.api#xmlName" => "CacheEngineVersion"})
    CacheEngineVersionMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CacheEngineVersionMessage.add_member(:cache_engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheEngineVersionList, location_name: 'CacheEngineVersions'))
    CacheEngineVersionMessage.type = Types::CacheEngineVersionMessage
    CacheNode.add_member(:cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeId'))
    CacheNode.add_member(:cache_node_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeStatus'))
    CacheNode.add_member(:cache_node_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CacheNodeCreateTime'))
    CacheNode.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    CacheNode.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus'))
    CacheNode.add_member(:source_cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceCacheNodeId'))
    CacheNode.add_member(:customer_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomerAvailabilityZone'))
    CacheNode.add_member(:customer_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomerOutpostArn'))
    CacheNode.type = Types::CacheNode
    CacheNodeIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "CacheNodeId"})
    CacheNodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNode, traits: {"smithy.api#xmlName" => "CacheNode"})
    CacheNodeTypeSpecificParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    CacheNodeTypeSpecificParameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CacheNodeTypeSpecificParameter.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    CacheNodeTypeSpecificParameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    CacheNodeTypeSpecificParameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    CacheNodeTypeSpecificParameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    CacheNodeTypeSpecificParameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    CacheNodeTypeSpecificParameter.add_member(:cache_node_type_specific_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificValueList, location_name: 'CacheNodeTypeSpecificValues'))
    CacheNodeTypeSpecificParameter.add_member(:change_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'ChangeType'))
    CacheNodeTypeSpecificParameter.type = Types::CacheNodeTypeSpecificParameter
    CacheNodeTypeSpecificParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificParameter, traits: {"smithy.api#xmlName" => "CacheNodeTypeSpecificParameter"})
    CacheNodeTypeSpecificValue.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    CacheNodeTypeSpecificValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    CacheNodeTypeSpecificValue.type = Types::CacheNodeTypeSpecificValue
    CacheNodeTypeSpecificValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificValue, traits: {"smithy.api#xmlName" => "CacheNodeTypeSpecificValue"})
    CacheNodeUpdateStatus.add_member(:cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeId'))
    CacheNodeUpdateStatus.add_member(:node_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeUpdateStatus, location_name: 'NodeUpdateStatus'))
    CacheNodeUpdateStatus.add_member(:node_deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeDeletionDate'))
    CacheNodeUpdateStatus.add_member(:node_update_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateStartDate'))
    CacheNodeUpdateStatus.add_member(:node_update_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateEndDate'))
    CacheNodeUpdateStatus.add_member(:node_update_initiated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeUpdateInitiatedBy, location_name: 'NodeUpdateInitiatedBy'))
    CacheNodeUpdateStatus.add_member(:node_update_initiated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateInitiatedDate'))
    CacheNodeUpdateStatus.add_member(:node_update_status_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateStatusModifiedDate'))
    CacheNodeUpdateStatus.type = Types::CacheNodeUpdateStatus
    CacheNodeUpdateStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeUpdateStatus, traits: {"smithy.api#xmlName" => "CacheNodeUpdateStatus"})
    CacheParameterGroup.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    CacheParameterGroup.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupFamily'))
    CacheParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CacheParameterGroup.add_member(:is_global, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsGlobal'))
    CacheParameterGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    CacheParameterGroup.type = Types::CacheParameterGroup
    CacheParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheParameterGroupAlreadyExistsFault.type = Types::CacheParameterGroupAlreadyExistsFault
    CacheParameterGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroup, traits: {"smithy.api#xmlName" => "CacheParameterGroup"})
    CacheParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheParameterGroupNotFoundFault.type = Types::CacheParameterGroupNotFoundFault
    CacheParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheParameterGroupQuotaExceededFault.type = Types::CacheParameterGroupQuotaExceededFault
    CacheParameterGroupStatus.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    CacheParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus'))
    CacheParameterGroupStatus.add_member(:cache_node_ids_to_reboot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: 'CacheNodeIdsToReboot'))
    CacheParameterGroupStatus.type = Types::CacheParameterGroupStatus
    CacheParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CacheParameterGroupsMessage.add_member(:cache_parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupList, location_name: 'CacheParameterGroups'))
    CacheParameterGroupsMessage.type = Types::CacheParameterGroupsMessage
    CacheSecurityGroup.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerId'))
    CacheSecurityGroup.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName'))
    CacheSecurityGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CacheSecurityGroup.add_member(:ec2_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: 'EC2SecurityGroups'))
    CacheSecurityGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    CacheSecurityGroup.type = Types::CacheSecurityGroup
    CacheSecurityGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSecurityGroupAlreadyExistsFault.type = Types::CacheSecurityGroupAlreadyExistsFault
    CacheSecurityGroupMembership.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName'))
    CacheSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CacheSecurityGroupMembership.type = Types::CacheSecurityGroupMembership
    CacheSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupMembership, traits: {"smithy.api#xmlName" => "CacheSecurityGroup"})
    CacheSecurityGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CacheSecurityGroupMessage.add_member(:cache_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroups, location_name: 'CacheSecurityGroups'))
    CacheSecurityGroupMessage.type = Types::CacheSecurityGroupMessage
    CacheSecurityGroupNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "CacheSecurityGroupName"})
    CacheSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSecurityGroupNotFoundFault.type = Types::CacheSecurityGroupNotFoundFault
    CacheSecurityGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSecurityGroupQuotaExceededFault.type = Types::CacheSecurityGroupQuotaExceededFault
    CacheSecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroup, traits: {"smithy.api#xmlName" => "CacheSecurityGroup"})
    CacheSubnetGroup.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName'))
    CacheSubnetGroup.add_member(:cache_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupDescription'))
    CacheSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    CacheSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets'))
    CacheSubnetGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    CacheSubnetGroup.add_member(:supported_network_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeList, location_name: 'SupportedNetworkTypes'))
    CacheSubnetGroup.type = Types::CacheSubnetGroup
    CacheSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSubnetGroupAlreadyExistsFault.type = Types::CacheSubnetGroupAlreadyExistsFault
    CacheSubnetGroupInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSubnetGroupInUse.type = Types::CacheSubnetGroupInUse
    CacheSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CacheSubnetGroupMessage.add_member(:cache_subnet_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroups, location_name: 'CacheSubnetGroups'))
    CacheSubnetGroupMessage.type = Types::CacheSubnetGroupMessage
    CacheSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSubnetGroupNotFoundFault.type = Types::CacheSubnetGroupNotFoundFault
    CacheSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSubnetGroupQuotaExceededFault.type = Types::CacheSubnetGroupQuotaExceededFault
    CacheSubnetGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroup, traits: {"smithy.api#xmlName" => "CacheSubnetGroup"})
    CacheSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CacheSubnetQuotaExceededFault.type = Types::CacheSubnetQuotaExceededFault
    CacheUsageLimits.add_member(:data_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataStorage, location_name: 'DataStorage'))
    CacheUsageLimits.add_member(:ecpu_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ECPUPerSecond, location_name: 'ECPUPerSecond'))
    CacheUsageLimits.type = Types::CacheUsageLimits
    ChangeType.add_member(:immediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'immediate', traits: {"smithy.api#enumValue" => "immediate"}))
    ChangeType.add_member(:requires_reboot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'requires_reboot', traits: {"smithy.api#enumValue" => "requires-reboot"}))
    CloudWatchLogsDestinationDetails.add_member(:log_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogGroup'))
    CloudWatchLogsDestinationDetails.type = Types::CloudWatchLogsDestinationDetails
    ClusterIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ClusterId"})
    ClusterMode.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    ClusterMode.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    ClusterMode.add_member(:compatible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPATIBLE', traits: {"smithy.api#enumValue" => "compatible"}))
    ClusterQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterQuotaForCustomerExceededFault.type = Types::ClusterQuotaForCustomerExceededFault
    CompleteMigrationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CompleteMigrationMessage.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force'))
    CompleteMigrationMessage.type = Types::CompleteMigrationMessage
    CompleteMigrationResponse.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    CompleteMigrationResponse.type = Types::CompleteMigrationResponse
    ConfigureShard.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: 'NodeGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConfigureShard.add_member(:new_replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NewReplicaCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConfigureShard.add_member(:preferred_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreferredAvailabilityZoneList, location_name: 'PreferredAvailabilityZones'))
    ConfigureShard.add_member(:preferred_outpost_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreferredOutpostArnList, location_name: 'PreferredOutpostArns'))
    ConfigureShard.type = Types::ConfigureShard
    CopyServerlessCacheSnapshotRequest.add_member(:source_serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceServerlessCacheSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyServerlessCacheSnapshotRequest.add_member(:target_serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetServerlessCacheSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyServerlessCacheSnapshotRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CopyServerlessCacheSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyServerlessCacheSnapshotRequest.type = Types::CopyServerlessCacheSnapshotRequest
    CopyServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshot, location_name: 'ServerlessCacheSnapshot'))
    CopyServerlessCacheSnapshotResponse.type = Types::CopyServerlessCacheSnapshotResponse
    CopySnapshotMessage.add_member(:source_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopySnapshotMessage.add_member(:target_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopySnapshotMessage.add_member(:target_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetBucket'))
    CopySnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CopySnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopySnapshotMessage.type = Types::CopySnapshotMessage
    CopySnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    CopySnapshotResult.type = Types::CopySnapshotResult
    CreateCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheClusterMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    CreateCacheClusterMessage.add_member(:az_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AZMode, location_name: 'AZMode'))
    CreateCacheClusterMessage.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAvailabilityZone'))
    CreateCacheClusterMessage.add_member(:preferred_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreferredAvailabilityZoneList, location_name: 'PreferredAvailabilityZones'))
    CreateCacheClusterMessage.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumCacheNodes'))
    CreateCacheClusterMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    CreateCacheClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CreateCacheClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateCacheClusterMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    CreateCacheClusterMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName'))
    CreateCacheClusterMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: 'CacheSecurityGroupNames'))
    CreateCacheClusterMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    CreateCacheClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCacheClusterMessage.add_member(:snapshot_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: 'SnapshotArns'))
    CreateCacheClusterMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName'))
    CreateCacheClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateCacheClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateCacheClusterMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicArn'))
    CreateCacheClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    CreateCacheClusterMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    CreateCacheClusterMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    CreateCacheClusterMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthToken'))
    CreateCacheClusterMessage.add_member(:outpost_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostMode, location_name: 'OutpostMode'))
    CreateCacheClusterMessage.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredOutpostArn'))
    CreateCacheClusterMessage.add_member(:preferred_outpost_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreferredOutpostArnList, location_name: 'PreferredOutpostArns'))
    CreateCacheClusterMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationRequestList, location_name: 'LogDeliveryConfigurations'))
    CreateCacheClusterMessage.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    CreateCacheClusterMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType'))
    CreateCacheClusterMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery'))
    CreateCacheClusterMessage.type = Types::CreateCacheClusterMessage
    CreateCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheCluster, location_name: 'CacheCluster'))
    CreateCacheClusterResult.type = Types::CreateCacheClusterResult
    CreateCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheParameterGroupMessage.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCacheParameterGroupMessage.type = Types::CreateCacheParameterGroupMessage
    CreateCacheParameterGroupResult.add_member(:cache_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroup, location_name: 'CacheParameterGroup'))
    CreateCacheParameterGroupResult.type = Types::CreateCacheParameterGroupResult
    CreateCacheSecurityGroupMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSecurityGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSecurityGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCacheSecurityGroupMessage.type = Types::CreateCacheSecurityGroupMessage
    CreateCacheSecurityGroupResult.add_member(:cache_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: 'CacheSecurityGroup'))
    CreateCacheSecurityGroupResult.type = Types::CreateCacheSecurityGroupResult
    CreateCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSubnetGroupMessage.add_member(:cache_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCacheSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateCacheSubnetGroupMessage.type = Types::CreateCacheSubnetGroupMessage
    CreateCacheSubnetGroupResult.add_member(:cache_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroup, location_name: 'CacheSubnetGroup'))
    CreateCacheSubnetGroupResult.type = Types::CreateCacheSubnetGroupResult
    CreateGlobalReplicationGroupMessage.add_member(:global_replication_group_id_suffix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupIdSuffix', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalReplicationGroupMessage.add_member(:global_replication_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupDescription'))
    CreateGlobalReplicationGroupMessage.add_member(:primary_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalReplicationGroupMessage.type = Types::CreateGlobalReplicationGroupMessage
    CreateGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    CreateGlobalReplicationGroupResult.type = Types::CreateGlobalReplicationGroupResult
    CreateReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReplicationGroupMessage.add_member(:replication_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId'))
    CreateReplicationGroupMessage.add_member(:primary_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryClusterId'))
    CreateReplicationGroupMessage.add_member(:automatic_failover_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutomaticFailoverEnabled'))
    CreateReplicationGroupMessage.add_member(:multi_az_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZEnabled'))
    CreateReplicationGroupMessage.add_member(:num_cache_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumCacheClusters'))
    CreateReplicationGroupMessage.add_member(:preferred_cache_cluster_a_zs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: 'PreferredCacheClusterAZs'))
    CreateReplicationGroupMessage.add_member(:num_node_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumNodeGroups'))
    CreateReplicationGroupMessage.add_member(:replicas_per_node_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ReplicasPerNodeGroup'))
    CreateReplicationGroupMessage.add_member(:node_group_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupConfigurationList, location_name: 'NodeGroupConfiguration'))
    CreateReplicationGroupMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    CreateReplicationGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CreateReplicationGroupMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateReplicationGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    CreateReplicationGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName'))
    CreateReplicationGroupMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: 'CacheSecurityGroupNames'))
    CreateReplicationGroupMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    CreateReplicationGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateReplicationGroupMessage.add_member(:snapshot_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: 'SnapshotArns'))
    CreateReplicationGroupMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName'))
    CreateReplicationGroupMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateReplicationGroupMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateReplicationGroupMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicArn'))
    CreateReplicationGroupMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    CreateReplicationGroupMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    CreateReplicationGroupMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    CreateReplicationGroupMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthToken'))
    CreateReplicationGroupMessage.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    CreateReplicationGroupMessage.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AtRestEncryptionEnabled'))
    CreateReplicationGroupMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateReplicationGroupMessage.add_member(:user_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdListInput, location_name: 'UserGroupIds'))
    CreateReplicationGroupMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationRequestList, location_name: 'LogDeliveryConfigurations'))
    CreateReplicationGroupMessage.add_member(:data_tiering_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DataTieringEnabled'))
    CreateReplicationGroupMessage.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType'))
    CreateReplicationGroupMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery'))
    CreateReplicationGroupMessage.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitEncryptionMode, location_name: 'TransitEncryptionMode'))
    CreateReplicationGroupMessage.add_member(:cluster_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'ClusterMode'))
    CreateReplicationGroupMessage.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheSnapshotName'))
    CreateReplicationGroupMessage.type = Types::CreateReplicationGroupMessage
    CreateReplicationGroupResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    CreateReplicationGroupResult.type = Types::CreateReplicationGroupResult
    CreateServerlessCacheRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CreateServerlessCacheRequest.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheRequest.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    CreateServerlessCacheRequest.add_member(:cache_usage_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheUsageLimits, location_name: 'CacheUsageLimits'))
    CreateServerlessCacheRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateServerlessCacheRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    CreateServerlessCacheRequest.add_member(:snapshot_arns_to_restore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotArnsList, location_name: 'SnapshotArnsToRestore'))
    CreateServerlessCacheRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateServerlessCacheRequest.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    CreateServerlessCacheRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdsList, location_name: 'SubnetIds'))
    CreateServerlessCacheRequest.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    CreateServerlessCacheRequest.add_member(:daily_snapshot_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DailySnapshotTime'))
    CreateServerlessCacheRequest.type = Types::CreateServerlessCacheRequest
    CreateServerlessCacheResponse.add_member(:serverless_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCache, location_name: 'ServerlessCache'))
    CreateServerlessCacheResponse.type = Types::CreateServerlessCacheResponse
    CreateServerlessCacheSnapshotRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheSnapshotRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateServerlessCacheSnapshotRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateServerlessCacheSnapshotRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateServerlessCacheSnapshotRequest.type = Types::CreateServerlessCacheSnapshotRequest
    CreateServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshot, location_name: 'ServerlessCacheSnapshot'))
    CreateServerlessCacheSnapshotResponse.type = Types::CreateServerlessCacheSnapshotResponse
    CreateSnapshotMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    CreateSnapshotMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    CreateSnapshotMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateSnapshotMessage.type = Types::CreateSnapshotMessage
    CreateSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    CreateSnapshotResult.type = Types::CreateSnapshotResult
    CreateUserGroupMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserGroupMessage.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdListInput, location_name: 'UserIds'))
    CreateUserGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateUserGroupMessage.type = Types::CreateUserGroupMessage
    CreateUserGroupOutput.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    CreateUserGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CreateUserGroupOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    CreateUserGroupOutput.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIds'))
    CreateUserGroupOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    CreateUserGroupOutput.add_member(:pending_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupPendingChanges, location_name: 'PendingChanges'))
    CreateUserGroupOutput.add_member(:replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGReplicationGroupIdList, location_name: 'ReplicationGroups'))
    CreateUserGroupOutput.add_member(:serverless_caches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGServerlessCacheIdList, location_name: 'ServerlessCaches'))
    CreateUserGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    CreateUserGroupOutput.type = Types::CreateUserGroupOutput
    CreateUserMessage.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:passwords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordListInput, location_name: 'Passwords'))
    CreateUserMessage.add_member(:access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessString, location_name: 'AccessString', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserMessage.add_member(:no_password_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'NoPasswordRequired'))
    CreateUserMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateUserMessage.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'AuthenticationMode'))
    CreateUserMessage.type = Types::CreateUserMessage
    CreateUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId'))
    CreateUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName'))
    CreateUserOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CreateUserOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    CreateUserOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    CreateUserOutput.add_member(:access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccessString'))
    CreateUserOutput.add_member(:user_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIds'))
    CreateUserOutput.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication'))
    CreateUserOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    CreateUserOutput.type = Types::CreateUserOutput
    CustomerNodeEndpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    CustomerNodeEndpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CustomerNodeEndpoint.type = Types::CustomerNodeEndpoint
    CustomerNodeEndpointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerNodeEndpoint)
    DataStorage.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Maximum'))
    DataStorage.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Minimum'))
    DataStorage.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataStorageUnit, location_name: 'Unit', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DataStorage.type = Types::DataStorage
    DataStorageUnit.add_member(:gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GB', traits: {"smithy.api#enumValue" => "GB"}))
    DataTieringStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    DataTieringStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:node_group_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NodeGroupCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_node_groups_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNodeGroupIdList, location_name: 'GlobalNodeGroupsToRemove'))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_node_groups_to_retain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNodeGroupIdList, location_name: 'GlobalNodeGroupsToRetain'))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseNodeGroupsInGlobalReplicationGroupMessage.type = Types::DecreaseNodeGroupsInGlobalReplicationGroupMessage
    DecreaseNodeGroupsInGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    DecreaseNodeGroupsInGlobalReplicationGroupResult.type = Types::DecreaseNodeGroupsInGlobalReplicationGroupResult
    DecreaseReplicaCountMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseReplicaCountMessage.add_member(:new_replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NewReplicaCount'))
    DecreaseReplicaCountMessage.add_member(:replica_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaConfigurationList, location_name: 'ReplicaConfiguration'))
    DecreaseReplicaCountMessage.add_member(:replicas_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveReplicasList, location_name: 'ReplicasToRemove'))
    DecreaseReplicaCountMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DecreaseReplicaCountMessage.type = Types::DecreaseReplicaCountMessage
    DecreaseReplicaCountResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    DecreaseReplicaCountResult.type = Types::DecreaseReplicaCountResult
    DefaultUserAssociatedToUserGroupFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DefaultUserAssociatedToUserGroupFault.type = Types::DefaultUserAssociatedToUserGroupFault
    DefaultUserRequired.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DefaultUserRequired.type = Types::DefaultUserRequired
    DeleteCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheClusterMessage.add_member(:final_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalSnapshotIdentifier'))
    DeleteCacheClusterMessage.type = Types::DeleteCacheClusterMessage
    DeleteCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheCluster, location_name: 'CacheCluster'))
    DeleteCacheClusterResult.type = Types::DeleteCacheClusterResult
    DeleteCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheParameterGroupMessage.type = Types::DeleteCacheParameterGroupMessage
    DeleteCacheSecurityGroupMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheSecurityGroupMessage.type = Types::DeleteCacheSecurityGroupMessage
    DeleteCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCacheSubnetGroupMessage.type = Types::DeleteCacheSubnetGroupMessage
    DeleteGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalReplicationGroupMessage.add_member(:retain_primary_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetainPrimaryReplicationGroup', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalReplicationGroupMessage.type = Types::DeleteGlobalReplicationGroupMessage
    DeleteGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    DeleteGlobalReplicationGroupResult.type = Types::DeleteGlobalReplicationGroupResult
    DeleteReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteReplicationGroupMessage.add_member(:retain_primary_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RetainPrimaryCluster'))
    DeleteReplicationGroupMessage.add_member(:final_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalSnapshotIdentifier'))
    DeleteReplicationGroupMessage.type = Types::DeleteReplicationGroupMessage
    DeleteReplicationGroupResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    DeleteReplicationGroupResult.type = Types::DeleteReplicationGroupResult
    DeleteServerlessCacheRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteServerlessCacheRequest.add_member(:final_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalSnapshotName'))
    DeleteServerlessCacheRequest.type = Types::DeleteServerlessCacheRequest
    DeleteServerlessCacheResponse.add_member(:serverless_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCache, location_name: 'ServerlessCache'))
    DeleteServerlessCacheResponse.type = Types::DeleteServerlessCacheResponse
    DeleteServerlessCacheSnapshotRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteServerlessCacheSnapshotRequest.type = Types::DeleteServerlessCacheSnapshotRequest
    DeleteServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshot, location_name: 'ServerlessCacheSnapshot'))
    DeleteServerlessCacheSnapshotResponse.type = Types::DeleteServerlessCacheSnapshotResponse
    DeleteSnapshotMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotMessage.type = Types::DeleteSnapshotMessage
    DeleteSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    DeleteSnapshotResult.type = Types::DeleteSnapshotResult
    DeleteUserGroupMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUserGroupMessage.type = Types::DeleteUserGroupMessage
    DeleteUserGroupOutput.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    DeleteUserGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DeleteUserGroupOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    DeleteUserGroupOutput.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIds'))
    DeleteUserGroupOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    DeleteUserGroupOutput.add_member(:pending_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupPendingChanges, location_name: 'PendingChanges'))
    DeleteUserGroupOutput.add_member(:replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGReplicationGroupIdList, location_name: 'ReplicationGroups'))
    DeleteUserGroupOutput.add_member(:serverless_caches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGServerlessCacheIdList, location_name: 'ServerlessCaches'))
    DeleteUserGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    DeleteUserGroupOutput.type = Types::DeleteUserGroupOutput
    DeleteUserMessage.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUserMessage.type = Types::DeleteUserMessage
    DeleteUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId'))
    DeleteUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName'))
    DeleteUserOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DeleteUserOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    DeleteUserOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    DeleteUserOutput.add_member(:access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccessString'))
    DeleteUserOutput.add_member(:user_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIds'))
    DeleteUserOutput.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication'))
    DeleteUserOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    DeleteUserOutput.type = Types::DeleteUserOutput
    DescribeCacheClustersMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    DescribeCacheClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCacheClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheClustersMessage.add_member(:show_cache_node_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowCacheNodeInfo'))
    DescribeCacheClustersMessage.add_member(:show_cache_clusters_not_in_replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowCacheClustersNotInReplicationGroups'))
    DescribeCacheClustersMessage.type = Types::DescribeCacheClustersMessage
    DescribeCacheEngineVersionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DescribeCacheEngineVersionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DescribeCacheEngineVersionsMessage.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupFamily'))
    DescribeCacheEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCacheEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheEngineVersionsMessage.add_member(:default_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultOnly'))
    DescribeCacheEngineVersionsMessage.type = Types::DescribeCacheEngineVersionsMessage
    DescribeCacheParameterGroupsMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    DescribeCacheParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCacheParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheParameterGroupsMessage.type = Types::DescribeCacheParameterGroupsMessage
    DescribeCacheParametersMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeCacheParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    DescribeCacheParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCacheParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheParametersMessage.type = Types::DescribeCacheParametersMessage
    DescribeCacheParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    DescribeCacheParametersOutput.add_member(:cache_node_type_specific_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificParametersList, location_name: 'CacheNodeTypeSpecificParameters'))
    DescribeCacheParametersOutput.type = Types::DescribeCacheParametersOutput
    DescribeCacheSecurityGroupsMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName'))
    DescribeCacheSecurityGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCacheSecurityGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheSecurityGroupsMessage.type = Types::DescribeCacheSecurityGroupsMessage
    DescribeCacheSubnetGroupsMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName'))
    DescribeCacheSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCacheSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCacheSubnetGroupsMessage.type = Types::DescribeCacheSubnetGroupsMessage
    DescribeEngineDefaultParametersMessage.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEngineDefaultParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEngineDefaultParametersMessage.type = Types::DescribeEngineDefaultParametersMessage
    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineDefaults, location_name: 'EngineDefaults'))
    DescribeEngineDefaultParametersResult.type = Types::DescribeEngineDefaultParametersResult
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration'))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeGlobalReplicationGroupsMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId'))
    DescribeGlobalReplicationGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeGlobalReplicationGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeGlobalReplicationGroupsMessage.add_member(:show_member_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowMemberInfo'))
    DescribeGlobalReplicationGroupsMessage.type = Types::DescribeGlobalReplicationGroupsMessage
    DescribeGlobalReplicationGroupsResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeGlobalReplicationGroupsResult.add_member(:global_replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupList, location_name: 'GlobalReplicationGroups'))
    DescribeGlobalReplicationGroupsResult.type = Types::DescribeGlobalReplicationGroupsResult
    DescribeReplicationGroupsMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    DescribeReplicationGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReplicationGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReplicationGroupsMessage.type = Types::DescribeReplicationGroupsMessage
    DescribeReservedCacheNodesMessage.add_member(:reserved_cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodeId'))
    DescribeReservedCacheNodesMessage.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodesOfferingId'))
    DescribeReservedCacheNodesMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    DescribeReservedCacheNodesMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Duration'))
    DescribeReservedCacheNodesMessage.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    DescribeReservedCacheNodesMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    DescribeReservedCacheNodesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedCacheNodesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedCacheNodesMessage.type = Types::DescribeReservedCacheNodesMessage
    DescribeReservedCacheNodesOfferingsMessage.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodesOfferingId'))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Duration'))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedCacheNodesOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedCacheNodesOfferingsMessage.type = Types::DescribeReservedCacheNodesOfferingsMessage
    DescribeServerlessCacheSnapshotsRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName'))
    DescribeServerlessCacheSnapshotsRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheSnapshotName'))
    DescribeServerlessCacheSnapshotsRequest.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DescribeServerlessCacheSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeServerlessCacheSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults'))
    DescribeServerlessCacheSnapshotsRequest.type = Types::DescribeServerlessCacheSnapshotsRequest
    DescribeServerlessCacheSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeServerlessCacheSnapshotsResponse.add_member(:serverless_cache_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotList, location_name: 'ServerlessCacheSnapshots'))
    DescribeServerlessCacheSnapshotsResponse.type = Types::DescribeServerlessCacheSnapshotsResponse
    DescribeServerlessCachesRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName'))
    DescribeServerlessCachesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxResults'))
    DescribeServerlessCachesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeServerlessCachesRequest.type = Types::DescribeServerlessCachesRequest
    DescribeServerlessCachesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeServerlessCachesResponse.add_member(:serverless_caches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheList, location_name: 'ServerlessCaches'))
    DescribeServerlessCachesResponse.type = Types::DescribeServerlessCachesResponse
    DescribeServiceUpdatesMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName'))
    DescribeServiceUpdatesMessage.add_member(:service_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatusList, location_name: 'ServiceUpdateStatus'))
    DescribeServiceUpdatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeServiceUpdatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeServiceUpdatesMessage.type = Types::DescribeServiceUpdatesMessage
    DescribeSnapshotsListMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeSnapshotsListMessage.add_member(:snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'Snapshots'))
    DescribeSnapshotsListMessage.type = Types::DescribeSnapshotsListMessage
    DescribeSnapshotsMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    DescribeSnapshotsMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    DescribeSnapshotsMessage.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName'))
    DescribeSnapshotsMessage.add_member(:snapshot_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotSource'))
    DescribeSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeSnapshotsMessage.add_member(:show_node_group_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowNodeGroupConfig'))
    DescribeSnapshotsMessage.type = Types::DescribeSnapshotsMessage
    DescribeUpdateActionsMessage.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName'))
    DescribeUpdateActionsMessage.add_member(:replication_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupIdList, location_name: 'ReplicationGroupIds'))
    DescribeUpdateActionsMessage.add_member(:cache_cluster_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterIdList, location_name: 'CacheClusterIds'))
    DescribeUpdateActionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DescribeUpdateActionsMessage.add_member(:service_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatusList, location_name: 'ServiceUpdateStatus'))
    DescribeUpdateActionsMessage.add_member(:service_update_time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeFilter, location_name: 'ServiceUpdateTimeRange'))
    DescribeUpdateActionsMessage.add_member(:update_action_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionStatusList, location_name: 'UpdateActionStatus'))
    DescribeUpdateActionsMessage.add_member(:show_node_level_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ShowNodeLevelUpdateStatus'))
    DescribeUpdateActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeUpdateActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUpdateActionsMessage.type = Types::DescribeUpdateActionsMessage
    DescribeUserGroupsMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    DescribeUserGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeUserGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUserGroupsMessage.type = Types::DescribeUserGroupsMessage
    DescribeUserGroupsResult.add_member(:user_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupList, location_name: 'UserGroups'))
    DescribeUserGroupsResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUserGroupsResult.type = Types::DescribeUserGroupsResult
    DescribeUsersMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    DescribeUsersMessage.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId'))
    DescribeUsersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeUsersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeUsersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUsersMessage.type = Types::DescribeUsersMessage
    DescribeUsersResult.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'Users'))
    DescribeUsersResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUsersResult.type = Types::DescribeUsersResult
    DestinationDetails.add_member(:cloud_watch_logs_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestinationDetails, location_name: 'CloudWatchLogsDetails'))
    DestinationDetails.add_member(:kinesis_firehose_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestinationDetails, location_name: 'KinesisFirehoseDetails'))
    DestinationDetails.type = Types::DestinationDetails
    DestinationType.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudWatchLogs', traits: {"smithy.api#enumValue" => "cloudwatch-logs"}))
    DestinationType.add_member(:kinesis_firehose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KinesisFirehose', traits: {"smithy.api#enumValue" => "kinesis-firehose"}))
    DisassociateGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateGlobalReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateGlobalReplicationGroupMessage.add_member(:replication_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupRegion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateGlobalReplicationGroupMessage.type = Types::DisassociateGlobalReplicationGroupMessage
    DisassociateGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    DisassociateGlobalReplicationGroupResult.type = Types::DisassociateGlobalReplicationGroupResult
    DuplicateUserNameFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DuplicateUserNameFault.type = Types::DuplicateUserNameFault
    EC2SecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    EC2SecurityGroup.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroup, traits: {"smithy.api#xmlName" => "EC2SecurityGroup"})
    ECPUPerSecond.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Maximum'))
    ECPUPerSecond.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Minimum'))
    ECPUPerSecond.type = Types::ECPUPerSecond
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    Endpoint.type = Types::Endpoint
    EngineDefaults.add_member(:cache_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupFamily'))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    EngineDefaults.add_member(:cache_node_type_specific_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeTypeSpecificParametersList, location_name: 'CacheNodeTypeSpecificParameters'))
    EngineDefaults.type = Types::EngineDefaults
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    Event.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    Event.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date'))
    Event.type = Types::Event
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    EventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EventsMessage.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'Events'))
    EventsMessage.type = Types::EventsMessage
    ExportServerlessCacheSnapshotRequest.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheSnapshotName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportServerlessCacheSnapshotRequest.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExportServerlessCacheSnapshotRequest.type = Types::ExportServerlessCacheSnapshotRequest
    ExportServerlessCacheSnapshotResponse.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshot, location_name: 'ServerlessCacheSnapshot'))
    ExportServerlessCacheSnapshotResponse.type = Types::ExportServerlessCacheSnapshotResponse
    FailoverGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalReplicationGroupMessage.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryRegion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalReplicationGroupMessage.add_member(:primary_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalReplicationGroupMessage.type = Types::FailoverGlobalReplicationGroupMessage
    FailoverGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    FailoverGlobalReplicationGroupResult.type = Types::FailoverGlobalReplicationGroupResult
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    FilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GlobalNodeGroup.add_member(:global_node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalNodeGroupId'))
    GlobalNodeGroup.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Slots'))
    GlobalNodeGroup.type = Types::GlobalNodeGroup
    GlobalNodeGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "GlobalNodeGroupId"})
    GlobalNodeGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNodeGroup, traits: {"smithy.api#xmlName" => "GlobalNodeGroup"})
    GlobalReplicationGroup.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId'))
    GlobalReplicationGroup.add_member(:global_replication_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupDescription'))
    GlobalReplicationGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    GlobalReplicationGroup.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    GlobalReplicationGroup.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    GlobalReplicationGroup.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    GlobalReplicationGroup.add_member(:members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupMemberList, location_name: 'Members'))
    GlobalReplicationGroup.add_member(:cluster_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ClusterEnabled'))
    GlobalReplicationGroup.add_member(:global_node_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalNodeGroupList, location_name: 'GlobalNodeGroups'))
    GlobalReplicationGroup.add_member(:auth_token_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AuthTokenEnabled'))
    GlobalReplicationGroup.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    GlobalReplicationGroup.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AtRestEncryptionEnabled'))
    GlobalReplicationGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    GlobalReplicationGroup.type = Types::GlobalReplicationGroup
    GlobalReplicationGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalReplicationGroupAlreadyExistsFault.type = Types::GlobalReplicationGroupAlreadyExistsFault
    GlobalReplicationGroupInfo.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId'))
    GlobalReplicationGroupInfo.add_member(:global_replication_group_member_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupMemberRole'))
    GlobalReplicationGroupInfo.type = Types::GlobalReplicationGroupInfo
    GlobalReplicationGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, traits: {"smithy.api#xmlName" => "GlobalReplicationGroup"})
    GlobalReplicationGroupMember.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    GlobalReplicationGroupMember.add_member(:replication_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupRegion'))
    GlobalReplicationGroupMember.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Role'))
    GlobalReplicationGroupMember.add_member(:automatic_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticFailoverStatus, location_name: 'AutomaticFailover'))
    GlobalReplicationGroupMember.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    GlobalReplicationGroupMember.type = Types::GlobalReplicationGroupMember
    GlobalReplicationGroupMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupMember, traits: {"smithy.api#xmlName" => "GlobalReplicationGroupMember"})
    GlobalReplicationGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalReplicationGroupNotFoundFault.type = Types::GlobalReplicationGroupNotFoundFault
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:node_group_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NodeGroupCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:regional_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalConfigurationList, location_name: 'RegionalConfigurations'))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseNodeGroupsInGlobalReplicationGroupMessage.type = Types::IncreaseNodeGroupsInGlobalReplicationGroupMessage
    IncreaseNodeGroupsInGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    IncreaseNodeGroupsInGlobalReplicationGroupResult.type = Types::IncreaseNodeGroupsInGlobalReplicationGroupResult
    IncreaseReplicaCountMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseReplicaCountMessage.add_member(:new_replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NewReplicaCount'))
    IncreaseReplicaCountMessage.add_member(:replica_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaConfigurationList, location_name: 'ReplicaConfiguration'))
    IncreaseReplicaCountMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IncreaseReplicaCountMessage.type = Types::IncreaseReplicaCountMessage
    IncreaseReplicaCountResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    IncreaseReplicaCountResult.type = Types::IncreaseReplicaCountResult
    InputAuthenticationType.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSWORD', traits: {"smithy.api#enumValue" => "password"}))
    InputAuthenticationType.add_member(:no_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_PASSWORD', traits: {"smithy.api#enumValue" => "no-password-required"}))
    InputAuthenticationType.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM', traits: {"smithy.api#enumValue" => "iam"}))
    InsufficientCacheClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientCacheClusterCapacityFault.type = Types::InsufficientCacheClusterCapacityFault
    InvalidARNFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidARNFault.type = Types::InvalidARNFault
    InvalidCacheClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidCacheClusterStateFault.type = Types::InvalidCacheClusterStateFault
    InvalidCacheParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidCacheParameterGroupStateFault.type = Types::InvalidCacheParameterGroupStateFault
    InvalidCacheSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidCacheSecurityGroupStateFault.type = Types::InvalidCacheSecurityGroupStateFault
    InvalidCredentialsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidCredentialsException.type = Types::InvalidCredentialsException
    InvalidGlobalReplicationGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidGlobalReplicationGroupStateFault.type = Types::InvalidGlobalReplicationGroupStateFault
    InvalidKMSKeyFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidKMSKeyFault.type = Types::InvalidKMSKeyFault
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: 'message'))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsQueryErrorMessage, location_name: 'message'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidReplicationGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidReplicationGroupStateFault.type = Types::InvalidReplicationGroupStateFault
    InvalidServerlessCacheSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidServerlessCacheSnapshotStateFault.type = Types::InvalidServerlessCacheSnapshotStateFault
    InvalidServerlessCacheStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidServerlessCacheStateFault.type = Types::InvalidServerlessCacheStateFault
    InvalidSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSnapshotStateFault.type = Types::InvalidSnapshotStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidUserGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidUserGroupStateFault.type = Types::InvalidUserGroupStateFault
    InvalidUserStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidUserStateFault.type = Types::InvalidUserStateFault
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    IpDiscovery.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    IpDiscovery.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "ipv6"}))
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    KinesisFirehoseDestinationDetails.add_member(:delivery_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeliveryStream'))
    KinesisFirehoseDestinationDetails.type = Types::KinesisFirehoseDestinationDetails
    ListAllowedNodeTypeModificationsMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    ListAllowedNodeTypeModificationsMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    ListAllowedNodeTypeModificationsMessage.type = Types::ListAllowedNodeTypeModificationsMessage
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    ListTagsForResourceOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogDeliveryConfiguration.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'LogType'))
    LogDeliveryConfiguration.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: 'DestinationType'))
    LogDeliveryConfiguration.add_member(:destination_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationDetails, location_name: 'DestinationDetails'))
    LogDeliveryConfiguration.add_member(:log_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogFormat, location_name: 'LogFormat'))
    LogDeliveryConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationStatus, location_name: 'Status'))
    LogDeliveryConfiguration.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LogDeliveryConfiguration.type = Types::LogDeliveryConfiguration
    LogDeliveryConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, traits: {"smithy.api#xmlName" => "LogDeliveryConfiguration"})
    LogDeliveryConfigurationRequest.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'LogType'))
    LogDeliveryConfigurationRequest.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: 'DestinationType'))
    LogDeliveryConfigurationRequest.add_member(:destination_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationDetails, location_name: 'DestinationDetails'))
    LogDeliveryConfigurationRequest.add_member(:log_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogFormat, location_name: 'LogFormat'))
    LogDeliveryConfigurationRequest.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    LogDeliveryConfigurationRequest.type = Types::LogDeliveryConfigurationRequest
    LogDeliveryConfigurationRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationRequest, traits: {"smithy.api#xmlName" => "LogDeliveryConfigurationRequest"})
    LogDeliveryConfigurationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    LogDeliveryConfigurationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "enabling"}))
    LogDeliveryConfigurationStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "modifying"}))
    LogDeliveryConfigurationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "disabling"}))
    LogDeliveryConfigurationStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    LogFormat.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEXT', traits: {"smithy.api#enumValue" => "text"}))
    LogFormat.add_member(:json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "json"}))
    LogType.add_member(:slow_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLOW_LOG', traits: {"smithy.api#enumValue" => "slow-log"}))
    LogType.add_member(:engine_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENGINE_LOG', traits: {"smithy.api#enumValue" => "engine-log"}))
    ModifyCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheClusterMessage.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumCacheNodes'))
    ModifyCacheClusterMessage.add_member(:cache_node_ids_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: 'CacheNodeIdsToRemove'))
    ModifyCacheClusterMessage.add_member(:az_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AZMode, location_name: 'AZMode'))
    ModifyCacheClusterMessage.add_member(:new_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreferredAvailabilityZoneList, location_name: 'NewAvailabilityZones'))
    ModifyCacheClusterMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: 'CacheSecurityGroupNames'))
    ModifyCacheClusterMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    ModifyCacheClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyCacheClusterMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicArn'))
    ModifyCacheClusterMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    ModifyCacheClusterMessage.add_member(:notification_topic_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicStatus'))
    ModifyCacheClusterMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyCacheClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ModifyCacheClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyCacheClusterMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    ModifyCacheClusterMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    ModifyCacheClusterMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    ModifyCacheClusterMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    ModifyCacheClusterMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthToken'))
    ModifyCacheClusterMessage.add_member(:auth_token_update_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthTokenUpdateStrategyType, location_name: 'AuthTokenUpdateStrategy'))
    ModifyCacheClusterMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationRequestList, location_name: 'LogDeliveryConfigurations'))
    ModifyCacheClusterMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery'))
    ModifyCacheClusterMessage.add_member(:scale_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleConfig, location_name: 'ScaleConfig'))
    ModifyCacheClusterMessage.type = Types::ModifyCacheClusterMessage
    ModifyCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheCluster, location_name: 'CacheCluster'))
    ModifyCacheClusterResult.type = Types::ModifyCacheClusterResult
    ModifyCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheParameterGroupMessage.add_member(:parameter_name_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValueList, location_name: 'ParameterNameValues', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheParameterGroupMessage.type = Types::ModifyCacheParameterGroupMessage
    ModifyCacheParameterGroupOutput.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    ModifyCacheParameterGroupOutput.type = Types::ModifyCacheParameterGroupOutput
    ModifyCacheSubnetGroupMessage.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCacheSubnetGroupMessage.add_member(:cache_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupDescription'))
    ModifyCacheSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds'))
    ModifyCacheSubnetGroupMessage.type = Types::ModifyCacheSubnetGroupMessage
    ModifyCacheSubnetGroupResult.add_member(:cache_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroup, location_name: 'CacheSubnetGroup'))
    ModifyCacheSubnetGroupResult.type = Types::ModifyCacheSubnetGroupResult
    ModifyGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalReplicationGroupMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    ModifyGlobalReplicationGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ModifyGlobalReplicationGroupMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyGlobalReplicationGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    ModifyGlobalReplicationGroupMessage.add_member(:global_replication_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupDescription'))
    ModifyGlobalReplicationGroupMessage.add_member(:automatic_failover_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutomaticFailoverEnabled'))
    ModifyGlobalReplicationGroupMessage.type = Types::ModifyGlobalReplicationGroupMessage
    ModifyGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    ModifyGlobalReplicationGroupResult.type = Types::ModifyGlobalReplicationGroupResult
    ModifyReplicationGroupMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupMessage.add_member(:replication_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupDescription'))
    ModifyReplicationGroupMessage.add_member(:primary_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryClusterId'))
    ModifyReplicationGroupMessage.add_member(:snapshotting_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshottingClusterId'))
    ModifyReplicationGroupMessage.add_member(:automatic_failover_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutomaticFailoverEnabled'))
    ModifyReplicationGroupMessage.add_member(:multi_az_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZEnabled'))
    ModifyReplicationGroupMessage.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeGroupId', traits: {"smithy.api#deprecated" => {}}))
    ModifyReplicationGroupMessage.add_member(:cache_security_group_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNameList, location_name: 'CacheSecurityGroupNames'))
    ModifyReplicationGroupMessage.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    ModifyReplicationGroupMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyReplicationGroupMessage.add_member(:notification_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicArn'))
    ModifyReplicationGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    ModifyReplicationGroupMessage.add_member(:notification_topic_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotificationTopicStatus'))
    ModifyReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyReplicationGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ModifyReplicationGroupMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyReplicationGroupMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    ModifyReplicationGroupMessage.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    ModifyReplicationGroupMessage.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    ModifyReplicationGroupMessage.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    ModifyReplicationGroupMessage.add_member(:auth_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthToken'))
    ModifyReplicationGroupMessage.add_member(:auth_token_update_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthTokenUpdateStrategyType, location_name: 'AuthTokenUpdateStrategy'))
    ModifyReplicationGroupMessage.add_member(:user_group_ids_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIdsToAdd'))
    ModifyReplicationGroupMessage.add_member(:user_group_ids_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIdsToRemove'))
    ModifyReplicationGroupMessage.add_member(:remove_user_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RemoveUserGroups'))
    ModifyReplicationGroupMessage.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationRequestList, location_name: 'LogDeliveryConfigurations'))
    ModifyReplicationGroupMessage.add_member(:ip_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery'))
    ModifyReplicationGroupMessage.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    ModifyReplicationGroupMessage.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitEncryptionMode, location_name: 'TransitEncryptionMode'))
    ModifyReplicationGroupMessage.add_member(:cluster_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'ClusterMode'))
    ModifyReplicationGroupMessage.type = Types::ModifyReplicationGroupMessage
    ModifyReplicationGroupResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    ModifyReplicationGroupResult.type = Types::ModifyReplicationGroupResult
    ModifyReplicationGroupShardConfigurationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_group_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NodeGroupCount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:resharding_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReshardingConfigurationList, location_name: 'ReshardingConfiguration'))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_groups_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupsToRemoveList, location_name: 'NodeGroupsToRemove'))
    ModifyReplicationGroupShardConfigurationMessage.add_member(:node_groups_to_retain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupsToRetainList, location_name: 'NodeGroupsToRetain'))
    ModifyReplicationGroupShardConfigurationMessage.type = Types::ModifyReplicationGroupShardConfigurationMessage
    ModifyReplicationGroupShardConfigurationResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    ModifyReplicationGroupShardConfigurationResult.type = Types::ModifyReplicationGroupShardConfigurationResult
    ModifyServerlessCacheRequest.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyServerlessCacheRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ModifyServerlessCacheRequest.add_member(:cache_usage_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheUsageLimits, location_name: 'CacheUsageLimits'))
    ModifyServerlessCacheRequest.add_member(:remove_user_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'RemoveUserGroup'))
    ModifyServerlessCacheRequest.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    ModifyServerlessCacheRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    ModifyServerlessCacheRequest.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    ModifyServerlessCacheRequest.add_member(:daily_snapshot_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DailySnapshotTime'))
    ModifyServerlessCacheRequest.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ModifyServerlessCacheRequest.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    ModifyServerlessCacheRequest.type = Types::ModifyServerlessCacheRequest
    ModifyServerlessCacheResponse.add_member(:serverless_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCache, location_name: 'ServerlessCache'))
    ModifyServerlessCacheResponse.type = Types::ModifyServerlessCacheResponse
    ModifyUserGroupMessage.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyUserGroupMessage.add_member(:user_ids_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdListInput, location_name: 'UserIdsToAdd'))
    ModifyUserGroupMessage.add_member(:user_ids_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdListInput, location_name: 'UserIdsToRemove'))
    ModifyUserGroupMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    ModifyUserGroupMessage.type = Types::ModifyUserGroupMessage
    ModifyUserGroupOutput.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    ModifyUserGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ModifyUserGroupOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    ModifyUserGroupOutput.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIds'))
    ModifyUserGroupOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    ModifyUserGroupOutput.add_member(:pending_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupPendingChanges, location_name: 'PendingChanges'))
    ModifyUserGroupOutput.add_member(:replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGReplicationGroupIdList, location_name: 'ReplicationGroups'))
    ModifyUserGroupOutput.add_member(:serverless_caches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGServerlessCacheIdList, location_name: 'ServerlessCaches'))
    ModifyUserGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    ModifyUserGroupOutput.type = Types::ModifyUserGroupOutput
    ModifyUserMessage.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyUserMessage.add_member(:access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessString, location_name: 'AccessString'))
    ModifyUserMessage.add_member(:append_access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessString, location_name: 'AppendAccessString'))
    ModifyUserMessage.add_member(:passwords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PasswordListInput, location_name: 'Passwords'))
    ModifyUserMessage.add_member(:no_password_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'NoPasswordRequired'))
    ModifyUserMessage.add_member(:authentication_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMode, location_name: 'AuthenticationMode'))
    ModifyUserMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    ModifyUserMessage.type = Types::ModifyUserMessage
    ModifyUserOutput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId'))
    ModifyUserOutput.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName'))
    ModifyUserOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ModifyUserOutput.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    ModifyUserOutput.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    ModifyUserOutput.add_member(:access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccessString'))
    ModifyUserOutput.add_member(:user_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIds'))
    ModifyUserOutput.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication'))
    ModifyUserOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    ModifyUserOutput.type = Types::ModifyUserOutput
    MultiAZStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    MultiAZStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    NetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "ipv6"}))
    NetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "dual_stack"}))
    NetworkTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType)
    NoOperationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NoOperationFault.type = Types::NoOperationFault
    NodeGroup.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeGroupId'))
    NodeGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    NodeGroup.add_member(:primary_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'PrimaryEndpoint'))
    NodeGroup.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ReaderEndpoint'))
    NodeGroup.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Slots'))
    NodeGroup.add_member(:node_group_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupMemberList, location_name: 'NodeGroupMembers'))
    NodeGroup.type = Types::NodeGroup
    NodeGroupConfiguration.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: 'NodeGroupId'))
    NodeGroupConfiguration.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Slots'))
    NodeGroupConfiguration.add_member(:replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ReplicaCount'))
    NodeGroupConfiguration.add_member(:primary_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryAvailabilityZone'))
    NodeGroupConfiguration.add_member(:replica_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: 'ReplicaAvailabilityZones'))
    NodeGroupConfiguration.add_member(:primary_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryOutpostArn'))
    NodeGroupConfiguration.add_member(:replica_outpost_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutpostArnsList, location_name: 'ReplicaOutpostArns'))
    NodeGroupConfiguration.type = Types::NodeGroupConfiguration
    NodeGroupConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupConfiguration, traits: {"smithy.api#xmlName" => "NodeGroupConfiguration"})
    NodeGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroup, traits: {"smithy.api#xmlName" => "NodeGroup"})
    NodeGroupMember.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    NodeGroupMember.add_member(:cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeId'))
    NodeGroupMember.add_member(:read_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ReadEndpoint'))
    NodeGroupMember.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAvailabilityZone'))
    NodeGroupMember.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredOutpostArn'))
    NodeGroupMember.add_member(:current_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentRole'))
    NodeGroupMember.type = Types::NodeGroupMember
    NodeGroupMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupMember, traits: {"smithy.api#xmlName" => "NodeGroupMember"})
    NodeGroupMemberUpdateStatus.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    NodeGroupMemberUpdateStatus.add_member(:cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeId'))
    NodeGroupMemberUpdateStatus.add_member(:node_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeUpdateStatus, location_name: 'NodeUpdateStatus'))
    NodeGroupMemberUpdateStatus.add_member(:node_deletion_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeDeletionDate'))
    NodeGroupMemberUpdateStatus.add_member(:node_update_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateStartDate'))
    NodeGroupMemberUpdateStatus.add_member(:node_update_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateEndDate'))
    NodeGroupMemberUpdateStatus.add_member(:node_update_initiated_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeUpdateInitiatedBy, location_name: 'NodeUpdateInitiatedBy'))
    NodeGroupMemberUpdateStatus.add_member(:node_update_initiated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateInitiatedDate'))
    NodeGroupMemberUpdateStatus.add_member(:node_update_status_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NodeUpdateStatusModifiedDate'))
    NodeGroupMemberUpdateStatus.type = Types::NodeGroupMemberUpdateStatus
    NodeGroupMemberUpdateStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupMemberUpdateStatus, traits: {"smithy.api#xmlName" => "NodeGroupMemberUpdateStatus"})
    NodeGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeGroupNotFoundFault.type = Types::NodeGroupNotFoundFault
    NodeGroupUpdateStatus.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeGroupId'))
    NodeGroupUpdateStatus.add_member(:node_group_member_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupMemberUpdateStatusList, location_name: 'NodeGroupMemberUpdateStatus'))
    NodeGroupUpdateStatus.type = Types::NodeGroupUpdateStatus
    NodeGroupUpdateStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupUpdateStatus, traits: {"smithy.api#xmlName" => "NodeGroupUpdateStatus"})
    NodeGroupsPerReplicationGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeGroupsPerReplicationGroupQuotaExceededFault.type = Types::NodeGroupsPerReplicationGroupQuotaExceededFault
    NodeGroupsToRemoveList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeGroupId, traits: {"smithy.api#xmlName" => "NodeGroupToRemove"})
    NodeGroupsToRetainList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeGroupId, traits: {"smithy.api#xmlName" => "NodeGroupToRetain"})
    NodeQuotaForClusterExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeQuotaForClusterExceededFault.type = Types::NodeQuotaForClusterExceededFault
    NodeQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NodeQuotaForCustomerExceededFault.type = Types::NodeQuotaForCustomerExceededFault
    NodeSnapshot.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    NodeSnapshot.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeGroupId'))
    NodeSnapshot.add_member(:cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeId'))
    NodeSnapshot.add_member(:node_group_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupConfiguration, location_name: 'NodeGroupConfiguration'))
    NodeSnapshot.add_member(:cache_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSize'))
    NodeSnapshot.add_member(:cache_node_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CacheNodeCreateTime'))
    NodeSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreateTime'))
    NodeSnapshot.type = Types::NodeSnapshot
    NodeSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSnapshot, traits: {"smithy.api#xmlName" => "NodeSnapshot"})
    NodeTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NodeUpdateInitiatedBy.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "system"}))
    NodeUpdateInitiatedBy.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "customer"}))
    NodeUpdateStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLIED', traits: {"smithy.api#enumValue" => "not-applied"}))
    NodeUpdateStatus.add_member(:waiting_to_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING_TO_START', traits: {"smithy.api#enumValue" => "waiting-to-start"}))
    NodeUpdateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "in-progress"}))
    NodeUpdateStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "stopping"}))
    NodeUpdateStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "stopped"}))
    NodeUpdateStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "complete"}))
    NotificationConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TopicArn'))
    NotificationConfiguration.add_member(:topic_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TopicStatus'))
    NotificationConfiguration.type = Types::NotificationConfiguration
    OutpostArnsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "OutpostArn"})
    OutpostMode.add_member(:single_outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SINGLE_OUTPOST', traits: {"smithy.api#enumValue" => "single-outpost"}))
    OutpostMode.add_member(:cross_outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CROSS_OUTPOST', traits: {"smithy.api#enumValue" => "cross-outpost"}))
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue'))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    Parameter.add_member(:change_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeType, location_name: 'ChangeType'))
    Parameter.type = Types::Parameter
    ParameterNameValue.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    ParameterNameValue.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue'))
    ParameterNameValue.type = Types::ParameterNameValue
    ParameterNameValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValue, traits: {"smithy.api#xmlName" => "ParameterNameValue"})
    ParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PasswordListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PendingAutomaticFailoverStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    PendingAutomaticFailoverStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    PendingLogDeliveryConfiguration.add_member(:log_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogType, location_name: 'LogType'))
    PendingLogDeliveryConfiguration.add_member(:destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationType, location_name: 'DestinationType'))
    PendingLogDeliveryConfiguration.add_member(:destination_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationDetails, location_name: 'DestinationDetails'))
    PendingLogDeliveryConfiguration.add_member(:log_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogFormat, location_name: 'LogFormat'))
    PendingLogDeliveryConfiguration.type = Types::PendingLogDeliveryConfiguration
    PendingLogDeliveryConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingLogDeliveryConfiguration)
    PendingModifiedValues.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumCacheNodes'))
    PendingModifiedValues.add_member(:cache_node_ids_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: 'CacheNodeIdsToRemove'))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    PendingModifiedValues.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    PendingModifiedValues.add_member(:auth_token_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthTokenUpdateStatus, location_name: 'AuthTokenStatus'))
    PendingModifiedValues.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingLogDeliveryConfigurationList, location_name: 'LogDeliveryConfigurations'))
    PendingModifiedValues.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    PendingModifiedValues.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitEncryptionMode, location_name: 'TransitEncryptionMode'))
    PendingModifiedValues.add_member(:scale_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScaleConfig, location_name: 'ScaleConfig'))
    PendingModifiedValues.type = Types::PendingModifiedValues
    PreferredAvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "PreferredAvailabilityZone"})
    PreferredOutpostArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "PreferredOutpostArn"})
    ProcessedUpdateAction.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    ProcessedUpdateAction.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    ProcessedUpdateAction.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName'))
    ProcessedUpdateAction.add_member(:update_action_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionStatus, location_name: 'UpdateActionStatus'))
    ProcessedUpdateAction.type = Types::ProcessedUpdateAction
    ProcessedUpdateActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedUpdateAction, traits: {"smithy.api#xmlName" => "ProcessedUpdateAction"})
    PurchaseReservedCacheNodesOfferingMessage.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodesOfferingId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:reserved_cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodeId'))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:cache_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'CacheNodeCount'))
    PurchaseReservedCacheNodesOfferingMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    PurchaseReservedCacheNodesOfferingMessage.type = Types::PurchaseReservedCacheNodesOfferingMessage
    PurchaseReservedCacheNodesOfferingResult.add_member(:reserved_cache_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNode, location_name: 'ReservedCacheNode'))
    PurchaseReservedCacheNodesOfferingResult.type = Types::PurchaseReservedCacheNodesOfferingResult
    RebalanceSlotsInGlobalReplicationGroupMessage.add_member(:global_replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebalanceSlotsInGlobalReplicationGroupMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebalanceSlotsInGlobalReplicationGroupMessage.type = Types::RebalanceSlotsInGlobalReplicationGroupMessage
    RebalanceSlotsInGlobalReplicationGroupResult.add_member(:global_replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroup, location_name: 'GlobalReplicationGroup'))
    RebalanceSlotsInGlobalReplicationGroupResult.type = Types::RebalanceSlotsInGlobalReplicationGroupResult
    RebootCacheClusterMessage.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootCacheClusterMessage.add_member(:cache_node_ids_to_reboot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeIdsList, location_name: 'CacheNodeIdsToReboot', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootCacheClusterMessage.type = Types::RebootCacheClusterMessage
    RebootCacheClusterResult.add_member(:cache_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheCluster, location_name: 'CacheCluster'))
    RebootCacheClusterResult.type = Types::RebootCacheClusterResult
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount'))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency'))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RegionalConfiguration.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegionalConfiguration.add_member(:replication_group_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupRegion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegionalConfiguration.add_member(:resharding_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReshardingConfigurationList, location_name: 'ReshardingConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegionalConfiguration.type = Types::RegionalConfiguration
    RegionalConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalConfiguration, traits: {"smithy.api#xmlName" => "RegionalConfiguration"})
    RemoveReplicasList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    RemoveTagsFromResourceOutput.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    RemoveTagsFromResourceOutput.type = Types::RemoveTagsFromResourceOutput
    ReplicaConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigureShard, traits: {"smithy.api#xmlName" => "ConfigureShard"})
    ReplicationGroup.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    ReplicationGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ReplicationGroup.add_member(:global_replication_group_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupInfo, location_name: 'GlobalReplicationGroupInfo'))
    ReplicationGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ReplicationGroup.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupPendingModifiedValues, location_name: 'PendingModifiedValues'))
    ReplicationGroup.add_member(:member_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdList, location_name: 'MemberClusters'))
    ReplicationGroup.add_member(:node_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupList, location_name: 'NodeGroups'))
    ReplicationGroup.add_member(:snapshotting_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshottingClusterId'))
    ReplicationGroup.add_member(:automatic_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticFailoverStatus, location_name: 'AutomaticFailover'))
    ReplicationGroup.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiAZStatus, location_name: 'MultiAZ'))
    ReplicationGroup.add_member(:configuration_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ConfigurationEndpoint'))
    ReplicationGroup.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    ReplicationGroup.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    ReplicationGroup.add_member(:cluster_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ClusterEnabled'))
    ReplicationGroup.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    ReplicationGroup.add_member(:auth_token_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AuthTokenEnabled'))
    ReplicationGroup.add_member(:auth_token_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthTokenLastModifiedDate'))
    ReplicationGroup.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    ReplicationGroup.add_member(:at_rest_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AtRestEncryptionEnabled'))
    ReplicationGroup.add_member(:member_clusters_outpost_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupOutpostArnList, location_name: 'MemberClustersOutpostArns'))
    ReplicationGroup.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ReplicationGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    ReplicationGroup.add_member(:user_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIds'))
    ReplicationGroup.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDeliveryConfigurationList, location_name: 'LogDeliveryConfigurations'))
    ReplicationGroup.add_member(:replication_group_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ReplicationGroupCreateTime'))
    ReplicationGroup.add_member(:data_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataTieringStatus, location_name: 'DataTiering'))
    ReplicationGroup.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade'))
    ReplicationGroup.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'NetworkType'))
    ReplicationGroup.add_member(:ip_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpDiscovery, location_name: 'IpDiscovery'))
    ReplicationGroup.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitEncryptionMode, location_name: 'TransitEncryptionMode'))
    ReplicationGroup.add_member(:cluster_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'ClusterMode'))
    ReplicationGroup.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ReplicationGroup.type = Types::ReplicationGroup
    ReplicationGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReplicationGroupAlreadyExistsFault.type = Types::ReplicationGroupAlreadyExistsFault
    ReplicationGroupAlreadyUnderMigrationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReplicationGroupAlreadyUnderMigrationFault.type = Types::ReplicationGroupAlreadyUnderMigrationFault
    ReplicationGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ReplicationGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, traits: {"smithy.api#xmlName" => "ReplicationGroup"})
    ReplicationGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReplicationGroupMessage.add_member(:replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupList, location_name: 'ReplicationGroups'))
    ReplicationGroupMessage.type = Types::ReplicationGroupMessage
    ReplicationGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReplicationGroupNotFoundFault.type = Types::ReplicationGroupNotFoundFault
    ReplicationGroupNotUnderMigrationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReplicationGroupNotUnderMigrationFault.type = Types::ReplicationGroupNotUnderMigrationFault
    ReplicationGroupOutpostArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReplicationGroupOutpostArn"})
    ReplicationGroupPendingModifiedValues.add_member(:primary_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryClusterId'))
    ReplicationGroupPendingModifiedValues.add_member(:automatic_failover_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingAutomaticFailoverStatus, location_name: 'AutomaticFailoverStatus'))
    ReplicationGroupPendingModifiedValues.add_member(:resharding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReshardingStatus, location_name: 'Resharding'))
    ReplicationGroupPendingModifiedValues.add_member(:auth_token_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthTokenUpdateStatus, location_name: 'AuthTokenStatus'))
    ReplicationGroupPendingModifiedValues.add_member(:user_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupsUpdateStatus, location_name: 'UserGroups'))
    ReplicationGroupPendingModifiedValues.add_member(:log_delivery_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingLogDeliveryConfigurationList, location_name: 'LogDeliveryConfigurations'))
    ReplicationGroupPendingModifiedValues.add_member(:transit_encryption_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'TransitEncryptionEnabled'))
    ReplicationGroupPendingModifiedValues.add_member(:transit_encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitEncryptionMode, location_name: 'TransitEncryptionMode'))
    ReplicationGroupPendingModifiedValues.add_member(:cluster_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterMode, location_name: 'ClusterMode'))
    ReplicationGroupPendingModifiedValues.type = Types::ReplicationGroupPendingModifiedValues
    ReservedCacheNode.add_member(:reserved_cache_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodeId'))
    ReservedCacheNode.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodesOfferingId'))
    ReservedCacheNode.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    ReservedCacheNode.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    ReservedCacheNode.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    ReservedCacheNode.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedCacheNode.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedCacheNode.add_member(:cache_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'CacheNodeCount'))
    ReservedCacheNode.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    ReservedCacheNode.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    ReservedCacheNode.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    ReservedCacheNode.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedCacheNode.add_member(:reservation_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservationARN'))
    ReservedCacheNode.type = Types::ReservedCacheNode
    ReservedCacheNodeAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedCacheNodeAlreadyExistsFault.type = Types::ReservedCacheNodeAlreadyExistsFault
    ReservedCacheNodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNode, traits: {"smithy.api#xmlName" => "ReservedCacheNode"})
    ReservedCacheNodeMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReservedCacheNodeMessage.add_member(:reserved_cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeList, location_name: 'ReservedCacheNodes'))
    ReservedCacheNodeMessage.type = Types::ReservedCacheNodeMessage
    ReservedCacheNodeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedCacheNodeNotFoundFault.type = Types::ReservedCacheNodeNotFoundFault
    ReservedCacheNodeQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedCacheNodeQuotaExceededFault.type = Types::ReservedCacheNodeQuotaExceededFault
    ReservedCacheNodesOffering.add_member(:reserved_cache_nodes_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedCacheNodesOfferingId'))
    ReservedCacheNodesOffering.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    ReservedCacheNodesOffering.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    ReservedCacheNodesOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedCacheNodesOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedCacheNodesOffering.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductDescription'))
    ReservedCacheNodesOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    ReservedCacheNodesOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedCacheNodesOffering.type = Types::ReservedCacheNodesOffering
    ReservedCacheNodesOfferingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodesOffering, traits: {"smithy.api#xmlName" => "ReservedCacheNodesOffering"})
    ReservedCacheNodesOfferingMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReservedCacheNodesOfferingMessage.add_member(:reserved_cache_nodes_offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingList, location_name: 'ReservedCacheNodesOfferings'))
    ReservedCacheNodesOfferingMessage.type = Types::ReservedCacheNodesOfferingMessage
    ReservedCacheNodesOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedCacheNodesOfferingNotFoundFault.type = Types::ReservedCacheNodesOfferingNotFoundFault
    ResetCacheParameterGroupMessage.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetCacheParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ResetAllParameters'))
    ResetCacheParameterGroupMessage.add_member(:parameter_name_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterNameValueList, location_name: 'ParameterNameValues'))
    ResetCacheParameterGroupMessage.type = Types::ResetCacheParameterGroupMessage
    ResetCacheParameterGroupOutput.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    ResetCacheParameterGroupOutput.type = Types::ResetCacheParameterGroupOutput
    ReshardingConfiguration.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: 'NodeGroupId'))
    ReshardingConfiguration.add_member(:preferred_availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZonesList, location_name: 'PreferredAvailabilityZones'))
    ReshardingConfiguration.type = Types::ReshardingConfiguration
    ReshardingConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReshardingConfiguration, traits: {"smithy.api#xmlName" => "ReshardingConfiguration"})
    ReshardingStatus.add_member(:slot_migration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlotMigration, location_name: 'SlotMigration'))
    ReshardingStatus.type = Types::ReshardingStatus
    RevokeCacheSecurityGroupIngressMessage.add_member(:cache_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeCacheSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeCacheSecurityGroupIngressMessage.type = Types::RevokeCacheSecurityGroupIngressMessage
    RevokeCacheSecurityGroupIngressResult.add_member(:cache_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroup, location_name: 'CacheSecurityGroup'))
    RevokeCacheSecurityGroupIngressResult.type = Types::RevokeCacheSecurityGroupIngressResult
    ScaleConfig.add_member(:scale_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ScalePercentage'))
    ScaleConfig.add_member(:scale_interval_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ScaleIntervalMinutes'))
    ScaleConfig.type = Types::ScaleConfig
    SecurityGroupIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SecurityGroupId"})
    SecurityGroupMembership.add_member(:security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecurityGroupId'))
    SecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    SecurityGroupMembership.type = Types::SecurityGroupMembership
    SecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupMembership)
    ServerlessCache.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName'))
    ServerlessCache.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ServerlessCache.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    ServerlessCache.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ServerlessCache.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ServerlessCache.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    ServerlessCache.add_member(:full_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FullEngineVersion'))
    ServerlessCache.add_member(:cache_usage_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheUsageLimits, location_name: 'CacheUsageLimits'))
    ServerlessCache.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ServerlessCache.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdsList, location_name: 'SecurityGroupIds'))
    ServerlessCache.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    ServerlessCache.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'ReaderEndpoint'))
    ServerlessCache.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    ServerlessCache.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    ServerlessCache.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdsList, location_name: 'SubnetIds'))
    ServerlessCache.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    ServerlessCache.add_member(:daily_snapshot_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DailySnapshotTime'))
    ServerlessCache.type = Types::ServerlessCache
    ServerlessCacheAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServerlessCacheAlreadyExistsFault.type = Types::ServerlessCacheAlreadyExistsFault
    ServerlessCacheConfiguration.add_member(:serverless_cache_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheName'))
    ServerlessCacheConfiguration.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ServerlessCacheConfiguration.add_member(:major_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MajorEngineVersion'))
    ServerlessCacheConfiguration.type = Types::ServerlessCacheConfiguration
    ServerlessCacheList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCache)
    ServerlessCacheNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServerlessCacheNotFoundFault.type = Types::ServerlessCacheNotFoundFault
    ServerlessCacheQuotaForCustomerExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServerlessCacheQuotaForCustomerExceededFault.type = Types::ServerlessCacheQuotaForCustomerExceededFault
    ServerlessCacheSnapshot.add_member(:serverless_cache_snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerlessCacheSnapshotName'))
    ServerlessCacheSnapshot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    ServerlessCacheSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ServerlessCacheSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    ServerlessCacheSnapshot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ServerlessCacheSnapshot.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    ServerlessCacheSnapshot.add_member(:expiry_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ExpiryTime'))
    ServerlessCacheSnapshot.add_member(:bytes_used_for_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BytesUsedForCache'))
    ServerlessCacheSnapshot.add_member(:serverless_cache_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheConfiguration, location_name: 'ServerlessCacheConfiguration'))
    ServerlessCacheSnapshot.type = Types::ServerlessCacheSnapshot
    ServerlessCacheSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServerlessCacheSnapshotAlreadyExistsFault.type = Types::ServerlessCacheSnapshotAlreadyExistsFault
    ServerlessCacheSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshot, traits: {"smithy.api#xmlName" => "ServerlessCacheSnapshot"})
    ServerlessCacheSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServerlessCacheSnapshotNotFoundFault.type = Types::ServerlessCacheSnapshotNotFoundFault
    ServerlessCacheSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServerlessCacheSnapshotQuotaExceededFault.type = Types::ServerlessCacheSnapshotQuotaExceededFault
    ServiceLinkedRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceLinkedRoleNotFoundFault.type = Types::ServiceLinkedRoleNotFoundFault
    ServiceUpdate.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName'))
    ServiceUpdate.add_member(:service_update_release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ServiceUpdateReleaseDate'))
    ServiceUpdate.add_member(:service_update_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ServiceUpdateEndDate'))
    ServiceUpdate.add_member(:service_update_severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateSeverity, location_name: 'ServiceUpdateSeverity'))
    ServiceUpdate.add_member(:service_update_recommended_apply_by_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ServiceUpdateRecommendedApplyByDate'))
    ServiceUpdate.add_member(:service_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatus, location_name: 'ServiceUpdateStatus'))
    ServiceUpdate.add_member(:service_update_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateDescription'))
    ServiceUpdate.add_member(:service_update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateType, location_name: 'ServiceUpdateType'))
    ServiceUpdate.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    ServiceUpdate.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ServiceUpdate.add_member(:auto_update_after_recommended_apply_by_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoUpdateAfterRecommendedApplyByDate'))
    ServiceUpdate.add_member(:estimated_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EstimatedUpdateTime'))
    ServiceUpdate.type = Types::ServiceUpdate
    ServiceUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdate, traits: {"smithy.api#xmlName" => "ServiceUpdate"})
    ServiceUpdateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ServiceUpdateNotFoundFault.type = Types::ServiceUpdateNotFoundFault
    ServiceUpdateSeverity.add_member(:critical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRITICAL', traits: {"smithy.api#enumValue" => "critical"}))
    ServiceUpdateSeverity.add_member(:important, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTANT', traits: {"smithy.api#enumValue" => "important"}))
    ServiceUpdateSeverity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "medium"}))
    ServiceUpdateSeverity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "low"}))
    ServiceUpdateStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    ServiceUpdateStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "cancelled"}))
    ServiceUpdateStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "expired"}))
    ServiceUpdateStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatus)
    ServiceUpdateType.add_member(:security_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_UPDATE', traits: {"smithy.api#enumValue" => "security-update"}))
    ServiceUpdatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ServiceUpdatesMessage.add_member(:service_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateList, location_name: 'ServiceUpdates'))
    ServiceUpdatesMessage.type = Types::ServiceUpdatesMessage
    SlaMet.add_member(:yes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YES', traits: {"smithy.api#enumValue" => "yes"}))
    SlaMet.add_member(:no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO', traits: {"smithy.api#enumValue" => "no"}))
    SlaMet.add_member(:na, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NA', traits: {"smithy.api#enumValue" => "n/a"}))
    SlotMigration.add_member(:progress_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ProgressPercentage'))
    SlotMigration.type = Types::SlotMigration
    Snapshot.add_member(:snapshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotName'))
    Snapshot.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    Snapshot.add_member(:replication_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupDescription'))
    Snapshot.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    Snapshot.add_member(:snapshot_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotStatus'))
    Snapshot.add_member(:snapshot_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotSource'))
    Snapshot.add_member(:cache_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheNodeType'))
    Snapshot.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    Snapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    Snapshot.add_member(:num_cache_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumCacheNodes'))
    Snapshot.add_member(:preferred_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredAvailabilityZone'))
    Snapshot.add_member(:preferred_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredOutpostArn'))
    Snapshot.add_member(:cache_cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CacheClusterCreateTime'))
    Snapshot.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    Snapshot.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TopicArn'))
    Snapshot.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    Snapshot.add_member(:cache_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheParameterGroupName'))
    Snapshot.add_member(:cache_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheSubnetGroupName'))
    Snapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    Snapshot.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade'))
    Snapshot.add_member(:snapshot_retention_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'SnapshotRetentionLimit'))
    Snapshot.add_member(:snapshot_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotWindow'))
    Snapshot.add_member(:num_node_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumNodeGroups'))
    Snapshot.add_member(:automatic_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticFailoverStatus, location_name: 'AutomaticFailover'))
    Snapshot.add_member(:node_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeSnapshotList, location_name: 'NodeSnapshots'))
    Snapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    Snapshot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    Snapshot.add_member(:data_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataTieringStatus, location_name: 'DataTiering'))
    Snapshot.type = Types::Snapshot
    SnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotAlreadyExistsFault.type = Types::SnapshotAlreadyExistsFault
    SnapshotArnsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SnapshotArn"})
    SnapshotFeatureNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotFeatureNotSupportedFault.type = Types::SnapshotFeatureNotSupportedFault
    SnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, traits: {"smithy.api#xmlName" => "Snapshot"})
    SnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotNotFoundFault.type = Types::SnapshotNotFoundFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceType.add_member(:cache_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cache_cluster', traits: {"smithy.api#enumValue" => "cache-cluster"}))
    SourceType.add_member(:cache_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cache_parameter_group', traits: {"smithy.api#enumValue" => "cache-parameter-group"}))
    SourceType.add_member(:cache_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cache_security_group', traits: {"smithy.api#enumValue" => "cache-security-group"}))
    SourceType.add_member(:cache_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cache_subnet_group', traits: {"smithy.api#enumValue" => "cache-subnet-group"}))
    SourceType.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'replication_group', traits: {"smithy.api#enumValue" => "replication-group"}))
    SourceType.add_member(:serverless_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'serverless_cache', traits: {"smithy.api#enumValue" => "serverless-cache"}))
    SourceType.add_member(:serverless_cache_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'serverless_cache_snapshot', traits: {"smithy.api#enumValue" => "serverless-cache-snapshot"}))
    SourceType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'user', traits: {"smithy.api#enumValue" => "user"}))
    SourceType.add_member(:user_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'user_group', traits: {"smithy.api#enumValue" => "user-group"}))
    StartMigrationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMigrationMessage.add_member(:customer_node_endpoint_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerNodeEndpointList, location_name: 'CustomerNodeEndpointList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMigrationMessage.type = Types::StartMigrationMessage
    StartMigrationResponse.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    StartMigrationResponse.type = Types::StartMigrationResponse
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetIdentifier'))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'SubnetAvailabilityZone'))
    Subnet.add_member(:subnet_outpost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetOutpost, location_name: 'SubnetOutpost'))
    Subnet.add_member(:supported_network_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkTypeList, location_name: 'SupportedNetworkTypes'))
    Subnet.type = Types::Subnet
    SubnetIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetId"})
    SubnetInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetInUse.type = Types::SubnetInUse
    SubnetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SubnetNotAllowedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetNotAllowedFault.type = Types::SubnetNotAllowedFault
    SubnetOutpost.add_member(:subnet_outpost_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetOutpostArn'))
    SubnetOutpost.type = Types::SubnetOutpost
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagNotFoundFault.type = Types::TagNotFoundFault
    TagQuotaPerResourceExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagQuotaPerResourceExceeded.type = Types::TagQuotaPerResourceExceeded
    TestFailoverMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestFailoverMessage.add_member(:node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeGroupId, location_name: 'NodeGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestFailoverMessage.type = Types::TestFailoverMessage
    TestFailoverNotAvailableFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TestFailoverNotAvailableFault.type = Types::TestFailoverNotAvailableFault
    TestFailoverResult.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    TestFailoverResult.type = Types::TestFailoverResult
    TestMigrationMessage.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestMigrationMessage.add_member(:customer_node_endpoint_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerNodeEndpointList, location_name: 'CustomerNodeEndpointList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TestMigrationMessage.type = Types::TestMigrationMessage
    TestMigrationResponse.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroup, location_name: 'ReplicationGroup'))
    TestMigrationResponse.type = Types::TestMigrationResponse
    TimeRangeFilter.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    TimeRangeFilter.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    TimeRangeFilter.type = Types::TimeRangeFilter
    TransitEncryptionMode.add_member(:preferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PREFERRED', traits: {"smithy.api#enumValue" => "preferred"}))
    TransitEncryptionMode.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRED', traits: {"smithy.api#enumValue" => "required"}))
    UGReplicationGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UGServerlessCacheIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UnprocessedUpdateAction.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    UnprocessedUpdateAction.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    UnprocessedUpdateAction.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName'))
    UnprocessedUpdateAction.add_member(:error_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorType'))
    UnprocessedUpdateAction.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    UnprocessedUpdateAction.type = Types::UnprocessedUpdateAction
    UnprocessedUpdateActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedUpdateAction, traits: {"smithy.api#xmlName" => "UnprocessedUpdateAction"})
    UpdateAction.add_member(:replication_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationGroupId'))
    UpdateAction.add_member(:cache_cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CacheClusterId'))
    UpdateAction.add_member(:service_update_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceUpdateName'))
    UpdateAction.add_member(:service_update_release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ServiceUpdateReleaseDate'))
    UpdateAction.add_member(:service_update_severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateSeverity, location_name: 'ServiceUpdateSeverity'))
    UpdateAction.add_member(:service_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateStatus, location_name: 'ServiceUpdateStatus'))
    UpdateAction.add_member(:service_update_recommended_apply_by_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ServiceUpdateRecommendedApplyByDate'))
    UpdateAction.add_member(:service_update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateType, location_name: 'ServiceUpdateType'))
    UpdateAction.add_member(:update_action_available_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdateActionAvailableDate'))
    UpdateAction.add_member(:update_action_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionStatus, location_name: 'UpdateActionStatus'))
    UpdateAction.add_member(:nodes_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodesUpdated'))
    UpdateAction.add_member(:update_action_status_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdateActionStatusModifiedDate'))
    UpdateAction.add_member(:sla_met, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlaMet, location_name: 'SlaMet'))
    UpdateAction.add_member(:node_group_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupUpdateStatusList, location_name: 'NodeGroupUpdateStatus'))
    UpdateAction.add_member(:cache_node_update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheNodeUpdateStatusList, location_name: 'CacheNodeUpdateStatus'))
    UpdateAction.add_member(:estimated_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EstimatedUpdateTime'))
    UpdateAction.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    UpdateAction.type = Types::UpdateAction
    UpdateActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAction, traits: {"smithy.api#xmlName" => "UpdateAction"})
    UpdateActionStatus.add_member(:not_applied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLIED', traits: {"smithy.api#enumValue" => "not-applied"}))
    UpdateActionStatus.add_member(:waiting_to_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAITING_TO_START', traits: {"smithy.api#enumValue" => "waiting-to-start"}))
    UpdateActionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "in-progress"}))
    UpdateActionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "stopping"}))
    UpdateActionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "stopped"}))
    UpdateActionStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "complete"}))
    UpdateActionStatus.add_member(:scheduling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULING', traits: {"smithy.api#enumValue" => "scheduling"}))
    UpdateActionStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "scheduled"}))
    UpdateActionStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "not-applicable"}))
    UpdateActionStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionStatus)
    UpdateActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    UpdateActionsMessage.add_member(:update_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionList, location_name: 'UpdateActions'))
    UpdateActionsMessage.type = Types::UpdateActionsMessage
    User.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserId'))
    User.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserName'))
    User.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    User.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    User.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    User.add_member(:access_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccessString'))
    User.add_member(:user_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIds'))
    User.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Authentication, location_name: 'Authentication'))
    User.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    User.type = Types::User
    UserAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserAlreadyExistsFault.type = Types::UserAlreadyExistsFault
    UserGroup.add_member(:user_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserGroupId'))
    UserGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    UserGroup.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineType, location_name: 'Engine'))
    UserGroup.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIds'))
    UserGroup.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    UserGroup.add_member(:pending_changes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupPendingChanges, location_name: 'PendingChanges'))
    UserGroup.add_member(:replication_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGReplicationGroupIdList, location_name: 'ReplicationGroups'))
    UserGroup.add_member(:serverless_caches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UGServerlessCacheIdList, location_name: 'ServerlessCaches'))
    UserGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ARN'))
    UserGroup.type = Types::UserGroup
    UserGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserGroupAlreadyExistsFault.type = Types::UserGroupAlreadyExistsFault
    UserGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupId)
    UserGroupIdListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupId)
    UserGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroup)
    UserGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserGroupNotFoundFault.type = Types::UserGroupNotFoundFault
    UserGroupPendingChanges.add_member(:user_ids_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIdsToRemove'))
    UserGroupPendingChanges.add_member(:user_ids_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdList, location_name: 'UserIdsToAdd'))
    UserGroupPendingChanges.type = Types::UserGroupPendingChanges
    UserGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserGroupQuotaExceededFault.type = Types::UserGroupQuotaExceededFault
    UserGroupsUpdateStatus.add_member(:user_group_ids_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIdsToAdd'))
    UserGroupsUpdateStatus.add_member(:user_group_ids_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupIdList, location_name: 'UserGroupIdsToRemove'))
    UserGroupsUpdateStatus.type = Types::UserGroupsUpdateStatus
    UserIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId)
    UserIdListInput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId)
    UserList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserNotFoundFault.type = Types::UserNotFoundFault
    UserQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UserQuotaExceededFault.type = Types::UserQuotaExceededFault

    AmazonElastiCacheV9 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticache#AmazonElastiCacheV9"
      service.name = "AmazonElastiCacheV9"
      service.version = "2015-02-02"
      service.traits = {"aws.api#service" => {"sdkId" => "ElastiCache", "arnNamespace" => "elasticache", "cloudFormationName" => "ElastiCache", "cloudTrailEventSource" => "elasticache.amazonaws.com", "endpointPrefix" => "elasticache"}, "aws.auth#sigv4" => {"name" => "elasticache"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon ElastiCache", "smithy.api#xmlNamespace" => {"uri" => "http://elasticache.amazonaws.com/doc/2015-02-02/"}}
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_cache_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#AuthorizeCacheSecurityGroupIngress"
        operation.name = "AuthorizeCacheSecurityGroupIngress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeCacheSecurityGroupIngressMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeCacheSecurityGroupIngressResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:batch_apply_update_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#BatchApplyUpdateAction"
        operation.name = "BatchApplyUpdateAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchApplyUpdateActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchApplyUpdateActionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:batch_stop_update_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#BatchStopUpdateAction"
        operation.name = "BatchStopUpdateAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStopUpdateActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStopUpdateActionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:complete_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CompleteMigration"
        operation.name = "CompleteMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotUnderMigrationFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CopyServerlessCacheSnapshot"
        operation.name = "CopyServerlessCacheSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyServerlessCacheSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyServerlessCacheSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:copy_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CopySnapshot"
        operation.name = "CopySnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopySnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopySnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheCluster"
        operation.name = "CreateCacheCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheParameterGroup"
        operation.name = "CreateCacheParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_cache_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheSecurityGroup"
        operation.name = "CreateCacheSecurityGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheSecurityGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheSecurityGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_cache_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateCacheSubnetGroup"
        operation.name = "CreateCacheSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCacheSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotAllowedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateGlobalReplicationGroup"
        operation.name = "CreateGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateReplicationGroup"
        operation.name = "CreateReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_serverless_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateServerlessCache"
        operation.name = "CreateServerlessCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerlessCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerlessCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateServerlessCacheSnapshot"
        operation.name = "CreateServerlessCacheSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerlessCacheSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerlessCacheSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateSnapshot"
        operation.name = "CreateSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotFeatureNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateUser"
        operation.name = "CreateUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_user_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#CreateUserGroup"
        operation.name = "CreateUserGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultUserRequired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:decrease_node_groups_in_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DecreaseNodeGroupsInGlobalReplicationGroup"
        operation.name = "DecreaseNodeGroupsInGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseNodeGroupsInGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseNodeGroupsInGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:decrease_replica_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DecreaseReplicaCount"
        operation.name = "DecreaseReplicaCount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseReplicaCountMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecreaseReplicaCountResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheCluster"
        operation.name = "DeleteCacheCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotFeatureNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheParameterGroup"
        operation.name = "DeleteCacheParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheSecurityGroup"
        operation.name = "DeleteCacheSecurityGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheSecurityGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cache_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteCacheSubnetGroup"
        operation.name = "DeleteCacheSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCacheSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteGlobalReplicationGroup"
        operation.name = "DeleteGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:delete_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteReplicationGroup"
        operation.name = "DeleteReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotFeatureNotSupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_serverless_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteServerlessCache"
        operation.name = "DeleteServerlessCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerlessCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerlessCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteServerlessCacheSnapshot"
        operation.name = "DeleteServerlessCacheSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerlessCacheSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerlessCacheSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteSnapshot"
        operation.name = "DeleteSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultUserAssociatedToUserGroupFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_user_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DeleteUserGroup"
        operation.name = "DeleteUserGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_cache_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheClusters"
        operation.name = "DescribeCacheClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeCacheClusters.new
      end)
      service.add_operation(:describe_cache_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheEngineVersions"
        operation.name = "DescribeCacheEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheEngineVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheEngineVersionMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheEngineVersions.new
      end)
      service.add_operation(:describe_cache_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheParameterGroups"
        operation.name = "DescribeCacheParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheParameterGroups.new
      end)
      service.add_operation(:describe_cache_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheParameters"
        operation.name = "DescribeCacheParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheParameters.new
      end)
      service.add_operation(:describe_cache_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheSecurityGroups"
        operation.name = "DescribeCacheSecurityGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheSecurityGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheSecurityGroups.new
      end)
      service.add_operation(:describe_cache_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeCacheSubnetGroups"
        operation.name = "DescribeCacheSubnetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCacheSubnetGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCacheSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeEngineDefaultParameters"
        operation.name = "DescribeEngineDefaultParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineDefaultParameters.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeEventsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_global_replication_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeGlobalReplicationGroups"
        operation.name = "DescribeGlobalReplicationGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalReplicationGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalReplicationGroupsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalReplicationGroups.new
      end)
      service.add_operation(:describe_replication_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeReplicationGroups"
        operation.name = "DescribeReplicationGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReplicationGroups.new
      end)
      service.add_operation(:describe_reserved_cache_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeReservedCacheNodes"
        operation.name = "DescribeReservedCacheNodes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedCacheNodesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedCacheNodes.new
      end)
      service.add_operation(:describe_reserved_cache_nodes_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeReservedCacheNodesOfferings"
        operation.name = "DescribeReservedCacheNodesOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedCacheNodesOfferingsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedCacheNodesOfferings.new
      end)
      service.add_operation(:describe_serverless_cache_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeServerlessCacheSnapshots"
        operation.name = "DescribeServerlessCacheSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServerlessCacheSnapshotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServerlessCacheSnapshotsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServerlessCacheSnapshots.new
      end)
      service.add_operation(:describe_serverless_caches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeServerlessCaches"
        operation.name = "DescribeServerlessCaches"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServerlessCachesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServerlessCachesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServerlessCaches.new
      end)
      service.add_operation(:describe_service_updates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeServiceUpdates"
        operation.name = "DescribeServiceUpdates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceUpdatesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdatesMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUpdateNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServiceUpdates.new
      end)
      service.add_operation(:describe_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeSnapshots"
        operation.name = "DescribeSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotsListMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshots.new
      end)
      service.add_operation(:describe_update_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeUpdateActions"
        operation.name = "DescribeUpdateActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUpdateActionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUpdateActions.new
      end)
      service.add_operation(:describe_user_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeUserGroups"
        operation.name = "DescribeUserGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserGroupsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUserGroups.new
      end)
      service.add_operation(:describe_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsers.new
      end)
      service.add_operation(:disassociate_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#DisassociateGlobalReplicationGroup"
        operation.name = "DisassociateGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:export_serverless_cache_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ExportServerlessCacheSnapshot"
        operation.name = "ExportServerlessCacheSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerlessCacheSnapshotRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerlessCacheSnapshotResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#FailoverGlobalReplicationGroup"
        operation.name = "FailoverGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:increase_node_groups_in_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#IncreaseNodeGroupsInGlobalReplicationGroup"
        operation.name = "IncreaseNodeGroupsInGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncreaseNodeGroupsInGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncreaseNodeGroupsInGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:increase_replica_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#IncreaseReplicaCount"
        operation.name = "IncreaseReplicaCount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncreaseReplicaCountMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncreaseReplicaCountResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:list_allowed_node_type_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ListAllowedNodeTypeModifications"
        operation.name = "ListAllowedNodeTypeModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedNodeTypeModificationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedNodeTypeModificationsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyCacheCluster"
        operation.name = "ModifyCacheCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCacheClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCacheClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyCacheParameterGroup"
        operation.name = "ModifyCacheParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCacheParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCacheParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:modify_cache_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyCacheSubnetGroup"
        operation.name = "ModifyCacheSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCacheSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCacheSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotAllowedFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyGlobalReplicationGroup"
        operation.name = "ModifyGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyReplicationGroup"
        operation.name = "ModifyReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForClusterExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_replication_group_shard_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyReplicationGroupShardConfiguration"
        operation.name = "ModifyReplicationGroupShardConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationGroupShardConfigurationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyReplicationGroupShardConfigurationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCacheClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupsPerReplicationGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeQuotaForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_serverless_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyServerlessCache"
        operation.name = "ModifyServerlessCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyServerlessCacheRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyServerlessCacheResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyUser"
        operation.name = "ModifyUser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUserMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUserOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_user_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ModifyUserGroup"
        operation.name = "ModifyUserGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUserGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUserGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultUserRequired)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateUserNameFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUserGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_cache_nodes_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#PurchaseReservedCacheNodesOffering"
        operation.name = "PurchaseReservedCacheNodesOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedCacheNodesOfferingMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedCacheNodesOfferingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodesOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagQuotaPerResourceExceeded)
        operation.traits = {}
      end)
      service.add_operation(:rebalance_slots_in_global_replication_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RebalanceSlotsInGlobalReplicationGroup"
        operation.name = "RebalanceSlotsInGlobalReplicationGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebalanceSlotsInGlobalReplicationGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebalanceSlotsInGlobalReplicationGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:reboot_cache_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RebootCacheCluster"
        operation.name = "RebootCacheCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootCacheClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootCacheClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidARNFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidServerlessCacheStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCacheNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessCacheSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_cache_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#ResetCacheParameterGroup"
        operation.name = "ResetCacheParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetCacheParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetCacheParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheParameterGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:revoke_cache_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#RevokeCacheSecurityGroupIngress"
        operation.name = "RevokeCacheSecurityGroupIngress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeCacheSecurityGroupIngressMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeCacheSecurityGroupIngressResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.traits = {}
      end)
      service.add_operation(:start_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#StartMigration"
        operation.name = "StartMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupAlreadyUnderMigrationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:test_failover, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#TestFailover"
        operation.name = "TestFailover"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestFailoverMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestFailoverResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: APICallRateForCustomerExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCacheClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestFailoverNotAvailableFault)
        operation.traits = {}
      end)
      service.add_operation(:test_migration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticache#TestMigration"
        operation.name = "TestMigration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestMigrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestMigrationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplicationGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupAlreadyUnderMigrationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupNotFoundFault)
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
