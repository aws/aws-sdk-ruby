# frozen_string_literal: true

# This is generated code!

module Aws::PCS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Accounting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Accounting', name: 'Accounting')
    AccountingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#AccountingMode', name: 'AccountingMode')
    AccountingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#AccountingRequest', name: 'AccountingRequest')
    AmiId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#AmiId', name: 'AmiId', traits: {"smithy.api#pattern" => "^ami-[a-z0-9]+$"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws.*:pcs:.*:[0-9]{12}:.*/[a-z0-9_\\-]+$"})
    BootstrapId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#BootstrapId', name: 'BootstrapId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\S]+$"})
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Cluster', name: 'Cluster')
    ClusterIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ClusterIdentifier', name: 'ClusterIdentifier', traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,40})$"})
    ClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ClusterList', name: 'ClusterList')
    ClusterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ClusterName', name: 'ClusterName', traits: {"smithy.api#length" => {"min" => 3, "max" => 40}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    ClusterSlurmConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ClusterSlurmConfiguration', name: 'ClusterSlurmConfiguration')
    ClusterSlurmConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ClusterSlurmConfigurationRequest', name: 'ClusterSlurmConfigurationRequest')
    ClusterStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#ClusterStatus', name: 'ClusterStatus')
    ClusterSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ClusterSummary', name: 'ClusterSummary')
    ComputeNodeGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroup', name: 'ComputeNodeGroup')
    ComputeNodeGroupConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupConfiguration', name: 'ComputeNodeGroupConfiguration')
    ComputeNodeGroupConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupConfigurationList', name: 'ComputeNodeGroupConfigurationList')
    ComputeNodeGroupIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupIdentifier', name: 'ComputeNodeGroupIdentifier', traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,25})$"})
    ComputeNodeGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupList', name: 'ComputeNodeGroupList')
    ComputeNodeGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupName', name: 'ComputeNodeGroupName', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    ComputeNodeGroupSlurmConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupSlurmConfiguration', name: 'ComputeNodeGroupSlurmConfiguration')
    ComputeNodeGroupSlurmConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupSlurmConfigurationRequest', name: 'ComputeNodeGroupSlurmConfigurationRequest')
    ComputeNodeGroupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupStatus', name: 'ComputeNodeGroupStatus')
    ComputeNodeGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ComputeNodeGroupSummary', name: 'ComputeNodeGroupSummary')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateClusterRequest', name: 'CreateClusterRequest')
    CreateClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateClusterResponse', name: 'CreateClusterResponse')
    CreateComputeNodeGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateComputeNodeGroupRequest', name: 'CreateComputeNodeGroupRequest')
    CreateComputeNodeGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateComputeNodeGroupResponse', name: 'CreateComputeNodeGroupResponse')
    CreateQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateQueueRequest', name: 'CreateQueueRequest')
    CreateQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CreateQueueResponse', name: 'CreateQueueResponse')
    CustomLaunchTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#CustomLaunchTemplate', name: 'CustomLaunchTemplate')
    DeleteClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteClusterRequest', name: 'DeleteClusterRequest')
    DeleteClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteClusterResponse', name: 'DeleteClusterResponse')
    DeleteComputeNodeGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteComputeNodeGroupRequest', name: 'DeleteComputeNodeGroupRequest')
    DeleteComputeNodeGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteComputeNodeGroupResponse', name: 'DeleteComputeNodeGroupResponse')
    DeleteQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteQueueRequest', name: 'DeleteQueueRequest')
    DeleteQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#DeleteQueueResponse', name: 'DeleteQueueResponse')
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Endpoint', name: 'Endpoint')
    EndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#EndpointType', name: 'EndpointType')
    Endpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#Endpoints', name: 'Endpoints')
    ErrorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ErrorInfo', name: 'ErrorInfo')
    ErrorInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ErrorInfoList', name: 'ErrorInfoList')
    GetClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetClusterRequest', name: 'GetClusterRequest')
    GetClusterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetClusterResponse', name: 'GetClusterResponse')
    GetComputeNodeGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetComputeNodeGroupRequest', name: 'GetComputeNodeGroupRequest')
    GetComputeNodeGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetComputeNodeGroupResponse', name: 'GetComputeNodeGroupResponse')
    GetQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetQueueRequest', name: 'GetQueueRequest')
    GetQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#GetQueueResponse', name: 'GetQueueResponse')
    InstanceConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#InstanceConfig', name: 'InstanceConfig')
    InstanceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#InstanceList', name: 'InstanceList')
    InstanceProfileArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#InstanceProfileArn', name: 'InstanceProfileArn', traits: {"smithy.api#pattern" => "^arn:aws([a-zA-Z-]{0,10})?:iam::[0-9]{12}:instance-profile/[/\\w+=,.@-]{1,128}$"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListClustersRequest', name: 'ListClustersRequest')
    ListClustersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListClustersResponse', name: 'ListClustersResponse')
    ListComputeNodeGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListComputeNodeGroupsRequest', name: 'ListComputeNodeGroupsRequest')
    ListComputeNodeGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListComputeNodeGroupsResponse', name: 'ListComputeNodeGroupsResponse')
    ListQueuesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListQueuesRequest', name: 'ListQueuesRequest')
    ListQueuesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListQueuesResponse', name: 'ListQueuesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pcs#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#NetworkType', name: 'NetworkType')
    Networking = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Networking', name: 'Networking')
    NetworkingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#NetworkingRequest', name: 'NetworkingRequest')
    PurchaseOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#PurchaseOption', name: 'PurchaseOption')
    Queue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Queue', name: 'Queue')
    QueueIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#QueueIdentifier', name: 'QueueIdentifier', traits: {"smithy.api#pattern" => "^(pcs_[a-zA-Z0-9]+|[A-Za-z][A-Za-z0-9-]{2,25})$"})
    QueueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#QueueList', name: 'QueueList')
    QueueName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#QueueName', name: 'QueueName', traits: {"smithy.api#length" => {"min" => 3, "max" => 25}, "smithy.api#pattern" => "^(?!pcs_)^[A-Za-z][A-Za-z0-9-]+$"})
    QueueStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#QueueStatus', name: 'QueueStatus')
    QueueSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#QueueSummary', name: 'QueueSummary')
    RegisterComputeNodeGroupInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#RegisterComputeNodeGroupInstanceRequest', name: 'RegisterComputeNodeGroupInstanceRequest')
    RegisterComputeNodeGroupInstanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#RegisterComputeNodeGroupInstanceResponse', name: 'RegisterComputeNodeGroupInstanceResponse')
    RequestTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pcs#RequestTagMap', name: 'RequestTagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseTagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pcs#ResponseTagMap', name: 'ResponseTagMap')
    SBClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SBClientToken', name: 'SBClientToken', traits: {"smithy.api#length" => {"min" => 8, "max" => 100}})
    ScalingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ScalingConfiguration', name: 'ScalingConfiguration')
    ScalingConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ScalingConfigurationRequest', name: 'ScalingConfigurationRequest')
    Scheduler = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#Scheduler', name: 'Scheduler')
    SchedulerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SchedulerRequest', name: 'SchedulerRequest')
    SchedulerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#SchedulerType', name: 'SchedulerType')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#pattern" => "^sg-\\w{8,17}$"})
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#SecurityGroupIdList', name: 'SecurityGroupIdList')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedSecret = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SharedSecret', name: 'SharedSecret', traits: {"smithy.api#sensitive" => {}})
    Size = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#Size', name: 'Size')
    SlurmAuthKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SlurmAuthKey', name: 'SlurmAuthKey')
    SlurmCustomSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SlurmCustomSetting', name: 'SlurmCustomSetting')
    SlurmCustomSettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#SlurmCustomSettings', name: 'SlurmCustomSettings')
    SpotAllocationStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#SpotAllocationStrategy', name: 'SpotAllocationStrategy')
    SpotOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#SpotOptions', name: 'SpotOptions')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#StringList', name: 'StringList')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#SubnetId', name: 'SubnetId', traits: {"smithy.api#pattern" => "^subnet-\\w{8,17}$"})
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#SubnetIdList', name: 'SubnetIdList', traits: {"smithy.api#length" => {"min" => 1}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pcs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.pcs#ClusterResource", "ids" => {"clusterIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#QueueResource", "ids" => {"clusterIdentifier" => "resourceArn", "queueIdentifier" => "resourceArn"}}, {"resource" => "com.amazonaws.pcs#ComputeNodeGroupResource", "ids" => {"clusterIdentifier" => "resourceArn", "computeNodeGroupIdentifier" => "resourceArn"}}]})
    UpdateComputeNodeGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateComputeNodeGroupRequest', name: 'UpdateComputeNodeGroupRequest')
    UpdateComputeNodeGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateComputeNodeGroupResponse', name: 'UpdateComputeNodeGroupResponse')
    UpdateComputeNodeGroupSlurmConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateComputeNodeGroupSlurmConfigurationRequest', name: 'UpdateComputeNodeGroupSlurmConfigurationRequest')
    UpdateQueueRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateQueueRequest', name: 'UpdateQueueRequest')
    UpdateQueueResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#UpdateQueueResponse', name: 'UpdateQueueResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pcs#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pcs#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pcs#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Accounting.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The default value for <code>mode</code> is <code>STANDARD</code>. A value of <code>STANDARD</code> means Slurm accounting is enabled.</p>", "smithy.api#required" => {}}))
    Accounting.add_member(:default_purge_time_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'defaultPurgeTimeInDays', traits: {"smithy.api#documentation" => "<p>The default value for all purge settings for <code>slurmdbd.conf</code>. For more information, see the <a href=\"https://slurm.schedmd.com/slurmdbd.conf.html\">slurmdbd.conf documentation at SchedMD</a>.</p> <p>The default value for <code>defaultPurgeTimeInDays</code> is <code>-1</code>.</p> <p>A value of <code>-1</code> means there is no purge time and records persist as long as the cluster exists.</p> <important> <p> <code>0</code> isn't a valid value.</p> </important>", "smithy.api#range" => {"min" => -1, "max" => 10000}}))
    Accounting.type = Types::Accounting
    AccountingMode.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    AccountingMode.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AccountingRequest.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The default value for <code>mode</code> is <code>STANDARD</code>. A value of <code>STANDARD</code> means Slurm accounting is enabled.</p>", "smithy.api#required" => {}}))
    AccountingRequest.add_member(:default_purge_time_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'defaultPurgeTimeInDays', traits: {"smithy.api#documentation" => "<p>The default value for all purge settings for <code>slurmdbd.conf</code>. For more information, see the <a href=\"https://slurm.schedmd.com/slurmdbd.conf.html\">slurmdbd.conf documentation at SchedMD</a>.</p> <p>The default value for <code>defaultPurgeTimeInDays</code> is <code>-1</code>.</p> <p>A value of <code>-1</code> means there is no purge time and records persist as long as the cluster exists.</p> <important> <p> <code>0</code> isn't a valid value.</p> </important>", "smithy.api#range" => {"min" => -1, "max" => 10000}}))
    AccountingRequest.type = Types::AccountingRequest
    Cluster.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name that identifies the cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The generated unique ID of the cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#required" => {}}))
    Cluster.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The provisioning status of the cluster.</p> <note> <p>The provisioning status doesn't indicate the overall health of the cluster.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html\">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>", "smithy.api#required" => {}}))
    Cluster.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Cluster.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Cluster.add_member(:scheduler, Smithy::Schema::Shapes::ShapeRef.new(shape: Scheduler, location_name: 'scheduler', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'size', traits: {"smithy.api#documentation" => "<p>The size of the cluster.</p> <ul> <li> <p> <code>SMALL</code>: 32 compute nodes and 256 jobs</p> </li> <li> <p> <code>MEDIUM</code>: 512 compute nodes and 8192 jobs</p> </li> <li> <p> <code>LARGE</code>: 2048 compute nodes and 16,384 jobs</p> </li> </ul>", "smithy.api#required" => {}}))
    Cluster.add_member(:slurm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSlurmConfiguration, location_name: 'slurmConfiguration', traits: {"smithy.api#documentation" => "<p>Additional options related to the Slurm scheduler.</p>"}))
    Cluster.add_member(:networking, Smithy::Schema::Shapes::ShapeRef.new(shape: Networking, location_name: 'networking', traits: {"smithy.api#required" => {}}))
    Cluster.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'endpoints', traits: {"smithy.api#documentation" => "<p>The list of endpoints available for interaction with the scheduler.</p>"}))
    Cluster.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The list of errors that occurred during cluster provisioning.</p>"}))
    Cluster.type = Types::Cluster
    ClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSummary)
    ClusterSlurmConfiguration.add_member(:scale_down_idle_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'scaleDownIdleTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The time (in seconds) before an idle node is scaled down.</p> <p>Default: <code>600</code> </p>", "smithy.api#range" => {"min" => 1}}))
    ClusterSlurmConfiguration.add_member(:slurm_custom_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings', traits: {"smithy.api#documentation" => "<p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>"}))
    ClusterSlurmConfiguration.add_member(:auth_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmAuthKey, location_name: 'authKey', traits: {"smithy.api#documentation" => "<p>The shared Slurm key for authentication, also known as the <b>cluster secret</b>.</p>"}))
    ClusterSlurmConfiguration.add_member(:accounting, Smithy::Schema::Shapes::ShapeRef.new(shape: Accounting, location_name: 'accounting', traits: {"smithy.api#documentation" => "<p>The accounting configuration includes configurable settings for Slurm accounting.</p>"}))
    ClusterSlurmConfiguration.type = Types::ClusterSlurmConfiguration
    ClusterSlurmConfigurationRequest.add_member(:scale_down_idle_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'scaleDownIdleTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The time (in seconds) before an idle node is scaled down.</p> <p>Default: <code>600</code> </p>", "smithy.api#range" => {"min" => 1}}))
    ClusterSlurmConfigurationRequest.add_member(:slurm_custom_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings', traits: {"smithy.api#documentation" => "<p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>"}))
    ClusterSlurmConfigurationRequest.add_member(:accounting, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountingRequest, location_name: 'accounting', traits: {"smithy.api#documentation" => "<p>The accounting configuration includes configurable settings for Slurm accounting.</p>"}))
    ClusterSlurmConfigurationRequest.type = Types::ClusterSlurmConfigurationRequest
    ClusterStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ClusterStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ClusterStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ClusterStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ClusterStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ClusterStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ClusterStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ClusterStatus.add_member(:suspending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ClusterStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ClusterSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name that identifies the cluster.</p>", "smithy.api#required" => {}}))
    ClusterSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The generated unique ID of the cluster.</p>", "smithy.api#required" => {}}))
    ClusterSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the cluster.</p>", "smithy.api#required" => {}}))
    ClusterSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ClusterSummary.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ClusterSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The provisioning status of the cluster.</p> <note> <p>The provisioning status doesn't indicate the overall health of the cluster.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html\">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>", "smithy.api#required" => {}}))
    ClusterSummary.type = Types::ClusterSummary
    ComputeNodeGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name that identifies the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The generated unique ID of the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#documentation" => "<p>The ID of the cluster of the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroup.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The provisioning status of the compute node group.</p> <note> <p>The provisioning status doesn't indicate the overall health of the compute node group.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html\">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch instances. If not provided, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>"}))
    ComputeNodeGroup.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The list of subnet IDs where instances are provisioned by the compute node group. The subnets must be in the same VPC as the cluster.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:purchase_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOption, location_name: 'purchaseOption', traits: {"smithy.api#documentation" => "<p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html\">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>"}))
    ComputeNodeGroup.add_member(:custom_launch_template, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: 'customLaunchTemplate', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:iam_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'iamInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class=\"title\"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: 'scalingConfiguration', traits: {"smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:instance_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'instanceConfigs', traits: {"smithy.api#documentation" => "<p>A list of EC2 instance configurations that Amazon Web Services PCS can provision in the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroup.add_member(:spot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SpotOptions, location_name: 'spotOptions'))
    ComputeNodeGroup.add_member(:slurm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupSlurmConfiguration, location_name: 'slurmConfiguration'))
    ComputeNodeGroup.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The list of errors that occurred during compute node group provisioning.</p>"}))
    ComputeNodeGroup.type = Types::ComputeNodeGroup
    ComputeNodeGroupConfiguration.add_member(:compute_node_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'computeNodeGroupId', traits: {"smithy.api#documentation" => "<p>The compute node group ID for the compute node group configuration.</p>"}))
    ComputeNodeGroupConfiguration.type = Types::ComputeNodeGroupConfiguration
    ComputeNodeGroupConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfiguration)
    ComputeNodeGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupSummary)
    ComputeNodeGroupSlurmConfiguration.add_member(:slurm_custom_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings', traits: {"smithy.api#documentation" => "<p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>"}))
    ComputeNodeGroupSlurmConfiguration.type = Types::ComputeNodeGroupSlurmConfiguration
    ComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings', traits: {"smithy.api#documentation" => "<p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>"}))
    ComputeNodeGroupSlurmConfigurationRequest.type = Types::ComputeNodeGroupSlurmConfigurationRequest
    ComputeNodeGroupStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ComputeNodeGroupStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputeNodeGroupStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ComputeNodeGroupStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ComputeNodeGroupStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ComputeNodeGroupStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ComputeNodeGroupStatus.add_member(:suspending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    ComputeNodeGroupStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ComputeNodeGroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name that identifies the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The generated unique ID of the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#documentation" => "<p>The ID of the cluster of the compute node group.</p>", "smithy.api#required" => {}}))
    ComputeNodeGroupSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroupSummary.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ComputeNodeGroupSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The provisioning status of the compute node group.</p> <note> <p>The provisioning status doesn't indicate the overall health of the compute node group.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html\">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>", "smithy.api#required" => {}}))
    ComputeNodeGroupSummary.type = Types::ComputeNodeGroupSummary
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p> The unique identifier of the resource that caused the conflict exception. </p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p> The type or category of the resource that caused the conflict exception.\" </p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateClusterRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#documentation" => "<p>A name to identify the cluster. Example: <code>MyCluster</code> </p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:scheduler, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerRequest, location_name: 'scheduler', traits: {"smithy.api#documentation" => "<p>The cluster management and job scheduling software associated with the cluster.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'size', traits: {"smithy.api#documentation" => "<p>A value that determines the maximum number of compute nodes in the cluster and the maximum number of jobs (active and queued).</p> <ul> <li> <p> <code>SMALL</code>: 32 compute nodes and 256 jobs</p> </li> <li> <p> <code>MEDIUM</code>: 512 compute nodes and 8192 jobs</p> </li> <li> <p> <code>LARGE</code>: 2048 compute nodes and 16,384 jobs</p> </li> </ul>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:networking, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkingRequest, location_name: 'networking', traits: {"smithy.api#documentation" => "<p>The networking configuration used to set up the cluster's control plane.</p>", "smithy.api#required" => {}}))
    CreateClusterRequest.add_member(:slurm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSlurmConfigurationRequest, location_name: 'slurmConfiguration', traits: {"smithy.api#documentation" => "<p>Additional options related to the Slurm scheduler.</p>"}))
    CreateClusterRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateClusterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>"}))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>The cluster resource.</p>"}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateComputeNodeGroupRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster to create a compute node group in.</p>", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:compute_node_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupName, location_name: 'computeNodeGroupName', traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#documentation" => "<p>A name to identify the cluster. Example: <code>MyCluster</code> </p>", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId', traits: {"smithy.api#documentation" => "<p> The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch compute nodes (Amazon EC2 instances). If you don't provide this value, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>"}))
    CreateComputeNodeGroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The list of subnet IDs where the compute node group launches instances. Subnets must be in the same VPC as the cluster.</p>", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:purchase_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOption, location_name: 'purchaseOption', traits: {"smithy.api#documentation" => "<p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html\">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>"}))
    CreateComputeNodeGroupRequest.add_member(:custom_launch_template, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: 'customLaunchTemplate', traits: {"smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'iamInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class=\"title\"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationRequest, location_name: 'scalingConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the boundaries of the compute node group auto scaling.</p>", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:instance_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'instanceConfigs', traits: {"smithy.api#documentation" => "<p>A list of EC2 instance configurations that Amazon Web Services PCS can provision in the compute node group.</p>", "smithy.api#required" => {}}))
    CreateComputeNodeGroupRequest.add_member(:spot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SpotOptions, location_name: 'spotOptions'))
    CreateComputeNodeGroupRequest.add_member(:slurm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupSlurmConfigurationRequest, location_name: 'slurmConfiguration', traits: {"smithy.api#documentation" => "<p>Additional options related to the Slurm scheduler.</p>"}))
    CreateComputeNodeGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateComputeNodeGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>"}))
    CreateComputeNodeGroupRequest.type = Types::CreateComputeNodeGroupRequest
    CreateComputeNodeGroupResponse.add_member(:compute_node_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: 'computeNodeGroup'))
    CreateComputeNodeGroupResponse.type = Types::CreateComputeNodeGroupResponse
    CreateQueueRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster for which to create a queue.</p>", "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:queue_name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueName, location_name: 'queueName', traits: {"aws.iam#conditionKeyValue" => "pcs:ResourceName", "smithy.api#documentation" => "<p>A name to identify the queue.</p>", "smithy.api#required" => {}}))
    CreateQueueRequest.add_member(:compute_node_group_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: 'computeNodeGroupConfigurations', traits: {"smithy.api#documentation" => "<p>The list of compute node group configurations to associate with the queue. Queues assign jobs to associated compute node groups.</p>"}))
    CreateQueueRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateQueueRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>"}))
    CreateQueueRequest.type = Types::CreateQueueRequest
    CreateQueueResponse.add_member(:queue, Smithy::Schema::Shapes::ShapeRef.new(shape: Queue, location_name: 'queue'))
    CreateQueueResponse.type = Types::CreateQueueResponse
    CustomLaunchTemplate.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the EC2 launch template to use to provision instances.</p> <p> Example: <code>lt-xxxx</code> </p>", "smithy.api#required" => {}}))
    CustomLaunchTemplate.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the EC2 launch template to use to provision instances.</p>", "smithy.api#required" => {}}))
    CustomLaunchTemplate.type = Types::CustomLaunchTemplate
    DeleteClusterRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster to delete.</p>", "smithy.api#required" => {}}))
    DeleteClusterRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteComputeNodeGroupRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster of the compute node group.</p>", "smithy.api#required" => {}}))
    DeleteComputeNodeGroupRequest.add_member(:compute_node_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, location_name: 'computeNodeGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the compute node group to delete.</p>", "smithy.api#required" => {}}))
    DeleteComputeNodeGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteComputeNodeGroupRequest.type = Types::DeleteComputeNodeGroupRequest
    DeleteComputeNodeGroupResponse.type = Types::DeleteComputeNodeGroupResponse
    DeleteQueueRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster of the queue.</p>", "smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:queue_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIdentifier, location_name: 'queueIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the queue to delete.</p>", "smithy.api#required" => {}}))
    DeleteQueueRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    DeleteQueueRequest.type = Types::DeleteQueueRequest
    DeleteQueueResponse.type = Types::DeleteQueueResponse
    Endpoint.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Indicates the type of endpoint running at the specific IP address.</p>", "smithy.api#required" => {}}))
    Endpoint.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'privateIpAddress', traits: {"smithy.api#documentation" => "<p>For clusters that use IPv4, this is the endpoint's private IP address.</p> <p>Example: <code>10.1.2.3</code> </p> <p>For clusters configured to use IPv6, this is an empty string.</p>", "smithy.api#required" => {}}))
    Endpoint.add_member(:public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'publicIpAddress', traits: {"smithy.api#documentation" => "<p>The endpoint's public IP address.</p> <p>Example: <code>192.0.2.1</code> </p>"}))
    Endpoint.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ipv6Address', traits: {"smithy.api#documentation" => "<p>The endpoint's IPv6 address.</p> <p>Example: <code>2001:db8::1</code> </p>"}))
    Endpoint.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'port', traits: {"smithy.api#documentation" => "<p>The endpoint's connection port number.</p> <p> Example: <code>1234</code> </p>", "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    EndpointType.add_member(:slurmctld, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLURMCTLD', traits: {"smithy.api#enumValue" => "SLURMCTLD"}))
    EndpointType.add_member(:slurmdbd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLURMDBD', traits: {"smithy.api#enumValue" => "SLURMDBD"}))
    Endpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    ErrorInfo.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The short-form error code.</p>"}))
    ErrorInfo.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The detailed error information.</p>"}))
    ErrorInfo.type = Types::ErrorInfo
    ErrorInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfo)
    GetClusterRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster of the queue.</p>", "smithy.api#required" => {}}))
    GetClusterRequest.type = Types::GetClusterRequest
    GetClusterResponse.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'cluster', traits: {"smithy.api#documentation" => "<p>The cluster resource.</p>"}))
    GetClusterResponse.type = Types::GetClusterResponse
    GetComputeNodeGroupRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster.</p>", "smithy.api#required" => {}}))
    GetComputeNodeGroupRequest.add_member(:compute_node_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, location_name: 'computeNodeGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the compute node group.</p>", "smithy.api#required" => {}}))
    GetComputeNodeGroupRequest.type = Types::GetComputeNodeGroupRequest
    GetComputeNodeGroupResponse.add_member(:compute_node_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: 'computeNodeGroup'))
    GetComputeNodeGroupResponse.type = Types::GetComputeNodeGroupResponse
    GetQueueRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster of the queue.</p>", "smithy.api#required" => {}}))
    GetQueueRequest.add_member(:queue_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIdentifier, location_name: 'queueIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the queue.</p>", "smithy.api#required" => {}}))
    GetQueueRequest.type = Types::GetQueueRequest
    GetQueueResponse.add_member(:queue, Smithy::Schema::Shapes::ShapeRef.new(shape: Queue, location_name: 'queue'))
    GetQueueResponse.type = Types::GetQueueResponse
    InstanceConfig.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The EC2 instance type that Amazon Web Services PCS can provision in the compute node group.</p> <p> Example: <code>t2.xlarge</code> </p>"}))
    InstanceConfig.type = Types::InstanceConfig
    InstanceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceConfig)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'clusters', traits: {"smithy.api#documentation" => "<p>The list of clusters.</p>", "smithy.api#required" => {}}))
    ListClustersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListClustersResponse.type = Types::ListClustersResponse
    ListComputeNodeGroupsRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster to list compute node groups for.</p>", "smithy.api#required" => {}}))
    ListComputeNodeGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListComputeNodeGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>"}))
    ListComputeNodeGroupsRequest.type = Types::ListComputeNodeGroupsRequest
    ListComputeNodeGroupsResponse.add_member(:compute_node_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupList, location_name: 'computeNodeGroups', traits: {"smithy.api#documentation" => "<p>The list of compute node groups for the cluster.</p>", "smithy.api#required" => {}}))
    ListComputeNodeGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListComputeNodeGroupsResponse.type = Types::ListComputeNodeGroupsResponse
    ListQueuesRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster to list queues for.</p>", "smithy.api#required" => {}}))
    ListQueuesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListQueuesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>"}))
    ListQueuesRequest.type = Types::ListQueuesRequest
    ListQueuesResponse.add_member(:queues, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueList, location_name: 'queues', traits: {"smithy.api#documentation" => "<p>The list of queues associated with the cluster.</p>", "smithy.api#required" => {}}))
    ListQueuesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>"}))
    ListQueuesResponse.type = Types::ListQueuesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NetworkType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "IPV4"}))
    NetworkType.add_member(:ipv6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6', traits: {"smithy.api#enumValue" => "IPV6"}))
    Networking.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The ID of the subnet where Amazon Web Services PCS creates an Elastic Network Interface (ENI) to enable communication between managed controllers and Amazon Web Services PCS resources. The subnet must have an available IP address, cannot reside in AWS Outposts, AWS Wavelength, or an AWS Local Zone.</p> <p> Example: <code>subnet-abcd1234</code> </p>"}))
    Networking.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The list of security group IDs associated with the Elastic Network Interface (ENI) created in subnets.</p> <p>The following rules are required:</p> <ul> <li> <p>Inbound rule 1</p> <ul> <li> <p>Protocol: All</p> </li> <li> <p>Ports: All</p> </li> <li> <p>Source: Self</p> </li> </ul> </li> <li> <p>Outbound rule 1</p> <ul> <li> <p>Protocol: All</p> </li> <li> <p>Ports: All</p> </li> <li> <p>Destination: 0.0.0.0/0 (IPv4) or ::/0 (IPv6)</p> </li> </ul> </li> <li> <p>Outbound rule 2</p> <ul> <li> <p>Protocol: All</p> </li> <li> <p>Ports: All</p> </li> <li> <p>Destination: Self</p> </li> </ul> </li> </ul>"}))
    Networking.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType', traits: {"smithy.api#documentation" => "<p>The IP address version the cluster uses. The default is <code>IPV4</code>.</p>"}))
    Networking.type = Types::Networking
    NetworkingRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The list of subnet IDs where Amazon Web Services PCS creates an Elastic Network Interface (ENI) to enable communication between managed controllers and Amazon Web Services PCS resources. Subnet IDs have the form <code>subnet-0123456789abcdef0</code>.</p> <p>Subnets can't be in Outposts, Wavelength or an Amazon Web Services Local Zone.</p> <note> <p>Amazon Web Services PCS currently supports only 1 subnet in this list.</p> </note>"}))
    NetworkingRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of security group IDs associated with the Elastic Network Interface (ENI) created in subnets.</p>"}))
    NetworkingRequest.add_member(:network_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkType, location_name: 'networkType', traits: {"smithy.api#documentation" => "<p>The IP address version the cluster uses. The default is <code>IPV4</code>.</p>"}))
    NetworkingRequest.type = Types::NetworkingRequest
    PurchaseOption.add_member(:ondemand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONDEMAND', traits: {"smithy.api#enumValue" => "ONDEMAND"}))
    PurchaseOption.add_member(:spot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPOT', traits: {"smithy.api#enumValue" => "SPOT"}))
    Queue.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name that identifies the queue.</p>", "smithy.api#required" => {}}))
    Queue.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The generated unique ID of the queue.</p>", "smithy.api#required" => {}}))
    Queue.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the queue.</p>", "smithy.api#required" => {}}))
    Queue.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#documentation" => "<p>The ID of the cluster of the queue.</p>", "smithy.api#required" => {}}))
    Queue.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Queue.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Queue.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The provisioning status of the queue.</p> <note> <p>The provisioning status doesn't indicate the overall health of the queue.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html\">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>", "smithy.api#required" => {}}))
    Queue.add_member(:compute_node_group_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: 'computeNodeGroupConfigurations', traits: {"smithy.api#documentation" => "<p>The list of compute node group configurations associated with the queue. Queues assign jobs to associated compute node groups.</p>", "smithy.api#required" => {}}))
    Queue.add_member(:error_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfoList, location_name: 'errorInfo', traits: {"smithy.api#documentation" => "<p>The list of errors that occurred during queue provisioning.</p>"}))
    Queue.type = Types::Queue
    QueueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueueSummary)
    QueueStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    QueueStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QueueStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    QueueStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    QueueStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    QueueStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    QueueStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    QueueStatus.add_member(:suspending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDING', traits: {"smithy.api#enumValue" => "SUSPENDING"}))
    QueueStatus.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    QueueSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name that identifies the queue.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The generated unique ID of the queue.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) of the queue.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:cluster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clusterId', traits: {"smithy.api#documentation" => "<p>The ID of the cluster of the queue.</p>", "smithy.api#required" => {}}))
    QueueSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QueueSummary.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"smithy.api#documentation" => "<p>The date and time the resource was modified.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    QueueSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The provisioning status of the queue.</p> <note> <p> The provisioning status doesn't indicate the overall health of the queue.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html\">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>", "smithy.api#required" => {}}))
    QueueSummary.type = Types::QueueSummary
    RegisterComputeNodeGroupInstanceRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster to register the compute node group instance in.</p>", "smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceRequest.add_member(:bootstrap_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BootstrapId, location_name: 'bootstrapId', traits: {"smithy.api#documentation" => "<p>The client-generated token to allow for retries.</p>", "smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceRequest.type = Types::RegisterComputeNodeGroupInstanceRequest
    RegisterComputeNodeGroupInstanceResponse.add_member(:node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nodeID', traits: {"smithy.api#documentation" => "<p>The scheduler node ID for this instance.</p>", "smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:shared_secret, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedSecret, location_name: 'sharedSecret', traits: {"smithy.api#documentation" => "<p>For the Slurm scheduler, this is the shared Munge key the scheduler uses to authenticate compute node group instances.</p>", "smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.add_member(:endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: 'endpoints', traits: {"smithy.api#documentation" => "<p>The list of endpoints available for interaction with the scheduler.</p>", "smithy.api#required" => {}}))
    RegisterComputeNodeGroupInstanceResponse.type = Types::RegisterComputeNodeGroupInstanceResponse
    RequestTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    RequestTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p> The unique identifier of the resource that was not found. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p> The type or category of the resource that was not found. </p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseTagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    ResponseTagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ScalingConfiguration.add_member(:min_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The lower bound of the number of instances allowed in the compute fleet.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfiguration.add_member(:max_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The upper bound of the number of instances allowed in the compute fleet.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfiguration.type = Types::ScalingConfiguration
    ScalingConfigurationRequest.add_member(:min_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'minInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The lower bound of the number of instances allowed in the compute fleet.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfigurationRequest.add_member(:max_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxInstanceCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The upper bound of the number of instances allowed in the compute fleet.</p>", "smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    ScalingConfigurationRequest.type = Types::ScalingConfigurationRequest
    Scheduler.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The software Amazon Web Services PCS uses to manage cluster scaling and job scheduling.</p>", "smithy.api#required" => {}}))
    Scheduler.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the specified scheduling software that Amazon Web Services PCS uses to manage cluster scaling and job scheduling. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions.html\">Slurm versions in Amazon Web Services PCS</a> in the <i>Amazon Web Services PCS User Guide</i>.</p> <p>Valid Values: <code>23.11 | 24.05 | 24.11</code> </p>", "smithy.api#required" => {}}))
    Scheduler.type = Types::Scheduler
    SchedulerRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SchedulerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The software Amazon Web Services PCS uses to manage cluster scaling and job scheduling.</p>", "smithy.api#required" => {}}))
    SchedulerRequest.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the specified scheduling software that Amazon Web Services PCS uses to manage cluster scaling and job scheduling. For more information, see <a href=\"https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions.html\">Slurm versions in Amazon Web Services PCS</a> in the <i>Amazon Web Services PCS User Guide</i>.</p> <p>Valid Values: <code>23.11 | 24.05 | 24.11</code> </p>", "smithy.api#required" => {}}))
    SchedulerRequest.type = Types::SchedulerRequest
    SchedulerType.add_member(:slurm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SLURM', traits: {"smithy.api#enumValue" => "SLURM"}))
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p> The service code associated with the quota that was exceeded. </p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p> The unique identifier of the resource that caused the quota to be exceeded. </p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p> The type or category of the resource that caused the quota to be exceeded. </p>"}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p> The <b>quota code</b> of the service quota that was exceeded. </p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Size.add_member(:small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMALL', traits: {"smithy.api#enumValue" => "SMALL"}))
    Size.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Size.add_member(:large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE', traits: {"smithy.api#enumValue" => "LARGE"}))
    SlurmAuthKey.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'secretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the the shared Slurm key.</p>", "smithy.api#required" => {}}))
    SlurmAuthKey.add_member(:secret_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'secretVersion', traits: {"smithy.api#documentation" => "<p>The version of the shared Slurm key.</p>", "smithy.api#required" => {}}))
    SlurmAuthKey.type = Types::SlurmAuthKey
    SlurmCustomSetting.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterName', traits: {"smithy.api#documentation" => "<p>Amazon Web Services PCS supports configuration of the following Slurm parameters:</p> <ul> <li> <p>For <b>clusters</b> </p> <ul> <li> <p> <a href=\"https://slurm.schedmd.com/slurm.conf.html#OPT_Prolog_1\"> <code>Prolog</code> </a> </p> </li> <li> <p> <a href=\"https://slurm.schedmd.com/slurm.conf.html#OPT_Epilog_1\"> <code>Epilog</code> </a> </p> </li> <li> <p> <a href=\"https://slurm.schedmd.com/slurm.conf.html#OPT_SelectTypeParameters\"> <code>SelectTypeParameters</code> </a> </p> </li> </ul> </li> <li> <p>For <b>compute node groups</b> </p> <ul> <li> <p> <a href=\"https://slurm.schedmd.com/slurm.conf.html#OPT_Weight\"> <code>Weight</code> </a> </p> </li> <li> <p> <a href=\"https://slurm.schedmd.com/slurm.conf.html#OPT_Weight\"> <code>RealMemory</code> </a> </p> </li> </ul> </li> </ul>", "smithy.api#required" => {}}))
    SlurmCustomSetting.add_member(:parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'parameterValue', traits: {"smithy.api#documentation" => "<p>The values for the configured Slurm settings.</p>", "smithy.api#required" => {}}))
    SlurmCustomSetting.type = Types::SlurmCustomSetting
    SlurmCustomSettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSetting)
    SpotAllocationStrategy.add_member(:lowest_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOWEST_PRICE', traits: {"smithy.api#enumValue" => "lowest-price"}))
    SpotAllocationStrategy.add_member(:capacity_optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "capacity-optimized"}))
    SpotAllocationStrategy.add_member(:price_capacity_optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRICE_CAPACITY_OPTIMIZED', traits: {"smithy.api#enumValue" => "price-capacity-optimized"}))
    SpotOptions.add_member(:allocation_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: SpotAllocationStrategy, location_name: 'allocationStrategy', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 allocation strategy Amazon Web Services PCS uses to provision EC2 instances. Amazon Web Services PCS supports <b>lowest price</b>, <b>capacity optimized</b>, and <b>price capacity optimized</b>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-allocation-strategy.html\">Use allocation strategies to determine how EC2 Fleet or Spot Fleet fulfills Spot and On-Demand capacity</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to <b>price capacity optimized</b>.</p>"}))
    SpotOptions.type = Types::SpotOptions
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p> The number of seconds to wait before retrying the request. </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#documentation" => "<p>1 or more tag keys to remove from the resource. Specify only tag keys and not tag values.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateComputeNodeGroupRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster of the compute node group.</p>", "smithy.api#required" => {}}))
    UpdateComputeNodeGroupRequest.add_member(:compute_node_group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupIdentifier, location_name: 'computeNodeGroupIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the compute node group.</p>", "smithy.api#required" => {}}))
    UpdateComputeNodeGroupRequest.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmiId, location_name: 'amiId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch instances. If not provided, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>"}))
    UpdateComputeNodeGroupRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The list of subnet IDs where the compute node group provisions instances. The subnets must be in the same VPC as the cluster.</p>"}))
    UpdateComputeNodeGroupRequest.add_member(:custom_launch_template, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLaunchTemplate, location_name: 'customLaunchTemplate'))
    UpdateComputeNodeGroupRequest.add_member(:purchase_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseOption, location_name: 'purchaseOption', traits: {"smithy.api#documentation" => "<p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html\">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>"}))
    UpdateComputeNodeGroupRequest.add_member(:spot_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SpotOptions, location_name: 'spotOptions'))
    UpdateComputeNodeGroupRequest.add_member(:scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationRequest, location_name: 'scalingConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies the boundaries of the compute node group auto scaling.</p>"}))
    UpdateComputeNodeGroupRequest.add_member(:iam_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'iamInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class=\"title\"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>"}))
    UpdateComputeNodeGroupRequest.add_member(:slurm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupSlurmConfigurationRequest, location_name: 'slurmConfiguration', traits: {"smithy.api#documentation" => "<p>Additional options related to the Slurm scheduler.</p>"}))
    UpdateComputeNodeGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateComputeNodeGroupRequest.type = Types::UpdateComputeNodeGroupRequest
    UpdateComputeNodeGroupResponse.add_member(:compute_node_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroup, location_name: 'computeNodeGroup'))
    UpdateComputeNodeGroupResponse.type = Types::UpdateComputeNodeGroupResponse
    UpdateComputeNodeGroupSlurmConfigurationRequest.add_member(:slurm_custom_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SlurmCustomSettings, location_name: 'slurmCustomSettings', traits: {"smithy.api#documentation" => "<p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>"}))
    UpdateComputeNodeGroupSlurmConfigurationRequest.type = Types::UpdateComputeNodeGroupSlurmConfigurationRequest
    UpdateQueueRequest.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIdentifier, location_name: 'clusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the cluster of the queue.</p>", "smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:queue_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: QueueIdentifier, location_name: 'queueIdentifier', traits: {"smithy.api#documentation" => "<p>The name or ID of the queue.</p>", "smithy.api#required" => {}}))
    UpdateQueueRequest.add_member(:compute_node_group_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNodeGroupConfigurationList, location_name: 'computeNodeGroupConfigurations', traits: {"smithy.api#documentation" => "<p>The list of compute node group configurations to associate with the queue. Queues assign jobs to associated compute node groups.</p>"}))
    UpdateQueueRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SBClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateQueueRequest.type = Types::UpdateQueueRequest
    UpdateQueueResponse.add_member(:queue, Smithy::Schema::Shapes::ShapeRef.new(shape: Queue, location_name: 'queue'))
    UpdateQueueResponse.type = Types::UpdateQueueResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p> The specific reason or cause of the validation error. </p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p> A list of fields or properties that failed validation. </p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message body of the exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    AWSParallelComputingService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pcs#AWSParallelComputingService"
      service.name = "AWSParallelComputingService"
      service.version = "2023-02-10"
      service.traits = {"aws.api#service" => {"sdkId" => "PCS", "arnNamespace" => "pcs"}, "aws.auth#sigv4" => {"name" => "pcs"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "pcs:ResourceName" => {"type" => "String", "documentation" => "Filters creation of resources with a certain name"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS Parallel Computing Service"}
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"]}
      end)
      service.add_operation(:create_compute_node_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateComputeNodeGroup"
        operation.name = "CreateComputeNodeGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputeNodeGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComputeNodeGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "InstanceArnSuccess", "params" => {"clusterIdentifier" => "testCluster", "computeNodeGroupName" => "testNodeGroupName", "subnetIds" => ["subnet-0cbf727bae9405b47"], "scalingConfiguration" => {"minInstanceCount" => 1, "maxInstanceCount" => 1}, "iamInstanceProfileArn" => "arn:aws:iam::975050141277:instance-profile/aws-pcs/example-role-2", "customLaunchTemplate" => {"id" => "lt-0b8f8ee3f92b73dc0", "version" => "1"}, "instanceConfigs" => [{"instanceType" => "t3.medium"}]}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:create_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#CreateQueue"
        operation.name = "CreateQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Cluster"]}
      end)
      service.add_operation(:delete_compute_node_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteComputeNodeGroup"
        operation.name = "DeleteComputeNodeGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputeNodeGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComputeNodeGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"]}
      end)
      service.add_operation(:delete_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#DeleteQueue"
        operation.name = "DeleteQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
      end)
      service.add_operation(:get_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetCluster"
        operation.name = "GetCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "GetCluster_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_compute_node_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetComputeNodeGroup"
        operation.name = "GetComputeNodeGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComputeNodeGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComputeNodeGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "GetComputeNodeGroup_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist", "computeNodeGroupIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#GetQueue"
        operation.name = "GetQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Queue"], "smithy.test#smokeTests" => [{"id" => "GetQueueFailure_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist", "queueIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:list_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListClusters"
        operation.name = "ListClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClustersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Cluster"], "smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_compute_node_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListComputeNodeGroups"
        operation.name = "ListComputeNodeGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputeNodeGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComputeNodeGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["ComputeNodeGroup"], "smithy.test#smokeTests" => [{"id" => "ListComputeNodeGroups_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListComputeNodeGroups.new
      end)
      service.add_operation(:list_queues, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListQueues"
        operation.name = "ListQueues"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQueuesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.api#tags" => ["Queue"], "smithy.test#smokeTests" => [{"id" => "ListQueueFailure_AccessDeniedException", "params" => {"clusterIdentifier" => "pcs_donotexist"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.pcs#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListQueues.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_compute_node_group_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#RegisterComputeNodeGroupInstance"
        operation.name = "RegisterComputeNodeGroupInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterComputeNodeGroupInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterComputeNodeGroupInstanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_compute_node_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateComputeNodeGroup"
        operation.name = "UpdateComputeNodeGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComputeNodeGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["ComputeNodeGroup"]}
      end)
      service.add_operation(:update_queue, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pcs#UpdateQueue"
        operation.name = "UpdateQueue"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQueueResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}, "smithy.api#tags" => ["Queue"]}
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
