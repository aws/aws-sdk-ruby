# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamInfluxDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AllocatedStorage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#AllocatedStorage", name: "AllocatedStorage", traits: {"smithy.api#range" => {"min" => 20, "max" => 15360}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:timestream\\-influxdb:[a-z0-9\\-]+:[0-9]{12}:(db\\-instance|db\\-cluster|db\\-parameter\\-group|db\\-backup)/[a-zA-Z0-9]{3,64}$"})
    AutomatedBackupRetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#AutomatedBackupRetentionDays", name: "AutomatedBackupRetentionDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 365}})
    AutomatedDbBackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#AutomatedDbBackupType", name: "AutomatedDbBackupType")
    AwsCronSchedule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#AwsCronSchedule", name: "AwsCronSchedule", traits: {"smithy.api#length" => {"min" => 9, "max" => 256}, "smithy.api#pattern" => "^cron\\(\\S+ \\S+ \\S+ \\S+ \\S+ \\S+\\)$"})
    Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Bucket", name: "Bucket", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[^_\"][^\"]*$"})
    ClusterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ClusterConfiguration", name: "ClusterConfiguration")
    ClusterDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ClusterDeploymentType", name: "ClusterDeploymentType")
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ClusterStatus", name: "ClusterStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDbBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbBackupInput", name: "CreateDbBackupInput")
    CreateDbBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbBackupOutput", name: "CreateDbBackupOutput")
    CreateDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbClusterInput", name: "CreateDbClusterInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource"}]})
    CreateDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbClusterOutput", name: "CreateDbClusterOutput")
    CreateDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbInstanceInput", name: "CreateDbInstanceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource"}]})
    CreateDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbInstanceOutput", name: "CreateDbInstanceOutput")
    CreateDbParameterGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbParameterGroupInput", name: "CreateDbParameterGroupInput")
    CreateDbParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#CreateDbParameterGroupOutput", name: "CreateDbParameterGroupOutput")
    DataFusionRuntimeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DataFusionRuntimeType", name: "DataFusionRuntimeType")
    Date = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Date", name: "Date", traits: {"smithy.api#pattern" => "^\\d{4}-\\d{2}-\\d{2}$"})
    DbBackupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupConfiguration", name: "DbBackupConfiguration")
    DbBackupConfigurationInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupConfigurationInputList", name: "DbBackupConfigurationInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    DbBackupConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupConfigurationOutput", name: "DbBackupConfigurationOutput")
    DbBackupConfigurationOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupConfigurationOutputList", name: "DbBackupConfigurationOutputList")
    DbBackupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupId", name: "DbBackupId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbBackupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupName", name: "DbBackupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    DbBackupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupStatus", name: "DbBackupStatus")
    DbBackupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupSummary", name: "DbBackupSummary")
    DbBackupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupSummaryList", name: "DbBackupSummaryList")
    DbBackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DbBackupType", name: "DbBackupType")
    DbClusterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterId", name: "DbClusterId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterName", name: "DbClusterName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-zA-z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    DbClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterSummary", name: "DbClusterSummary")
    DbClusterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbClusterSummaryList", name: "DbClusterSummaryList")
    DbInstanceForClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceForClusterSummary", name: "DbInstanceForClusterSummary")
    DbInstanceForClusterSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceForClusterSummaryList", name: "DbInstanceForClusterSummaryList")
    DbInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceId", name: "DbInstanceId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbInstanceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#DbInstanceIdList", name: "DbInstanceIdList")
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
    DbResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbResourceId", name: "DbResourceId", traits: {"smithy.api#length" => {"min" => 3, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    DbResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#DbResourceName", name: "DbResourceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    DbStorageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DbStorageType", name: "DbStorageType")
    DeleteDbBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbBackupInput", name: "DeleteDbBackupInput")
    DeleteDbBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbBackupOutput", name: "DeleteDbBackupOutput")
    DeleteDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbClusterInput", name: "DeleteDbClusterInput")
    DeleteDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbClusterOutput", name: "DeleteDbClusterOutput")
    DeleteDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbInstanceInput", name: "DeleteDbInstanceInput")
    DeleteDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#DeleteDbInstanceOutput", name: "DeleteDbInstanceOutput")
    DeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DeploymentType", name: "DeploymentType")
    Duration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#Duration", name: "Duration")
    DurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#DurationType", name: "DurationType")
    EngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#EngineType", name: "EngineType")
    FailoverMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#FailoverMode", name: "FailoverMode")
    GetDbBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbBackupInput", name: "GetDbBackupInput")
    GetDbBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbBackupOutput", name: "GetDbBackupOutput")
    GetDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbClusterInput", name: "GetDbClusterInput")
    GetDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbClusterOutput", name: "GetDbClusterOutput")
    GetDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbInstanceInput", name: "GetDbInstanceInput")
    GetDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbInstanceOutput", name: "GetDbInstanceOutput")
    GetDbParameterGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbParameterGroupInput", name: "GetDbParameterGroupInput")
    GetDbParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#GetDbParameterGroupOutput", name: "GetDbParameterGroupOutput")
    IanaTimezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#IanaTimezone", name: "IanaTimezone", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(UTC|[A-Za-z_]+/[A-Za-z0-9_]+(/[A-Za-z0-9_]+)?)$"})
    InfluxDBv2Parameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#InfluxDBv2Parameters", name: "InfluxDBv2Parameters")
    InfluxDBv3CoreParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#InfluxDBv3CoreParameters", name: "InfluxDBv3CoreParameters")
    InfluxDBv3EnterpriseParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#InfluxDBv3EnterpriseParameters", name: "InfluxDBv3EnterpriseParameters")
    InstanceMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#InstanceMode", name: "InstanceMode")
    InstanceModeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#InstanceModeList", name: "InstanceModeList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_\\-]+$"})
    ListDbBackupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbBackupsInput", name: "ListDbBackupsInput")
    ListDbBackupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbBackupsOutput", name: "ListDbBackupsOutput")
    ListDbClustersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbClustersInput", name: "ListDbClustersInput")
    ListDbClustersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbClustersOutput", name: "ListDbClustersOutput")
    ListDbInstancesForClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesForClusterInput", name: "ListDbInstancesForClusterInput")
    ListDbInstancesForClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesForClusterOutput", name: "ListDbInstancesForClusterOutput")
    ListDbInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesInput", name: "ListDbInstancesInput")
    ListDbInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbInstancesOutput", name: "ListDbInstancesOutput")
    ListDbParameterGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbParameterGroupsInput", name: "ListDbParameterGroupsInput")
    ListDbParameterGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListDbParameterGroupsOutput", name: "ListDbParameterGroupsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbInstanceResource", "ids" => {"dbInstanceIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource", "ids" => {"dbParameterGroupIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbClusterResource", "ids" => {"dbClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbBackupResource", "ids" => {"dbBackupId" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogDeliveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#LogDeliveryConfiguration", name: "LogDeliveryConfiguration")
    LogFormats = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#LogFormats", name: "LogFormats")
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#LogLevel", name: "LogLevel")
    MaintenanceSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#MaintenanceSchedule", name: "MaintenanceSchedule")
    MaintenanceWindow = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#MaintenanceWindow", name: "MaintenanceWindow", traits: {"smithy.api#length" => {"min" => 0, "max" => 19}, "smithy.api#pattern" => "^$|^(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):[0-5]\\d-(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):[0-5]\\d$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#NetworkType", name: "NetworkType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1}})
    Organization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Organization", name: "Organization", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Parameters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.timestreaminfluxdb#Parameters", name: "Parameters")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    PercentOrAbsoluteLong = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.timestreaminfluxdb#PercentOrAbsoluteLong", name: "PercentOrAbsoluteLong")
    PluginRepositorySecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#PluginRepositorySecretArn", name: "PluginRepositorySecretArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):secretsmanager:[a-z0-9\\-]+:[0-9]{12}:secret:[a-zA-Z0-9/_+=.@\\-]+$"})
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 1024, "max" => 65535}})
    RebootDbClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#RebootDbClusterInput", name: "RebootDbClusterInput")
    RebootDbClusterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#RebootDbClusterOutput", name: "RebootDbClusterOutput")
    RebootDbInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#RebootDbInstanceInput", name: "RebootDbInstanceInput")
    RebootDbInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#RebootDbInstanceOutput", name: "RebootDbInstanceOutput")
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.timestreaminfluxdb#RequestTagMap", name: "RequestTagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceDeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ResourceDeploymentType", name: "ResourceDeploymentType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#ResourceType", name: "ResourceType")
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.timestreaminfluxdb#ResponseTagMap", name: "ResponseTagMap", traits: {"smithy.api#length" => {"max" => 200}})
    RestoreFromDbBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#RestoreFromDbBackupInput", name: "RestoreFromDbBackupInput")
    RestoreFromDbBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#RestoreFromDbBackupOutput", name: "RestoreFromDbBackupOutput")
    RestoreMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#RestoreMode", name: "RestoreMode")
    RestoreStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#RestoreStatus", name: "RestoreStatus")
    RetentionDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.timestreaminfluxdb#RetentionDays", name: "RetentionDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 3650}})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#S3Configuration", name: "S3Configuration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#Status", name: "Status")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#TagResourceRequest", name: "TagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbInstanceResource", "ids" => {"dbInstanceIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource", "ids" => {"dbParameterGroupIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbClusterResource", "ids" => {"dbClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbBackupResource", "ids" => {"dbBackupId" => "resourceArn"}}]})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.timestreaminfluxdb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TracingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.timestreaminfluxdb#TracingType", name: "TracingType")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.timestreaminfluxdb#UntagResourceRequest", name: "UntagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.timestreaminfluxdb#DbInstanceResource", "ids" => {"dbInstanceIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbParameterGroupResource", "ids" => {"dbParameterGroupIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbClusterResource", "ids" => {"dbClusterId" => "resourceArn"}}, {"resource" => "com.amazonaws.timestreaminfluxdb#DbBackupResource", "ids" => {"dbBackupId" => "resourceArn"}}]})
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
    VpcSubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.timestreaminfluxdb#VpcSubnetIdList", name: "VpcSubnetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AutomatedDbBackupType.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    AutomatedDbBackupType.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    AutomatedDbBackupType.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "WEEKLY"}))
    AutomatedDbBackupType.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    AutomatedDbBackupType.add_member(:custom_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_SCHEDULE", traits: {"smithy.api#enumValue" => "CUSTOM_SCHEDULE"}))
    AutomatedDbBackupType.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    ClusterConfiguration.add_member(:ingest_query_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ingestQueryInstances"))
    ClusterConfiguration.add_member(:query_only_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryOnlyInstances"))
    ClusterConfiguration.add_member(:dedicated_compactor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dedicatedCompactor"))
    ClusterConfiguration.type = Types::ClusterConfiguration
    ClusterDeploymentType.add_member(:multi_node_read_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_NODE_READ_REPLICAS", traits: {"smithy.api#enumValue" => "MULTI_NODE_READ_REPLICAS"}))
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ClusterStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ClusterStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ClusterStatus.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    ClusterStatus.add_member(:updating_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "UPDATING_INSTANCE_TYPE"}))
    ClusterStatus.add_member(:rebooting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOTING", traits: {"smithy.api#enumValue" => "REBOOTING"}))
    ClusterStatus.add_member(:reboot_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOT_FAILED", traits: {"smithy.api#enumValue" => "REBOOT_FAILED"}))
    ClusterStatus.add_member(:partially_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIALLY_AVAILABLE", traits: {"smithy.api#enumValue" => "PARTIALLY_AVAILABLE"}))
    ClusterStatus.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "RESTORING"}))
    ClusterStatus.add_member(:restore_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_FAILED", traits: {"smithy.api#enumValue" => "RESTORE_FAILED"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateDbBackupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbBackupInput.add_member(:db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "dbResourceId", traits: {"smithy.api#required" => {}}))
    CreateDbBackupInput.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionDays, name: "retentionDays"))
    CreateDbBackupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateDbBackupInput.type = Types::CreateDbBackupInput
    CreateDbBackupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateDbBackupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupName, name: "name"))
    CreateDbBackupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDbBackupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupStatus, name: "status"))
    CreateDbBackupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateDbBackupOutput.add_member(:expires_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "expiresAfter"))
    CreateDbBackupOutput.add_member(:db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "dbResourceId"))
    CreateDbBackupOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupType, name: "type"))
    CreateDbBackupOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    CreateDbBackupOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeploymentType, name: "deploymentType"))
    CreateDbBackupOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateDbBackupOutput.add_member(:cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "clusterConfiguration"))
    CreateDbBackupOutput.add_member(:db_parameter_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, name: "dbParameterGroupId"))
    CreateDbBackupOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    CreateDbBackupOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    CreateDbBackupOutput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "failoverMode"))
    CreateDbBackupOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    CreateDbBackupOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    CreateDbBackupOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds"))
    CreateDbBackupOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    CreateDbBackupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    CreateDbBackupOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    CreateDbBackupOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    CreateDbBackupOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    CreateDbBackupOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    CreateDbBackupOutput.type = Types::CreateDbBackupOutput
    CreateDbClusterInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "username"))
    CreateDbClusterInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "password"))
    CreateDbClusterInput.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "organization"))
    CreateDbClusterInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "bucket"))
    CreateDbClusterInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    CreateDbClusterInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    CreateDbClusterInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    CreateDbClusterInput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    CreateDbClusterInput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    CreateDbClusterInput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    CreateDbClusterInput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateDbClusterInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDeploymentType, name: "deploymentType"))
    CreateDbClusterInput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "failoverMode"))
    CreateDbClusterInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    CreateDbClusterInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    CreateDbClusterInput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationInputList, name: "dbBackupConfigurations"))
    CreateDbClusterInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateDbClusterInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateDbClusterInput.type = Types::CreateDbClusterInput
    CreateDbClusterOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId"))
    CreateDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "dbClusterStatus"))
    CreateDbClusterOutput.type = Types::CreateDbClusterOutput
    CreateDbInstanceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "username"))
    CreateDbInstanceInput.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "password", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "organization"))
    CreateDbInstanceInput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "bucket"))
    CreateDbInstanceInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    CreateDbInstanceInput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    CreateDbInstanceInput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    CreateDbInstanceInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    CreateDbInstanceInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    CreateDbInstanceInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    CreateDbInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateDbInstanceInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port", traits: {"smithy.api#default" => 8086}))
    CreateDbInstanceInput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    CreateDbInstanceInput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationInputList, name: "dbBackupConfigurations"))
    CreateDbInstanceInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateDbInstanceInput.type = Types::CreateDbInstanceInput
    CreateDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    CreateDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    CreateDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    CreateDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    CreateDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    CreateDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    CreateDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    CreateDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    CreateDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    CreateDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    CreateDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    CreateDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    CreateDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    CreateDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secondaryAvailabilityZone"))
    CreateDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    CreateDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    CreateDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId"))
    CreateDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "instanceMode"))
    CreateDbInstanceOutput.add_member(:instance_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceModeList, name: "instanceModes"))
    CreateDbInstanceOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    CreateDbInstanceOutput.add_member(:last_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateDbInstanceOutput.add_member(:next_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateDbInstanceOutput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutputList, name: "dbBackupConfigurations"))
    CreateDbInstanceOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateDbInstanceOutput.type = Types::CreateDbInstanceOutput
    CreateDbParameterGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}}))
    CreateDbParameterGroupInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "parameters"))
    CreateDbParameterGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateDbParameterGroupInput.type = Types::CreateDbParameterGroupInput
    CreateDbParameterGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDbParameterGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateDbParameterGroupOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "parameters"))
    CreateDbParameterGroupOutput.type = Types::CreateDbParameterGroupOutput
    DataFusionRuntimeType.add_member(:multi_thread, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_THREAD", traits: {"smithy.api#enumValue" => "multi-thread"}))
    DataFusionRuntimeType.add_member(:multi_thread_alt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_THREAD_ALT", traits: {"smithy.api#enumValue" => "multi-thread-alt"}))
    DbBackupConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedDbBackupType, name: "type", traits: {"smithy.api#required" => {}}))
    DbBackupConfiguration.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedBackupRetentionDays, name: "retentionDays", traits: {"smithy.api#required" => {}}))
    DbBackupConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    DbBackupConfiguration.add_member(:custom_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCronSchedule, name: "customSchedule"))
    DbBackupConfiguration.type = Types::DbBackupConfiguration
    DbBackupConfigurationInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfiguration, name: "member"))
    DbBackupConfigurationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedDbBackupType, name: "type", traits: {"smithy.api#required" => {}}))
    DbBackupConfigurationOutput.add_member(:retention_days, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedBackupRetentionDays, name: "retentionDays", traits: {"smithy.api#required" => {}}))
    DbBackupConfigurationOutput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    DbBackupConfigurationOutput.add_member(:custom_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCronSchedule, name: "customSchedule"))
    DbBackupConfigurationOutput.add_member(:next_automated_backup_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextAutomatedBackupTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbBackupConfigurationOutput.type = Types::DbBackupConfigurationOutput
    DbBackupConfigurationOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutput, name: "member"))
    DbBackupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DbBackupStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DbBackupStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DbBackupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DbBackupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DbBackupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "id", traits: {"smithy.api#required" => {}}))
    DbBackupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupName, name: "name"))
    DbBackupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DbBackupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupStatus, name: "status"))
    DbBackupSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DbBackupSummary.add_member(:expires_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "expiresAfter"))
    DbBackupSummary.add_member(:db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "dbResourceId"))
    DbBackupSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupType, name: "type"))
    DbBackupSummary.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    DbBackupSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeploymentType, name: "deploymentType"))
    DbBackupSummary.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    DbBackupSummary.type = Types::DbBackupSummary
    DbBackupSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupSummary, name: "member"))
    DbBackupType.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    DbBackupType.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    DbBackupType.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "WEEKLY"}))
    DbBackupType.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    DbBackupType.add_member(:custom_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_SCHEDULE", traits: {"smithy.api#enumValue" => "CUSTOM_SCHEDULE"}))
    DbBackupType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    DbBackupType.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    DbClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "id", traits: {"smithy.api#required" => {}}))
    DbClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterName, name: "name", traits: {"smithy.api#required" => {}}))
    DbClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DbClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status"))
    DbClusterSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    DbClusterSummary.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "readerEndpoint"))
    DbClusterSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    DbClusterSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDeploymentType, name: "deploymentType"))
    DbClusterSummary.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    DbClusterSummary.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    DbClusterSummary.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    DbClusterSummary.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    DbClusterSummary.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    DbClusterSummary.type = Types::DbClusterSummary
    DbClusterSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterSummary, name: "member"))
    DbInstanceForClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    DbInstanceForClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    DbInstanceForClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DbInstanceForClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    DbInstanceForClusterSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    DbInstanceForClusterSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    DbInstanceForClusterSummary.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    DbInstanceForClusterSummary.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    DbInstanceForClusterSummary.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    DbInstanceForClusterSummary.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    DbInstanceForClusterSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    DbInstanceForClusterSummary.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "instanceMode"))
    DbInstanceForClusterSummary.add_member(:instance_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceModeList, name: "instanceModes"))
    DbInstanceForClusterSummary.type = Types::DbInstanceForClusterSummary
    DbInstanceForClusterSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceForClusterSummary, name: "member"))
    DbInstanceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "member"))
    DbInstanceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    DbInstanceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    DbInstanceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DbInstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    DbInstanceSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    DbInstanceSummary.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    DbInstanceSummary.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    DbInstanceSummary.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    DbInstanceSummary.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    DbInstanceSummary.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    DbInstanceSummary.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    DbInstanceSummary.type = Types::DbInstanceSummary
    DbInstanceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceSummary, name: "member"))
    DbInstanceType.add_member(:db_influx_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_MEDIUM", traits: {"smithy.api#enumValue" => "db.influx.medium"}))
    DbInstanceType.add_member(:db_influx_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_LARGE", traits: {"smithy.api#enumValue" => "db.influx.large"}))
    DbInstanceType.add_member(:db_influx_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_XLARGE", traits: {"smithy.api#enumValue" => "db.influx.xlarge"}))
    DbInstanceType.add_member(:db_influx_2_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_2XLARGE", traits: {"smithy.api#enumValue" => "db.influx.2xlarge"}))
    DbInstanceType.add_member(:db_influx_4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_4XLARGE", traits: {"smithy.api#enumValue" => "db.influx.4xlarge"}))
    DbInstanceType.add_member(:db_influx_8_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_8XLARGE", traits: {"smithy.api#enumValue" => "db.influx.8xlarge"}))
    DbInstanceType.add_member(:db_influx_12_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_12XLARGE", traits: {"smithy.api#enumValue" => "db.influx.12xlarge"}))
    DbInstanceType.add_member(:db_influx_16_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_16XLARGE", traits: {"smithy.api#enumValue" => "db.influx.16xlarge"}))
    DbInstanceType.add_member(:db_influx_24_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INFLUX_24XLARGE", traits: {"smithy.api#enumValue" => "db.influx.24xlarge"}))
    DbParameterGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, name: "id", traits: {"smithy.api#required" => {}}))
    DbParameterGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    DbParameterGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DbParameterGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    DbParameterGroupSummary.type = Types::DbParameterGroupSummary
    DbParameterGroupSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupSummary, name: "member"))
    DbStorageType.add_member(:influx_io_included_t1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFLUX_IO_INCLUDED_T1", traits: {"smithy.api#enumValue" => "InfluxIOIncludedT1"}))
    DbStorageType.add_member(:influx_io_included_t2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFLUX_IO_INCLUDED_T2", traits: {"smithy.api#enumValue" => "InfluxIOIncludedT2"}))
    DbStorageType.add_member(:influx_io_included_t3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFLUX_IO_INCLUDED_T3", traits: {"smithy.api#enumValue" => "InfluxIOIncludedT3"}))
    DeleteDbBackupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbBackupId"}))
    DeleteDbBackupInput.type = Types::DeleteDbBackupInput
    DeleteDbBackupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteDbBackupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupName, name: "name"))
    DeleteDbBackupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDbBackupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupStatus, name: "status"))
    DeleteDbBackupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DeleteDbBackupOutput.add_member(:expires_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "expiresAfter"))
    DeleteDbBackupOutput.add_member(:db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "dbResourceId"))
    DeleteDbBackupOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupType, name: "type"))
    DeleteDbBackupOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    DeleteDbBackupOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeploymentType, name: "deploymentType"))
    DeleteDbBackupOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    DeleteDbBackupOutput.add_member(:cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "clusterConfiguration"))
    DeleteDbBackupOutput.add_member(:db_parameter_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, name: "dbParameterGroupId"))
    DeleteDbBackupOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    DeleteDbBackupOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    DeleteDbBackupOutput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "failoverMode"))
    DeleteDbBackupOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    DeleteDbBackupOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    DeleteDbBackupOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds"))
    DeleteDbBackupOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    DeleteDbBackupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    DeleteDbBackupOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    DeleteDbBackupOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    DeleteDbBackupOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    DeleteDbBackupOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    DeleteDbBackupOutput.type = Types::DeleteDbBackupOutput
    DeleteDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    DeleteDbClusterInput.add_member(:retain_automated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "retainAutomatedBackups"))
    DeleteDbClusterInput.type = Types::DeleteDbClusterInput
    DeleteDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "dbClusterStatus"))
    DeleteDbClusterOutput.type = Types::DeleteDbClusterOutput
    DeleteDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    DeleteDbInstanceInput.add_member(:retain_automated_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "retainAutomatedBackups"))
    DeleteDbInstanceInput.type = Types::DeleteDbInstanceInput
    DeleteDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    DeleteDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    DeleteDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    DeleteDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    DeleteDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    DeleteDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    DeleteDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    DeleteDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    DeleteDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    DeleteDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    DeleteDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    DeleteDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    DeleteDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    DeleteDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secondaryAvailabilityZone"))
    DeleteDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    DeleteDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    DeleteDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId"))
    DeleteDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "instanceMode"))
    DeleteDbInstanceOutput.add_member(:instance_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceModeList, name: "instanceModes"))
    DeleteDbInstanceOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    DeleteDbInstanceOutput.add_member(:last_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DeleteDbInstanceOutput.add_member(:next_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DeleteDbInstanceOutput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutputList, name: "dbBackupConfigurations"))
    DeleteDbInstanceOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    DeleteDbInstanceOutput.type = Types::DeleteDbInstanceOutput
    DeploymentType.add_member(:single_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ", traits: {"smithy.api#enumValue" => "SINGLE_AZ"}))
    DeploymentType.add_member(:with_multiaz_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_MULTIAZ_STANDBY", traits: {"smithy.api#enumValue" => "WITH_MULTIAZ_STANDBY"}))
    Duration.add_member(:duration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationType, name: "durationType", traits: {"smithy.api#required" => {}}))
    Duration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "value", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    Duration.type = Types::Duration
    DurationType.add_member(:hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURS", traits: {"smithy.api#enumValue" => "hours"}))
    DurationType.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINUTES", traits: {"smithy.api#enumValue" => "minutes"}))
    DurationType.add_member(:seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECONDS", traits: {"smithy.api#enumValue" => "seconds"}))
    DurationType.add_member(:milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLISECONDS", traits: {"smithy.api#enumValue" => "milliseconds"}))
    DurationType.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "days"}))
    EngineType.add_member(:influxdb_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFLUXDB_V2", traits: {"smithy.api#enumValue" => "INFLUXDB_V2"}))
    EngineType.add_member(:influxdb_v3_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFLUXDB_V3_CORE", traits: {"smithy.api#enumValue" => "INFLUXDB_V3_CORE"}))
    EngineType.add_member(:influxdb_v3_enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFLUXDB_V3_ENTERPRISE", traits: {"smithy.api#enumValue" => "INFLUXDB_V3_ENTERPRISE"}))
    FailoverMode.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    FailoverMode.add_member(:no_failover, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_FAILOVER", traits: {"smithy.api#enumValue" => "NO_FAILOVER"}))
    GetDbBackupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbBackupId"}))
    GetDbBackupInput.type = Types::GetDbBackupInput
    GetDbBackupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "id", traits: {"smithy.api#required" => {}}))
    GetDbBackupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupName, name: "name"))
    GetDbBackupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbBackupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupStatus, name: "status"))
    GetDbBackupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetDbBackupOutput.add_member(:expires_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "expiresAfter"))
    GetDbBackupOutput.add_member(:db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "dbResourceId"))
    GetDbBackupOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupType, name: "type"))
    GetDbBackupOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    GetDbBackupOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeploymentType, name: "deploymentType"))
    GetDbBackupOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    GetDbBackupOutput.add_member(:cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "clusterConfiguration"))
    GetDbBackupOutput.add_member(:db_parameter_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, name: "dbParameterGroupId"))
    GetDbBackupOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    GetDbBackupOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    GetDbBackupOutput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "failoverMode"))
    GetDbBackupOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    GetDbBackupOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    GetDbBackupOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds"))
    GetDbBackupOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    GetDbBackupOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    GetDbBackupOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port"))
    GetDbBackupOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    GetDbBackupOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    GetDbBackupOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    GetDbBackupOutput.type = Types::GetDbBackupOutput
    GetDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    GetDbClusterInput.type = Types::GetDbClusterInput
    GetDbClusterOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "id", traits: {"smithy.api#required" => {}}))
    GetDbClusterOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDbClusterOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbClusterOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status"))
    GetDbClusterOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    GetDbClusterOutput.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "readerEndpoint"))
    GetDbClusterOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    GetDbClusterOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDeploymentType, name: "deploymentType"))
    GetDbClusterOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    GetDbClusterOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    GetDbClusterOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    GetDbClusterOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    GetDbClusterOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    GetDbClusterOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    GetDbClusterOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    GetDbClusterOutput.add_member(:effective_db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "effectiveDbParameterGroupIdentifier"))
    GetDbClusterOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    GetDbClusterOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    GetDbClusterOutput.add_member(:last_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetDbClusterOutput.add_member(:next_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetDbClusterOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    GetDbClusterOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds"))
    GetDbClusterOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    GetDbClusterOutput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "failoverMode"))
    GetDbClusterOutput.add_member(:cluster_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "clusterConfiguration"))
    GetDbClusterOutput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutputList, name: "dbBackupConfigurations"))
    GetDbClusterOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    GetDbClusterOutput.type = Types::GetDbClusterOutput
    GetDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    GetDbInstanceInput.type = Types::GetDbInstanceInput
    GetDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    GetDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    GetDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    GetDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    GetDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    GetDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    GetDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    GetDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    GetDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    GetDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    GetDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    GetDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    GetDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    GetDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secondaryAvailabilityZone"))
    GetDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    GetDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    GetDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId"))
    GetDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "instanceMode"))
    GetDbInstanceOutput.add_member(:instance_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceModeList, name: "instanceModes"))
    GetDbInstanceOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    GetDbInstanceOutput.add_member(:last_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetDbInstanceOutput.add_member(:next_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetDbInstanceOutput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutputList, name: "dbBackupConfigurations"))
    GetDbInstanceOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    GetDbInstanceOutput.type = Types::GetDbInstanceOutput
    GetDbParameterGroupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbParameterGroupIdentifier"}))
    GetDbParameterGroupInput.type = Types::GetDbParameterGroupInput
    GetDbParameterGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupId, name: "id", traits: {"smithy.api#required" => {}}))
    GetDbParameterGroupOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDbParameterGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDbParameterGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetDbParameterGroupOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameters, name: "parameters"))
    GetDbParameterGroupOutput.type = Types::GetDbParameterGroupOutput
    InfluxDBv2Parameters.add_member(:flux_log_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "fluxLogEnabled"))
    InfluxDBv2Parameters.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "logLevel"))
    InfluxDBv2Parameters.add_member(:no_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "noTasks"))
    InfluxDBv2Parameters.add_member(:query_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryConcurrency", traits: {"smithy.api#range" => {"min" => 0, "max" => 256}}))
    InfluxDBv2Parameters.add_member(:query_queue_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryQueueSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 256}}))
    InfluxDBv2Parameters.add_member(:tracing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TracingType, name: "tracingType"))
    InfluxDBv2Parameters.add_member(:metrics_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "metricsDisabled"))
    InfluxDBv2Parameters.add_member(:http_idle_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "httpIdleTimeout"))
    InfluxDBv2Parameters.add_member(:http_read_header_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "httpReadHeaderTimeout"))
    InfluxDBv2Parameters.add_member(:http_read_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "httpReadTimeout"))
    InfluxDBv2Parameters.add_member(:http_write_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "httpWriteTimeout"))
    InfluxDBv2Parameters.add_member(:influxql_max_select_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "influxqlMaxSelectBuckets", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:influxql_max_select_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "influxqlMaxSelectPoint", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:influxql_max_select_series, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "influxqlMaxSelectSeries", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:pprof_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "pprofDisabled"))
    InfluxDBv2Parameters.add_member(:query_initial_memory_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "queryInitialMemoryBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:query_max_memory_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "queryMaxMemoryBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:query_memory_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "queryMemoryBytes", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:session_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sessionLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 2880}}))
    InfluxDBv2Parameters.add_member(:session_renew_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sessionRenewDisabled"))
    InfluxDBv2Parameters.add_member(:storage_cache_max_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "storageCacheMaxMemorySize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_cache_snapshot_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "storageCacheSnapshotMemorySize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_cache_snapshot_write_cold_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "storageCacheSnapshotWriteColdDuration"))
    InfluxDBv2Parameters.add_member(:storage_compact_full_write_cold_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "storageCompactFullWriteColdDuration"))
    InfluxDBv2Parameters.add_member(:storage_compact_throughput_burst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "storageCompactThroughputBurst", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_max_concurrent_compactions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageMaxConcurrentCompactions", traits: {"smithy.api#range" => {"min" => 0, "max" => 64}}))
    InfluxDBv2Parameters.add_member(:storage_max_index_log_file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "storageMaxIndexLogFileSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_no_validate_field_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "storageNoValidateFieldSize"))
    InfluxDBv2Parameters.add_member(:storage_retention_check_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "storageRetentionCheckInterval"))
    InfluxDBv2Parameters.add_member(:storage_series_file_max_concurrent_snapshot_compactions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageSeriesFileMaxConcurrentSnapshotCompactions", traits: {"smithy.api#range" => {"min" => 0, "max" => 64}}))
    InfluxDBv2Parameters.add_member(:storage_series_id_set_cache_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "storageSeriesIdSetCacheSize", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000000000}}))
    InfluxDBv2Parameters.add_member(:storage_wal_max_concurrent_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "storageWalMaxConcurrentWrites", traits: {"smithy.api#range" => {"min" => 0, "max" => 256}}))
    InfluxDBv2Parameters.add_member(:storage_wal_max_write_delay, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "storageWalMaxWriteDelay"))
    InfluxDBv2Parameters.add_member(:ui_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "uiDisabled"))
    InfluxDBv2Parameters.type = Types::InfluxDBv2Parameters
    InfluxDBv3CoreParameters.add_member(:query_file_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryFileLimit", traits: {"smithy.api#range" => {"min" => 0, "max" => 1024}}))
    InfluxDBv3CoreParameters.add_member(:query_log_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryLogSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}}))
    InfluxDBv3CoreParameters.add_member(:log_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InfluxDBv3CoreParameters.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormats, name: "logFormat"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_num_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionNumThreads", traits: {"smithy.api#range" => {"min" => 1, "max" => 2048}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFusionRuntimeType, name: "dataFusionRuntimeType"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_disable_lifo_slot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dataFusionRuntimeDisableLifoSlot"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_event_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeEventInterval", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_global_queue_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeGlobalQueueInterval", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_max_blocking_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeMaxBlockingThreads", traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_max_io_events_per_tick, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeMaxIoEventsPerTick", traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_thread_keep_alive, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "dataFusionRuntimeThreadKeepAlive"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_runtime_thread_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeThreadPriority", traits: {"smithy.api#range" => {"min" => -20, "max" => 19}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_max_parquet_fanout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionMaxParquetFanout", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}}))
    InfluxDBv3CoreParameters.add_member(:data_fusion_use_cached_parquet_loader, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dataFusionUseCachedParquetLoader"))
    InfluxDBv3CoreParameters.add_member(:data_fusion_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataFusionConfig", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.]+:[^,\\s]+(?:,[a-zA-Z0-9_.]+:[^,\\s]+)*$"}))
    InfluxDBv3CoreParameters.add_member(:max_http_request_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "maxHttpRequestSize", traits: {"smithy.api#range" => {"min" => 1024, "max" => 16777216}}))
    InfluxDBv3CoreParameters.add_member(:force_snapshot_mem_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentOrAbsoluteLong, name: "forceSnapshotMemThreshold"))
    InfluxDBv3CoreParameters.add_member(:wal_snapshot_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "walSnapshotSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}}))
    InfluxDBv3CoreParameters.add_member(:wal_max_write_buffer_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "walMaxWriteBufferSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}}))
    InfluxDBv3CoreParameters.add_member(:snapshotted_wal_files_to_keep, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshottedWalFilesToKeep", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}}))
    InfluxDBv3CoreParameters.add_member(:preemptive_cache_age, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "preemptiveCacheAge"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_prune_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "parquetMemCachePrunePercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}}))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_prune_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "parquetMemCachePruneInterval"))
    InfluxDBv3CoreParameters.add_member(:disable_parquet_mem_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "disableParquetMemCache"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_query_path_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "parquetMemCacheQueryPathDuration"))
    InfluxDBv3CoreParameters.add_member(:last_cache_eviction_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "lastCacheEvictionInterval"))
    InfluxDBv3CoreParameters.add_member(:distinct_cache_eviction_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "distinctCacheEvictionInterval"))
    InfluxDBv3CoreParameters.add_member(:gen1_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "gen1Duration"))
    InfluxDBv3CoreParameters.add_member(:exec_mem_pool_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentOrAbsoluteLong, name: "execMemPoolBytes"))
    InfluxDBv3CoreParameters.add_member(:parquet_mem_cache_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentOrAbsoluteLong, name: "parquetMemCacheSize"))
    InfluxDBv3CoreParameters.add_member(:wal_replay_fail_on_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "walReplayFailOnError"))
    InfluxDBv3CoreParameters.add_member(:wal_replay_concurrency_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "walReplayConcurrencyLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    InfluxDBv3CoreParameters.add_member(:table_index_cache_max_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "tableIndexCacheMaxEntries", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    InfluxDBv3CoreParameters.add_member(:table_index_cache_concurrency_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "tableIndexCacheConcurrencyLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    InfluxDBv3CoreParameters.add_member(:gen1_lookback_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "gen1LookbackDuration"))
    InfluxDBv3CoreParameters.add_member(:retention_check_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "retentionCheckInterval"))
    InfluxDBv3CoreParameters.add_member(:delete_grace_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "deleteGracePeriod"))
    InfluxDBv3CoreParameters.add_member(:hard_delete_default_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "hardDeleteDefaultDuration"))
    InfluxDBv3CoreParameters.add_member(:plugin_repository_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pluginRepositoryUrl"))
    InfluxDBv3CoreParameters.add_member(:plugin_repository_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginRepositorySecretArn, name: "pluginRepositorySecretArn"))
    InfluxDBv3CoreParameters.type = Types::InfluxDBv3CoreParameters
    InfluxDBv3EnterpriseParameters.add_member(:query_file_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryFileLimit", traits: {"smithy.api#range" => {"min" => 0, "max" => 1024}}))
    InfluxDBv3EnterpriseParameters.add_member(:query_log_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryLogSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}}))
    InfluxDBv3EnterpriseParameters.add_member(:log_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InfluxDBv3EnterpriseParameters.add_member(:log_format, ::Smithy::Schema::Shapes::MemberShape.new(target: LogFormats, name: "logFormat"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_num_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionNumThreads", traits: {"smithy.api#range" => {"min" => 1, "max" => 2048}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFusionRuntimeType, name: "dataFusionRuntimeType"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_disable_lifo_slot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dataFusionRuntimeDisableLifoSlot"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_event_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeEventInterval", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_global_queue_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeGlobalQueueInterval", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_max_blocking_threads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeMaxBlockingThreads", traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_max_io_events_per_tick, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeMaxIoEventsPerTick", traits: {"smithy.api#range" => {"min" => 1, "max" => 4096}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_thread_keep_alive, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "dataFusionRuntimeThreadKeepAlive"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_runtime_thread_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionRuntimeThreadPriority", traits: {"smithy.api#range" => {"min" => -20, "max" => 19}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_max_parquet_fanout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dataFusionMaxParquetFanout", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}}))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_use_cached_parquet_loader, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dataFusionUseCachedParquetLoader"))
    InfluxDBv3EnterpriseParameters.add_member(:data_fusion_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataFusionConfig", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.]+:[^,\\s]+(?:,[a-zA-Z0-9_.]+:[^,\\s]+)*$"}))
    InfluxDBv3EnterpriseParameters.add_member(:max_http_request_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "maxHttpRequestSize", traits: {"smithy.api#range" => {"min" => 1024, "max" => 16777216}}))
    InfluxDBv3EnterpriseParameters.add_member(:force_snapshot_mem_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentOrAbsoluteLong, name: "forceSnapshotMemThreshold"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_snapshot_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "walSnapshotSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}}))
    InfluxDBv3EnterpriseParameters.add_member(:wal_max_write_buffer_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "walMaxWriteBufferSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}}))
    InfluxDBv3EnterpriseParameters.add_member(:snapshotted_wal_files_to_keep, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "snapshottedWalFilesToKeep", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}}))
    InfluxDBv3EnterpriseParameters.add_member(:preemptive_cache_age, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "preemptiveCacheAge"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_prune_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "parquetMemCachePrunePercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}}))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_prune_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "parquetMemCachePruneInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:disable_parquet_mem_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "disableParquetMemCache"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_query_path_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "parquetMemCacheQueryPathDuration"))
    InfluxDBv3EnterpriseParameters.add_member(:last_cache_eviction_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "lastCacheEvictionInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:distinct_cache_eviction_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "distinctCacheEvictionInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:gen1_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "gen1Duration"))
    InfluxDBv3EnterpriseParameters.add_member(:exec_mem_pool_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentOrAbsoluteLong, name: "execMemPoolBytes"))
    InfluxDBv3EnterpriseParameters.add_member(:parquet_mem_cache_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentOrAbsoluteLong, name: "parquetMemCacheSize"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_replay_fail_on_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "walReplayFailOnError"))
    InfluxDBv3EnterpriseParameters.add_member(:wal_replay_concurrency_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "walReplayConcurrencyLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    InfluxDBv3EnterpriseParameters.add_member(:table_index_cache_max_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "tableIndexCacheMaxEntries", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    InfluxDBv3EnterpriseParameters.add_member(:table_index_cache_concurrency_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "tableIndexCacheConcurrencyLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    InfluxDBv3EnterpriseParameters.add_member(:gen1_lookback_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "gen1LookbackDuration"))
    InfluxDBv3EnterpriseParameters.add_member(:retention_check_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "retentionCheckInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:delete_grace_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "deleteGracePeriod"))
    InfluxDBv3EnterpriseParameters.add_member(:hard_delete_default_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "hardDeleteDefaultDuration"))
    InfluxDBv3EnterpriseParameters.add_member(:plugin_repository_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pluginRepositoryUrl"))
    InfluxDBv3EnterpriseParameters.add_member(:plugin_repository_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PluginRepositorySecretArn, name: "pluginRepositorySecretArn"))
    InfluxDBv3EnterpriseParameters.add_member(:ingest_query_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ingestQueryInstances", traits: {"smithy.api#range" => {"min" => 1, "max" => 4}, "smithy.api#required" => {}}))
    InfluxDBv3EnterpriseParameters.add_member(:query_only_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queryOnlyInstances", traits: {"smithy.api#range" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    InfluxDBv3EnterpriseParameters.add_member(:dedicated_compactor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dedicatedCompactor", traits: {"smithy.api#required" => {}}))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_row_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "compactionRowLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000000}}))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_max_num_files_per_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "compactionMaxNumFilesPerPlan", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}}))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_gen2_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "compactionGen2Duration"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_multipliers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "compactionMultipliers", traits: {"smithy.api#length" => {"min" => 7, "max" => 16}, "smithy.api#pattern" => "^\\d+,\\d+,\\d+,\\d+$"}))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_cleanup_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "compactionCleanupWait"))
    InfluxDBv3EnterpriseParameters.add_member(:compaction_check_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "compactionCheckInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:last_value_cache_disable_from_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "lastValueCacheDisableFromHistory"))
    InfluxDBv3EnterpriseParameters.add_member(:distinct_value_cache_disable_from_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "distinctValueCacheDisableFromHistory"))
    InfluxDBv3EnterpriseParameters.add_member(:replication_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "replicationInterval"))
    InfluxDBv3EnterpriseParameters.add_member(:catalog_sync_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "catalogSyncInterval"))
    InfluxDBv3EnterpriseParameters.type = Types::InfluxDBv3EnterpriseParameters
    InstanceMode.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    InstanceMode.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    InstanceMode.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    InstanceMode.add_member(:ingest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INGEST", traits: {"smithy.api#enumValue" => "INGEST"}))
    InstanceMode.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY", traits: {"smithy.api#enumValue" => "QUERY"}))
    InstanceMode.add_member(:compact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPACT", traits: {"smithy.api#enumValue" => "COMPACT"}))
    InstanceMode.add_member(:process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESS", traits: {"smithy.api#enumValue" => "PROCESS"}))
    InstanceModeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListDbBackupsInput.add_member(:db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "dbResourceId"))
    ListDbBackupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbBackupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDbBackupsInput.type = Types::ListDbBackupsInput
    ListDbBackupsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDbBackupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbBackupsOutput.type = Types::ListDbBackupsOutput
    ListDbClustersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbClustersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDbClustersInput.type = Types::ListDbClustersInput
    ListDbClustersOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDbClustersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbClustersOutput.type = Types::ListDbClustersOutput
    ListDbInstancesForClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    ListDbInstancesForClusterInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbInstancesForClusterInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDbInstancesForClusterInput.type = Types::ListDbInstancesForClusterInput
    ListDbInstancesForClusterOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceForClusterSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDbInstancesForClusterOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbInstancesForClusterOutput.type = Types::ListDbInstancesForClusterOutput
    ListDbInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDbInstancesInput.type = Types::ListDbInstancesInput
    ListDbInstancesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDbInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbInstancesOutput.type = Types::ListDbInstancesOutput
    ListDbParameterGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbParameterGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDbParameterGroupsInput.type = Types::ListDbParameterGroupsInput
    ListDbParameterGroupsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListDbParameterGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDbParameterGroupsOutput.type = Types::ListDbParameterGroupsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogDeliveryConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Configuration, name: "s3Configuration", traits: {"smithy.api#required" => {}}))
    LogDeliveryConfiguration.type = Types::LogDeliveryConfiguration
    LogFormats.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "full"}))
    LogLevel.add_member(:debug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBUG", traits: {"smithy.api#enumValue" => "debug"}))
    LogLevel.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "info"}))
    LogLevel.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    MaintenanceSchedule.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: IanaTimezone, name: "timezone", traits: {"smithy.api#required" => {}}))
    MaintenanceSchedule.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceWindow, name: "preferredMaintenanceWindow", traits: {"smithy.api#required" => {}}))
    MaintenanceSchedule.type = Types::MaintenanceSchedule
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:dual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL", traits: {"smithy.api#enumValue" => "DUAL"}))
    Parameters.add_member(:influx_d_bv2, Types::Parameters::InfluxDBv2, ::Smithy::Schema::Shapes::MemberShape.new(target: InfluxDBv2Parameters, name: "InfluxDBv2"))
    Parameters.add_member(:influx_d_bv3_core, Types::Parameters::InfluxDBv3Core, ::Smithy::Schema::Shapes::MemberShape.new(target: InfluxDBv3CoreParameters, name: "InfluxDBv3Core"))
    Parameters.add_member(:influx_d_bv3_enterprise, Types::Parameters::InfluxDBv3Enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: InfluxDBv3EnterpriseParameters, name: "InfluxDBv3Enterprise"))
    Parameters.add_member(:unknown, Types::Parameters::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Parameters.type = Types::Parameters
    PercentOrAbsoluteLong.add_member(:percent, Types::PercentOrAbsoluteLong::Percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "percent", traits: {"smithy.api#length" => {"min" => 2, "max" => 4}, "smithy.api#pattern" => "^(?:100|[1-9]?[0-9])%$"}))
    PercentOrAbsoluteLong.add_member(:absolute, Types::PercentOrAbsoluteLong::Absolute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "absolute", traits: {"smithy.api#range" => {"min" => 0, "max" => 1610612736000}}))
    PercentOrAbsoluteLong.add_member(:unknown, Types::PercentOrAbsoluteLong::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PercentOrAbsoluteLong.type = Types::PercentOrAbsoluteLong
    RebootDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    RebootDbClusterInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdList, name: "instanceIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}}))
    RebootDbClusterInput.type = Types::RebootDbClusterInput
    RebootDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "dbClusterStatus"))
    RebootDbClusterOutput.type = Types::RebootDbClusterOutput
    RebootDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    RebootDbInstanceInput.type = Types::RebootDbInstanceInput
    RebootDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    RebootDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    RebootDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    RebootDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    RebootDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    RebootDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    RebootDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    RebootDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    RebootDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    RebootDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    RebootDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    RebootDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    RebootDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    RebootDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    RebootDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    RebootDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    RebootDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secondaryAvailabilityZone"))
    RebootDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    RebootDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    RebootDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId"))
    RebootDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "instanceMode"))
    RebootDbInstanceOutput.add_member(:instance_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceModeList, name: "instanceModes"))
    RebootDbInstanceOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    RebootDbInstanceOutput.add_member(:last_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RebootDbInstanceOutput.add_member(:next_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RebootDbInstanceOutput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutputList, name: "dbBackupConfigurations"))
    RebootDbInstanceOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    RebootDbInstanceOutput.type = Types::RebootDbInstanceOutput
    RequestTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    RequestTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ResourceDeploymentType.add_member(:single_az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_AZ", traits: {"smithy.api#enumValue" => "SINGLE_AZ"}))
    ResourceDeploymentType.add_member(:with_multiaz_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_MULTIAZ_STANDBY", traits: {"smithy.api#enumValue" => "WITH_MULTIAZ_STANDBY"}))
    ResourceDeploymentType.add_member(:multi_node_read_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_NODE_READ_REPLICAS", traits: {"smithy.api#enumValue" => "MULTI_NODE_READ_REPLICAS"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_INSTANCE", traits: {"smithy.api#enumValue" => "DB_INSTANCE"}))
    ResourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_CLUSTER", traits: {"smithy.api#enumValue" => "DB_CLUSTER"}))
    ResponseTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    ResponseTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    RestoreFromDbBackupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    RestoreFromDbBackupInput.add_member(:db_backup_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupId, name: "dbBackupId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbBackupId"}))
    RestoreFromDbBackupInput.add_member(:restore_to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "restoreToTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RestoreFromDbBackupInput.add_member(:restore_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreMode, name: "restoreMode", traits: {"aws.iam#conditionKeyValue" => "timestream-influxdb:RestoreMode"}))
    RestoreFromDbBackupInput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds"))
    RestoreFromDbBackupInput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    RestoreFromDbBackupInput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    RestoreFromDbBackupInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    RestoreFromDbBackupInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    RestoreFromDbBackupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    RestoreFromDbBackupInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    RestoreFromDbBackupInput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    RestoreFromDbBackupInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeploymentType, name: "deploymentType"))
    RestoreFromDbBackupInput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationInputList, name: "dbBackupConfigurations"))
    RestoreFromDbBackupInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    RestoreFromDbBackupInput.type = Types::RestoreFromDbBackupInput
    RestoreFromDbBackupOutput.add_member(:restored_db_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbResourceId, name: "restoredDbResourceId"))
    RestoreFromDbBackupOutput.add_member(:restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreStatus, name: "restoreStatus"))
    RestoreFromDbBackupOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    RestoreFromDbBackupOutput.add_member(:engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "engineType"))
    RestoreFromDbBackupOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeploymentType, name: "deploymentType"))
    RestoreFromDbBackupOutput.type = Types::RestoreFromDbBackupOutput
    RestoreMode.add_member(:new_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_RESOURCE", traits: {"smithy.api#enumValue" => "NEW_RESOURCE"}))
    RestoreMode.add_member(:replace_existing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE_EXISTING", traits: {"smithy.api#enumValue" => "REPLACE_EXISTING"}))
    RestoreStatus.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "RESTORING"}))
    S3Configuration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+$", "smithy.api#required" => {}}))
    S3Configuration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    S3Configuration.type = Types::S3Configuration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    Status.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "MODIFYING"}))
    Status.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    Status.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:updating_deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING_DEPLOYMENT_TYPE", traits: {"smithy.api#enumValue" => "UPDATING_DEPLOYMENT_TYPE"}))
    Status.add_member(:updating_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "UPDATING_INSTANCE_TYPE"}))
    Status.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    Status.add_member(:rebooting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOTING", traits: {"smithy.api#enumValue" => "REBOOTING"}))
    Status.add_member(:reboot_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOT_FAILED", traits: {"smithy.api#enumValue" => "REBOOT_FAILED"}))
    Status.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORING", traits: {"smithy.api#enumValue" => "RESTORING"}))
    Status.add_member(:restore_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_FAILED", traits: {"smithy.api#enumValue" => "RESTORE_FAILED"}))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    TracingType.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG", traits: {"smithy.api#enumValue" => "log"}))
    TracingType.add_member(:jaeger, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAEGER", traits: {"smithy.api#enumValue" => "jaeger"}))
    TracingType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateDbClusterInput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId", traits: {"smithy.api#required" => {}}))
    UpdateDbClusterInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    UpdateDbClusterInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    UpdateDbClusterInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    UpdateDbClusterInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    UpdateDbClusterInput.add_member(:failover_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FailoverMode, name: "failoverMode"))
    UpdateDbClusterInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    UpdateDbClusterInput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationInputList, name: "dbBackupConfigurations"))
    UpdateDbClusterInput.type = Types::UpdateDbClusterInput
    UpdateDbClusterOutput.add_member(:db_cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "dbClusterStatus"))
    UpdateDbClusterOutput.type = Types::UpdateDbClusterOutput
    UpdateDbInstanceInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceIdentifier, name: "identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "dbInstanceIdentifier"}))
    UpdateDbInstanceInput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    UpdateDbInstanceInput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    UpdateDbInstanceInput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    UpdateDbInstanceInput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    UpdateDbInstanceInput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    UpdateDbInstanceInput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    UpdateDbInstanceInput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    UpdateDbInstanceInput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    UpdateDbInstanceInput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationInputList, name: "dbBackupConfigurations"))
    UpdateDbInstanceInput.type = Types::UpdateDbInstanceInput
    UpdateDbInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    UpdateDbInstanceOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint"))
    UpdateDbInstanceOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "port"))
    UpdateDbInstanceOutput.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    UpdateDbInstanceOutput.add_member(:db_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceType, name: "dbInstanceType"))
    UpdateDbInstanceOutput.add_member(:db_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DbStorageType, name: "dbStorageType"))
    UpdateDbInstanceOutput.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage"))
    UpdateDbInstanceOutput.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    UpdateDbInstanceOutput.add_member(:vpc_subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetIdList, name: "vpcSubnetIds", traits: {"smithy.api#required" => {}}))
    UpdateDbInstanceOutput.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "publiclyAccessible"))
    UpdateDbInstanceOutput.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "vpcSecurityGroupIds"))
    UpdateDbInstanceOutput.add_member(:db_parameter_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DbParameterGroupIdentifier, name: "dbParameterGroupIdentifier"))
    UpdateDbInstanceOutput.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZone"))
    UpdateDbInstanceOutput.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secondaryAvailabilityZone"))
    UpdateDbInstanceOutput.add_member(:log_delivery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDeliveryConfiguration, name: "logDeliveryConfiguration"))
    UpdateDbInstanceOutput.add_member(:influx_auth_parameters_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "influxAuthParametersSecretArn"))
    UpdateDbInstanceOutput.add_member(:db_cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DbClusterId, name: "dbClusterId"))
    UpdateDbInstanceOutput.add_member(:instance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMode, name: "instanceMode"))
    UpdateDbInstanceOutput.add_member(:instance_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceModeList, name: "instanceModes"))
    UpdateDbInstanceOutput.add_member(:maintenance_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceSchedule, name: "maintenanceSchedule"))
    UpdateDbInstanceOutput.add_member(:last_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateDbInstanceOutput.add_member(:next_maintenance_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "nextMaintenanceTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateDbInstanceOutput.add_member(:db_backup_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DbBackupConfigurationOutputList, name: "dbBackupConfigurations"))
    UpdateDbInstanceOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    UpdateDbInstanceOutput.type = Types::UpdateDbInstanceOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    VpcSecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupId, name: "member"))
    VpcSubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnetId, name: "member"))

    AmazonTimestreamInfluxDB = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.timestreaminfluxdb#AmazonTimestreamInfluxDB"
      service.name = "AmazonTimestreamInfluxDB"
      service.version = "2023-01-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Timestream InfluxDB", "arnNamespace" => "timestream-influxdb"}, "aws.auth#sigv4" => {"name" => "timestream-influxdb"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "RestoreMode" => {"type" => "String", "documentation" => "Filters access by the restore mode specified in the request. Valid values: NEW_RESOURCE, REPLACE_EXISTING"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "Timestream InfluxDB", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://timestream-influxdb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://timestream-influxdb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://timestream-influxdb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://timestream-influxdb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_db_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#CreateDbBackup"
        operation.name = "CreateDbBackup"
        operation.input = CreateDbBackupInput
        operation.output = CreateDbBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a Timestream InfluxDB Backup for a DbInstance or DbCluster"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbBackup"]}
      end)
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
      service.add_operation(:delete_db_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#DeleteDbBackup"
        operation.name = "DeleteDbBackup"
        operation.input = DeleteDbBackupInput
        operation.output = DeleteDbBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a Timestream InfluxDB backup"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbBackup"]}
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
      service.add_operation(:get_db_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#GetDbBackup"
        operation.name = "GetDbBackup"
        operation.input = GetDbBackupInput
        operation.output = GetDbBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get information about a Timestream InfluxDB Backup"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbBackup"]}
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
      service.add_operation(:list_db_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#ListDbBackups"
        operation.name = "ListDbBackups"
        operation.input = ListDbBackupsInput
        operation.output = ListDbBackupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list information about all Timestream InfluxDB backups in the account"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["DbBackup"]}
        operation[:paginator] = Paginators::ListDbBackups.new
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
      service.add_operation(:reboot_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#RebootDbCluster"
        operation.name = "RebootDbCluster"
        operation.input = RebootDbClusterInput
        operation.output = RebootDbClusterOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbCluster"]}
      end)
      service.add_operation(:reboot_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#RebootDbInstance"
        operation.name = "RebootDbInstance"
        operation.input = RebootDbInstanceInput
        operation.output = RebootDbInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to reboot a Timestream InfluxDB instance"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbInstance"]}
      end)
      service.add_operation(:restore_from_db_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.timestreaminfluxdb#RestoreFromDbBackup"
        operation.name = "RestoreFromDbBackup"
        operation.input = RestoreFromDbBackupInput
        operation.output = RestoreFromDbBackupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to restore from a Timestream InfluxDB backup"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["DbBackup"]}
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
