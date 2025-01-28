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
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDbInstanceInput = Shapes::StructureShape.new(name: 'CreateDbInstanceInput')
    CreateDbInstanceOutput = Shapes::StructureShape.new(name: 'CreateDbInstanceOutput')
    CreateDbParameterGroupInput = Shapes::StructureShape.new(name: 'CreateDbParameterGroupInput')
    CreateDbParameterGroupInputDescriptionString = Shapes::StringShape.new(name: 'CreateDbParameterGroupInputDescriptionString')
    CreateDbParameterGroupOutput = Shapes::StructureShape.new(name: 'CreateDbParameterGroupOutput')
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
    DeleteDbInstanceInput = Shapes::StructureShape.new(name: 'DeleteDbInstanceInput')
    DeleteDbInstanceOutput = Shapes::StructureShape.new(name: 'DeleteDbInstanceOutput')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    Duration = Shapes::StructureShape.new(name: 'Duration')
    DurationType = Shapes::StringShape.new(name: 'DurationType')
    DurationValueLong = Shapes::IntegerShape.new(name: 'DurationValueLong')
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
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDbInstancesInput = Shapes::StructureShape.new(name: 'ListDbInstancesInput')
    ListDbInstancesOutput = Shapes::StructureShape.new(name: 'ListDbInstancesOutput')
    ListDbParameterGroupsInput = Shapes::StructureShape.new(name: 'ListDbParameterGroupsInput')
    ListDbParameterGroupsOutput = Shapes::StructureShape.new(name: 'ListDbParameterGroupsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogDeliveryConfiguration = Shapes::StructureShape.new(name: 'LogDeliveryConfiguration')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkType = Shapes::StringShape.new(name: 'NetworkType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Organization = Shapes::StringShape.new(name: 'Organization')
    Parameters = Shapes::UnionShape.new(name: 'Parameters')
    Password = Shapes::StringShape.new(name: 'Password')
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
    DeleteDbInstanceOutput.struct_class = Types::DeleteDbInstanceOutput

    Duration.add_member(:duration_type, Shapes::ShapeRef.new(shape: DurationType, required: true, location_name: "durationType"))
    Duration.add_member(:value, Shapes::ShapeRef.new(shape: DurationValueLong, required: true, location_name: "value"))
    Duration.struct_class = Types::Duration

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

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

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
    Parameters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Parameters.add_member_subclass(:influx_d_bv_2, Types::Parameters::InfluxDBv2)
    Parameters.add_member_subclass(:unknown, Types::Parameters::Unknown)
    Parameters.struct_class = Types::Parameters

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
