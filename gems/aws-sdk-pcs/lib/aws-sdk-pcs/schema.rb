# frozen_string_literal: true

# This is generated code!

module Aws::PCS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Accounting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#Accounting", name: "Accounting")
    AccountingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#AccountingMode", name: "AccountingMode")
    AccountingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#AccountingRequest", name: "AccountingRequest")
    AmiId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#AmiId", name: "AmiId", traits: {"smithy.api#pattern" => "^ami-[a-z0-9]+$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws.*:pcs:.*:[0-9]{12}:.*/[a-z0-9_\\-]+$"})
    BootstrapId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#BootstrapId", name: "BootstrapId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S]+$"})
    CgroupCustomSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CgroupCustomSetting", name: "CgroupCustomSetting")
    CgroupCustomSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#CgroupCustomSettings", name: "CgroupCustomSettings")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#Cluster", name: "Cluster")
    ClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#ClusterIdentifier", name: "ClusterIdentifier", traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,40})$"})
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#ClusterList", name: "ClusterList")
    ClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#ClusterName", name: "ClusterName", traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    ClusterSlurmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ClusterSlurmConfiguration", name: "ClusterSlurmConfiguration")
    ClusterSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ClusterSlurmConfigurationRequest", name: "ClusterSlurmConfigurationRequest")
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#ClusterStatus", name: "ClusterStatus")
    ClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ClusterSummary", name: "ClusterSummary")
    ComputeNodeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ComputeNodeGroup", name: "ComputeNodeGroup")
    ComputeNodeGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupConfiguration", name: "ComputeNodeGroupConfiguration")
    ComputeNodeGroupConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupConfigurationList", name: "ComputeNodeGroupConfigurationList")
    ComputeNodeGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupIdentifier", name: "ComputeNodeGroupIdentifier", traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,25})$"})
    ComputeNodeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupList", name: "ComputeNodeGroupList")
    ComputeNodeGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupName", name: "ComputeNodeGroupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    ComputeNodeGroupSlurmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupSlurmConfiguration", name: "ComputeNodeGroupSlurmConfiguration")
    ComputeNodeGroupSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupSlurmConfigurationRequest", name: "ComputeNodeGroupSlurmConfigurationRequest")
    ComputeNodeGroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupStatus", name: "ComputeNodeGroupStatus")
    ComputeNodeGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ComputeNodeGroupSummary", name: "ComputeNodeGroupSummary")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CreateClusterResponse", name: "CreateClusterResponse")
    CreateComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CreateComputeNodeGroupRequest", name: "CreateComputeNodeGroupRequest")
    CreateComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CreateComputeNodeGroupResponse", name: "CreateComputeNodeGroupResponse")
    CreateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CreateQueueRequest", name: "CreateQueueRequest")
    CreateQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CreateQueueResponse", name: "CreateQueueResponse")
    CustomLaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#CustomLaunchTemplate", name: "CustomLaunchTemplate")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#DeleteComputeNodeGroupRequest", name: "DeleteComputeNodeGroupRequest")
    DeleteComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#DeleteComputeNodeGroupResponse", name: "DeleteComputeNodeGroupResponse")
    DeleteQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#DeleteQueueRequest", name: "DeleteQueueRequest")
    DeleteQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#DeleteQueueResponse", name: "DeleteQueueResponse")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#Endpoint", name: "Endpoint")
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#EndpointType", name: "EndpointType")
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#Endpoints", name: "Endpoints")
    ErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ErrorInfo", name: "ErrorInfo")
    ErrorInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#ErrorInfoList", name: "ErrorInfoList")
    ExecutionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#ExecutionPolicy", name: "ExecutionPolicy")
    GetClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#GetClusterRequest", name: "GetClusterRequest")
    GetClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#GetClusterResponse", name: "GetClusterResponse")
    GetComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#GetComputeNodeGroupRequest", name: "GetComputeNodeGroupRequest")
    GetComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#GetComputeNodeGroupResponse", name: "GetComputeNodeGroupResponse")
    GetQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#GetQueueRequest", name: "GetQueueRequest")
    GetQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#GetQueueResponse", name: "GetQueueResponse")
    GresCustomSettingMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pcs#GresCustomSettingMap", name: "GresCustomSettingMap")
    GresCustomSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#GresCustomSettings", name: "GresCustomSettings")
    InstanceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#InstanceConfig", name: "InstanceConfig")
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#InstanceList", name: "InstanceList")
    InstanceProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#InstanceProfileArn", name: "InstanceProfileArn", traits: {"smithy.api#pattern" => "^arn:aws([a-zA-Z-]{0,10})?:iam::[0-9]{12}:instance-profile/([!-~]{1,510}/)?([\\w+=,.@-]{1,128})$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JwtAuth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#JwtAuth", name: "JwtAuth")
    JwtKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#JwtKey", name: "JwtKey")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListClustersRequest", name: "ListClustersRequest")
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListClustersResponse", name: "ListClustersResponse")
    ListComputeNodeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListComputeNodeGroupsRequest", name: "ListComputeNodeGroupsRequest")
    ListComputeNodeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListComputeNodeGroupsResponse", name: "ListComputeNodeGroupsResponse")
    ListQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListQueuesRequest", name: "ListQueuesRequest")
    ListQueuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListQueuesResponse", name: "ListQueuesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pcs#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#NetworkType", name: "NetworkType")
    Networking = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#Networking", name: "Networking")
    NetworkingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#NetworkingRequest", name: "NetworkingRequest")
    NodeLifecycleActions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#NodeLifecycleActions", name: "NodeLifecycleActions")
    NodeLifecycleActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#NodeLifecycleActionsRequest", name: "NodeLifecycleActionsRequest")
    NodeLifecycleScript = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#NodeLifecycleScript", name: "NodeLifecycleScript")
    NodeLifecycleScriptArgument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#NodeLifecycleScriptArgument", name: "NodeLifecycleScriptArgument", traits: {"smithy.api#length" => {"max" => 256}})
    NodeLifecycleScriptArguments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#NodeLifecycleScriptArguments", name: "NodeLifecycleScriptArguments", traits: {"smithy.api#length" => {"max" => 20}})
    NodeLifecycleScriptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#NodeLifecycleScriptList", name: "NodeLifecycleScriptList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    NodeLifecycleStages = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#NodeLifecycleStages", name: "NodeLifecycleStages")
    OnError = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#OnError", name: "OnError")
    PurchaseOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#PurchaseOption", name: "PurchaseOption")
    Queue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#Queue", name: "Queue")
    QueueIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#QueueIdentifier", name: "QueueIdentifier", traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,25})$"})
    QueueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#QueueList", name: "QueueList")
    QueueName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#QueueName", name: "QueueName", traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    QueueSlurmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#QueueSlurmConfiguration", name: "QueueSlurmConfiguration")
    QueueSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#QueueSlurmConfigurationRequest", name: "QueueSlurmConfigurationRequest")
    QueueStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#QueueStatus", name: "QueueStatus")
    QueueSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#QueueSummary", name: "QueueSummary")
    RegisterComputeNodeGroupInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#RegisterComputeNodeGroupInstanceRequest", name: "RegisterComputeNodeGroupInstanceRequest")
    RegisterComputeNodeGroupInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#RegisterComputeNodeGroupInstanceResponse", name: "RegisterComputeNodeGroupInstanceResponse")
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pcs#RequestTagMap", name: "RequestTagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pcs#ResponseTagMap", name: "ResponseTagMap")
    SBClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#SBClientToken", name: "SBClientToken", traits: {"smithy.api#length" => {"min" => 8, "max" => 100}})
    ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ScalingConfiguration", name: "ScalingConfiguration")
    ScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ScalingConfigurationRequest", name: "ScalingConfigurationRequest")
    Scheduler = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#Scheduler", name: "Scheduler")
    SchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SchedulerRequest", name: "SchedulerRequest")
    SchedulerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#SchedulerType", name: "SchedulerType")
    ScriptCachingPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#ScriptCachingPolicy", name: "ScriptCachingPolicy")
    ScriptSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ScriptSource", name: "ScriptSource")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#pattern" => "^sg-\\w{8,17}$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#SecurityGroupIdList", name: "SecurityGroupIdList")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#SharedSecret", name: "SharedSecret", traits: {"smithy.api#sensitive" => {}})
    Size = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#Size", name: "Size")
    SlurmAuthKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SlurmAuthKey", name: "SlurmAuthKey")
    SlurmCustomSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SlurmCustomSetting", name: "SlurmCustomSetting")
    SlurmCustomSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#SlurmCustomSettings", name: "SlurmCustomSettings")
    SlurmRest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SlurmRest", name: "SlurmRest")
    SlurmRestMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#SlurmRestMode", name: "SlurmRestMode")
    SlurmRestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SlurmRestRequest", name: "SlurmRestRequest")
    SlurmdbdCustomSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SlurmdbdCustomSetting", name: "SlurmdbdCustomSetting")
    SlurmdbdCustomSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#SlurmdbdCustomSettings", name: "SlurmdbdCustomSettings")
    SpotAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#SpotAllocationStrategy", name: "SpotAllocationStrategy")
    SpotOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#SpotOptions", name: "SpotOptions")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#StringList", name: "StringList")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#SubnetId", name: "SubnetId", traits: {"smithy.api#pattern" => "^subnet-\\w{8,17}$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#SubnetIdList", name: "SubnetIdList", traits: {"smithy.api#length" => {"min" => 1}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pcs#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAccountingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateAccountingRequest", name: "UpdateAccountingRequest")
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateClusterRequest", name: "UpdateClusterRequest")
    UpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateClusterResponse", name: "UpdateClusterResponse")
    UpdateClusterSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateClusterSlurmConfigurationRequest", name: "UpdateClusterSlurmConfigurationRequest")
    UpdateComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateComputeNodeGroupRequest", name: "UpdateComputeNodeGroupRequest")
    UpdateComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateComputeNodeGroupResponse", name: "UpdateComputeNodeGroupResponse")
    UpdateComputeNodeGroupSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateComputeNodeGroupSlurmConfigurationRequest", name: "UpdateComputeNodeGroupSlurmConfigurationRequest")
    UpdateNodeLifecycleActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateNodeLifecycleActionsRequest", name: "UpdateNodeLifecycleActionsRequest")
    UpdateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateQueueRequest", name: "UpdateQueueRequest")
    UpdateQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateQueueResponse", name: "UpdateQueueResponse")
    UpdateQueueSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateQueueSlurmConfigurationRequest", name: "UpdateQueueSlurmConfigurationRequest")
    UpdateSchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateSchedulerRequest", name: "UpdateSchedulerRequest")
    UpdateSlurmRestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#UpdateSlurmRestRequest", name: "UpdateSlurmRestRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pcs#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pcs#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pcs#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Accounting.add_member(:default_purge_time_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "defaultPurgeTimeInDays", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}}))
    Accounting.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountingMode, name: "mode", traits: {"smithy.api#required" => {}}))
    Accounting.type = Types::Accounting
    AccountingMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    AccountingMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AccountingRequest.add_member(:default_purge_time_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "defaultPurgeTimeInDays", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}}))
    AccountingRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountingMode, name: "mode", traits: {"smithy.api#required" => {}}))
    AccountingRequest.type = Types::AccountingRequest
    CgroupCustomSetting.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName", traits: {"smithy.api#required" => {}}))
    CgroupCustomSetting.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterValue", traits: {"smithy.api#required" => {}}))
    CgroupCustomSetting.type = Types::CgroupCustomSetting
    CgroupCustomSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CgroupCustomSetting, name: "member"))
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Cluster.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Cluster.add_member(:scheduler, ::Smithy::Schema::Shapes::MemberShape.new(target: Scheduler, name: "scheduler", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "size", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSlurmConfiguration, name: "slurmConfiguration"))
    Cluster.add_member(:networking, ::Smithy::Schema::Shapes::MemberShape.new(target: Networking, name: "networking", traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "endpoints"))
    Cluster.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfoList, name: "errorInfo"))
    Cluster.type = Types::Cluster
    ClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSummary, name: "member"))
    ClusterSlurmConfiguration.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scaleDownIdleTimeInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000000}}))
    ClusterSlurmConfiguration.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    ClusterSlurmConfiguration.add_member(:slurmdbd_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmdbdCustomSettings, name: "slurmdbdCustomSettings"))
    ClusterSlurmConfiguration.add_member(:cgroup_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CgroupCustomSettings, name: "cgroupCustomSettings"))
    ClusterSlurmConfiguration.add_member(:auth_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmAuthKey, name: "authKey"))
    ClusterSlurmConfiguration.add_member(:jwt_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtAuth, name: "jwtAuth"))
    ClusterSlurmConfiguration.add_member(:accounting, ::Smithy::Schema::Shapes::MemberShape.new(target: Accounting, name: "accounting"))
    ClusterSlurmConfiguration.add_member(:slurm_rest, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmRest, name: "slurmRest"))
    ClusterSlurmConfiguration.type = Types::ClusterSlurmConfiguration
    ClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scaleDownIdleTimeInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000000}}))
    ClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    ClusterSlurmConfigurationRequest.add_member(:slurmdbd_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmdbdCustomSettings, name: "slurmdbdCustomSettings"))
    ClusterSlurmConfigurationRequest.add_member(:cgroup_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CgroupCustomSettings, name: "cgroupCustomSettings"))
    ClusterSlurmConfigurationRequest.add_member(:accounting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountingRequest, name: "accounting"))
    ClusterSlurmConfigurationRequest.add_member(:slurm_rest, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmRestRequest, name: "slurmRest"))
    ClusterSlurmConfigurationRequest.type = Types::ClusterSlurmConfigurationRequest
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ClusterStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ClusterStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ClusterStatus.add_member(:suspending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDING", traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ClusterStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ClusterStatus.add_member(:resuming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUMING", traits: {"smithy.api#enumValue" => "RESUMING"}))
    ClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ClusterSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ClusterSummary.type = Types::ClusterSummary
    ComputeNodeGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterId", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroup.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "amiId"))
    ComputeNodeGroup.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:purchase_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOption, name: "purchaseOption"))
    ComputeNodeGroup.add_member(:custom_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLaunchTemplate, name: "customLaunchTemplate", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileArn, name: "iamInstanceProfileArn", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfiguration, name: "scalingConfiguration", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:instance_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "instanceConfigs", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:spot_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotOptions, name: "spotOptions"))
    ComputeNodeGroup.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupSlurmConfiguration, name: "slurmConfiguration"))
    ComputeNodeGroup.add_member(:node_lifecycle_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleActions, name: "nodeLifecycleActions"))
    ComputeNodeGroup.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfoList, name: "errorInfo"))
    ComputeNodeGroup.type = Types::ComputeNodeGroup
    ComputeNodeGroupConfiguration.add_member(:compute_node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "computeNodeGroupId"))
    ComputeNodeGroupConfiguration.type = Types::ComputeNodeGroupConfiguration
    ComputeNodeGroupConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupConfiguration, name: "member"))
    ComputeNodeGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupSummary, name: "member"))
    ComputeNodeGroupSlurmConfiguration.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scaleDownIdleTimeInSeconds", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000000}}))
    ComputeNodeGroupSlurmConfiguration.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    ComputeNodeGroupSlurmConfiguration.add_member(:gres_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GresCustomSettings, name: "gresCustomSettings"))
    ComputeNodeGroupSlurmConfiguration.type = Types::ComputeNodeGroupSlurmConfiguration
    ComputeNodeGroupSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scaleDownIdleTimeInSeconds", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000000}}))
    ComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    ComputeNodeGroupSlurmConfigurationRequest.add_member(:gres_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GresCustomSettings, name: "gresCustomSettings"))
    ComputeNodeGroupSlurmConfigurationRequest.type = Types::ComputeNodeGroupSlurmConfigurationRequest
    ComputeNodeGroupStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ComputeNodeGroupStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputeNodeGroupStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ComputeNodeGroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ComputeNodeGroupStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ComputeNodeGroupStatus.add_member(:suspending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDING", traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ComputeNodeGroupStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ComputeNodeGroupStatus.add_member(:resuming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUMING", traits: {"smithy.api#enumValue" => "RESUMING"}))
    ComputeNodeGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterId", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroupSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.type = Types::ComputeNodeGroupSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterName, name: "clusterName", traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:scheduler, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerRequest, name: "scheduler", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "size", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:networking, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkingRequest, name: "networking", traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSlurmConfigurationRequest, name: "slurmConfiguration"))
    CreateClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:compute_node_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupName, name: "computeNodeGroupName", traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "amiId"))
    CreateComputeNodeGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:purchase_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOption, name: "purchaseOption"))
    CreateComputeNodeGroupRequest.add_member(:custom_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLaunchTemplate, name: "customLaunchTemplate", traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileArn, name: "iamInstanceProfileArn", traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfigurationRequest, name: "scalingConfiguration", traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:instance_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, name: "instanceConfigs", traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:spot_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotOptions, name: "spotOptions"))
    CreateComputeNodeGroupRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupSlurmConfigurationRequest, name: "slurmConfiguration"))
    CreateComputeNodeGroupRequest.add_member(:node_lifecycle_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleActionsRequest, name: "nodeLifecycleActions"))
    CreateComputeNodeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComputeNodeGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateComputeNodeGroupRequest.type = Types::CreateComputeNodeGroupRequest
    CreateComputeNodeGroupResponse.add_member(:compute_node_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroup, name: "computeNodeGroup"))
    CreateComputeNodeGroupResponse.type = Types::CreateComputeNodeGroupResponse
    CreateQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueName, name: "queueName", traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:compute_node_group_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupConfigurationList, name: "computeNodeGroupConfigurations"))
    CreateQueueRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSlurmConfigurationRequest, name: "slurmConfiguration"))
    CreateQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags"))
    CreateQueueRequest.type = Types::CreateQueueRequest
    CreateQueueResponse.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: Queue, name: "queue"))
    CreateQueueResponse.type = Types::CreateQueueResponse
    CustomLaunchTemplate.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    CustomLaunchTemplate.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    CustomLaunchTemplate.type = Types::CustomLaunchTemplate
    DeleteClusterRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteComputeNodeGroupRequest.add_member(:compute_node_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupIdentifier, name: "computeNodeGroupIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteComputeNodeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteComputeNodeGroupRequest.type = Types::DeleteComputeNodeGroupRequest
    DeleteComputeNodeGroupResponse.type = Types::DeleteComputeNodeGroupResponse
    DeleteQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:queue_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIdentifier, name: "queueIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteQueueRequest.type = Types::DeleteQueueRequest
    DeleteQueueResponse.type = Types::DeleteQueueResponse
    Endpoint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "type", traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "privateIpAddress", traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "publicIpAddress"))
    Endpoint.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ipv6Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "port", traits: {"smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    EndpointType.add_member(:slurmctld, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLURMCTLD", traits: {"smithy.api#enumValue" => "SLURMCTLD"}))
    EndpointType.add_member(:slurmdbd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLURMDBD", traits: {"smithy.api#enumValue" => "SLURMDBD"}))
    EndpointType.add_member(:slurmrestd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLURMRESTD", traits: {"smithy.api#enumValue" => "SLURMRESTD"}))
    Endpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    ErrorInfo.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code"))
    ErrorInfo.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ErrorInfo.type = Types::ErrorInfo
    ErrorInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfo, name: "member"))
    ExecutionPolicy.add_member(:first_boot_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRST_BOOT_ONLY", traits: {"smithy.api#enumValue" => "FIRST_BOOT_ONLY"}))
    ExecutionPolicy.add_member(:every_boot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVERY_BOOT", traits: {"smithy.api#enumValue" => "EVERY_BOOT"}))
    GetClusterRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    GetClusterRequest.type = Types::GetClusterRequest
    GetClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    GetClusterResponse.type = Types::GetClusterResponse
    GetComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    GetComputeNodeGroupRequest.add_member(:compute_node_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupIdentifier, name: "computeNodeGroupIdentifier", traits: {"smithy.api#required" => {}}))
    GetComputeNodeGroupRequest.type = Types::GetComputeNodeGroupRequest
    GetComputeNodeGroupResponse.add_member(:compute_node_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroup, name: "computeNodeGroup"))
    GetComputeNodeGroupResponse.type = Types::GetComputeNodeGroupResponse
    GetQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    GetQueueRequest.add_member(:queue_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIdentifier, name: "queueIdentifier", traits: {"smithy.api#required" => {}}))
    GetQueueRequest.type = Types::GetQueueRequest
    GetQueueResponse.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: Queue, name: "queue"))
    GetQueueResponse.type = Types::GetQueueResponse
    GresCustomSettingMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    GresCustomSettingMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    GresCustomSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GresCustomSettingMap, name: "member"))
    InstanceConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    InstanceConfig.type = Types::InstanceConfig
    InstanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfig, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JwtAuth.add_member(:jwt_key, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtKey, name: "jwtKey"))
    JwtAuth.type = Types::JwtAuth
    JwtKey.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secretArn", traits: {"smithy.api#required" => {}}))
    JwtKey.add_member(:secret_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secretVersion", traits: {"smithy.api#required" => {}}))
    JwtKey.type = Types::JwtKey
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterList, name: "clusters", traits: {"smithy.api#required" => {}}))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListClustersResponse.type = Types::ListClustersResponse
    ListComputeNodeGroupsRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    ListComputeNodeGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListComputeNodeGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10}))
    ListComputeNodeGroupsRequest.type = Types::ListComputeNodeGroupsRequest
    ListComputeNodeGroupsResponse.add_member(:compute_node_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupList, name: "computeNodeGroups", traits: {"smithy.api#required" => {}}))
    ListComputeNodeGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListComputeNodeGroupsResponse.type = Types::ListComputeNodeGroupsResponse
    ListQueuesRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    ListQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 10}))
    ListQueuesRequest.type = Types::ListQueuesRequest
    ListQueuesResponse.add_member(:queues, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueList, name: "queues", traits: {"smithy.api#required" => {}}))
    ListQueuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListQueuesResponse.type = Types::ListQueuesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseTagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    Networking.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    Networking.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    Networking.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    Networking.type = Types::Networking
    NetworkingRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "subnetIds"))
    NetworkingRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "securityGroupIds"))
    NetworkingRequest.add_member(:network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkType, name: "networkType"))
    NetworkingRequest.type = Types::NetworkingRequest
    NodeLifecycleActions.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleStages, name: "stages", traits: {"smithy.api#required" => {}}))
    NodeLifecycleActions.add_member(:script_caching_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptCachingPolicy, name: "scriptCachingPolicy", traits: {"smithy.api#default" => "CACHE_ONCE"}))
    NodeLifecycleActions.type = Types::NodeLifecycleActions
    NodeLifecycleActionsRequest.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleStages, name: "stages", traits: {"smithy.api#required" => {}}))
    NodeLifecycleActionsRequest.add_member(:script_caching_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptCachingPolicy, name: "scriptCachingPolicy", traits: {"smithy.api#default" => "CACHE_ONCE"}))
    NodeLifecycleActionsRequest.type = Types::NodeLifecycleActionsRequest
    NodeLifecycleScript.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9 _-]*$", "smithy.api#required" => {}}))
    NodeLifecycleScript.add_member(:script_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptSource, name: "scriptSource", traits: {"smithy.api#required" => {}}))
    NodeLifecycleScript.add_member(:arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleScriptArguments, name: "arguments"))
    NodeLifecycleScript.add_member(:on_error, ::Smithy::Schema::Shapes::MemberShape.new(target: OnError, name: "onError", traits: {"smithy.api#default" => "TERMINATE"}))
    NodeLifecycleScript.add_member(:execution_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionPolicy, name: "executionPolicy", traits: {"smithy.api#default" => "FIRST_BOOT_ONLY"}))
    NodeLifecycleScript.type = Types::NodeLifecycleScript
    NodeLifecycleScriptArguments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleScriptArgument, name: "member"))
    NodeLifecycleScriptList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleScript, name: "member"))
    NodeLifecycleStages.add_member(:node_bootstrapped, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleScriptList, name: "nodeBootstrapped"))
    NodeLifecycleStages.add_member(:node_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleScriptList, name: "nodeReady"))
    NodeLifecycleStages.type = Types::NodeLifecycleStages
    OnError.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE", traits: {"smithy.api#enumValue" => "TERMINATE"}))
    OnError.add_member(:stop_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SEQUENCE", traits: {"smithy.api#enumValue" => "STOP_SEQUENCE"}))
    OnError.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    PurchaseOption.add_member(:ondemand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONDEMAND", traits: {"smithy.api#enumValue" => "ONDEMAND"}))
    PurchaseOption.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "SPOT"}))
    PurchaseOption.add_member(:capacity_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_BLOCK", traits: {"smithy.api#enumValue" => "CAPACITY_BLOCK"}))
    PurchaseOption.add_member(:interruptible_capacity_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTIBLE_CAPACITY_RESERVATION", traits: {"smithy.api#enumValue" => "INTERRUPTIBLE_CAPACITY_RESERVATION"}))
    Queue.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueName, name: "name", traits: {"smithy.api#required" => {}}))
    Queue.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    Queue.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    Queue.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterId", traits: {"smithy.api#required" => {}}))
    Queue.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Queue.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Queue.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Queue.add_member(:compute_node_group_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupConfigurationList, name: "computeNodeGroupConfigurations", traits: {"smithy.api#required" => {}}))
    Queue.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSlurmConfiguration, name: "slurmConfiguration"))
    Queue.add_member(:error_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfoList, name: "errorInfo"))
    Queue.type = Types::Queue
    QueueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSummary, name: "member"))
    QueueSlurmConfiguration.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    QueueSlurmConfiguration.type = Types::QueueSlurmConfiguration
    QueueSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    QueueSlurmConfigurationRequest.type = Types::QueueSlurmConfigurationRequest
    QueueStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    QueueStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    QueueStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    QueueStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    QueueStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    QueueStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    QueueStatus.add_member(:suspending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDING", traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    QueueStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    QueueStatus.add_member(:resuming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUMING", traits: {"smithy.api#enumValue" => "RESUMING"}))
    QueueSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueName, name: "name", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterId", traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QueueSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QueueSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueStatus, name: "status", traits: {"smithy.api#required" => {}}))
    QueueSummary.type = Types::QueueSummary
    RegisterComputeNodeGroupInstanceRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceRequest.add_member(:bootstrap_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BootstrapId, name: "bootstrapId", traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceRequest.type = Types::RegisterComputeNodeGroupInstanceRequest
    RegisterComputeNodeGroupInstanceResponse.add_member(:node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nodeID", traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedSecret, name: "sharedSecret", traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "endpoints", traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clusterName"))
    RegisterComputeNodeGroupInstanceResponse.add_member(:compute_node_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "computeNodeGroupId"))
    RegisterComputeNodeGroupInstanceResponse.add_member(:compute_node_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "computeNodeGroupName"))
    RegisterComputeNodeGroupInstanceResponse.add_member(:node_lifecycle_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleActions, name: "nodeLifecycleActions"))
    RegisterComputeNodeGroupInstanceResponse.add_member(:scheduler_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schedulerVersion"))
    RegisterComputeNodeGroupInstanceResponse.type = Types::RegisterComputeNodeGroupInstanceResponse
    RequestTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    RequestTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    ResponseTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ScalingConfiguration.add_member(:min_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minInstanceCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfiguration.add_member(:max_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxInstanceCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfiguration.type = Types::ScalingConfiguration
    ScalingConfigurationRequest.add_member(:min_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "minInstanceCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfigurationRequest.add_member(:max_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxInstanceCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfigurationRequest.type = Types::ScalingConfigurationRequest
    Scheduler.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerType, name: "type", traits: {"smithy.api#required" => {}}))
    Scheduler.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    Scheduler.type = Types::Scheduler
    SchedulerRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerType, name: "type", traits: {"smithy.api#required" => {}}))
    SchedulerRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    SchedulerRequest.type = Types::SchedulerRequest
    SchedulerType.add_member(:slurm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLURM", traits: {"smithy.api#enumValue" => "SLURM"}))
    ScriptCachingPolicy.add_member(:cache_once, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CACHE_ONCE", traits: {"smithy.api#enumValue" => "CACHE_ONCE"}))
    ScriptCachingPolicy.add_member(:refresh_on_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFRESH_ON_REBOOT", traits: {"smithy.api#enumValue" => "REFRESH_ON_REBOOT"}))
    ScriptSource.add_member(:script_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scriptLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.+|https://([a-zA-Z0-9](?:[a-zA-Z0-9_-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,63}(?::[0-9]{1,5})?(?:[/?#][^\\s]*)?)$", "smithy.api#required" => {}}))
    ScriptSource.add_member(:s3_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3VersionId", traits: {"smithy.api#length" => {"max" => 1024}}))
    ScriptSource.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "checksum", traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[a-fA-F0-9]{64}$"}))
    ScriptSource.type = Types::ScriptSource
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Size.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL", traits: {"smithy.api#enumValue" => "SMALL"}))
    Size.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Size.add_member(:large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LARGE", traits: {"smithy.api#enumValue" => "LARGE"}))
    SlurmAuthKey.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secretArn", traits: {"smithy.api#required" => {}}))
    SlurmAuthKey.add_member(:secret_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "secretVersion", traits: {"smithy.api#required" => {}}))
    SlurmAuthKey.type = Types::SlurmAuthKey
    SlurmCustomSetting.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName", traits: {"smithy.api#required" => {}}))
    SlurmCustomSetting.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterValue", traits: {"smithy.api#required" => {}}))
    SlurmCustomSetting.type = Types::SlurmCustomSetting
    SlurmCustomSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSetting, name: "member"))
    SlurmRest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmRestMode, name: "mode", traits: {"smithy.api#required" => {}}))
    SlurmRest.type = Types::SlurmRest
    SlurmRestMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    SlurmRestMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    SlurmRestRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmRestMode, name: "mode", traits: {"smithy.api#required" => {}}))
    SlurmRestRequest.type = Types::SlurmRestRequest
    SlurmdbdCustomSetting.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterName", traits: {"smithy.api#required" => {}}))
    SlurmdbdCustomSetting.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parameterValue", traits: {"smithy.api#required" => {}}))
    SlurmdbdCustomSetting.type = Types::SlurmdbdCustomSetting
    SlurmdbdCustomSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmdbdCustomSetting, name: "member"))
    SpotAllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWEST_PRICE", traits: {"smithy.api#enumValue" => "lowest-price"}))
    SpotAllocationStrategy.add_member(:capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "capacity-optimized"}))
    SpotAllocationStrategy.add_member(:price_capacity_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICE_CAPACITY_OPTIMIZED", traits: {"smithy.api#enumValue" => "price-capacity-optimized"}))
    SpotOptions.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotAllocationStrategy, name: "allocationStrategy"))
    SpotOptions.type = Types::SpotOptions
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestTagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccountingRequest.add_member(:default_purge_time_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "defaultPurgeTimeInDays", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}}))
    UpdateAccountingRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountingMode, name: "mode"))
    UpdateAccountingRequest.type = Types::UpdateAccountingRequest
    UpdateClusterRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateClusterSlurmConfigurationRequest, name: "slurmConfiguration"))
    UpdateClusterRequest.add_member(:scheduler, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSchedulerRequest, name: "scheduler"))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster"))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scaleDownIdleTimeInSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000000}}))
    UpdateClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    UpdateClusterSlurmConfigurationRequest.add_member(:slurmdbd_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmdbdCustomSettings, name: "slurmdbdCustomSettings"))
    UpdateClusterSlurmConfigurationRequest.add_member(:cgroup_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CgroupCustomSettings, name: "cgroupCustomSettings"))
    UpdateClusterSlurmConfigurationRequest.add_member(:accounting, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAccountingRequest, name: "accounting"))
    UpdateClusterSlurmConfigurationRequest.add_member(:slurm_rest, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSlurmRestRequest, name: "slurmRest"))
    UpdateClusterSlurmConfigurationRequest.type = Types::UpdateClusterSlurmConfigurationRequest
    UpdateComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateComputeNodeGroupRequest.add_member(:compute_node_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupIdentifier, name: "computeNodeGroupIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateComputeNodeGroupRequest.add_member(:ami_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiId, name: "amiId"))
    UpdateComputeNodeGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnetIds"))
    UpdateComputeNodeGroupRequest.add_member(:custom_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLaunchTemplate, name: "customLaunchTemplate"))
    UpdateComputeNodeGroupRequest.add_member(:purchase_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOption, name: "purchaseOption"))
    UpdateComputeNodeGroupRequest.add_member(:spot_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SpotOptions, name: "spotOptions"))
    UpdateComputeNodeGroupRequest.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfigurationRequest, name: "scalingConfiguration"))
    UpdateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileArn, name: "iamInstanceProfileArn"))
    UpdateComputeNodeGroupRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateComputeNodeGroupSlurmConfigurationRequest, name: "slurmConfiguration"))
    UpdateComputeNodeGroupRequest.add_member(:node_lifecycle_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateNodeLifecycleActionsRequest, name: "nodeLifecycleActions"))
    UpdateComputeNodeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateComputeNodeGroupRequest.type = Types::UpdateComputeNodeGroupRequest
    UpdateComputeNodeGroupResponse.add_member(:compute_node_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroup, name: "computeNodeGroup"))
    UpdateComputeNodeGroupResponse.type = Types::UpdateComputeNodeGroupResponse
    UpdateComputeNodeGroupSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "scaleDownIdleTimeInSeconds", traits: {"smithy.api#range" => {"min" => -1, "max" => 10000000}}))
    UpdateComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    UpdateComputeNodeGroupSlurmConfigurationRequest.add_member(:gres_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: GresCustomSettings, name: "gresCustomSettings"))
    UpdateComputeNodeGroupSlurmConfigurationRequest.type = Types::UpdateComputeNodeGroupSlurmConfigurationRequest
    UpdateNodeLifecycleActionsRequest.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeLifecycleStages, name: "stages", traits: {"smithy.api#required" => {}}))
    UpdateNodeLifecycleActionsRequest.add_member(:script_caching_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptCachingPolicy, name: "scriptCachingPolicy", traits: {"smithy.api#default" => "CACHE_ONCE"}))
    UpdateNodeLifecycleActionsRequest.type = Types::UpdateNodeLifecycleActionsRequest
    UpdateQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIdentifier, name: "clusterIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:queue_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueIdentifier, name: "queueIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:compute_node_group_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNodeGroupConfigurationList, name: "computeNodeGroupConfigurations"))
    UpdateQueueRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateQueueSlurmConfigurationRequest, name: "slurmConfiguration"))
    UpdateQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SBClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateQueueRequest.type = Types::UpdateQueueRequest
    UpdateQueueResponse.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: Queue, name: "queue"))
    UpdateQueueResponse.type = Types::UpdateQueueResponse
    UpdateQueueSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmCustomSettings, name: "slurmCustomSettings"))
    UpdateQueueSlurmConfigurationRequest.type = Types::UpdateQueueSlurmConfigurationRequest
    UpdateSchedulerRequest.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    UpdateSchedulerRequest.type = Types::UpdateSchedulerRequest
    UpdateSlurmRestRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SlurmRestMode, name: "mode"))
    UpdateSlurmRestRequest.type = Types::UpdateSlurmRestRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    AWSParallelComputingService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pcs#AWSParallelComputingService"
      service.name = "AWSParallelComputingService"
      service.version = "2023-02-10"
      service.traits = {"aws.api#service" => {"sdkId" => "PCS", "arnNamespace" => "pcs"}, "aws.auth#sigv4" => {"name" => "pcs"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "ResourceName" => {"type" => "String", "documentation" => "Filters creation of resources with a certain name"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS Parallel Computing Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://pcs-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://pcs-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://pcs.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://pcs.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"]}
      end)
      service.add_operation(:create_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateComputeNodeGroup"
        operation.name = "CreateComputeNodeGroup"
        operation.input = CreateComputeNodeGroupRequest
        operation.output = CreateComputeNodeGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "InstanceArnSuccess", "params" => {"clusterIdentifier" => "testCluster", "computeNodeGroupName" => "testNodeGroupName", "subnetIds" => ["subnet-0cbf727bae9405b47"], "scalingConfiguration" => {"minInstanceCount" => 1, "maxInstanceCount" => 1}, "iamInstanceProfileArn" => "arn:aws:iam::975050141277:instance-profile/aws-pcs/example-role-2", "customLaunchTemplate" => {"id" => "lt-0b8f8ee3f92b73dc0", "version" => "1"}, "instanceConfigs" => [{"instanceType" => "t3.medium"}]}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:create_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateQueue"
        operation.name = "CreateQueue"
        operation.input = CreateQueueRequest
        operation.output = CreateQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"]}
      end)
      service.add_operation(:delete_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteComputeNodeGroup"
        operation.name = "DeleteComputeNodeGroup"
        operation.input = DeleteComputeNodeGroupRequest
        operation.output = DeleteComputeNodeGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"]}
      end)
      service.add_operation(:delete_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteQueue"
        operation.name = "DeleteQueue"
        operation.input = DeleteQueueRequest
        operation.output = DeleteQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
      end)
      service.add_operation(:get_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetCluster"
        operation.name = "GetCluster"
        operation.input = GetClusterRequest
        operation.output = GetClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "GetCluster_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetComputeNodeGroup"
        operation.name = "GetComputeNodeGroup"
        operation.input = GetComputeNodeGroupRequest
        operation.output = GetComputeNodeGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "GetComputeNodeGroup_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist", "computeNodeGroupIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetQueue"
        operation.name = "GetQueue"
        operation.input = GetQueueRequest
        operation.output = GetQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Queue"], "smithy.test#smokeTests" => [{"id" => "GetQueueFailure_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist", "queueIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_compute_node_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListComputeNodeGroups"
        operation.name = "ListComputeNodeGroups"
        operation.input = ListComputeNodeGroupsRequest
        operation.output = ListComputeNodeGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "ListComputeNodeGroups_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListComputeNodeGroups.new
      end)
      service.add_operation(:list_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListQueues"
        operation.name = "ListQueues"
        operation.input = ListQueuesRequest
        operation.output = ListQueuesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Queue"], "smithy.test#smokeTests" => [{"id" => "ListQueueFailure_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListQueues.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_compute_node_group_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#RegisterComputeNodeGroupInstance"
        operation.name = "RegisterComputeNodeGroupInstance"
        operation.input = RegisterComputeNodeGroupInstanceRequest
        operation.output = RegisterComputeNodeGroupInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "UpdateCluster_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:update_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateComputeNodeGroup"
        operation.name = "UpdateComputeNodeGroup"
        operation.input = UpdateComputeNodeGroupRequest
        operation.output = UpdateComputeNodeGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"]}
      end)
      service.add_operation(:update_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateQueue"
        operation.name = "UpdateQueue"
        operation.input = UpdateQueueRequest
        operation.output = UpdateQueueResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
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
