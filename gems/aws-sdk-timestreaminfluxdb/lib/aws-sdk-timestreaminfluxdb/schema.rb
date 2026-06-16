# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamInfluxDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AllocatedStorage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#AllocatedStorage", name: "AllocatedStorage", traits: {"smithy.api#range" => {"min" => 20, "max" => 15360}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:timestream\\-influxdb:[a-z0-9\\-]+:[0-9]{12}:(db\\-instance|db\\-cluster|db\\-parameter\\-group)/[a-zA-Z0-9]{3,64}$"})
    Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Bucket", name: "Bucket", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[^_\"][^\"]*$"})
    ClusterDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ClusterDeploymentType", name: "ClusterDeploymentType")
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ClusterStatus", name: "ClusterStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbClusterInput", name: "CreateDbClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource"}]})
    CreateDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbClusterOutput", name: "CreateDbClusterOutput")
    CreateDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbInstanceInput", name: "CreateDbInstanceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource"}]})
    CreateDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbInstanceOutput", name: "CreateDbInstanceOutput")
    CreateDbParameterGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbParameterGroupInput", name: "CreateDbParameterGroupInput")
    CreateDbParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbParameterGroupOutput", name: "CreateDbParameterGroupOutput")
    DbClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterId", name: "DbClusterId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterName", name: "DbClusterName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-zA-z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    DbClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterSummary", name: "DbClusterSummary")
    DbClusterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterSummaryList", name: "DbClusterSummaryList")
    DbInstanceForClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceForClusterSummary", name: "DbInstanceForClusterSummary")
    DbInstanceForClusterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceForClusterSummaryList", name: "DbInstanceForClusterSummaryList")
    DbInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceId", name: "DbInstanceId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbInstanceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceIdentifier", name: "DbInstanceIdentifier", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbInstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceName", name: "DbInstanceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    DbInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceSummary", name: "DbInstanceSummary")
    DbInstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceSummaryList", name: "DbInstanceSummaryList")
    DbInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceType", name: "DbInstanceType")
    DbParameterGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbParameterGroupId", name: "DbParameterGroupId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbParameterGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbParameterGroupIdentifier", name: "DbParameterGroupIdentifier", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbParameterGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbParameterGroupName", name: "DbParameterGroupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    DbParameterGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbParameterGroupSummary", name: "DbParameterGroupSummary")
    DbParameterGroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbParameterGroupSummaryList", name: "DbParameterGroupSummaryList")
    DbStorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DbStorageType", name: "DbStorageType")
    DeleteDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbClusterInput", name: "DeleteDbClusterInput")
    DeleteDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbClusterOutput", name: "DeleteDbClusterOutput")
    DeleteDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbInstanceInput", name: "DeleteDbInstanceInput")
    DeleteDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbInstanceOutput", name: "DeleteDbInstanceOutput")
    DeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DeploymentType", name: "DeploymentType")
    Duration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#Duration", name: "Duration")
    DurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DurationType", name: "DurationType")
    FailoverMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#FailoverMode", name: "FailoverMode")
    GetDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbClusterInput", name: "GetDbClusterInput")
    GetDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbClusterOutput", name: "GetDbClusterOutput")
    GetDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbInstanceInput", name: "GetDbInstanceInput")
    GetDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbInstanceOutput", name: "GetDbInstanceOutput")
    GetDbParameterGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbParameterGroupInput", name: "GetDbParameterGroupInput")
    GetDbParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbParameterGroupOutput", name: "GetDbParameterGroupOutput")
    InfluxDBv2Parameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#InfluxDBv2Parameters", name: "InfluxDBv2Parameters")
    InstanceMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#InstanceMode", name: "InstanceMode")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListDbClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbClustersInput", name: "ListDbClustersInput")
    ListDbClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbClustersOutput", name: "ListDbClustersOutput")
    ListDbInstancesForClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesForClusterInput", name: "ListDbInstancesForClusterInput")
    ListDbInstancesForClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesForClusterOutput", name: "ListDbInstancesForClusterOutput")
    ListDbInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesInput", name: "ListDbInstancesInput")
    ListDbInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesOutput", name: "ListDbInstancesOutput")
    ListDbParameterGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbParameterGroupsInput", name: "ListDbParameterGroupsInput")
    ListDbParameterGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbParameterGroupsOutput", name: "ListDbParameterGroupsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbInstanceResource", "ids" => {"dbInstanceIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource", "ids" => {"dbParameterGroupIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbClusterResource", "ids" => {"dbClusterId" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#LogDeliveryConfiguration", name: "LogDeliveryConfiguration")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#LogLevel", name: "LogLevel")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#NetworkType", name: "NetworkType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1}})
    Organization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Organization", name: "Organization", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Parameters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.timestreaminfluxdb#Parameters", name: "Parameters")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 1024, "max" => 65535}})
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.timestreaminfluxdb#RequestTagMap", name: "RequestTagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.timestreaminfluxdb#ResponseTagMap", name: "ResponseTagMap", traits: {"smithy.api#length" => {"max" => 200}})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#S3Configuration", name: "S3Configuration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#Status", name: "Status")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#TagResourceRequest", name: "TagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbInstanceResource", "ids" => {"dbInstanceIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource", "ids" => {"dbParameterGroupIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbClusterResource", "ids" => {"dbClusterId" => "resourceArn"}}]})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TracingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#TracingType", name: "TracingType")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#UntagResourceRequest", name: "UntagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbInstanceResource", "ids" => {"dbInstanceIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource", "ids" => {"dbParameterGroupIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbClusterResource", "ids" => {"dbClusterId" => "resourceArn"}}]})
    UpdateDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#UpdateDbClusterInput", name: "UpdateDbClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource"}]})
    UpdateDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#UpdateDbClusterOutput", name: "UpdateDbClusterOutput")
    UpdateDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#UpdateDbInstanceInput", name: "UpdateDbInstanceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource"}]})
    UpdateDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#UpdateDbInstanceOutput", name: "UpdateDbInstanceOutput")
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ValidationExceptionReason", name: "ValidationExceptionReason")
    VpcSecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#VpcSecurityGroupId", name: "VpcSecurityGroupId", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^sg-[a-z0-9]+$"})
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#VpcSecurityGroupIdList", name: "VpcSecurityGroupIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    VpcSubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#VpcSubnetId", name: "VpcSubnetId", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^subnet-[a-z0-9]+$"})
    VpcSubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#VpcSubnetIdList", name: "VpcSubnetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ClusterDeploymentType.add_member(:multi_node_read_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTI_NODE_READ_REPLICAS", traits: {"smithy.api#enumValue" => "MULTI_NODE_READ_REPLICAS"}))
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ClusterStatus.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateDbClusterInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "username"))
    CreateDbClusterInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, location_name: "organization"))
    CreateDbClusterInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, location_name: "bucket"))
    CreateDbClusterInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port", traits: {"smithy.api#default" => 8086}))
    CreateDbClusterInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    CreateDbClusterInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    CreateDbClusterInput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    CreateDbClusterInput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    CreateDbClusterInput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDeploymentType, location_name: "deploymentType", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, location_name: "failoverMode"))
    CreateDbClusterInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    CreateDbClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateDbClusterInput.type = Types::CreateDbClusterInput
    CreateDbClusterOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId"))
    CreateDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, location_name: "dbClusterStatus"))
    CreateDbClusterOutput.type = Types::CreateDbClusterOutput
    CreateDbInstanceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, location_name: "username"))
    CreateDbInstanceInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, location_name: "password", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, location_name: "organization"))
    CreateDbInstanceInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, location_name: "bucket"))
    CreateDbInstanceInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    CreateDbInstanceInput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    CreateDbInstanceInput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    CreateDbInstanceInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    CreateDbInstanceInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    CreateDbInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateDbInstanceInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port", traits: {"smithy.api#default" => 8086}))
    CreateDbInstanceInput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    CreateDbInstanceInput.type = Types::CreateDbInstanceInput
    CreateDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    CreateDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    CreateDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    CreateDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    CreateDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    CreateDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    CreateDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    CreateDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    CreateDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    CreateDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    CreateDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    CreateDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone"))
    CreateDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secondaryAvailabilityZone"))
    CreateDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    CreateDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "influxAuthParametersSecretArn"))
    CreateDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId"))
    CreateDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, location_name: "instanceMode"))
    CreateDbInstanceOutput.type = Types::CreateDbInstanceOutput
    CreateDbParameterGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}}))
    CreateDbParameterGroupInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, location_name: "parameters"))
    CreateDbParameterGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags"))
    CreateDbParameterGroupInput.type = Types::CreateDbParameterGroupInput
    CreateDbParameterGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    CreateDbParameterGroupOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, location_name: "parameters"))
    CreateDbParameterGroupOutput.type = Types::CreateDbParameterGroupOutput
    DbClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "id", traits: {"smithy.api#required" => {}}))
    DbClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DbClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DbClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, location_name: "status"))
    DbClusterSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    DbClusterSummary.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "readerEndpoint"))
    DbClusterSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    DbClusterSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDeploymentType, location_name: "deploymentType"))
    DbClusterSummary.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    DbClusterSummary.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    DbClusterSummary.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    DbClusterSummary.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    DbClusterSummary.type = Types::DbClusterSummary
    DbClusterSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterSummary)
    DbInstanceForClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    DbInstanceForClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DbInstanceForClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DbInstanceForClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DbInstanceForClusterSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    DbInstanceForClusterSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    DbInstanceForClusterSummary.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    DbInstanceForClusterSummary.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    DbInstanceForClusterSummary.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    DbInstanceForClusterSummary.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    DbInstanceForClusterSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    DbInstanceForClusterSummary.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, location_name: "instanceMode"))
    DbInstanceForClusterSummary.type = Types::DbInstanceForClusterSummary
    DbInstanceForClusterSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceForClusterSummary)
    DbInstanceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    DbInstanceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DbInstanceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DbInstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DbInstanceSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    DbInstanceSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    DbInstanceSummary.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    DbInstanceSummary.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    DbInstanceSummary.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    DbInstanceSummary.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    DbInstanceSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    DbInstanceSummary.type = Types::DbInstanceSummary
    DbInstanceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceSummary)
    DbInstanceType.add_member(:db_influx_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_MEDIUM", traits: {"smithy.api#enumValue" => "db.influx.medium"}))
    DbInstanceType.add_member(:db_influx_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_LARGE", traits: {"smithy.api#enumValue" => "db.influx.large"}))
    DbInstanceType.add_member(:db_influx_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_XLARGE", traits: {"smithy.api#enumValue" => "db.influx.xlarge"}))
    DbInstanceType.add_member(:db_influx_2_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_2XLARGE", traits: {"smithy.api#enumValue" => "db.influx.2xlarge"}))
    DbInstanceType.add_member(:db_influx_4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_4XLARGE", traits: {"smithy.api#enumValue" => "db.influx.4xlarge"}))
    DbInstanceType.add_member(:db_influx_8_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_8XLARGE", traits: {"smithy.api#enumValue" => "db.influx.8xlarge"}))
    DbInstanceType.add_member(:db_influx_12_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_12XLARGE", traits: {"smithy.api#enumValue" => "db.influx.12xlarge"}))
    DbInstanceType.add_member(:db_influx_16_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_16XLARGE", traits: {"smithy.api#enumValue" => "db.influx.16xlarge"}))
    DbInstanceType.add_member(:db_influx_24_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DB_INFLUX_24XLARGE", traits: {"smithy.api#enumValue" => "db.influx.24xlarge"}))
    DbParameterGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, location_name: "id", traits: {"smithy.api#required" => {}}))
    DbParameterGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DbParameterGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DbParameterGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    DbParameterGroupSummary.type = Types::DbParameterGroupSummary
    DbParameterGroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupSummary)
    DbStorageType.add_member(:influx_io_included_t1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFLUX_IO_INCLUDED_T1", traits: {"smithy.api#enumValue" => "InfluxIOIncludedT1"}))
    DbStorageType.add_member(:influx_io_included_t2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFLUX_IO_INCLUDED_T2", traits: {"smithy.api#enumValue" => "InfluxIOIncludedT2"}))
    DbStorageType.add_member(:influx_io_included_t3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFLUX_IO_INCLUDED_T3", traits: {"smithy.api#enumValue" => "InfluxIOIncludedT3"}))
    DeleteDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    DeleteDbClusterInput.type = Types::DeleteDbClusterInput
    DeleteDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, location_name: "dbClusterStatus"))
    DeleteDbClusterOutput.type = Types::DeleteDbClusterOutput
    DeleteDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    DeleteDbInstanceInput.type = Types::DeleteDbInstanceInput
    DeleteDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    DeleteDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    DeleteDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    DeleteDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    DeleteDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    DeleteDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    DeleteDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    DeleteDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    DeleteDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    DeleteDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    DeleteDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    DeleteDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone"))
    DeleteDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secondaryAvailabilityZone"))
    DeleteDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    DeleteDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "influxAuthParametersSecretArn"))
    DeleteDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId"))
    DeleteDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, location_name: "instanceMode"))
    DeleteDbInstanceOutput.type = Types::DeleteDbInstanceOutput
    DeploymentType.add_member(:single_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SINGLE_AZ", traits: {"smithy.api#enumValue" => "SINGLE_AZ"}))
    DeploymentType.add_member(:with_multiaz_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WITH_MULTIAZ_STANDBY", traits: {"smithy.api#enumValue" => "WITH_MULTIAZ_STANDBY"}))
    Duration.add_member(:duration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationType, location_name: "durationType", traits: {"smithy.api#required" => {}}))
    Duration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "value", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    Duration.type = Types::Duration
    DurationType.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "hours"}))
    DurationType.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MINUTES", traits: {"smithy.api#enumValue" => "minutes"}))
    DurationType.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECONDS", traits: {"smithy.api#enumValue" => "seconds"}))
    DurationType.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "milliseconds"}))
    FailoverMode.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    FailoverMode.add_member(:no_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_FAILOVER", traits: {"smithy.api#enumValue" => "NO_FAILOVER"}))
    GetDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    GetDbClusterInput.type = Types::GetDbClusterInput
    GetDbClusterOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetDbClusterOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetDbClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, location_name: "status"))
    GetDbClusterOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    GetDbClusterOutput.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "readerEndpoint"))
    GetDbClusterOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    GetDbClusterOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDeploymentType, location_name: "deploymentType"))
    GetDbClusterOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    GetDbClusterOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    GetDbClusterOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    GetDbClusterOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    GetDbClusterOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    GetDbClusterOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    GetDbClusterOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    GetDbClusterOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "influxAuthParametersSecretArn"))
    GetDbClusterOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds"))
    GetDbClusterOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    GetDbClusterOutput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, location_name: "failoverMode"))
    GetDbClusterOutput.type = Types::GetDbClusterOutput
    GetDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    GetDbInstanceInput.type = Types::GetDbInstanceInput
    GetDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    GetDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    GetDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    GetDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    GetDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    GetDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    GetDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    GetDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    GetDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    GetDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    GetDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    GetDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone"))
    GetDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secondaryAvailabilityZone"))
    GetDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    GetDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "influxAuthParametersSecretArn"))
    GetDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId"))
    GetDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, location_name: "instanceMode"))
    GetDbInstanceOutput.type = Types::GetDbInstanceOutput
    GetDbParameterGroupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbParameterGroupIdentifier"}))
    GetDbParameterGroupInput.type = Types::GetDbParameterGroupInput
    GetDbParameterGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetDbParameterGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetDbParameterGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbParameterGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    GetDbParameterGroupOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, location_name: "parameters"))
    GetDbParameterGroupOutput.type = Types::GetDbParameterGroupOutput
    InfluxDBv2Parameters.add_member(:flux_log_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "fluxLogEnabled"))
    InfluxDBv2Parameters.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, location_name: "logLevel"))
    InfluxDBv2Parameters.add_member(:no_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "noTasks"))
    InfluxDBv2Parameters.add_member(:query_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "queryConcurrency", traits: {"smithy.api#range" => {"min" => 0, "max" => 256}}))
    InfluxDBv2Parameters.add_member(:query_queue_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "queryQueueSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 256}}))
    InfluxDBv2Parameters.add_member(:tracing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingType, location_name: "tracingType"))
    InfluxDBv2Parameters.add_member(:metrics_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "metricsDisabled"))
    InfluxDBv2Parameters.add_member(:http_idle_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "httpIdleTimeout"))
    InfluxDBv2Parameters.add_member(:http_read_header_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "httpReadHeaderTimeout"))
    InfluxDBv2Parameters.add_member(:http_read_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "httpReadTimeout"))
    InfluxDBv2Parameters.add_member(:http_write_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "httpWriteTimeout"))
    InfluxDBv2Parameters.add_member(:influxql_max_select_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "influxqlMaxSelectBuckets", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:influxql_max_select_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "influxqlMaxSelectPoint", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:influxql_max_select_series, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "influxqlMaxSelectSeries", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:pprof_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "pprofDisabled"))
    InfluxDBv2Parameters.add_member(:query_initial_memory_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "queryInitialMemoryBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:query_max_memory_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "queryMaxMemoryBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:query_memory_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "queryMemoryBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:session_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "sessionLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 2880}}))
    InfluxDBv2Parameters.add_member(:session_renew_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "sessionRenewDisabled"))
    InfluxDBv2Parameters.add_member(:storage_cache_max_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storageCacheMaxMemorySize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_cache_snapshot_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storageCacheSnapshotMemorySize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_cache_snapshot_write_cold_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "storageCacheSnapshotWriteColdDuration"))
    InfluxDBv2Parameters.add_member(:storage_compact_full_write_cold_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "storageCompactFullWriteColdDuration"))
    InfluxDBv2Parameters.add_member(:storage_compact_throughput_burst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storageCompactThroughputBurst", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_max_concurrent_compactions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageMaxConcurrentCompactions", traits: {"smithy.api#range" => {"min" => 0, "max" => 64}}))
    InfluxDBv2Parameters.add_member(:storage_max_index_log_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storageMaxIndexLogFileSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_no_validate_field_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "storageNoValidateFieldSize"))
    InfluxDBv2Parameters.add_member(:storage_retention_check_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "storageRetentionCheckInterval"))
    InfluxDBv2Parameters.add_member(:storage_series_file_max_concurrent_snapshot_compactions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageSeriesFileMaxConcurrentSnapshotCompactions", traits: {"smithy.api#range" => {"min" => 0, "max" => 64}}))
    InfluxDBv2Parameters.add_member(:storage_series_id_set_cache_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storageSeriesIdSetCacheSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_wal_max_concurrent_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageWalMaxConcurrentWrites", traits: {"smithy.api#range" => {"min" => 0, "max" => 256}}))
    InfluxDBv2Parameters.add_member(:storage_wal_max_write_delay, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "storageWalMaxWriteDelay"))
    InfluxDBv2Parameters.add_member(:ui_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "uiDisabled"))
    InfluxDBv2Parameters.type = Types::InfluxDBv2Parameters
    InstanceMode.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    InstanceMode.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    InstanceMode.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDbClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDbClustersInput.type = Types::ListDbClustersInput
    ListDbClustersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterSummaryList, location_name: "items", traits: {"smithy.api#required" => {}}))
    ListDbClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbClustersOutput.type = Types::ListDbClustersOutput
    ListDbInstancesForClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    ListDbInstancesForClusterInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbInstancesForClusterInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDbInstancesForClusterInput.type = Types::ListDbInstancesForClusterInput
    ListDbInstancesForClusterOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceForClusterSummaryList, location_name: "items", traits: {"smithy.api#required" => {}}))
    ListDbInstancesForClusterOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbInstancesForClusterOutput.type = Types::ListDbInstancesForClusterOutput
    ListDbInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDbInstancesInput.type = Types::ListDbInstancesInput
    ListDbInstancesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceSummaryList, location_name: "items", traits: {"smithy.api#required" => {}}))
    ListDbInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbInstancesOutput.type = Types::ListDbInstancesOutput
    ListDbParameterGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbParameterGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults"))
    ListDbParameterGroupsInput.type = Types::ListDbParameterGroupsInput
    ListDbParameterGroupsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupSummaryList, location_name: "items", traits: {"smithy.api#required" => {}}))
    ListDbParameterGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDbParameterGroupsOutput.type = Types::ListDbParameterGroupsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogDeliveryConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, location_name: "s3Configuration", traits: {"smithy.api#required" => {}}))
    LogDeliveryConfiguration.type = Types::LogDeliveryConfiguration
    LogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEBUG", traits: {"smithy.api#enumValue" => "debug"}))
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "info"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUAL", traits: {"smithy.api#enumValue" => "DUAL"}))
    Parameters.add_member(:influx_d_bv2, Types::Parameters::InfluxDBv2, ::Smithy::Schema::Shapes::MemberShape.new(target: InfluxDBv2Parameters, location_name: "InfluxDBv2"))
    Parameters.add_member(:unknown, Types::Parameters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Parameters.type = Types::Parameters
    RequestTagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    RequestTagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseTagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    ResponseTagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    S3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "bucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+$", "smithy.api#required" => {}}))
    S3Configuration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enabled", traits: {"smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    Status.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODIFYING", traits: {"smithy.api#enumValue" => "MODIFYING"}))
    Status.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Status.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:updating_deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING_DEPLOYMENT_TYPE", traits: {"smithy.api#enumValue" => "UPDATING_DEPLOYMENT_TYPE"}))
    Status.add_member(:updating_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "UPDATING_INSTANCE_TYPE"}))
    Status.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TracingType.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOG", traits: {"smithy.api#enumValue" => "log"}))
    TracingType.add_member(:jaeger, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JAEGER", traits: {"smithy.api#enumValue" => "jaeger"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, location_name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    UpdateDbClusterInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    UpdateDbClusterInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    UpdateDbClusterInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    UpdateDbClusterInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    UpdateDbClusterInput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, location_name: "failoverMode"))
    UpdateDbClusterInput.type = Types::UpdateDbClusterInput
    UpdateDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, location_name: "dbClusterStatus"))
    UpdateDbClusterOutput.type = Types::UpdateDbClusterOutput
    UpdateDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, location_name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    UpdateDbInstanceInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    UpdateDbInstanceInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    UpdateDbInstanceInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    UpdateDbInstanceInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    UpdateDbInstanceInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    UpdateDbInstanceInput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    UpdateDbInstanceInput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    UpdateDbInstanceInput.type = Types::UpdateDbInstanceInput
    UpdateDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    UpdateDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpoint"))
    UpdateDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, location_name: "port"))
    UpdateDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, location_name: "networkType"))
    UpdateDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, location_name: "dbInstanceType"))
    UpdateDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, location_name: "dbStorageType"))
    UpdateDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, location_name: "allocatedStorage"))
    UpdateDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, location_name: "deploymentType"))
    UpdateDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, location_name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "publiclyAccessible"))
    UpdateDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    UpdateDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, location_name: "dbParameterGroupIdentifier"))
    UpdateDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "availabilityZone"))
    UpdateDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "secondaryAvailabilityZone"))
    UpdateDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, location_name: "logDeliveryConfiguration"))
    UpdateDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "influxAuthParametersSecretArn"))
    UpdateDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, location_name: "dbClusterId"))
    UpdateDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, location_name: "instanceMode"))
    UpdateDbInstanceOutput.type = Types::UpdateDbInstanceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupId)
    VpcSubnetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetId)

    AmazonTimestreamInfluxDB = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.timestreaminfluxdb#AmazonTimestreamInfluxDB"
      service.name = "AmazonTimestreamInfluxDB"
      service.version = "2023-01-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Timestream InfluxDB", "arnNamespace" => "timestream-influxdb"}, "aws.auth#sigv4" => {"name" => "timestream-influxdb"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "Timestream InfluxDB"}
      service.add_operation(:create_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#CreateDbCluster"
        operation.name = "CreateDbCluster"
        operation.input = CreateDbClusterInput
        operation.output = CreateDbClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbCluster"]}
      end)
      service.add_operation(:create_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#CreateDbInstance"
        operation.name = "CreateDbInstance"
        operation.input = CreateDbInstanceInput
        operation.output = CreateDbInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new Timestream InfluxDB instance"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbInstance"]}
      end)
      service.add_operation(:create_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#CreateDbParameterGroup"
        operation.name = "CreateDbParameterGroup"
        operation.input = CreateDbParameterGroupInput
        operation.output = CreateDbParameterGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new Timestream InfluxDB parameter group"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbParameterGroup"]}
      end)
      service.add_operation(:delete_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#DeleteDbCluster"
        operation.name = "DeleteDbCluster"
        operation.input = DeleteDbClusterInput
        operation.output = DeleteDbClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbCluster"]}
      end)
      service.add_operation(:delete_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#DeleteDbInstance"
        operation.name = "DeleteDbInstance"
        operation.input = DeleteDbInstanceInput
        operation.output = DeleteDbInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a Timestream InfluxDB instance"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbInstance"]}
      end)
      service.add_operation(:get_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#GetDbCluster"
        operation.name = "GetDbCluster"
        operation.input = GetDbClusterInput
        operation.output = GetDbClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a Timestream InfluxDB Cluster"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbCluster"]}
      end)
      service.add_operation(:get_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#GetDbInstance"
        operation.name = "GetDbInstance"
        operation.input = GetDbInstanceInput
        operation.output = GetDbInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a Timestream InfluxDB instance"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbInstance"]}
      end)
      service.add_operation(:get_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#GetDbParameterGroup"
        operation.name = "GetDbParameterGroup"
        operation.input = GetDbParameterGroupInput
        operation.output = GetDbParameterGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a Timestream InfluxDB parameter group"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbParameterGroup"]}
      end)
      service.add_operation(:list_db_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#ListDbClusters"
        operation.name = "ListDbClusters"
        operation.input = ListDbClustersInput
        operation.output = ListDbClustersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list information about all Timestream InfluxDB clusters in the account"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbCluster"]}
        operation[:paginator] = Paginators::ListDbClusters.new
      end)
      service.add_operation(:list_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#ListDbInstances"
        operation.name = "ListDbInstances"
        operation.input = ListDbInstancesInput
        operation.output = ListDbInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list information about all Timestream InfluxDB instances in the account"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbInstance"]}
        operation[:paginator] = Paginators::ListDbInstances.new
      end)
      service.add_operation(:list_db_instances_for_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#ListDbInstancesForCluster"
        operation.name = "ListDbInstancesForCluster"
        operation.input = ListDbInstancesForClusterInput
        operation.output = ListDbInstancesForClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list information about all Timestream InfluxDB Instances belonging to a cluster"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDbInstancesForCluster.new
      end)
      service.add_operation(:list_db_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#ListDbParameterGroups"
        operation.name = "ListDbParameterGroups"
        operation.input = ListDbParameterGroupsInput
        operation.output = ListDbParameterGroupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list information about all Timestream InfluxDB parameter groups"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbParameterGroup"]}
        operation[:paginator] = Paginators::ListDbParameterGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a Timestream InfluxDB resource"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a Timestream InfluxDB resource"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag a Timestream InfluxDB resource"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#UpdateDbCluster"
        operation.name = "UpdateDbCluster"
        operation.input = UpdateDbClusterInput
        operation.output = UpdateDbClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbCluster"]}
      end)
      service.add_operation(:update_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#UpdateDbInstance"
        operation.name = "UpdateDbInstance"
        operation.input = UpdateDbInstanceInput
        operation.output = UpdateDbInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a Timestream InfluxDB instance"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbInstance"]}
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
