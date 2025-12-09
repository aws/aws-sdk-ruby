# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TimestreamInfluxDB
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AllocatedStorage = Shapes::IntegerShape.new(name: 'AllocatedStorage')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bucket = Shapes::StringShape.new(name: 'Bucket')
    ClusterDeploymentType = Shapes::StringShape.new(name: 'ClusterDeploymentType')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDbClusterInput = Shapes::StructureShape.new(name: 'CreateDbClusterInput')
    CreateDbClusterOutput = Shapes::StructureShape.new(name: 'CreateDbClusterOutput')
    CreateDbInstanceInput = Shapes::StructureShape.new(name: 'CreateDbInstanceInput')
    CreateDbInstanceOutput = Shapes::StructureShape.new(name: 'CreateDbInstanceOutput')
    CreateDbParameterGroupInput = Shapes::StructureShape.new(name: 'CreateDbParameterGroupInput')
    CreateDbParameterGroupInputDescriptionString = Shapes::StringShape.new(name: 'CreateDbParameterGroupInputDescriptionString')
    CreateDbParameterGroupOutput = Shapes::StructureShape.new(name: 'CreateDbParameterGroupOutput')
    DataFusionRuntimeType = Shapes::StringShape.new(name: 'DataFusionRuntimeType')
    DbClusterId = Shapes::StringShape.new(name: 'DbClusterId')
    DbClusterName = Shapes::StringShape.new(name: 'DbClusterName')
    DbClusterSummary = Shapes::StructureShape.new(name: 'DbClusterSummary')
    DbClusterSummaryList = Shapes::ListShape.new(name: 'DbClusterSummaryList')
    DbInstanceForClusterSummary = Shapes::StructureShape.new(name: 'DbInstanceForClusterSummary')
    DbInstanceForClusterSummaryList = Shapes::ListShape.new(name: 'DbInstanceForClusterSummaryList')
    DbInstanceId = Shapes::StringShape.new(name: 'DbInstanceId')
    DbInstanceIdentifier = Shapes::StringShape.new(name: 'DbInstanceIdentifier')
    DbInstanceName = Shapes::StringShape.new(name: 'DbInstanceName')
    DbInstanceSummary = Shapes::StructureShape.new(name: 'DbInstanceSummary')
    DbInstanceSummaryList = Shapes::ListShape.new(name: 'DbInstanceSummaryList')
    DbInstanceType = Shapes::StringShape.new(name: 'DbInstanceType')
    DbParameterGroupId = Shapes::StringShape.new(name: 'DbParameterGroupId')
    DbParameterGroupIdentifier = Shapes::StringShape.new(name: 'DbParameterGroupIdentifier')
    DbParameterGroupName = Shapes::StringShape.new(name: 'DbParameterGroupName')
    DbParameterGroupSummary = Shapes::StructureShape.new(name: 'DbParameterGroupSummary')
    DbParameterGroupSummaryList = Shapes::ListShape.new(name: 'DbParameterGroupSummaryList')
    DbStorageType = Shapes::StringShape.new(name: 'DbStorageType')
    DeleteDbClusterInput = Shapes::StructureShape.new(name: 'DeleteDbClusterInput')
    DeleteDbClusterOutput = Shapes::StructureShape.new(name: 'DeleteDbClusterOutput')
    DeleteDbInstanceInput = Shapes::StructureShape.new(name: 'DeleteDbInstanceInput')
    DeleteDbInstanceOutput = Shapes::StructureShape.new(name: 'DeleteDbInstanceOutput')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    Duration = Shapes::StructureShape.new(name: 'Duration')
    DurationType = Shapes::StringShape.new(name: 'DurationType')
    DurationValueLong = Shapes::IntegerShape.new(name: 'DurationValueLong')
    EngineType = Shapes::StringShape.new(name: 'EngineType')
    FailoverMode = Shapes::StringShape.new(name: 'FailoverMode')
    GetDbClusterInput = Shapes::StructureShape.new(name: 'GetDbClusterInput')
    GetDbClusterOutput = Shapes::StructureShape.new(name: 'GetDbClusterOutput')
    GetDbInstanceInput = Shapes::StructureShape.new(name: 'GetDbInstanceInput')
    GetDbInstanceOutput = Shapes::StructureShape.new(name: 'GetDbInstanceOutput')
    GetDbParameterGroupInput = Shapes::StructureShape.new(name: 'GetDbParameterGroupInput')
    GetDbParameterGroupOutput = Shapes::StructureShape.new(name: 'GetDbParameterGroupOutput')
    InfluxDBv2Parameters = Shapes::StructureShape.new(name: 'InfluxDBv2Parameters')
    InfluxDBv2ParametersInfluxqlMaxSelectBucketsLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersInfluxqlMaxSelectBucketsLong')
    InfluxDBv2ParametersInfluxqlMaxSelectPointLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersInfluxqlMaxSelectPointLong')
    InfluxDBv2ParametersInfluxqlMaxSelectSeriesLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersInfluxqlMaxSelectSeriesLong')
    InfluxDBv2ParametersQueryConcurrencyInteger = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersQueryConcurrencyInteger')
    InfluxDBv2ParametersQueryInitialMemoryBytesLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersQueryInitialMemoryBytesLong')
    InfluxDBv2ParametersQueryMaxMemoryBytesLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersQueryMaxMemoryBytesLong')
    InfluxDBv2ParametersQueryMemoryBytesLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersQueryMemoryBytesLong')
    InfluxDBv2ParametersQueryQueueSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersQueryQueueSizeInteger')
    InfluxDBv2ParametersSessionLengthInteger = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersSessionLengthInteger')
    InfluxDBv2ParametersStorageCacheMaxMemorySizeLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageCacheMaxMemorySizeLong')
    InfluxDBv2ParametersStorageCacheSnapshotMemorySizeLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageCacheSnapshotMemorySizeLong')
    InfluxDBv2ParametersStorageCompactThroughputBurstLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageCompactThroughputBurstLong')
    InfluxDBv2ParametersStorageMaxConcurrentCompactionsInteger = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageMaxConcurrentCompactionsInteger')
    InfluxDBv2ParametersStorageMaxIndexLogFileSizeLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageMaxIndexLogFileSizeLong')
    InfluxDBv2ParametersStorageSeriesFileMaxConcurrentSnapshotCompactionsInteger = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageSeriesFileMaxConcurrentSnapshotCompactionsInteger')
    InfluxDBv2ParametersStorageSeriesIdSetCacheSizeLong = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageSeriesIdSetCacheSizeLong')
    InfluxDBv2ParametersStorageWalMaxConcurrentWritesInteger = Shapes::IntegerShape.new(name: 'InfluxDBv2ParametersStorageWalMaxConcurrentWritesInteger')
    InfluxDBv3CoreParameters = Shapes::StructureShape.new(name: 'InfluxDBv3CoreParameters')
    InfluxDBv3CoreParametersDataFusionConfigString = Shapes::StringShape.new(name: 'InfluxDBv3CoreParametersDataFusionConfigString')
    InfluxDBv3CoreParametersDataFusionMaxParquetFanoutInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionMaxParquetFanoutInteger')
    InfluxDBv3CoreParametersDataFusionNumThreadsInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionNumThreadsInteger')
    InfluxDBv3CoreParametersDataFusionRuntimeEventIntervalInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionRuntimeEventIntervalInteger')
    InfluxDBv3CoreParametersDataFusionRuntimeGlobalQueueIntervalInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionRuntimeGlobalQueueIntervalInteger')
    InfluxDBv3CoreParametersDataFusionRuntimeMaxBlockingThreadsInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionRuntimeMaxBlockingThreadsInteger')
    InfluxDBv3CoreParametersDataFusionRuntimeMaxIoEventsPerTickInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionRuntimeMaxIoEventsPerTickInteger')
    InfluxDBv3CoreParametersDataFusionRuntimeThreadPriorityInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersDataFusionRuntimeThreadPriorityInteger')
    InfluxDBv3CoreParametersLogFilterString = Shapes::StringShape.new(name: 'InfluxDBv3CoreParametersLogFilterString')
    InfluxDBv3CoreParametersMaxHttpRequestSizeLong = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersMaxHttpRequestSizeLong')
    InfluxDBv3CoreParametersParquetMemCachePrunePercentageFloat = Shapes::FloatShape.new(name: 'InfluxDBv3CoreParametersParquetMemCachePrunePercentageFloat')
    InfluxDBv3CoreParametersQueryFileLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersQueryFileLimitInteger')
    InfluxDBv3CoreParametersQueryLogSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersQueryLogSizeInteger')
    InfluxDBv3CoreParametersSnapshottedWalFilesToKeepInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersSnapshottedWalFilesToKeepInteger')
    InfluxDBv3CoreParametersTableIndexCacheConcurrencyLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersTableIndexCacheConcurrencyLimitInteger')
    InfluxDBv3CoreParametersTableIndexCacheMaxEntriesInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersTableIndexCacheMaxEntriesInteger')
    InfluxDBv3CoreParametersWalMaxWriteBufferSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersWalMaxWriteBufferSizeInteger')
    InfluxDBv3CoreParametersWalReplayConcurrencyLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersWalReplayConcurrencyLimitInteger')
    InfluxDBv3CoreParametersWalSnapshotSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3CoreParametersWalSnapshotSizeInteger')
    InfluxDBv3EnterpriseParameters = Shapes::StructureShape.new(name: 'InfluxDBv3EnterpriseParameters')
    InfluxDBv3EnterpriseParametersCompactionMaxNumFilesPerPlanInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersCompactionMaxNumFilesPerPlanInteger')
    InfluxDBv3EnterpriseParametersCompactionMultipliersString = Shapes::StringShape.new(name: 'InfluxDBv3EnterpriseParametersCompactionMultipliersString')
    InfluxDBv3EnterpriseParametersCompactionRowLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersCompactionRowLimitInteger')
    InfluxDBv3EnterpriseParametersDataFusionConfigString = Shapes::StringShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionConfigString')
    InfluxDBv3EnterpriseParametersDataFusionMaxParquetFanoutInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionMaxParquetFanoutInteger')
    InfluxDBv3EnterpriseParametersDataFusionNumThreadsInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionNumThreadsInteger')
    InfluxDBv3EnterpriseParametersDataFusionRuntimeEventIntervalInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionRuntimeEventIntervalInteger')
    InfluxDBv3EnterpriseParametersDataFusionRuntimeGlobalQueueIntervalInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionRuntimeGlobalQueueIntervalInteger')
    InfluxDBv3EnterpriseParametersDataFusionRuntimeMaxBlockingThreadsInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionRuntimeMaxBlockingThreadsInteger')
    InfluxDBv3EnterpriseParametersDataFusionRuntimeMaxIoEventsPerTickInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionRuntimeMaxIoEventsPerTickInteger')
    InfluxDBv3EnterpriseParametersDataFusionRuntimeThreadPriorityInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersDataFusionRuntimeThreadPriorityInteger')
    InfluxDBv3EnterpriseParametersIngestQueryInstancesInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersIngestQueryInstancesInteger')
    InfluxDBv3EnterpriseParametersLogFilterString = Shapes::StringShape.new(name: 'InfluxDBv3EnterpriseParametersLogFilterString')
    InfluxDBv3EnterpriseParametersMaxHttpRequestSizeLong = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersMaxHttpRequestSizeLong')
    InfluxDBv3EnterpriseParametersParquetMemCachePrunePercentageFloat = Shapes::FloatShape.new(name: 'InfluxDBv3EnterpriseParametersParquetMemCachePrunePercentageFloat')
    InfluxDBv3EnterpriseParametersQueryFileLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersQueryFileLimitInteger')
    InfluxDBv3EnterpriseParametersQueryLogSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersQueryLogSizeInteger')
    InfluxDBv3EnterpriseParametersQueryOnlyInstancesInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersQueryOnlyInstancesInteger')
    InfluxDBv3EnterpriseParametersSnapshottedWalFilesToKeepInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersSnapshottedWalFilesToKeepInteger')
    InfluxDBv3EnterpriseParametersTableIndexCacheConcurrencyLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersTableIndexCacheConcurrencyLimitInteger')
    InfluxDBv3EnterpriseParametersTableIndexCacheMaxEntriesInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersTableIndexCacheMaxEntriesInteger')
    InfluxDBv3EnterpriseParametersWalMaxWriteBufferSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersWalMaxWriteBufferSizeInteger')
    InfluxDBv3EnterpriseParametersWalReplayConcurrencyLimitInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersWalReplayConcurrencyLimitInteger')
    InfluxDBv3EnterpriseParametersWalSnapshotSizeInteger = Shapes::IntegerShape.new(name: 'InfluxDBv3EnterpriseParametersWalSnapshotSizeInteger')
    InstanceMode = Shapes::StringShape.new(name: 'InstanceMode')
    InstanceModeList = Shapes::ListShape.new(name: 'InstanceModeList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDbClustersInput = Shapes::StructureShape.new(name: 'ListDbClustersInput')
    ListDbClustersOutput = Shapes::StructureShape.new(name: 'ListDbClustersOutput')
    ListDbInstancesForClusterInput = Shapes::StructureShape.new(name: 'ListDbInstancesForClusterInput')
    ListDbInstancesForClusterOutput = Shapes::StructureShape.new(name: 'ListDbInstancesForClusterOutput')
    ListDbInstancesInput = Shapes::StructureShape.new(name: 'ListDbInstancesInput')
    ListDbInstancesOutput = Shapes::StructureShape.new(name: 'ListDbInstancesOutput')
    ListDbParameterGroupsInput = Shapes::StructureShape.new(name: 'ListDbParameterGroupsInput')
    ListDbParameterGroupsOutput = Shapes::StructureShape.new(name: 'ListDbParameterGroupsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogDeliveryConfiguration = Shapes::StructureShape.new(name: 'LogDeliveryConfiguration')
    LogFormats = Shapes::StringShape.new(name: 'LogFormats')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkType = Shapes::StringShape.new(name: 'NetworkType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Organization = Shapes::StringShape.new(name: 'Organization')
    Parameters = Shapes::UnionShape.new(name: 'Parameters')
    Password = Shapes::StringShape.new(name: 'Password')
    PercentOrAbsoluteLong = Shapes::UnionShape.new(name: 'PercentOrAbsoluteLong')
    PercentOrAbsoluteLongAbsoluteLong = Shapes::IntegerShape.new(name: 'PercentOrAbsoluteLongAbsoluteLong')
    PercentOrAbsoluteLongPercentString = Shapes::StringShape.new(name: 'PercentOrAbsoluteLongPercentString')
    Port = Shapes::IntegerShape.new(name: 'Port')
    RequestTagMap = Shapes::MapShape.new(name: 'RequestTagMap')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseTagMap = Shapes::MapShape.new(name: 'ResponseTagMap')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3ConfigurationBucketNameString = Shapes::StringShape.new(name: 'S3ConfigurationBucketNameString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TracingType = Shapes::StringShape.new(name: 'TracingType')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateDbClusterInput = Shapes::StructureShape.new(name: 'UpdateDbClusterInput')
    UpdateDbClusterOutput = Shapes::StructureShape.new(name: 'UpdateDbClusterOutput')
    UpdateDbInstanceInput = Shapes::StructureShape.new(name: 'UpdateDbInstanceInput')
    UpdateDbInstanceOutput = Shapes::StructureShape.new(name: 'UpdateDbInstanceOutput')
    Username = Shapes::StringShape.new(name: 'Username')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcSecurityGroupId = Shapes::StringShape.new(name: 'VpcSecurityGroupId')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSubnetId = Shapes::StringShape.new(name: 'VpcSubnetId')
    VpcSubnetIdList = Shapes::ListShape.new(name: 'VpcSubnetIdList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateDbClusterInput.add_member(:name, Shapes::ShapeRef.new(shape: DbClusterName, required: true, location_name: "name"))
    CreateDbClusterInput.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "username"))
    CreateDbClusterInput.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "password"))
    CreateDbClusterInput.add_member(:organization, Shapes::ShapeRef.new(shape: Organization, location_name: "organization"))
    CreateDbClusterInput.add_member(:bucket, Shapes::ShapeRef.new(shape: Bucket, location_name: "bucket"))
    CreateDbClusterInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    CreateDbClusterInput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    CreateDbClusterInput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, required: true, location_name: "dbInstanceType"))
    CreateDbClusterInput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    CreateDbClusterInput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    CreateDbClusterInput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    CreateDbClusterInput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateDbClusterInput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, required: true, location_name: "vpcSubnetIds"))
    CreateDbClusterInput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, required: true, location_name: "vpcSecurityGroupIds"))
    CreateDbClusterInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: ClusterDeploymentType, location_name: "deploymentType"))
    CreateDbClusterInput.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    CreateDbClusterInput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    CreateDbClusterInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateDbClusterInput.struct_class = Types::CreateDbClusterInput

    CreateDbClusterOutput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, location_name: "dbClusterId"))
    CreateDbClusterOutput.add_member(:db_cluster_status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "dbClusterStatus"))
    CreateDbClusterOutput.struct_class = Types::CreateDbClusterOutput

    CreateDbInstanceInput.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    CreateDbInstanceInput.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "username"))
    CreateDbInstanceInput.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "password"))
    CreateDbInstanceInput.add_member(:organization, Shapes::ShapeRef.new(shape: Organization, location_name: "organization"))
    CreateDbInstanceInput.add_member(:bucket, Shapes::ShapeRef.new(shape: Bucket, location_name: "bucket"))
    CreateDbInstanceInput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, required: true, location_name: "dbInstanceType"))
    CreateDbInstanceInput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, required: true, location_name: "vpcSubnetIds"))
    CreateDbInstanceInput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, required: true, location_name: "vpcSecurityGroupIds"))
    CreateDbInstanceInput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateDbInstanceInput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    CreateDbInstanceInput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, required: true, location_name: "allocatedStorage"))
    CreateDbInstanceInput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    CreateDbInstanceInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    CreateDbInstanceInput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    CreateDbInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateDbInstanceInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    CreateDbInstanceInput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    CreateDbInstanceInput.struct_class = Types::CreateDbInstanceInput

    CreateDbInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbInstanceId, required: true, location_name: "id"))
    CreateDbInstanceOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    CreateDbInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateDbInstanceOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CreateDbInstanceOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    CreateDbInstanceOutput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    CreateDbInstanceOutput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    CreateDbInstanceOutput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    CreateDbInstanceOutput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    CreateDbInstanceOutput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    CreateDbInstanceOutput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    CreateDbInstanceOutput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, required: true, location_name: "vpcSubnetIds"))
    CreateDbInstanceOutput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateDbInstanceOutput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    CreateDbInstanceOutput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    CreateDbInstanceOutput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    CreateDbInstanceOutput.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "secondaryAvailabilityZone"))
    CreateDbInstanceOutput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    CreateDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "influxAuthParametersSecretArn"))
    CreateDbInstanceOutput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, location_name: "dbClusterId"))
    CreateDbInstanceOutput.add_member(:instance_mode, Shapes::ShapeRef.new(shape: InstanceMode, location_name: "instanceMode"))
    CreateDbInstanceOutput.add_member(:instance_modes, Shapes::ShapeRef.new(shape: InstanceModeList, location_name: "instanceModes"))
    CreateDbInstanceOutput.struct_class = Types::CreateDbInstanceOutput

    CreateDbParameterGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: DbParameterGroupName, required: true, location_name: "name"))
    CreateDbParameterGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateDbParameterGroupInputDescriptionString, location_name: "description"))
    CreateDbParameterGroupInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    CreateDbParameterGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, location_name: "tags"))
    CreateDbParameterGroupInput.struct_class = Types::CreateDbParameterGroupInput

    CreateDbParameterGroupOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbParameterGroupId, required: true, location_name: "id"))
    CreateDbParameterGroupOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbParameterGroupName, required: true, location_name: "name"))
    CreateDbParameterGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    CreateDbParameterGroupOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateDbParameterGroupOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    CreateDbParameterGroupOutput.struct_class = Types::CreateDbParameterGroupOutput

    DbClusterSummary.add_member(:id, Shapes::ShapeRef.new(shape: DbClusterId, required: true, location_name: "id"))
    DbClusterSummary.add_member(:name, Shapes::ShapeRef.new(shape: DbClusterName, required: true, location_name: "name"))
    DbClusterSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DbClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status"))
    DbClusterSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DbClusterSummary.add_member(:reader_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "readerEndpoint"))
    DbClusterSummary.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    DbClusterSummary.add_member(:deployment_type, Shapes::ShapeRef.new(shape: ClusterDeploymentType, location_name: "deploymentType"))
    DbClusterSummary.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    DbClusterSummary.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    DbClusterSummary.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    DbClusterSummary.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    DbClusterSummary.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    DbClusterSummary.struct_class = Types::DbClusterSummary

    DbClusterSummaryList.member = Shapes::ShapeRef.new(shape: DbClusterSummary)

    DbInstanceForClusterSummary.add_member(:id, Shapes::ShapeRef.new(shape: DbInstanceId, required: true, location_name: "id"))
    DbInstanceForClusterSummary.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    DbInstanceForClusterSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DbInstanceForClusterSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DbInstanceForClusterSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DbInstanceForClusterSummary.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    DbInstanceForClusterSummary.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    DbInstanceForClusterSummary.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    DbInstanceForClusterSummary.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    DbInstanceForClusterSummary.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    DbInstanceForClusterSummary.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    DbInstanceForClusterSummary.add_member(:instance_mode, Shapes::ShapeRef.new(shape: InstanceMode, location_name: "instanceMode"))
    DbInstanceForClusterSummary.add_member(:instance_modes, Shapes::ShapeRef.new(shape: InstanceModeList, location_name: "instanceModes"))
    DbInstanceForClusterSummary.struct_class = Types::DbInstanceForClusterSummary

    DbInstanceForClusterSummaryList.member = Shapes::ShapeRef.new(shape: DbInstanceForClusterSummary)

    DbInstanceSummary.add_member(:id, Shapes::ShapeRef.new(shape: DbInstanceId, required: true, location_name: "id"))
    DbInstanceSummary.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    DbInstanceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DbInstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DbInstanceSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DbInstanceSummary.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    DbInstanceSummary.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    DbInstanceSummary.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    DbInstanceSummary.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    DbInstanceSummary.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    DbInstanceSummary.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    DbInstanceSummary.struct_class = Types::DbInstanceSummary

    DbInstanceSummaryList.member = Shapes::ShapeRef.new(shape: DbInstanceSummary)

    DbParameterGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: DbParameterGroupId, required: true, location_name: "id"))
    DbParameterGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: DbParameterGroupName, required: true, location_name: "name"))
    DbParameterGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DbParameterGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DbParameterGroupSummary.struct_class = Types::DbParameterGroupSummary

    DbParameterGroupSummaryList.member = Shapes::ShapeRef.new(shape: DbParameterGroupSummary)

    DeleteDbClusterInput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, required: true, location_name: "dbClusterId"))
    DeleteDbClusterInput.struct_class = Types::DeleteDbClusterInput

    DeleteDbClusterOutput.add_member(:db_cluster_status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "dbClusterStatus"))
    DeleteDbClusterOutput.struct_class = Types::DeleteDbClusterOutput

    DeleteDbInstanceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DbInstanceIdentifier, required: true, location_name: "identifier"))
    DeleteDbInstanceInput.struct_class = Types::DeleteDbInstanceInput

    DeleteDbInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbInstanceId, required: true, location_name: "id"))
    DeleteDbInstanceOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    DeleteDbInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    DeleteDbInstanceOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DeleteDbInstanceOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DeleteDbInstanceOutput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    DeleteDbInstanceOutput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    DeleteDbInstanceOutput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    DeleteDbInstanceOutput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    DeleteDbInstanceOutput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    DeleteDbInstanceOutput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    DeleteDbInstanceOutput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, required: true, location_name: "vpcSubnetIds"))
    DeleteDbInstanceOutput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    DeleteDbInstanceOutput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    DeleteDbInstanceOutput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    DeleteDbInstanceOutput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    DeleteDbInstanceOutput.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "secondaryAvailabilityZone"))
    DeleteDbInstanceOutput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    DeleteDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "influxAuthParametersSecretArn"))
    DeleteDbInstanceOutput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, location_name: "dbClusterId"))
    DeleteDbInstanceOutput.add_member(:instance_mode, Shapes::ShapeRef.new(shape: InstanceMode, location_name: "instanceMode"))
    DeleteDbInstanceOutput.add_member(:instance_modes, Shapes::ShapeRef.new(shape: InstanceModeList, location_name: "instanceModes"))
    DeleteDbInstanceOutput.struct_class = Types::DeleteDbInstanceOutput

    Duration.add_member(:duration_type, Shapes::ShapeRef.new(shape: DurationType, required: true, location_name: "durationType"))
    Duration.add_member(:value, Shapes::ShapeRef.new(shape: DurationValueLong, required: true, location_name: "value"))
    Duration.struct_class = Types::Duration

    GetDbClusterInput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, required: true, location_name: "dbClusterId"))
    GetDbClusterInput.struct_class = Types::GetDbClusterInput

    GetDbClusterOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbClusterId, required: true, location_name: "id"))
    GetDbClusterOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbClusterName, required: true, location_name: "name"))
    GetDbClusterOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GetDbClusterOutput.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status"))
    GetDbClusterOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    GetDbClusterOutput.add_member(:reader_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "readerEndpoint"))
    GetDbClusterOutput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    GetDbClusterOutput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: ClusterDeploymentType, location_name: "deploymentType"))
    GetDbClusterOutput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    GetDbClusterOutput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    GetDbClusterOutput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    GetDbClusterOutput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    GetDbClusterOutput.add_member(:engine_type, Shapes::ShapeRef.new(shape: EngineType, location_name: "engineType"))
    GetDbClusterOutput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    GetDbClusterOutput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    GetDbClusterOutput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    GetDbClusterOutput.add_member(:influx_auth_parameters_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "influxAuthParametersSecretArn"))
    GetDbClusterOutput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, location_name: "vpcSubnetIds"))
    GetDbClusterOutput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    GetDbClusterOutput.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    GetDbClusterOutput.struct_class = Types::GetDbClusterOutput

    GetDbInstanceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DbInstanceIdentifier, required: true, location_name: "identifier"))
    GetDbInstanceInput.struct_class = Types::GetDbInstanceInput

    GetDbInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbInstanceId, required: true, location_name: "id"))
    GetDbInstanceOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    GetDbInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GetDbInstanceOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    GetDbInstanceOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    GetDbInstanceOutput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    GetDbInstanceOutput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    GetDbInstanceOutput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    GetDbInstanceOutput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    GetDbInstanceOutput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    GetDbInstanceOutput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    GetDbInstanceOutput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, required: true, location_name: "vpcSubnetIds"))
    GetDbInstanceOutput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    GetDbInstanceOutput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    GetDbInstanceOutput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    GetDbInstanceOutput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    GetDbInstanceOutput.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "secondaryAvailabilityZone"))
    GetDbInstanceOutput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    GetDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "influxAuthParametersSecretArn"))
    GetDbInstanceOutput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, location_name: "dbClusterId"))
    GetDbInstanceOutput.add_member(:instance_mode, Shapes::ShapeRef.new(shape: InstanceMode, location_name: "instanceMode"))
    GetDbInstanceOutput.add_member(:instance_modes, Shapes::ShapeRef.new(shape: InstanceModeList, location_name: "instanceModes"))
    GetDbInstanceOutput.struct_class = Types::GetDbInstanceOutput

    GetDbParameterGroupInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, required: true, location_name: "identifier"))
    GetDbParameterGroupInput.struct_class = Types::GetDbParameterGroupInput

    GetDbParameterGroupOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbParameterGroupId, required: true, location_name: "id"))
    GetDbParameterGroupOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbParameterGroupName, required: true, location_name: "name"))
    GetDbParameterGroupOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GetDbParameterGroupOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetDbParameterGroupOutput.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "parameters"))
    GetDbParameterGroupOutput.struct_class = Types::GetDbParameterGroupOutput

    InfluxDBv2Parameters.add_member(:flux_log_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "fluxLogEnabled"))
    InfluxDBv2Parameters.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    InfluxDBv2Parameters.add_member(:no_tasks, Shapes::ShapeRef.new(shape: Boolean, location_name: "noTasks"))
    InfluxDBv2Parameters.add_member(:query_concurrency, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersQueryConcurrencyInteger, location_name: "queryConcurrency"))
    InfluxDBv2Parameters.add_member(:query_queue_size, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersQueryQueueSizeInteger, location_name: "queryQueueSize"))
    InfluxDBv2Parameters.add_member(:tracing_type, Shapes::ShapeRef.new(shape: TracingType, location_name: "tracingType"))
    InfluxDBv2Parameters.add_member(:metrics_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "metricsDisabled"))
    InfluxDBv2Parameters.add_member(:http_idle_timeout, Shapes::ShapeRef.new(shape: Duration, location_name: "httpIdleTimeout"))
    InfluxDBv2Parameters.add_member(:http_read_header_timeout, Shapes::ShapeRef.new(shape: Duration, location_name: "httpReadHeaderTimeout"))
    InfluxDBv2Parameters.add_member(:http_read_timeout, Shapes::ShapeRef.new(shape: Duration, location_name: "httpReadTimeout"))
    InfluxDBv2Parameters.add_member(:http_write_timeout, Shapes::ShapeRef.new(shape: Duration, location_name: "httpWriteTimeout"))
    InfluxDBv2Parameters.add_member(:influxql_max_select_buckets, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersInfluxqlMaxSelectBucketsLong, location_name: "influxqlMaxSelectBuckets"))
    InfluxDBv2Parameters.add_member(:influxql_max_select_point, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersInfluxqlMaxSelectPointLong, location_name: "influxqlMaxSelectPoint"))
    InfluxDBv2Parameters.add_member(:influxql_max_select_series, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersInfluxqlMaxSelectSeriesLong, location_name: "influxqlMaxSelectSeries"))
    InfluxDBv2Parameters.add_member(:pprof_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "pprofDisabled"))
    InfluxDBv2Parameters.add_member(:query_initial_memory_bytes, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersQueryInitialMemoryBytesLong, location_name: "queryInitialMemoryBytes"))
    InfluxDBv2Parameters.add_member(:query_max_memory_bytes, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersQueryMaxMemoryBytesLong, location_name: "queryMaxMemoryBytes"))
    InfluxDBv2Parameters.add_member(:query_memory_bytes, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersQueryMemoryBytesLong, location_name: "queryMemoryBytes"))
    InfluxDBv2Parameters.add_member(:session_length, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersSessionLengthInteger, location_name: "sessionLength"))
    InfluxDBv2Parameters.add_member(:session_renew_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "sessionRenewDisabled"))
    InfluxDBv2Parameters.add_member(:storage_cache_max_memory_size, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageCacheMaxMemorySizeLong, location_name: "storageCacheMaxMemorySize"))
    InfluxDBv2Parameters.add_member(:storage_cache_snapshot_memory_size, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageCacheSnapshotMemorySizeLong, location_name: "storageCacheSnapshotMemorySize"))
    InfluxDBv2Parameters.add_member(:storage_cache_snapshot_write_cold_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "storageCacheSnapshotWriteColdDuration"))
    InfluxDBv2Parameters.add_member(:storage_compact_full_write_cold_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "storageCompactFullWriteColdDuration"))
    InfluxDBv2Parameters.add_member(:storage_compact_throughput_burst, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageCompactThroughputBurstLong, location_name: "storageCompactThroughputBurst"))
    InfluxDBv2Parameters.add_member(:storage_max_concurrent_compactions, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageMaxConcurrentCompactionsInteger, location_name: "storageMaxConcurrentCompactions"))
    InfluxDBv2Parameters.add_member(:storage_max_index_log_file_size, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageMaxIndexLogFileSizeLong, location_name: "storageMaxIndexLogFileSize"))
    InfluxDBv2Parameters.add_member(:storage_no_validate_field_size, Shapes::ShapeRef.new(shape: Boolean, location_name: "storageNoValidateFieldSize"))
    InfluxDBv2Parameters.add_member(:storage_retention_check_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "storageRetentionCheckInterval"))
    InfluxDBv2Parameters.add_member(:storage_series_file_max_concurrent_snapshot_compactions, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageSeriesFileMaxConcurrentSnapshotCompactionsInteger, location_name: "storageSeriesFileMaxConcurrentSnapshotCompactions"))
    InfluxDBv2Parameters.add_member(:storage_series_id_set_cache_size, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageSeriesIdSetCacheSizeLong, location_name: "storageSeriesIdSetCacheSize"))
    InfluxDBv2Parameters.add_member(:storage_wal_max_concurrent_writes, Shapes::ShapeRef.new(shape: InfluxDBv2ParametersStorageWalMaxConcurrentWritesInteger, location_name: "storageWalMaxConcurrentWrites"))
    InfluxDBv2Parameters.add_member(:storage_wal_max_write_delay, Shapes::ShapeRef.new(shape: Duration, location_name: "storageWalMaxWriteDelay"))
    InfluxDBv2Parameters.add_member(:ui_disabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "uiDisabled"))
    InfluxDBv2Parameters.struct_class = Types::InfluxDBv2Parameters

    InfluxDBv3CoreParameters.add_member(:query_file_limit, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersQueryFileLimitInteger, location_name: "queryFileLimit"))
    InfluxDBv3CoreParameters.add_member(:query_log_size, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersQueryLogSizeInteger, location_name: "queryLogSize"))
    InfluxDBv3CoreParameters.add_member(:log_filter, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersLogFilterString, location_name: "logFilter"))
    InfluxDBv3CoreParameters.add_member(:log_format, Shapes::ShapeRef.new(shape: LogFormats, location_name: "logFormat"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_num_threads, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionNumThreadsInteger, location_name: "dataFusionNumThreads"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_type, Shapes::ShapeRef.new(shape: DataFusionRuntimeType, location_name: "dataFusionRuntimeType"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_disable_lifo_slot, Shapes::ShapeRef.new(shape: Boolean, location_name: "dataFusionRuntimeDisableLifoSlot"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_event_interval, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionRuntimeEventIntervalInteger, location_name: "dataFusionRuntimeEventInterval"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_global_queue_interval, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionRuntimeGlobalQueueIntervalInteger, location_name: "dataFusionRuntimeGlobalQueueInterval"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_max_blocking_threads, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionRuntimeMaxBlockingThreadsInteger, location_name: "dataFusionRuntimeMaxBlockingThreads"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_max_io_events_per_tick, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionRuntimeMaxIoEventsPerTickInteger, location_name: "dataFusionRuntimeMaxIoEventsPerTick"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_thread_keep_alive, Shapes::ShapeRef.new(shape: Duration, location_name: "dataFusionRuntimeThreadKeepAlive"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_thread_priority, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionRuntimeThreadPriorityInteger, location_name: "dataFusionRuntimeThreadPriority"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_max_parquet_fanout, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionMaxParquetFanoutInteger, location_name: "dataFusionMaxParquetFanout"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_use_cached_parquet_loader, Shapes::ShapeRef.new(shape: Boolean, location_name: "dataFusionUseCachedParquetLoader"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_config, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersDataFusionConfigString, location_name: "dataFusionConfig"))
    InfluxDBv3CoreParameters.add_member(:max_http_request_size, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersMaxHttpRequestSizeLong, location_name: "maxHttpRequestSize"))
    InfluxDBv3CoreParameters.add_member(:force_snapshot_mem_threshold, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLong, location_name: "forceSnapshotMemThreshold"))
    InfluxDBv3CoreParameters.add_member(:wal_snapshot_size, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersWalSnapshotSizeInteger, location_name: "walSnapshotSize"))
    InfluxDBv3CoreParameters.add_member(:wal_max_write_buffer_size, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersWalMaxWriteBufferSizeInteger, location_name: "walMaxWriteBufferSize"))
    InfluxDBv3CoreParameters.add_member(:snapshotted_wal_files_to_keep, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersSnapshottedWalFilesToKeepInteger, location_name: "snapshottedWalFilesToKeep"))
    InfluxDBv3CoreParameters.add_member(:preemptive_cache_age, Shapes::ShapeRef.new(shape: Duration, location_name: "preemptiveCacheAge"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_prune_percentage, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersParquetMemCachePrunePercentageFloat, location_name: "parquetMemCachePrunePercentage"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_prune_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "parquetMemCachePruneInterval"))
    InfluxDBv3CoreParameters.add_member(:disable_parquet_mem_cache, Shapes::ShapeRef.new(shape: Boolean, location_name: "disableParquetMemCache"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_query_path_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "parquetMemCacheQueryPathDuration"))
    InfluxDBv3CoreParameters.add_member(:last_cache_eviction_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "lastCacheEvictionInterval"))
    InfluxDBv3CoreParameters.add_member(:distinct_cache_eviction_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "distinctCacheEvictionInterval"))
    InfluxDBv3CoreParameters.add_member(:gen1_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "gen1Duration"))
    InfluxDBv3CoreParameters.add_member(:exec_mem_pool_bytes, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLong, location_name: "execMemPoolBytes"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_size, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLong, location_name: "parquetMemCacheSize"))
    InfluxDBv3CoreParameters.add_member(:wal_replay_fail_on_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "walReplayFailOnError"))
    InfluxDBv3CoreParameters.add_member(:wal_replay_concurrency_limit, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersWalReplayConcurrencyLimitInteger, location_name: "walReplayConcurrencyLimit"))
    InfluxDBv3CoreParameters.add_member(:table_index_cache_max_entries, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersTableIndexCacheMaxEntriesInteger, location_name: "tableIndexCacheMaxEntries"))
    InfluxDBv3CoreParameters.add_member(:table_index_cache_concurrency_limit, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParametersTableIndexCacheConcurrencyLimitInteger, location_name: "tableIndexCacheConcurrencyLimit"))
    InfluxDBv3CoreParameters.add_member(:gen1_lookback_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "gen1LookbackDuration"))
    InfluxDBv3CoreParameters.add_member(:retention_check_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "retentionCheckInterval"))
    InfluxDBv3CoreParameters.add_member(:delete_grace_period, Shapes::ShapeRef.new(shape: Duration, location_name: "deleteGracePeriod"))
    InfluxDBv3CoreParameters.add_member(:hard_delete_default_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "hardDeleteDefaultDuration"))
    InfluxDBv3CoreParameters.struct_class = Types::InfluxDBv3CoreParameters

    InfluxDBv3EnterpriseParameters.add_member(:query_file_limit, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersQueryFileLimitInteger, location_name: "queryFileLimit"))
    InfluxDBv3EnterpriseParameters.add_member(:query_log_size, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersQueryLogSizeInteger, location_name: "queryLogSize"))
    InfluxDBv3EnterpriseParameters.add_member(:log_filter, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersLogFilterString, location_name: "logFilter"))
    InfluxDBv3EnterpriseParameters.add_member(:log_format, Shapes::ShapeRef.new(shape: LogFormats, location_name: "logFormat"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_num_threads, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionNumThreadsInteger, location_name: "dataFusionNumThreads"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_type, Shapes::ShapeRef.new(shape: DataFusionRuntimeType, location_name: "dataFusionRuntimeType"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_disable_lifo_slot, Shapes::ShapeRef.new(shape: Boolean, location_name: "dataFusionRuntimeDisableLifoSlot"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_event_interval, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionRuntimeEventIntervalInteger, location_name: "dataFusionRuntimeEventInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_global_queue_interval, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionRuntimeGlobalQueueIntervalInteger, location_name: "dataFusionRuntimeGlobalQueueInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_max_blocking_threads, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionRuntimeMaxBlockingThreadsInteger, location_name: "dataFusionRuntimeMaxBlockingThreads"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_max_io_events_per_tick, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionRuntimeMaxIoEventsPerTickInteger, location_name: "dataFusionRuntimeMaxIoEventsPerTick"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_thread_keep_alive, Shapes::ShapeRef.new(shape: Duration, location_name: "dataFusionRuntimeThreadKeepAlive"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_thread_priority, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionRuntimeThreadPriorityInteger, location_name: "dataFusionRuntimeThreadPriority"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_max_parquet_fanout, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionMaxParquetFanoutInteger, location_name: "dataFusionMaxParquetFanout"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_use_cached_parquet_loader, Shapes::ShapeRef.new(shape: Boolean, location_name: "dataFusionUseCachedParquetLoader"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_config, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersDataFusionConfigString, location_name: "dataFusionConfig"))
    InfluxDBv3EnterpriseParameters.add_member(:max_http_request_size, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersMaxHttpRequestSizeLong, location_name: "maxHttpRequestSize"))
    InfluxDBv3EnterpriseParameters.add_member(:force_snapshot_mem_threshold, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLong, location_name: "forceSnapshotMemThreshold"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_snapshot_size, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersWalSnapshotSizeInteger, location_name: "walSnapshotSize"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_max_write_buffer_size, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersWalMaxWriteBufferSizeInteger, location_name: "walMaxWriteBufferSize"))
    InfluxDBv3EnterpriseParameters.add_member(:snapshotted_wal_files_to_keep, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersSnapshottedWalFilesToKeepInteger, location_name: "snapshottedWalFilesToKeep"))
    InfluxDBv3EnterpriseParameters.add_member(:preemptive_cache_age, Shapes::ShapeRef.new(shape: Duration, location_name: "preemptiveCacheAge"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_prune_percentage, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersParquetMemCachePrunePercentageFloat, location_name: "parquetMemCachePrunePercentage"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_prune_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "parquetMemCachePruneInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:disable_parquet_mem_cache, Shapes::ShapeRef.new(shape: Boolean, location_name: "disableParquetMemCache"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_query_path_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "parquetMemCacheQueryPathDuration"))
    InfluxDBv3EnterpriseParameters.add_member(:last_cache_eviction_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "lastCacheEvictionInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:distinct_cache_eviction_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "distinctCacheEvictionInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:gen1_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "gen1Duration"))
    InfluxDBv3EnterpriseParameters.add_member(:exec_mem_pool_bytes, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLong, location_name: "execMemPoolBytes"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_size, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLong, location_name: "parquetMemCacheSize"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_replay_fail_on_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "walReplayFailOnError"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_replay_concurrency_limit, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersWalReplayConcurrencyLimitInteger, location_name: "walReplayConcurrencyLimit"))
    InfluxDBv3EnterpriseParameters.add_member(:table_index_cache_max_entries, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersTableIndexCacheMaxEntriesInteger, location_name: "tableIndexCacheMaxEntries"))
    InfluxDBv3EnterpriseParameters.add_member(:table_index_cache_concurrency_limit, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersTableIndexCacheConcurrencyLimitInteger, location_name: "tableIndexCacheConcurrencyLimit"))
    InfluxDBv3EnterpriseParameters.add_member(:gen1_lookback_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "gen1LookbackDuration"))
    InfluxDBv3EnterpriseParameters.add_member(:retention_check_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "retentionCheckInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:delete_grace_period, Shapes::ShapeRef.new(shape: Duration, location_name: "deleteGracePeriod"))
    InfluxDBv3EnterpriseParameters.add_member(:hard_delete_default_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "hardDeleteDefaultDuration"))
    InfluxDBv3EnterpriseParameters.add_member(:ingest_query_instances, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersIngestQueryInstancesInteger, required: true, location_name: "ingestQueryInstances"))
    InfluxDBv3EnterpriseParameters.add_member(:query_only_instances, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersQueryOnlyInstancesInteger, required: true, location_name: "queryOnlyInstances"))
    InfluxDBv3EnterpriseParameters.add_member(:dedicated_compactor, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "dedicatedCompactor"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_row_limit, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersCompactionRowLimitInteger, location_name: "compactionRowLimit"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_max_num_files_per_plan, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersCompactionMaxNumFilesPerPlanInteger, location_name: "compactionMaxNumFilesPerPlan"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_gen_2_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "compactionGen2Duration"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_multipliers, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParametersCompactionMultipliersString, location_name: "compactionMultipliers"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_cleanup_wait, Shapes::ShapeRef.new(shape: Duration, location_name: "compactionCleanupWait"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_check_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "compactionCheckInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:last_value_cache_disable_from_history, Shapes::ShapeRef.new(shape: Boolean, location_name: "lastValueCacheDisableFromHistory"))
    InfluxDBv3EnterpriseParameters.add_member(:distinct_value_cache_disable_from_history, Shapes::ShapeRef.new(shape: Boolean, location_name: "distinctValueCacheDisableFromHistory"))
    InfluxDBv3EnterpriseParameters.add_member(:replication_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "replicationInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:catalog_sync_interval, Shapes::ShapeRef.new(shape: Duration, location_name: "catalogSyncInterval"))
    InfluxDBv3EnterpriseParameters.struct_class = Types::InfluxDBv3EnterpriseParameters

    InstanceModeList.member = Shapes::ShapeRef.new(shape: InstanceMode)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDbClustersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbClustersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDbClustersInput.struct_class = Types::ListDbClustersInput

    ListDbClustersOutput.add_member(:items, Shapes::ShapeRef.new(shape: DbClusterSummaryList, required: true, location_name: "items"))
    ListDbClustersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbClustersOutput.struct_class = Types::ListDbClustersOutput

    ListDbInstancesForClusterInput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, required: true, location_name: "dbClusterId"))
    ListDbInstancesForClusterInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbInstancesForClusterInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDbInstancesForClusterInput.struct_class = Types::ListDbInstancesForClusterInput

    ListDbInstancesForClusterOutput.add_member(:items, Shapes::ShapeRef.new(shape: DbInstanceForClusterSummaryList, required: true, location_name: "items"))
    ListDbInstancesForClusterOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbInstancesForClusterOutput.struct_class = Types::ListDbInstancesForClusterOutput

    ListDbInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDbInstancesInput.struct_class = Types::ListDbInstancesInput

    ListDbInstancesOutput.add_member(:items, Shapes::ShapeRef.new(shape: DbInstanceSummaryList, required: true, location_name: "items"))
    ListDbInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbInstancesOutput.struct_class = Types::ListDbInstancesOutput

    ListDbParameterGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbParameterGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDbParameterGroupsInput.struct_class = Types::ListDbParameterGroupsInput

    ListDbParameterGroupsOutput.add_member(:items, Shapes::ShapeRef.new(shape: DbParameterGroupSummaryList, required: true, location_name: "items"))
    ListDbParameterGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDbParameterGroupsOutput.struct_class = Types::ListDbParameterGroupsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LogDeliveryConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, required: true, location_name: "s3Configuration"))
    LogDeliveryConfiguration.struct_class = Types::LogDeliveryConfiguration

    Parameters.add_member(:influx_d_bv_2, Shapes::ShapeRef.new(shape: InfluxDBv2Parameters, location_name: "InfluxDBv2"))
    Parameters.add_member(:influx_d_bv_3_core, Shapes::ShapeRef.new(shape: InfluxDBv3CoreParameters, location_name: "InfluxDBv3Core"))
    Parameters.add_member(:influx_d_bv_3_enterprise, Shapes::ShapeRef.new(shape: InfluxDBv3EnterpriseParameters, location_name: "InfluxDBv3Enterprise"))
    Parameters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Parameters.add_member_subclass(:influx_d_bv_2, Types::Parameters::InfluxDBv2)
    Parameters.add_member_subclass(:influx_d_bv_3_core, Types::Parameters::InfluxDBv3Core)
    Parameters.add_member_subclass(:influx_d_bv_3_enterprise, Types::Parameters::InfluxDBv3Enterprise)
    Parameters.add_member_subclass(:unknown, Types::Parameters::Unknown)
    Parameters.struct_class = Types::Parameters

    PercentOrAbsoluteLong.add_member(:percent, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLongPercentString, location_name: "percent"))
    PercentOrAbsoluteLong.add_member(:absolute, Shapes::ShapeRef.new(shape: PercentOrAbsoluteLongAbsoluteLong, location_name: "absolute"))
    PercentOrAbsoluteLong.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PercentOrAbsoluteLong.add_member_subclass(:percent, Types::PercentOrAbsoluteLong::Percent)
    PercentOrAbsoluteLong.add_member_subclass(:absolute, Types::PercentOrAbsoluteLong::Absolute)
    PercentOrAbsoluteLong.add_member_subclass(:unknown, Types::PercentOrAbsoluteLong::Unknown)
    PercentOrAbsoluteLong.struct_class = Types::PercentOrAbsoluteLong

    RequestTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    S3Configuration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3ConfigurationBucketNameString, required: true, location_name: "bucketName"))
    S3Configuration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    S3Configuration.struct_class = Types::S3Configuration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: RequestTagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateDbClusterInput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, required: true, location_name: "dbClusterId"))
    UpdateDbClusterInput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    UpdateDbClusterInput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    UpdateDbClusterInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    UpdateDbClusterInput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    UpdateDbClusterInput.add_member(:failover_mode, Shapes::ShapeRef.new(shape: FailoverMode, location_name: "failoverMode"))
    UpdateDbClusterInput.struct_class = Types::UpdateDbClusterInput

    UpdateDbClusterOutput.add_member(:db_cluster_status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "dbClusterStatus"))
    UpdateDbClusterOutput.struct_class = Types::UpdateDbClusterOutput

    UpdateDbInstanceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: DbInstanceIdentifier, required: true, location_name: "identifier"))
    UpdateDbInstanceInput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    UpdateDbInstanceInput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    UpdateDbInstanceInput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    UpdateDbInstanceInput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    UpdateDbInstanceInput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    UpdateDbInstanceInput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    UpdateDbInstanceInput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    UpdateDbInstanceInput.struct_class = Types::UpdateDbInstanceInput

    UpdateDbInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: DbInstanceId, required: true, location_name: "id"))
    UpdateDbInstanceOutput.add_member(:name, Shapes::ShapeRef.new(shape: DbInstanceName, required: true, location_name: "name"))
    UpdateDbInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    UpdateDbInstanceOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    UpdateDbInstanceOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    UpdateDbInstanceOutput.add_member(:port, Shapes::ShapeRef.new(shape: Port, location_name: "port"))
    UpdateDbInstanceOutput.add_member(:network_type, Shapes::ShapeRef.new(shape: NetworkType, location_name: "networkType"))
    UpdateDbInstanceOutput.add_member(:db_instance_type, Shapes::ShapeRef.new(shape: DbInstanceType, location_name: "dbInstanceType"))
    UpdateDbInstanceOutput.add_member(:db_storage_type, Shapes::ShapeRef.new(shape: DbStorageType, location_name: "dbStorageType"))
    UpdateDbInstanceOutput.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: AllocatedStorage, location_name: "allocatedStorage"))
    UpdateDbInstanceOutput.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    UpdateDbInstanceOutput.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: VpcSubnetIdList, required: true, location_name: "vpcSubnetIds"))
    UpdateDbInstanceOutput.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    UpdateDbInstanceOutput.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    UpdateDbInstanceOutput.add_member(:db_parameter_group_identifier, Shapes::ShapeRef.new(shape: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    UpdateDbInstanceOutput.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    UpdateDbInstanceOutput.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "secondaryAvailabilityZone"))
    UpdateDbInstanceOutput.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    UpdateDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "influxAuthParametersSecretArn"))
    UpdateDbInstanceOutput.add_member(:db_cluster_id, Shapes::ShapeRef.new(shape: DbClusterId, location_name: "dbClusterId"))
    UpdateDbInstanceOutput.add_member(:instance_mode, Shapes::ShapeRef.new(shape: InstanceMode, location_name: "instanceMode"))
    UpdateDbInstanceOutput.add_member(:instance_modes, Shapes::ShapeRef.new(shape: InstanceModeList, location_name: "instanceModes"))
    UpdateDbInstanceOutput.struct_class = Types::UpdateDbInstanceOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupId)

    VpcSubnetIdList.member = Shapes::ShapeRef.new(shape: VpcSubnetId)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-01-27"

      api.metadata = {
        "apiVersion" => "2023-01-27",
        "endpointPrefix" => "timestream-influxdb",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Timestream InfluxDB",
        "serviceFullName" => "Timestream InfluxDB",
        "serviceId" => "Timestream InfluxDB",
        "signatureVersion" => "v4",
        "signingName" => "timestream-influxdb",
        "targetPrefix" => "AmazonTimestreamInfluxDB",
        "uid" => "timestream-influxdb-2023-01-27",
      }

      api.add_operation(:create_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDbCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDbClusterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDbClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDbInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDbInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDbParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDbParameterGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDbParameterGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDbCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDbClusterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDbClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDbInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDbInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDbCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDbClusterInput)
        o.output = Shapes::ShapeRef.new(shape: GetDbClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDbInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetDbInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDbParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDbParameterGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetDbParameterGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_db_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbClustersInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbClustersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_db_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_db_instances_for_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbInstancesForCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbInstancesForClusterInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbInstancesForClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_db_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDbParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDbParameterGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDbParameterGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDbCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDbClusterInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDbClusterOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDbInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDbInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
