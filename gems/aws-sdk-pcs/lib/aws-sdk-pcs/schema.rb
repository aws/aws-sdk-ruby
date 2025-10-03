# frozen_string_literal: true

# This is generated code!

module Aws::PCS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Accounting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Accounting', name: 'Accounting')
    AccountingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#AccountingMode', name: 'AccountingMode')
    AccountingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#AccountingRequest', name: 'AccountingRequest')
    AmiId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#AmiId', name: 'AmiId', traits: {"smithy.api#pattern" => "^ami-[a-z0-9]+$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws.*:pcs:.*:[0-9]{12}:.*/[a-z0-9_\\-]+$"})
    BootstrapId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#BootstrapId', name: 'BootstrapId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S]+$"})
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Cluster', name: 'Cluster')
    ClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ClusterIdentifier', name: 'ClusterIdentifier', traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,40})$"})
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ClusterList', name: 'ClusterList')
    ClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ClusterName', name: 'ClusterName', traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    ClusterSlurmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ClusterSlurmConfiguration', name: 'ClusterSlurmConfiguration')
    ClusterSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ClusterSlurmConfigurationRequest', name: 'ClusterSlurmConfigurationRequest')
    ClusterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#ClusterStatus', name: 'ClusterStatus')
    ClusterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ClusterSummary', name: 'ClusterSummary')
    ComputeNodeGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroup', name: 'ComputeNodeGroup')
    ComputeNodeGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupConfiguration', name: 'ComputeNodeGroupConfiguration')
    ComputeNodeGroupConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupConfigurationList', name: 'ComputeNodeGroupConfigurationList')
    ComputeNodeGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupIdentifier', name: 'ComputeNodeGroupIdentifier', traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,25})$"})
    ComputeNodeGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupList', name: 'ComputeNodeGroupList')
    ComputeNodeGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupName', name: 'ComputeNodeGroupName', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    ComputeNodeGroupSlurmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupSlurmConfiguration', name: 'ComputeNodeGroupSlurmConfiguration')
    ComputeNodeGroupSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupSlurmConfigurationRequest', name: 'ComputeNodeGroupSlurmConfigurationRequest')
    ComputeNodeGroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupStatus', name: 'ComputeNodeGroupStatus')
    ComputeNodeGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupSummary', name: 'ComputeNodeGroupSummary')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateComputeNodeGroupRequest', name: 'CreateComputeNodeGroupRequest')
    CreateComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateComputeNodeGroupResponse', name: 'CreateComputeNodeGroupResponse')
    CreateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateQueueRequest', name: 'CreateQueueRequest')
    CreateQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateQueueResponse', name: 'CreateQueueResponse')
    CustomLaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CustomLaunchTemplate', name: 'CustomLaunchTemplate')
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteComputeNodeGroupRequest', name: 'DeleteComputeNodeGroupRequest')
    DeleteComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteComputeNodeGroupResponse', name: 'DeleteComputeNodeGroupResponse')
    DeleteQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteQueueRequest', name: 'DeleteQueueRequest')
    DeleteQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteQueueResponse', name: 'DeleteQueueResponse')
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Endpoint', name: 'Endpoint')
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#EndpointType', name: 'EndpointType')
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#Endpoints', name: 'Endpoints')
    ErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ErrorInfo', name: 'ErrorInfo')
    ErrorInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ErrorInfoList', name: 'ErrorInfoList')
    GetClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetClusterRequest', name: 'GetClusterRequest')
    GetClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetClusterResponse', name: 'GetClusterResponse')
    GetComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetComputeNodeGroupRequest', name: 'GetComputeNodeGroupRequest')
    GetComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetComputeNodeGroupResponse', name: 'GetComputeNodeGroupResponse')
    GetQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetQueueRequest', name: 'GetQueueRequest')
    GetQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetQueueResponse', name: 'GetQueueResponse')
    InstanceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#InstanceConfig', name: 'InstanceConfig')
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#InstanceList', name: 'InstanceList')
    InstanceProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#InstanceProfileArn', name: 'InstanceProfileArn', traits: {"smithy.api#pattern" => "^arn:aws([a-zA-Z-]{0,10})?:iam::[0-9]{12}:instance-profile/([!-~]{1,510}/)?([\\w+=,.@-]{1,128})$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListClustersRequest', name: 'ListClustersRequest')
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListClustersResponse', name: 'ListClustersResponse')
    ListComputeNodeGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListComputeNodeGroupsRequest', name: 'ListComputeNodeGroupsRequest')
    ListComputeNodeGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListComputeNodeGroupsResponse', name: 'ListComputeNodeGroupsResponse')
    ListQueuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListQueuesRequest', name: 'ListQueuesRequest')
    ListQueuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListQueuesResponse', name: 'ListQueuesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pcs#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#NetworkType', name: 'NetworkType')
    Networking = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Networking', name: 'Networking')
    NetworkingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#NetworkingRequest', name: 'NetworkingRequest')
    PurchaseOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#PurchaseOption', name: 'PurchaseOption')
    Queue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Queue', name: 'Queue')
    QueueIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#QueueIdentifier', name: 'QueueIdentifier', traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,25})$"})
    QueueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#QueueList', name: 'QueueList')
    QueueName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#QueueName', name: 'QueueName', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    QueueSlurmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#QueueSlurmConfiguration', name: 'QueueSlurmConfiguration')
    QueueSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#QueueSlurmConfigurationRequest', name: 'QueueSlurmConfigurationRequest')
    QueueStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#QueueStatus', name: 'QueueStatus')
    QueueSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#QueueSummary', name: 'QueueSummary')
    RegisterComputeNodeGroupInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#RegisterComputeNodeGroupInstanceRequest', name: 'RegisterComputeNodeGroupInstanceRequest')
    RegisterComputeNodeGroupInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#RegisterComputeNodeGroupInstanceResponse', name: 'RegisterComputeNodeGroupInstanceResponse')
    RequestTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pcs#RequestTagMap', name: 'RequestTagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pcs#ResponseTagMap', name: 'ResponseTagMap')
    SBClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SBClientToken', name: 'SBClientToken', traits: {"smithy.api#length" => {"min" => 8, "max" => 100}})
    ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ScalingConfiguration', name: 'ScalingConfiguration')
    ScalingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ScalingConfigurationRequest', name: 'ScalingConfigurationRequest')
    Scheduler = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Scheduler', name: 'Scheduler')
    SchedulerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SchedulerRequest', name: 'SchedulerRequest')
    SchedulerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#SchedulerType', name: 'SchedulerType')
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-\\w{8,17}$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#SecurityGroupIdList', name: 'SecurityGroupIdList')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedSecret = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SharedSecret', name: 'SharedSecret', traits: {"smithy.api#sensitive" => {}})
    Size = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#Size', name: 'Size')
    SlurmAuthKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SlurmAuthKey', name: 'SlurmAuthKey')
    SlurmCustomSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SlurmCustomSetting', name: 'SlurmCustomSetting')
    SlurmCustomSettings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#SlurmCustomSettings', name: 'SlurmCustomSettings')
    SpotAllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#SpotAllocationStrategy', name: 'SpotAllocationStrategy')
    SpotOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SpotOptions', name: 'SpotOptions')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#StringList', name: 'StringList')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-\\w{8,17}$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#SubnetIdList', name: 'SubnetIdList', traits: {"smithy.api#length" => {"min" => 1}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    UpdateAccountingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateAccountingRequest', name: 'UpdateAccountingRequest')
    UpdateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateClusterRequest', name: 'UpdateClusterRequest')
    UpdateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateClusterResponse', name: 'UpdateClusterResponse')
    UpdateClusterSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateClusterSlurmConfigurationRequest', name: 'UpdateClusterSlurmConfigurationRequest')
    UpdateComputeNodeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateComputeNodeGroupRequest', name: 'UpdateComputeNodeGroupRequest')
    UpdateComputeNodeGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateComputeNodeGroupResponse', name: 'UpdateComputeNodeGroupResponse')
    UpdateComputeNodeGroupSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateComputeNodeGroupSlurmConfigurationRequest', name: 'UpdateComputeNodeGroupSlurmConfigurationRequest')
    UpdateQueueRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateQueueRequest', name: 'UpdateQueueRequest')
    UpdateQueueResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateQueueResponse', name: 'UpdateQueueResponse')
    UpdateQueueSlurmConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateQueueSlurmConfigurationRequest', name: 'UpdateQueueSlurmConfigurationRequest')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Accounting.add_member(:default_purge_time_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'defaultPurgeTimeInDays', traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}}))
    Accounting.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingMode, location_name: 'mode', traits: {"smithy.api#required" => {}}))
    Accounting.type = Types::Accounting
    AccountingMode.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    AccountingMode.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AccountingRequest.add_member(:default_purge_time_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'defaultPurgeTimeInDays', traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}}))
    AccountingRequest.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingMode, location_name: 'mode', traits: {"smithy.api#required" => {}}))
    AccountingRequest.type = Types::AccountingRequest
    Cluster.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Cluster.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Cluster.add_member(:scheduler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scheduler, location_name: 'scheduler', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'size', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSlurmConfiguration, location_name: 'slurmConfiguration'))
    Cluster.add_member(:networking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Networking, location_name: 'networking', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'endpoints'))
    Cluster.add_member(:error_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: 'errorInfo'))
    Cluster.type = Types::Cluster
    ClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSummary)
    ClusterSlurmConfiguration.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'scaleDownIdleTimeInSeconds', traits: {"smithy.api#range" => {"min" => 1}}))
    ClusterSlurmConfiguration.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    ClusterSlurmConfiguration.add_member(:auth_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmAuthKey, location_name: 'authKey'))
    ClusterSlurmConfiguration.add_member(:accounting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accounting, location_name: 'accounting'))
    ClusterSlurmConfiguration.type = Types::ClusterSlurmConfiguration
    ClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'scaleDownIdleTimeInSeconds', traits: {"smithy.api#range" => {"min" => 1}}))
    ClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    ClusterSlurmConfigurationRequest.add_member(:accounting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingRequest, location_name: 'accounting'))
    ClusterSlurmConfigurationRequest.type = Types::ClusterSlurmConfigurationRequest
    ClusterStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ClusterStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ClusterStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ClusterStatus.add_member(:suspending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ClusterStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ClusterSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ClusterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ClusterSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ClusterSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ClusterSummary.type = Types::ClusterSummary
    ComputeNodeGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroup.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId'))
    ComputeNodeGroup.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:purchase_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOption, location_name: 'purchaseOption'))
    ComputeNodeGroup.add_member(:custom_launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: 'customLaunchTemplate', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'iamInstanceProfileArn', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: 'scalingConfiguration', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:instance_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'instanceConfigs', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:spot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotOptions, location_name: 'spotOptions'))
    ComputeNodeGroup.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupSlurmConfiguration, location_name: 'slurmConfiguration'))
    ComputeNodeGroup.add_member(:error_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: 'errorInfo'))
    ComputeNodeGroup.type = Types::ComputeNodeGroup
    ComputeNodeGroupConfiguration.add_member(:compute_node_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'computeNodeGroupId'))
    ComputeNodeGroupConfiguration.type = Types::ComputeNodeGroupConfiguration
    ComputeNodeGroupConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfiguration)
    ComputeNodeGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupSummary)
    ComputeNodeGroupSlurmConfiguration.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    ComputeNodeGroupSlurmConfiguration.type = Types::ComputeNodeGroupSlurmConfiguration
    ComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    ComputeNodeGroupSlurmConfigurationRequest.type = Types::ComputeNodeGroupSlurmConfigurationRequest
    ComputeNodeGroupStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ComputeNodeGroupStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputeNodeGroupStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ComputeNodeGroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ComputeNodeGroupStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ComputeNodeGroupStatus.add_member(:suspending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ComputeNodeGroupStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ComputeNodeGroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroupSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroupSummary.type = Types::ComputeNodeGroupSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:scheduler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerRequest, location_name: 'scheduler', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'size', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:networking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkingRequest, location_name: 'networking', traits: {"smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSlurmConfigurationRequest, location_name: 'slurmConfiguration'))
    CreateClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags'))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:compute_node_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupName, location_name: 'computeNodeGroupName', traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId'))
    CreateComputeNodeGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:purchase_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOption, location_name: 'purchaseOption'))
    CreateComputeNodeGroupRequest.add_member(:custom_launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: 'customLaunchTemplate', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'iamInstanceProfileArn', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationRequest, location_name: 'scalingConfiguration', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:instance_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'instanceConfigs', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:spot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotOptions, location_name: 'spotOptions'))
    CreateComputeNodeGroupRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupSlurmConfigurationRequest, location_name: 'slurmConfiguration'))
    CreateComputeNodeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateComputeNodeGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags'))
    CreateComputeNodeGroupRequest.type = Types::CreateComputeNodeGroupRequest
    CreateComputeNodeGroupResponse.add_member(:compute_node_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: 'computeNodeGroup'))
    CreateComputeNodeGroupResponse.type = Types::CreateComputeNodeGroupResponse
    CreateQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:queue_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueName, location_name: 'queueName', traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:compute_node_group_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: 'computeNodeGroupConfigurations'))
    CreateQueueRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueSlurmConfigurationRequest, location_name: 'slurmConfiguration'))
    CreateQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQueueRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags'))
    CreateQueueRequest.type = Types::CreateQueueRequest
    CreateQueueResponse.add_member(:queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Queue, location_name: 'queue'))
    CreateQueueResponse.type = Types::CreateQueueResponse
    CustomLaunchTemplate.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CustomLaunchTemplate.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#required" => {}}))
    CustomLaunchTemplate.type = Types::CustomLaunchTemplate
    DeleteClusterRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteComputeNodeGroupRequest.add_member(:compute_node_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, location_name: 'computeNodeGroupIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteComputeNodeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteComputeNodeGroupRequest.type = Types::DeleteComputeNodeGroupRequest
    DeleteComputeNodeGroupResponse.type = Types::DeleteComputeNodeGroupResponse
    DeleteQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:queue_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIdentifier, location_name: 'queueIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteQueueRequest.type = Types::DeleteQueueRequest
    DeleteQueueResponse.type = Types::DeleteQueueResponse
    Endpoint.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'privateIpAddress', traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'publicIpAddress'))
    Endpoint.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ipv6Address'))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'port', traits: {"smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    EndpointType.add_member(:slurmctld, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLURMCTLD', traits: {"smithy.api#enumValue" => "SLURMCTLD"}))
    EndpointType.add_member(:slurmdbd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLURMDBD', traits: {"smithy.api#enumValue" => "SLURMDBD"}))
    Endpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    ErrorInfo.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'code'))
    ErrorInfo.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ErrorInfo.type = Types::ErrorInfo
    ErrorInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfo)
    GetClusterRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    GetClusterRequest.type = Types::GetClusterRequest
    GetClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    GetClusterResponse.type = Types::GetClusterResponse
    GetComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    GetComputeNodeGroupRequest.add_member(:compute_node_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, location_name: 'computeNodeGroupIdentifier', traits: {"smithy.api#required" => {}}))
    GetComputeNodeGroupRequest.type = Types::GetComputeNodeGroupRequest
    GetComputeNodeGroupResponse.add_member(:compute_node_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: 'computeNodeGroup'))
    GetComputeNodeGroupResponse.type = Types::GetComputeNodeGroupResponse
    GetQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    GetQueueRequest.add_member(:queue_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIdentifier, location_name: 'queueIdentifier', traits: {"smithy.api#required" => {}}))
    GetQueueRequest.type = Types::GetQueueRequest
    GetQueueResponse.add_member(:queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Queue, location_name: 'queue'))
    GetQueueResponse.type = Types::GetQueueResponse
    InstanceConfig.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'instanceType'))
    InstanceConfig.type = Types::InstanceConfig
    InstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfig)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'clusters', traits: {"smithy.api#required" => {}}))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListClustersResponse.type = Types::ListClustersResponse
    ListComputeNodeGroupsRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    ListComputeNodeGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListComputeNodeGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10}))
    ListComputeNodeGroupsRequest.type = Types::ListComputeNodeGroupsRequest
    ListComputeNodeGroupsResponse.add_member(:compute_node_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupList, location_name: 'computeNodeGroups', traits: {"smithy.api#required" => {}}))
    ListComputeNodeGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListComputeNodeGroupsResponse.type = Types::ListComputeNodeGroupsResponse
    ListQueuesRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    ListQueuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListQueuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10}))
    ListQueuesRequest.type = Types::ListQueuesRequest
    ListQueuesResponse.add_member(:queues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueList, location_name: 'queues', traits: {"smithy.api#required" => {}}))
    ListQueuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListQueuesResponse.type = Types::ListQueuesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkType.add_member(:ipv4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:ipv6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    Networking.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds'))
    Networking.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds'))
    Networking.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType'))
    Networking.type = Types::Networking
    NetworkingRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds'))
    NetworkingRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds'))
    NetworkingRequest.add_member(:network_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType'))
    NetworkingRequest.type = Types::NetworkingRequest
    PurchaseOption.add_member(:ondemand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONDEMAND', traits: {"smithy.api#enumValue" => "ONDEMAND"}))
    PurchaseOption.add_member(:spot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT', traits: {"smithy.api#enumValue" => "SPOT"}))
    PurchaseOption.add_member(:capacity_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_BLOCK', traits: {"smithy.api#enumValue" => "CAPACITY_BLOCK"}))
    Queue.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Queue.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Queue.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Queue.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#required" => {}}))
    Queue.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Queue.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Queue.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Queue.add_member(:compute_node_group_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: 'computeNodeGroupConfigurations', traits: {"smithy.api#required" => {}}))
    Queue.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueSlurmConfiguration, location_name: 'slurmConfiguration'))
    Queue.add_member(:error_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: 'errorInfo'))
    Queue.type = Types::Queue
    QueueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueSummary)
    QueueSlurmConfiguration.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    QueueSlurmConfiguration.type = Types::QueueSlurmConfiguration
    QueueSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    QueueSlurmConfigurationRequest.type = Types::QueueSlurmConfigurationRequest
    QueueStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    QueueStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    QueueStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    QueueStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    QueueStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    QueueStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    QueueStatus.add_member(:suspending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    QueueStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    QueueSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:cluster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#required" => {}}))
    QueueSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QueueSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QueueSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    QueueSummary.type = Types::QueueSummary
    RegisterComputeNodeGroupInstanceRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceRequest.add_member(:bootstrap_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapId, location_name: 'bootstrapId', traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceRequest.type = Types::RegisterComputeNodeGroupInstanceRequest
    RegisterComputeNodeGroupInstanceResponse.add_member(:node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nodeID', traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:shared_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedSecret, location_name: 'sharedSecret', traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'endpoints', traits: {"smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.type = Types::RegisterComputeNodeGroupInstanceResponse
    RequestTagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseTagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ScalingConfiguration.add_member(:min_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfiguration.add_member(:max_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfiguration.type = Types::ScalingConfiguration
    ScalingConfigurationRequest.add_member(:min_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfigurationRequest.add_member(:max_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfigurationRequest.type = Types::ScalingConfigurationRequest
    Scheduler.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Scheduler.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#required" => {}}))
    Scheduler.type = Types::Scheduler
    SchedulerRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SchedulerRequest.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#required" => {}}))
    SchedulerRequest.type = Types::SchedulerRequest
    SchedulerType.add_member(:slurm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLURM', traits: {"smithy.api#enumValue" => "SLURM"}))
    SecurityGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId'))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Size.add_member(:small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL', traits: {"smithy.api#enumValue" => "SMALL"}))
    Size.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Size.add_member(:large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE', traits: {"smithy.api#enumValue" => "LARGE"}))
    SlurmAuthKey.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'secretArn', traits: {"smithy.api#required" => {}}))
    SlurmAuthKey.add_member(:secret_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'secretVersion', traits: {"smithy.api#required" => {}}))
    SlurmAuthKey.type = Types::SlurmAuthKey
    SlurmCustomSetting.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterName', traits: {"smithy.api#required" => {}}))
    SlurmCustomSetting.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterValue', traits: {"smithy.api#required" => {}}))
    SlurmCustomSetting.type = Types::SlurmCustomSetting
    SlurmCustomSettings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSetting)
    SpotAllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWEST_PRICE', traits: {"smithy.api#enumValue" => "lowest-price"}))
    SpotAllocationStrategy.add_member(:capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "capacity-optimized"}))
    SpotAllocationStrategy.add_member(:price_capacity_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRICE_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "price-capacity-optimized"}))
    SpotOptions.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotAllocationStrategy, location_name: 'allocationStrategy'))
    SpotOptions.type = Types::SpotOptions
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    SubnetIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAccountingRequest.add_member(:default_purge_time_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'defaultPurgeTimeInDays', traits: {"smithy.api#range" => {"min" => -1, "max" => 10000}}))
    UpdateAccountingRequest.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingMode, location_name: 'mode'))
    UpdateAccountingRequest.type = Types::UpdateAccountingRequest
    UpdateClusterRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    UpdateClusterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateClusterRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterSlurmConfigurationRequest, location_name: 'slurmConfiguration'))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster'))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'scaleDownIdleTimeInSeconds', traits: {"smithy.api#range" => {"min" => 1}}))
    UpdateClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    UpdateClusterSlurmConfigurationRequest.add_member(:accounting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountingRequest, location_name: 'accounting'))
    UpdateClusterSlurmConfigurationRequest.type = Types::UpdateClusterSlurmConfigurationRequest
    UpdateComputeNodeGroupRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    UpdateComputeNodeGroupRequest.add_member(:compute_node_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, location_name: 'computeNodeGroupIdentifier', traits: {"smithy.api#required" => {}}))
    UpdateComputeNodeGroupRequest.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId'))
    UpdateComputeNodeGroupRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds'))
    UpdateComputeNodeGroupRequest.add_member(:custom_launch_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: 'customLaunchTemplate'))
    UpdateComputeNodeGroupRequest.add_member(:purchase_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOption, location_name: 'purchaseOption'))
    UpdateComputeNodeGroupRequest.add_member(:spot_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpotOptions, location_name: 'spotOptions'))
    UpdateComputeNodeGroupRequest.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationRequest, location_name: 'scalingConfiguration'))
    UpdateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'iamInstanceProfileArn'))
    UpdateComputeNodeGroupRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupSlurmConfigurationRequest, location_name: 'slurmConfiguration'))
    UpdateComputeNodeGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateComputeNodeGroupRequest.type = Types::UpdateComputeNodeGroupRequest
    UpdateComputeNodeGroupResponse.add_member(:compute_node_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: 'computeNodeGroup'))
    UpdateComputeNodeGroupResponse.type = Types::UpdateComputeNodeGroupResponse
    UpdateComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    UpdateComputeNodeGroupSlurmConfigurationRequest.type = Types::UpdateComputeNodeGroupSlurmConfigurationRequest
    UpdateQueueRequest.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:queue_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIdentifier, location_name: 'queueIdentifier', traits: {"smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:compute_node_group_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: 'computeNodeGroupConfigurations'))
    UpdateQueueRequest.add_member(:slurm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueSlurmConfigurationRequest, location_name: 'slurmConfiguration'))
    UpdateQueueRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateQueueRequest.type = Types::UpdateQueueRequest
    UpdateQueueResponse.add_member(:queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Queue, location_name: 'queue'))
    UpdateQueueResponse.type = Types::UpdateQueueResponse
    UpdateQueueSlurmConfigurationRequest.add_member(:slurm_custom_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings'))
    UpdateQueueSlurmConfigurationRequest.type = Types::UpdateQueueSlurmConfigurationRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    AWSParallelComputingService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pcs#AWSParallelComputingService"
      service.name = "AWSParallelComputingService"
      service.version = "2023-02-10"
      service.traits = {"aws.api#service" => {"sdkId" => "PCS", "arnNamespace" => "pcs"}, "aws.auth#sigv4" => {"name" => "pcs"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "pcs:ResourceName" => {"type" => "String", "documentation" => "Filters creation of resources with a certain name"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS Parallel Computing Service"}
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"]}
      end)
      service.add_operation(:create_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateComputeNodeGroup"
        operation.name = "CreateComputeNodeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputeNodeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputeNodeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "InstanceArnSuccess", "params" => {"clusterIdentifier" => "testCluster", "computeNodeGroupName" => "testNodeGroupName", "subnetIds" => ["subnet-0cbf727bae9405b47"], "scalingConfiguration" => {"minInstanceCount" => 1, "maxInstanceCount" => 1}, "iamInstanceProfileArn" => "arn:aws:iam::975050141277:instance-profile/aws-pcs/example-role-2", "customLaunchTemplate" => {"id" => "lt-0b8f8ee3f92b73dc0", "version" => "1"}, "instanceConfigs" => [{"instanceType" => "t3.medium"}]}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:create_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateQueue"
        operation.name = "CreateQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"]}
      end)
      service.add_operation(:delete_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteComputeNodeGroup"
        operation.name = "DeleteComputeNodeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputeNodeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputeNodeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"]}
      end)
      service.add_operation(:delete_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteQueue"
        operation.name = "DeleteQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
      end)
      service.add_operation(:get_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetCluster"
        operation.name = "GetCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "GetCluster_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetComputeNodeGroup"
        operation.name = "GetComputeNodeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComputeNodeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetComputeNodeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "GetComputeNodeGroup_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist", "computeNodeGroupIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetQueue"
        operation.name = "GetQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Queue"], "smithy.test#smokeTests" => [{"id" => "GetQueueFailure_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist", "queueIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListClusters"
        operation.name = "ListClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_compute_node_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListComputeNodeGroups"
        operation.name = "ListComputeNodeGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputeNodeGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputeNodeGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "ListComputeNodeGroups_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListComputeNodeGroups.new
      end)
      service.add_operation(:list_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListQueues"
        operation.name = "ListQueues"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Queue"], "smithy.test#smokeTests" => [{"id" => "ListQueueFailure_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListQueues.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_compute_node_group_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#RegisterComputeNodeGroupInstance"
        operation.name = "RegisterComputeNodeGroupInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterComputeNodeGroupInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterComputeNodeGroupInstanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "UpdateCluster_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:update_compute_node_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateComputeNodeGroup"
        operation.name = "UpdateComputeNodeGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"]}
      end)
      service.add_operation(:update_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateQueue"
        operation.name = "UpdateQueue"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
