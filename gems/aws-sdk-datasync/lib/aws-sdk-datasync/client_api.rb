# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataSync
  # @api private
  module ClientApi

    include Seahorse::Model

    ActivationKey = Shapes::StringShape.new(name: 'ActivationKey')
    AddStorageSystemRequest = Shapes::StructureShape.new(name: 'AddStorageSystemRequest')
    AddStorageSystemResponse = Shapes::StructureShape.new(name: 'AddStorageSystemResponse')
    AgentArn = Shapes::StringShape.new(name: 'AgentArn')
    AgentArnList = Shapes::ListShape.new(name: 'AgentArnList')
    AgentList = Shapes::ListShape.new(name: 'AgentList')
    AgentListEntry = Shapes::StructureShape.new(name: 'AgentListEntry')
    AgentStatus = Shapes::StringShape.new(name: 'AgentStatus')
    Atime = Shapes::StringShape.new(name: 'Atime')
    BytesPerSecond = Shapes::IntegerShape.new(name: 'BytesPerSecond')
    CancelTaskExecutionRequest = Shapes::StructureShape.new(name: 'CancelTaskExecutionRequest')
    CancelTaskExecutionResponse = Shapes::StructureShape.new(name: 'CancelTaskExecutionResponse')
    Capacity = Shapes::StructureShape.new(name: 'Capacity')
    CollectionDurationMinutes = Shapes::IntegerShape.new(name: 'CollectionDurationMinutes')
    CreateAgentRequest = Shapes::StructureShape.new(name: 'CreateAgentRequest')
    CreateAgentResponse = Shapes::StructureShape.new(name: 'CreateAgentResponse')
    CreateLocationEfsRequest = Shapes::StructureShape.new(name: 'CreateLocationEfsRequest')
    CreateLocationEfsResponse = Shapes::StructureShape.new(name: 'CreateLocationEfsResponse')
    CreateLocationFsxLustreRequest = Shapes::StructureShape.new(name: 'CreateLocationFsxLustreRequest')
    CreateLocationFsxLustreResponse = Shapes::StructureShape.new(name: 'CreateLocationFsxLustreResponse')
    CreateLocationFsxOntapRequest = Shapes::StructureShape.new(name: 'CreateLocationFsxOntapRequest')
    CreateLocationFsxOntapResponse = Shapes::StructureShape.new(name: 'CreateLocationFsxOntapResponse')
    CreateLocationFsxOpenZfsRequest = Shapes::StructureShape.new(name: 'CreateLocationFsxOpenZfsRequest')
    CreateLocationFsxOpenZfsResponse = Shapes::StructureShape.new(name: 'CreateLocationFsxOpenZfsResponse')
    CreateLocationFsxWindowsRequest = Shapes::StructureShape.new(name: 'CreateLocationFsxWindowsRequest')
    CreateLocationFsxWindowsResponse = Shapes::StructureShape.new(name: 'CreateLocationFsxWindowsResponse')
    CreateLocationHdfsRequest = Shapes::StructureShape.new(name: 'CreateLocationHdfsRequest')
    CreateLocationHdfsResponse = Shapes::StructureShape.new(name: 'CreateLocationHdfsResponse')
    CreateLocationNfsRequest = Shapes::StructureShape.new(name: 'CreateLocationNfsRequest')
    CreateLocationNfsResponse = Shapes::StructureShape.new(name: 'CreateLocationNfsResponse')
    CreateLocationObjectStorageRequest = Shapes::StructureShape.new(name: 'CreateLocationObjectStorageRequest')
    CreateLocationObjectStorageResponse = Shapes::StructureShape.new(name: 'CreateLocationObjectStorageResponse')
    CreateLocationS3Request = Shapes::StructureShape.new(name: 'CreateLocationS3Request')
    CreateLocationS3Response = Shapes::StructureShape.new(name: 'CreateLocationS3Response')
    CreateLocationSmbRequest = Shapes::StructureShape.new(name: 'CreateLocationSmbRequest')
    CreateLocationSmbResponse = Shapes::StructureShape.new(name: 'CreateLocationSmbResponse')
    CreateTaskRequest = Shapes::StructureShape.new(name: 'CreateTaskRequest')
    CreateTaskResponse = Shapes::StructureShape.new(name: 'CreateTaskResponse')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    DeleteAgentRequest = Shapes::StructureShape.new(name: 'DeleteAgentRequest')
    DeleteAgentResponse = Shapes::StructureShape.new(name: 'DeleteAgentResponse')
    DeleteLocationRequest = Shapes::StructureShape.new(name: 'DeleteLocationRequest')
    DeleteLocationResponse = Shapes::StructureShape.new(name: 'DeleteLocationResponse')
    DeleteTaskRequest = Shapes::StructureShape.new(name: 'DeleteTaskRequest')
    DeleteTaskResponse = Shapes::StructureShape.new(name: 'DeleteTaskResponse')
    DescribeAgentRequest = Shapes::StructureShape.new(name: 'DescribeAgentRequest')
    DescribeAgentResponse = Shapes::StructureShape.new(name: 'DescribeAgentResponse')
    DescribeDiscoveryJobRequest = Shapes::StructureShape.new(name: 'DescribeDiscoveryJobRequest')
    DescribeDiscoveryJobResponse = Shapes::StructureShape.new(name: 'DescribeDiscoveryJobResponse')
    DescribeLocationEfsRequest = Shapes::StructureShape.new(name: 'DescribeLocationEfsRequest')
    DescribeLocationEfsResponse = Shapes::StructureShape.new(name: 'DescribeLocationEfsResponse')
    DescribeLocationFsxLustreRequest = Shapes::StructureShape.new(name: 'DescribeLocationFsxLustreRequest')
    DescribeLocationFsxLustreResponse = Shapes::StructureShape.new(name: 'DescribeLocationFsxLustreResponse')
    DescribeLocationFsxOntapRequest = Shapes::StructureShape.new(name: 'DescribeLocationFsxOntapRequest')
    DescribeLocationFsxOntapResponse = Shapes::StructureShape.new(name: 'DescribeLocationFsxOntapResponse')
    DescribeLocationFsxOpenZfsRequest = Shapes::StructureShape.new(name: 'DescribeLocationFsxOpenZfsRequest')
    DescribeLocationFsxOpenZfsResponse = Shapes::StructureShape.new(name: 'DescribeLocationFsxOpenZfsResponse')
    DescribeLocationFsxWindowsRequest = Shapes::StructureShape.new(name: 'DescribeLocationFsxWindowsRequest')
    DescribeLocationFsxWindowsResponse = Shapes::StructureShape.new(name: 'DescribeLocationFsxWindowsResponse')
    DescribeLocationHdfsRequest = Shapes::StructureShape.new(name: 'DescribeLocationHdfsRequest')
    DescribeLocationHdfsResponse = Shapes::StructureShape.new(name: 'DescribeLocationHdfsResponse')
    DescribeLocationNfsRequest = Shapes::StructureShape.new(name: 'DescribeLocationNfsRequest')
    DescribeLocationNfsResponse = Shapes::StructureShape.new(name: 'DescribeLocationNfsResponse')
    DescribeLocationObjectStorageRequest = Shapes::StructureShape.new(name: 'DescribeLocationObjectStorageRequest')
    DescribeLocationObjectStorageResponse = Shapes::StructureShape.new(name: 'DescribeLocationObjectStorageResponse')
    DescribeLocationS3Request = Shapes::StructureShape.new(name: 'DescribeLocationS3Request')
    DescribeLocationS3Response = Shapes::StructureShape.new(name: 'DescribeLocationS3Response')
    DescribeLocationSmbRequest = Shapes::StructureShape.new(name: 'DescribeLocationSmbRequest')
    DescribeLocationSmbResponse = Shapes::StructureShape.new(name: 'DescribeLocationSmbResponse')
    DescribeStorageSystemRequest = Shapes::StructureShape.new(name: 'DescribeStorageSystemRequest')
    DescribeStorageSystemResourceMetricsRequest = Shapes::StructureShape.new(name: 'DescribeStorageSystemResourceMetricsRequest')
    DescribeStorageSystemResourceMetricsResponse = Shapes::StructureShape.new(name: 'DescribeStorageSystemResourceMetricsResponse')
    DescribeStorageSystemResourcesRequest = Shapes::StructureShape.new(name: 'DescribeStorageSystemResourcesRequest')
    DescribeStorageSystemResourcesResponse = Shapes::StructureShape.new(name: 'DescribeStorageSystemResourcesResponse')
    DescribeStorageSystemResponse = Shapes::StructureShape.new(name: 'DescribeStorageSystemResponse')
    DescribeTaskExecutionRequest = Shapes::StructureShape.new(name: 'DescribeTaskExecutionRequest')
    DescribeTaskExecutionResponse = Shapes::StructureShape.new(name: 'DescribeTaskExecutionResponse')
    DescribeTaskRequest = Shapes::StructureShape.new(name: 'DescribeTaskRequest')
    DescribeTaskResponse = Shapes::StructureShape.new(name: 'DescribeTaskResponse')
    DestinationNetworkInterfaceArns = Shapes::ListShape.new(name: 'DestinationNetworkInterfaceArns')
    DiscoveryAgentArnList = Shapes::ListShape.new(name: 'DiscoveryAgentArnList')
    DiscoveryJobArn = Shapes::StringShape.new(name: 'DiscoveryJobArn')
    DiscoveryJobList = Shapes::ListShape.new(name: 'DiscoveryJobList')
    DiscoveryJobListEntry = Shapes::StructureShape.new(name: 'DiscoveryJobListEntry')
    DiscoveryJobStatus = Shapes::StringShape.new(name: 'DiscoveryJobStatus')
    DiscoveryMaxResults = Shapes::IntegerShape.new(name: 'DiscoveryMaxResults')
    DiscoveryNextToken = Shapes::StringShape.new(name: 'DiscoveryNextToken')
    DiscoveryResourceFilter = Shapes::StringShape.new(name: 'DiscoveryResourceFilter')
    DiscoveryResourceType = Shapes::StringShape.new(name: 'DiscoveryResourceType')
    DiscoveryServerConfiguration = Shapes::StructureShape.new(name: 'DiscoveryServerConfiguration')
    DiscoveryServerHostname = Shapes::StringShape.new(name: 'DiscoveryServerHostname')
    DiscoveryServerPort = Shapes::IntegerShape.new(name: 'DiscoveryServerPort')
    DiscoverySystemType = Shapes::StringShape.new(name: 'DiscoverySystemType')
    DiscoveryTime = Shapes::TimestampShape.new(name: 'DiscoveryTime')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    Ec2Config = Shapes::StructureShape.new(name: 'Ec2Config')
    Ec2SecurityGroupArn = Shapes::StringShape.new(name: 'Ec2SecurityGroupArn')
    Ec2SecurityGroupArnList = Shapes::ListShape.new(name: 'Ec2SecurityGroupArnList')
    Ec2SubnetArn = Shapes::StringShape.new(name: 'Ec2SubnetArn')
    EfsAccessPointArn = Shapes::StringShape.new(name: 'EfsAccessPointArn')
    EfsFilesystemArn = Shapes::StringShape.new(name: 'EfsFilesystemArn')
    EfsInTransitEncryption = Shapes::StringShape.new(name: 'EfsInTransitEncryption')
    EfsSubdirectory = Shapes::StringShape.new(name: 'EfsSubdirectory')
    EnabledProtocols = Shapes::ListShape.new(name: 'EnabledProtocols')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FilterAttributeValue = Shapes::StringShape.new(name: 'FilterAttributeValue')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterMembers = Shapes::ListShape.new(name: 'FilterMembers')
    FilterRule = Shapes::StructureShape.new(name: 'FilterRule')
    FilterType = Shapes::StringShape.new(name: 'FilterType')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    FsxFilesystemArn = Shapes::StringShape.new(name: 'FsxFilesystemArn')
    FsxLustreSubdirectory = Shapes::StringShape.new(name: 'FsxLustreSubdirectory')
    FsxOntapSubdirectory = Shapes::StringShape.new(name: 'FsxOntapSubdirectory')
    FsxOpenZfsSubdirectory = Shapes::StringShape.new(name: 'FsxOpenZfsSubdirectory')
    FsxProtocol = Shapes::StructureShape.new(name: 'FsxProtocol')
    FsxProtocolNfs = Shapes::StructureShape.new(name: 'FsxProtocolNfs')
    FsxProtocolSmb = Shapes::StructureShape.new(name: 'FsxProtocolSmb')
    FsxWindowsSubdirectory = Shapes::StringShape.new(name: 'FsxWindowsSubdirectory')
    GenerateRecommendationsRequest = Shapes::StructureShape.new(name: 'GenerateRecommendationsRequest')
    GenerateRecommendationsResponse = Shapes::StructureShape.new(name: 'GenerateRecommendationsResponse')
    Gid = Shapes::StringShape.new(name: 'Gid')
    HdfsAuthenticationType = Shapes::StringShape.new(name: 'HdfsAuthenticationType')
    HdfsBlockSize = Shapes::IntegerShape.new(name: 'HdfsBlockSize')
    HdfsDataTransferProtection = Shapes::StringShape.new(name: 'HdfsDataTransferProtection')
    HdfsNameNode = Shapes::StructureShape.new(name: 'HdfsNameNode')
    HdfsNameNodeList = Shapes::ListShape.new(name: 'HdfsNameNodeList')
    HdfsReplicationFactor = Shapes::IntegerShape.new(name: 'HdfsReplicationFactor')
    HdfsRpcProtection = Shapes::StringShape.new(name: 'HdfsRpcProtection')
    HdfsServerHostname = Shapes::StringShape.new(name: 'HdfsServerHostname')
    HdfsServerPort = Shapes::IntegerShape.new(name: 'HdfsServerPort')
    HdfsSubdirectory = Shapes::StringShape.new(name: 'HdfsSubdirectory')
    HdfsUser = Shapes::StringShape.new(name: 'HdfsUser')
    IOPS = Shapes::StructureShape.new(name: 'IOPS')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InputTagList = Shapes::ListShape.new(name: 'InputTagList')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KerberosKeytabFile = Shapes::BlobShape.new(name: 'KerberosKeytabFile')
    KerberosKrb5ConfFile = Shapes::BlobShape.new(name: 'KerberosKrb5ConfFile')
    KerberosPrincipal = Shapes::StringShape.new(name: 'KerberosPrincipal')
    KmsKeyProviderUri = Shapes::StringShape.new(name: 'KmsKeyProviderUri')
    Latency = Shapes::StructureShape.new(name: 'Latency')
    ListAgentsRequest = Shapes::StructureShape.new(name: 'ListAgentsRequest')
    ListAgentsResponse = Shapes::StructureShape.new(name: 'ListAgentsResponse')
    ListDiscoveryJobsRequest = Shapes::StructureShape.new(name: 'ListDiscoveryJobsRequest')
    ListDiscoveryJobsResponse = Shapes::StructureShape.new(name: 'ListDiscoveryJobsResponse')
    ListLocationsRequest = Shapes::StructureShape.new(name: 'ListLocationsRequest')
    ListLocationsResponse = Shapes::StructureShape.new(name: 'ListLocationsResponse')
    ListStorageSystemsRequest = Shapes::StructureShape.new(name: 'ListStorageSystemsRequest')
    ListStorageSystemsResponse = Shapes::StructureShape.new(name: 'ListStorageSystemsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTaskExecutionsRequest = Shapes::StructureShape.new(name: 'ListTaskExecutionsRequest')
    ListTaskExecutionsResponse = Shapes::StructureShape.new(name: 'ListTaskExecutionsResponse')
    ListTasksRequest = Shapes::StructureShape.new(name: 'ListTasksRequest')
    ListTasksResponse = Shapes::StructureShape.new(name: 'ListTasksResponse')
    LocationArn = Shapes::StringShape.new(name: 'LocationArn')
    LocationFilter = Shapes::StructureShape.new(name: 'LocationFilter')
    LocationFilterName = Shapes::StringShape.new(name: 'LocationFilterName')
    LocationFilters = Shapes::ListShape.new(name: 'LocationFilters')
    LocationList = Shapes::ListShape.new(name: 'LocationList')
    LocationListEntry = Shapes::StructureShape.new(name: 'LocationListEntry')
    LocationUri = Shapes::StringShape.new(name: 'LocationUri')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    MaxP95Performance = Shapes::StructureShape.new(name: 'MaxP95Performance')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metrics = Shapes::ListShape.new(name: 'Metrics')
    Mtime = Shapes::StringShape.new(name: 'Mtime')
    Name = Shapes::StringShape.new(name: 'Name')
    NetAppONTAPCluster = Shapes::StructureShape.new(name: 'NetAppONTAPCluster')
    NetAppONTAPClusters = Shapes::ListShape.new(name: 'NetAppONTAPClusters')
    NetAppONTAPSVM = Shapes::StructureShape.new(name: 'NetAppONTAPSVM')
    NetAppONTAPSVMs = Shapes::ListShape.new(name: 'NetAppONTAPSVMs')
    NetAppONTAPVolume = Shapes::StructureShape.new(name: 'NetAppONTAPVolume')
    NetAppONTAPVolumes = Shapes::ListShape.new(name: 'NetAppONTAPVolumes')
    NetworkInterfaceArn = Shapes::StringShape.new(name: 'NetworkInterfaceArn')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NfsMountOptions = Shapes::StructureShape.new(name: 'NfsMountOptions')
    NfsSubdirectory = Shapes::StringShape.new(name: 'NfsSubdirectory')
    NfsVersion = Shapes::StringShape.new(name: 'NfsVersion')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NonNegativeLong = Shapes::IntegerShape.new(name: 'NonNegativeLong')
    ObjectStorageAccessKey = Shapes::StringShape.new(name: 'ObjectStorageAccessKey')
    ObjectStorageBucketName = Shapes::StringShape.new(name: 'ObjectStorageBucketName')
    ObjectStorageCertificate = Shapes::BlobShape.new(name: 'ObjectStorageCertificate')
    ObjectStorageSecretKey = Shapes::StringShape.new(name: 'ObjectStorageSecretKey')
    ObjectStorageServerPort = Shapes::IntegerShape.new(name: 'ObjectStorageServerPort')
    ObjectStorageServerProtocol = Shapes::StringShape.new(name: 'ObjectStorageServerProtocol')
    ObjectTags = Shapes::StringShape.new(name: 'ObjectTags')
    OnPremConfig = Shapes::StructureShape.new(name: 'OnPremConfig')
    Operator = Shapes::StringShape.new(name: 'Operator')
    Options = Shapes::StructureShape.new(name: 'Options')
    OutputTagList = Shapes::ListShape.new(name: 'OutputTagList')
    OverwriteMode = Shapes::StringShape.new(name: 'OverwriteMode')
    P95Metrics = Shapes::StructureShape.new(name: 'P95Metrics')
    PLSecurityGroupArnList = Shapes::ListShape.new(name: 'PLSecurityGroupArnList')
    PLSubnetArnList = Shapes::ListShape.new(name: 'PLSubnetArnList')
    PhaseStatus = Shapes::StringShape.new(name: 'PhaseStatus')
    PosixPermissions = Shapes::StringShape.new(name: 'PosixPermissions')
    PreserveDeletedFiles = Shapes::StringShape.new(name: 'PreserveDeletedFiles')
    PreserveDevices = Shapes::StringShape.new(name: 'PreserveDevices')
    PrivateLinkConfig = Shapes::StructureShape.new(name: 'PrivateLinkConfig')
    PtolemyBoolean = Shapes::BooleanShape.new(name: 'PtolemyBoolean')
    PtolemyPassword = Shapes::StringShape.new(name: 'PtolemyPassword')
    PtolemyString = Shapes::StringShape.new(name: 'PtolemyString')
    PtolemyUUID = Shapes::StringShape.new(name: 'PtolemyUUID')
    PtolemyUsername = Shapes::StringShape.new(name: 'PtolemyUsername')
    QopConfiguration = Shapes::StructureShape.new(name: 'QopConfiguration')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationStatus = Shapes::StringShape.new(name: 'RecommendationStatus')
    Recommendations = Shapes::ListShape.new(name: 'Recommendations')
    RecommendationsConfigMap = Shapes::MapShape.new(name: 'RecommendationsConfigMap')
    RemoveStorageSystemRequest = Shapes::StructureShape.new(name: 'RemoveStorageSystemRequest')
    RemoveStorageSystemResponse = Shapes::StructureShape.new(name: 'RemoveStorageSystemResponse')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceFilters = Shapes::MapShape.new(name: 'ResourceFilters')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIds = Shapes::ListShape.new(name: 'ResourceIds')
    ResourceMetrics = Shapes::StructureShape.new(name: 'ResourceMetrics')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3StorageClass = Shapes::StringShape.new(name: 'S3StorageClass')
    S3Subdirectory = Shapes::StringShape.new(name: 'S3Subdirectory')
    ScheduleExpressionCron = Shapes::StringShape.new(name: 'ScheduleExpressionCron')
    SecretsManagerArn = Shapes::StringShape.new(name: 'SecretsManagerArn')
    ServerHostname = Shapes::StringShape.new(name: 'ServerHostname')
    SmbDomain = Shapes::StringShape.new(name: 'SmbDomain')
    SmbMountOptions = Shapes::StructureShape.new(name: 'SmbMountOptions')
    SmbPassword = Shapes::StringShape.new(name: 'SmbPassword')
    SmbSecurityDescriptorCopyFlags = Shapes::StringShape.new(name: 'SmbSecurityDescriptorCopyFlags')
    SmbSubdirectory = Shapes::StringShape.new(name: 'SmbSubdirectory')
    SmbUser = Shapes::StringShape.new(name: 'SmbUser')
    SmbVersion = Shapes::StringShape.new(name: 'SmbVersion')
    SourceNetworkInterfaceArns = Shapes::ListShape.new(name: 'SourceNetworkInterfaceArns')
    StartDiscoveryJobRequest = Shapes::StructureShape.new(name: 'StartDiscoveryJobRequest')
    StartDiscoveryJobResponse = Shapes::StructureShape.new(name: 'StartDiscoveryJobResponse')
    StartTaskExecutionRequest = Shapes::StructureShape.new(name: 'StartTaskExecutionRequest')
    StartTaskExecutionResponse = Shapes::StructureShape.new(name: 'StartTaskExecutionResponse')
    StopDiscoveryJobRequest = Shapes::StructureShape.new(name: 'StopDiscoveryJobRequest')
    StopDiscoveryJobResponse = Shapes::StructureShape.new(name: 'StopDiscoveryJobResponse')
    StorageSystemArn = Shapes::StringShape.new(name: 'StorageSystemArn')
    StorageSystemConnectivityStatus = Shapes::StringShape.new(name: 'StorageSystemConnectivityStatus')
    StorageSystemList = Shapes::ListShape.new(name: 'StorageSystemList')
    StorageSystemListEntry = Shapes::StructureShape.new(name: 'StorageSystemListEntry')
    StorageVirtualMachineArn = Shapes::StringShape.new(name: 'StorageVirtualMachineArn')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagListEntry = Shapes::StructureShape.new(name: 'TagListEntry')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TaskArn = Shapes::StringShape.new(name: 'TaskArn')
    TaskExecutionArn = Shapes::StringShape.new(name: 'TaskExecutionArn')
    TaskExecutionList = Shapes::ListShape.new(name: 'TaskExecutionList')
    TaskExecutionListEntry = Shapes::StructureShape.new(name: 'TaskExecutionListEntry')
    TaskExecutionResultDetail = Shapes::StructureShape.new(name: 'TaskExecutionResultDetail')
    TaskExecutionStatus = Shapes::StringShape.new(name: 'TaskExecutionStatus')
    TaskFilter = Shapes::StructureShape.new(name: 'TaskFilter')
    TaskFilterName = Shapes::StringShape.new(name: 'TaskFilterName')
    TaskFilters = Shapes::ListShape.new(name: 'TaskFilters')
    TaskList = Shapes::ListShape.new(name: 'TaskList')
    TaskListEntry = Shapes::StructureShape.new(name: 'TaskListEntry')
    TaskQueueing = Shapes::StringShape.new(name: 'TaskQueueing')
    TaskSchedule = Shapes::StructureShape.new(name: 'TaskSchedule')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    Throughput = Shapes::StructureShape.new(name: 'Throughput')
    Time = Shapes::TimestampShape.new(name: 'Time')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TransferMode = Shapes::StringShape.new(name: 'TransferMode')
    Uid = Shapes::StringShape.new(name: 'Uid')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentRequest = Shapes::StructureShape.new(name: 'UpdateAgentRequest')
    UpdateAgentResponse = Shapes::StructureShape.new(name: 'UpdateAgentResponse')
    UpdateDiscoveryJobRequest = Shapes::StructureShape.new(name: 'UpdateDiscoveryJobRequest')
    UpdateDiscoveryJobResponse = Shapes::StructureShape.new(name: 'UpdateDiscoveryJobResponse')
    UpdateLocationHdfsRequest = Shapes::StructureShape.new(name: 'UpdateLocationHdfsRequest')
    UpdateLocationHdfsResponse = Shapes::StructureShape.new(name: 'UpdateLocationHdfsResponse')
    UpdateLocationNfsRequest = Shapes::StructureShape.new(name: 'UpdateLocationNfsRequest')
    UpdateLocationNfsResponse = Shapes::StructureShape.new(name: 'UpdateLocationNfsResponse')
    UpdateLocationObjectStorageRequest = Shapes::StructureShape.new(name: 'UpdateLocationObjectStorageRequest')
    UpdateLocationObjectStorageResponse = Shapes::StructureShape.new(name: 'UpdateLocationObjectStorageResponse')
    UpdateLocationSmbRequest = Shapes::StructureShape.new(name: 'UpdateLocationSmbRequest')
    UpdateLocationSmbResponse = Shapes::StructureShape.new(name: 'UpdateLocationSmbResponse')
    UpdateStorageSystemRequest = Shapes::StructureShape.new(name: 'UpdateStorageSystemRequest')
    UpdateStorageSystemResponse = Shapes::StructureShape.new(name: 'UpdateStorageSystemResponse')
    UpdateTaskExecutionRequest = Shapes::StructureShape.new(name: 'UpdateTaskExecutionRequest')
    UpdateTaskExecutionResponse = Shapes::StructureShape.new(name: 'UpdateTaskExecutionResponse')
    UpdateTaskRequest = Shapes::StructureShape.new(name: 'UpdateTaskRequest')
    UpdateTaskResponse = Shapes::StructureShape.new(name: 'UpdateTaskResponse')
    VerifyMode = Shapes::StringShape.new(name: 'VerifyMode')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')

    AddStorageSystemRequest.add_member(:server_configuration, Shapes::ShapeRef.new(shape: DiscoveryServerConfiguration, required: true, location_name: "ServerConfiguration"))
    AddStorageSystemRequest.add_member(:system_type, Shapes::ShapeRef.new(shape: DiscoverySystemType, required: true, location_name: "SystemType"))
    AddStorageSystemRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: DiscoveryAgentArnList, required: true, location_name: "AgentArns"))
    AddStorageSystemRequest.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    AddStorageSystemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    AddStorageSystemRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AddStorageSystemRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: PtolemyUUID, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    AddStorageSystemRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, required: true, location_name: "Credentials"))
    AddStorageSystemRequest.struct_class = Types::AddStorageSystemRequest

    AddStorageSystemResponse.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, required: true, location_name: "StorageSystemArn"))
    AddStorageSystemResponse.struct_class = Types::AddStorageSystemResponse

    AgentArnList.member = Shapes::ShapeRef.new(shape: AgentArn)

    AgentList.member = Shapes::ShapeRef.new(shape: AgentListEntry)

    AgentListEntry.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    AgentListEntry.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    AgentListEntry.add_member(:status, Shapes::ShapeRef.new(shape: AgentStatus, location_name: "Status"))
    AgentListEntry.struct_class = Types::AgentListEntry

    CancelTaskExecutionRequest.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, required: true, location_name: "TaskExecutionArn"))
    CancelTaskExecutionRequest.struct_class = Types::CancelTaskExecutionRequest

    CancelTaskExecutionResponse.struct_class = Types::CancelTaskExecutionResponse

    Capacity.add_member(:used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "Used"))
    Capacity.add_member(:provisioned, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "Provisioned"))
    Capacity.add_member(:logical_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "LogicalUsed"))
    Capacity.struct_class = Types::Capacity

    CreateAgentRequest.add_member(:activation_key, Shapes::ShapeRef.new(shape: ActivationKey, required: true, location_name: "ActivationKey"))
    CreateAgentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: TagValue, location_name: "AgentName"))
    CreateAgentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateAgentRequest.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    CreateAgentRequest.add_member(:subnet_arns, Shapes::ShapeRef.new(shape: PLSubnetArnList, location_name: "SubnetArns"))
    CreateAgentRequest.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: PLSecurityGroupArnList, location_name: "SecurityGroupArns"))
    CreateAgentRequest.struct_class = Types::CreateAgentRequest

    CreateAgentResponse.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    CreateAgentResponse.struct_class = Types::CreateAgentResponse

    CreateLocationEfsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: EfsSubdirectory, location_name: "Subdirectory"))
    CreateLocationEfsRequest.add_member(:efs_filesystem_arn, Shapes::ShapeRef.new(shape: EfsFilesystemArn, required: true, location_name: "EfsFilesystemArn"))
    CreateLocationEfsRequest.add_member(:ec2_config, Shapes::ShapeRef.new(shape: Ec2Config, required: true, location_name: "Ec2Config"))
    CreateLocationEfsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationEfsRequest.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: EfsAccessPointArn, location_name: "AccessPointArn"))
    CreateLocationEfsRequest.add_member(:file_system_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "FileSystemAccessRoleArn"))
    CreateLocationEfsRequest.add_member(:in_transit_encryption, Shapes::ShapeRef.new(shape: EfsInTransitEncryption, location_name: "InTransitEncryption"))
    CreateLocationEfsRequest.struct_class = Types::CreateLocationEfsRequest

    CreateLocationEfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationEfsResponse.struct_class = Types::CreateLocationEfsResponse

    CreateLocationFsxLustreRequest.add_member(:fsx_filesystem_arn, Shapes::ShapeRef.new(shape: FsxFilesystemArn, required: true, location_name: "FsxFilesystemArn"))
    CreateLocationFsxLustreRequest.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, required: true, location_name: "SecurityGroupArns"))
    CreateLocationFsxLustreRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: FsxLustreSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxLustreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxLustreRequest.struct_class = Types::CreateLocationFsxLustreRequest

    CreateLocationFsxLustreResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxLustreResponse.struct_class = Types::CreateLocationFsxLustreResponse

    CreateLocationFsxOntapRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: FsxProtocol, required: true, location_name: "Protocol"))
    CreateLocationFsxOntapRequest.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, required: true, location_name: "SecurityGroupArns"))
    CreateLocationFsxOntapRequest.add_member(:storage_virtual_machine_arn, Shapes::ShapeRef.new(shape: StorageVirtualMachineArn, required: true, location_name: "StorageVirtualMachineArn"))
    CreateLocationFsxOntapRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: FsxOntapSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxOntapRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxOntapRequest.struct_class = Types::CreateLocationFsxOntapRequest

    CreateLocationFsxOntapResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxOntapResponse.struct_class = Types::CreateLocationFsxOntapResponse

    CreateLocationFsxOpenZfsRequest.add_member(:fsx_filesystem_arn, Shapes::ShapeRef.new(shape: FsxFilesystemArn, required: true, location_name: "FsxFilesystemArn"))
    CreateLocationFsxOpenZfsRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: FsxProtocol, required: true, location_name: "Protocol"))
    CreateLocationFsxOpenZfsRequest.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, required: true, location_name: "SecurityGroupArns"))
    CreateLocationFsxOpenZfsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: FsxOpenZfsSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxOpenZfsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxOpenZfsRequest.struct_class = Types::CreateLocationFsxOpenZfsRequest

    CreateLocationFsxOpenZfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxOpenZfsResponse.struct_class = Types::CreateLocationFsxOpenZfsResponse

    CreateLocationFsxWindowsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: FsxWindowsSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxWindowsRequest.add_member(:fsx_filesystem_arn, Shapes::ShapeRef.new(shape: FsxFilesystemArn, required: true, location_name: "FsxFilesystemArn"))
    CreateLocationFsxWindowsRequest.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, required: true, location_name: "SecurityGroupArns"))
    CreateLocationFsxWindowsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxWindowsRequest.add_member(:user, Shapes::ShapeRef.new(shape: SmbUser, required: true, location_name: "User"))
    CreateLocationFsxWindowsRequest.add_member(:domain, Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    CreateLocationFsxWindowsRequest.add_member(:password, Shapes::ShapeRef.new(shape: SmbPassword, required: true, location_name: "Password"))
    CreateLocationFsxWindowsRequest.struct_class = Types::CreateLocationFsxWindowsRequest

    CreateLocationFsxWindowsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxWindowsResponse.struct_class = Types::CreateLocationFsxWindowsResponse

    CreateLocationHdfsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: HdfsSubdirectory, location_name: "Subdirectory"))
    CreateLocationHdfsRequest.add_member(:name_nodes, Shapes::ShapeRef.new(shape: HdfsNameNodeList, required: true, location_name: "NameNodes"))
    CreateLocationHdfsRequest.add_member(:block_size, Shapes::ShapeRef.new(shape: HdfsBlockSize, location_name: "BlockSize"))
    CreateLocationHdfsRequest.add_member(:replication_factor, Shapes::ShapeRef.new(shape: HdfsReplicationFactor, location_name: "ReplicationFactor"))
    CreateLocationHdfsRequest.add_member(:kms_key_provider_uri, Shapes::ShapeRef.new(shape: KmsKeyProviderUri, location_name: "KmsKeyProviderUri"))
    CreateLocationHdfsRequest.add_member(:qop_configuration, Shapes::ShapeRef.new(shape: QopConfiguration, location_name: "QopConfiguration"))
    CreateLocationHdfsRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: HdfsAuthenticationType, required: true, location_name: "AuthenticationType"))
    CreateLocationHdfsRequest.add_member(:simple_user, Shapes::ShapeRef.new(shape: HdfsUser, location_name: "SimpleUser"))
    CreateLocationHdfsRequest.add_member(:kerberos_principal, Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    CreateLocationHdfsRequest.add_member(:kerberos_keytab, Shapes::ShapeRef.new(shape: KerberosKeytabFile, location_name: "KerberosKeytab"))
    CreateLocationHdfsRequest.add_member(:kerberos_krb_5_conf, Shapes::ShapeRef.new(shape: KerberosKrb5ConfFile, location_name: "KerberosKrb5Conf"))
    CreateLocationHdfsRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, required: true, location_name: "AgentArns"))
    CreateLocationHdfsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationHdfsRequest.struct_class = Types::CreateLocationHdfsRequest

    CreateLocationHdfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationHdfsResponse.struct_class = Types::CreateLocationHdfsResponse

    CreateLocationNfsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: NfsSubdirectory, required: true, location_name: "Subdirectory"))
    CreateLocationNfsRequest.add_member(:server_hostname, Shapes::ShapeRef.new(shape: ServerHostname, required: true, location_name: "ServerHostname"))
    CreateLocationNfsRequest.add_member(:on_prem_config, Shapes::ShapeRef.new(shape: OnPremConfig, required: true, location_name: "OnPremConfig"))
    CreateLocationNfsRequest.add_member(:mount_options, Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    CreateLocationNfsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationNfsRequest.struct_class = Types::CreateLocationNfsRequest

    CreateLocationNfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationNfsResponse.struct_class = Types::CreateLocationNfsResponse

    CreateLocationObjectStorageRequest.add_member(:server_hostname, Shapes::ShapeRef.new(shape: ServerHostname, required: true, location_name: "ServerHostname"))
    CreateLocationObjectStorageRequest.add_member(:server_port, Shapes::ShapeRef.new(shape: ObjectStorageServerPort, location_name: "ServerPort"))
    CreateLocationObjectStorageRequest.add_member(:server_protocol, Shapes::ShapeRef.new(shape: ObjectStorageServerProtocol, location_name: "ServerProtocol"))
    CreateLocationObjectStorageRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    CreateLocationObjectStorageRequest.add_member(:bucket_name, Shapes::ShapeRef.new(shape: ObjectStorageBucketName, required: true, location_name: "BucketName"))
    CreateLocationObjectStorageRequest.add_member(:access_key, Shapes::ShapeRef.new(shape: ObjectStorageAccessKey, location_name: "AccessKey"))
    CreateLocationObjectStorageRequest.add_member(:secret_key, Shapes::ShapeRef.new(shape: ObjectStorageSecretKey, location_name: "SecretKey"))
    CreateLocationObjectStorageRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, required: true, location_name: "AgentArns"))
    CreateLocationObjectStorageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationObjectStorageRequest.add_member(:server_certificate, Shapes::ShapeRef.new(shape: ObjectStorageCertificate, location_name: "ServerCertificate"))
    CreateLocationObjectStorageRequest.struct_class = Types::CreateLocationObjectStorageRequest

    CreateLocationObjectStorageResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationObjectStorageResponse.struct_class = Types::CreateLocationObjectStorageResponse

    CreateLocationS3Request.add_member(:subdirectory, Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    CreateLocationS3Request.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, required: true, location_name: "S3BucketArn"))
    CreateLocationS3Request.add_member(:s3_storage_class, Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "S3StorageClass"))
    CreateLocationS3Request.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, required: true, location_name: "S3Config"))
    CreateLocationS3Request.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    CreateLocationS3Request.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationS3Request.struct_class = Types::CreateLocationS3Request

    CreateLocationS3Response.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationS3Response.struct_class = Types::CreateLocationS3Response

    CreateLocationSmbRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: SmbSubdirectory, required: true, location_name: "Subdirectory"))
    CreateLocationSmbRequest.add_member(:server_hostname, Shapes::ShapeRef.new(shape: ServerHostname, required: true, location_name: "ServerHostname"))
    CreateLocationSmbRequest.add_member(:user, Shapes::ShapeRef.new(shape: SmbUser, required: true, location_name: "User"))
    CreateLocationSmbRequest.add_member(:domain, Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    CreateLocationSmbRequest.add_member(:password, Shapes::ShapeRef.new(shape: SmbPassword, required: true, location_name: "Password"))
    CreateLocationSmbRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, required: true, location_name: "AgentArns"))
    CreateLocationSmbRequest.add_member(:mount_options, Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    CreateLocationSmbRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationSmbRequest.struct_class = Types::CreateLocationSmbRequest

    CreateLocationSmbResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationSmbResponse.struct_class = Types::CreateLocationSmbResponse

    CreateTaskRequest.add_member(:source_location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "SourceLocationArn"))
    CreateTaskRequest.add_member(:destination_location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "DestinationLocationArn"))
    CreateTaskRequest.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    CreateTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    CreateTaskRequest.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    CreateTaskRequest.add_member(:excludes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    CreateTaskRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: TaskSchedule, location_name: "Schedule"))
    CreateTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateTaskRequest.add_member(:includes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    CreateTaskRequest.struct_class = Types::CreateTaskRequest

    CreateTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    CreateTaskResponse.struct_class = Types::CreateTaskResponse

    Credentials.add_member(:username, Shapes::ShapeRef.new(shape: PtolemyUsername, required: true, location_name: "Username"))
    Credentials.add_member(:password, Shapes::ShapeRef.new(shape: PtolemyPassword, required: true, location_name: "Password"))
    Credentials.struct_class = Types::Credentials

    DeleteAgentRequest.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "AgentArn"))
    DeleteAgentRequest.struct_class = Types::DeleteAgentRequest

    DeleteAgentResponse.struct_class = Types::DeleteAgentResponse

    DeleteLocationRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DeleteLocationRequest.struct_class = Types::DeleteLocationRequest

    DeleteLocationResponse.struct_class = Types::DeleteLocationResponse

    DeleteTaskRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, required: true, location_name: "TaskArn"))
    DeleteTaskRequest.struct_class = Types::DeleteTaskRequest

    DeleteTaskResponse.struct_class = Types::DeleteTaskResponse

    DescribeAgentRequest.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "AgentArn"))
    DescribeAgentRequest.struct_class = Types::DescribeAgentRequest

    DescribeAgentResponse.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    DescribeAgentResponse.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    DescribeAgentResponse.add_member(:status, Shapes::ShapeRef.new(shape: AgentStatus, location_name: "Status"))
    DescribeAgentResponse.add_member(:last_connection_time, Shapes::ShapeRef.new(shape: Time, location_name: "LastConnectionTime"))
    DescribeAgentResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeAgentResponse.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    DescribeAgentResponse.add_member(:private_link_config, Shapes::ShapeRef.new(shape: PrivateLinkConfig, location_name: "PrivateLinkConfig"))
    DescribeAgentResponse.struct_class = Types::DescribeAgentResponse

    DescribeDiscoveryJobRequest.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, required: true, location_name: "DiscoveryJobArn"))
    DescribeDiscoveryJobRequest.struct_class = Types::DescribeDiscoveryJobRequest

    DescribeDiscoveryJobResponse.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, location_name: "StorageSystemArn"))
    DescribeDiscoveryJobResponse.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, location_name: "DiscoveryJobArn"))
    DescribeDiscoveryJobResponse.add_member(:collection_duration_minutes, Shapes::ShapeRef.new(shape: CollectionDurationMinutes, location_name: "CollectionDurationMinutes"))
    DescribeDiscoveryJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DiscoveryJobStatus, location_name: "Status"))
    DescribeDiscoveryJobResponse.add_member(:job_start_time, Shapes::ShapeRef.new(shape: DiscoveryTime, location_name: "JobStartTime"))
    DescribeDiscoveryJobResponse.add_member(:job_end_time, Shapes::ShapeRef.new(shape: DiscoveryTime, location_name: "JobEndTime"))
    DescribeDiscoveryJobResponse.struct_class = Types::DescribeDiscoveryJobResponse

    DescribeLocationEfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationEfsRequest.struct_class = Types::DescribeLocationEfsRequest

    DescribeLocationEfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationEfsResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationEfsResponse.add_member(:ec2_config, Shapes::ShapeRef.new(shape: Ec2Config, location_name: "Ec2Config"))
    DescribeLocationEfsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationEfsResponse.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: EfsAccessPointArn, location_name: "AccessPointArn"))
    DescribeLocationEfsResponse.add_member(:file_system_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "FileSystemAccessRoleArn"))
    DescribeLocationEfsResponse.add_member(:in_transit_encryption, Shapes::ShapeRef.new(shape: EfsInTransitEncryption, location_name: "InTransitEncryption"))
    DescribeLocationEfsResponse.struct_class = Types::DescribeLocationEfsResponse

    DescribeLocationFsxLustreRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationFsxLustreRequest.struct_class = Types::DescribeLocationFsxLustreRequest

    DescribeLocationFsxLustreResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxLustreResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxLustreResponse.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxLustreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxLustreResponse.struct_class = Types::DescribeLocationFsxLustreResponse

    DescribeLocationFsxOntapRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationFsxOntapRequest.struct_class = Types::DescribeLocationFsxOntapRequest

    DescribeLocationFsxOntapResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxOntapResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxOntapResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxOntapResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol"))
    DescribeLocationFsxOntapResponse.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxOntapResponse.add_member(:storage_virtual_machine_arn, Shapes::ShapeRef.new(shape: StorageVirtualMachineArn, location_name: "StorageVirtualMachineArn"))
    DescribeLocationFsxOntapResponse.add_member(:fsx_filesystem_arn, Shapes::ShapeRef.new(shape: FsxFilesystemArn, location_name: "FsxFilesystemArn"))
    DescribeLocationFsxOntapResponse.struct_class = Types::DescribeLocationFsxOntapResponse

    DescribeLocationFsxOpenZfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationFsxOpenZfsRequest.struct_class = Types::DescribeLocationFsxOpenZfsRequest

    DescribeLocationFsxOpenZfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxOpenZfsResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxOpenZfsResponse.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxOpenZfsResponse.add_member(:protocol, Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol"))
    DescribeLocationFsxOpenZfsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxOpenZfsResponse.struct_class = Types::DescribeLocationFsxOpenZfsResponse

    DescribeLocationFsxWindowsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationFsxWindowsRequest.struct_class = Types::DescribeLocationFsxWindowsRequest

    DescribeLocationFsxWindowsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxWindowsResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxWindowsResponse.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxWindowsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxWindowsResponse.add_member(:user, Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    DescribeLocationFsxWindowsResponse.add_member(:domain, Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    DescribeLocationFsxWindowsResponse.struct_class = Types::DescribeLocationFsxWindowsResponse

    DescribeLocationHdfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationHdfsRequest.struct_class = Types::DescribeLocationHdfsRequest

    DescribeLocationHdfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationHdfsResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationHdfsResponse.add_member(:name_nodes, Shapes::ShapeRef.new(shape: HdfsNameNodeList, location_name: "NameNodes"))
    DescribeLocationHdfsResponse.add_member(:block_size, Shapes::ShapeRef.new(shape: HdfsBlockSize, location_name: "BlockSize"))
    DescribeLocationHdfsResponse.add_member(:replication_factor, Shapes::ShapeRef.new(shape: HdfsReplicationFactor, location_name: "ReplicationFactor"))
    DescribeLocationHdfsResponse.add_member(:kms_key_provider_uri, Shapes::ShapeRef.new(shape: KmsKeyProviderUri, location_name: "KmsKeyProviderUri"))
    DescribeLocationHdfsResponse.add_member(:qop_configuration, Shapes::ShapeRef.new(shape: QopConfiguration, location_name: "QopConfiguration"))
    DescribeLocationHdfsResponse.add_member(:authentication_type, Shapes::ShapeRef.new(shape: HdfsAuthenticationType, location_name: "AuthenticationType"))
    DescribeLocationHdfsResponse.add_member(:simple_user, Shapes::ShapeRef.new(shape: HdfsUser, location_name: "SimpleUser"))
    DescribeLocationHdfsResponse.add_member(:kerberos_principal, Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    DescribeLocationHdfsResponse.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationHdfsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationHdfsResponse.struct_class = Types::DescribeLocationHdfsResponse

    DescribeLocationNfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationNfsRequest.struct_class = Types::DescribeLocationNfsRequest

    DescribeLocationNfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationNfsResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationNfsResponse.add_member(:on_prem_config, Shapes::ShapeRef.new(shape: OnPremConfig, location_name: "OnPremConfig"))
    DescribeLocationNfsResponse.add_member(:mount_options, Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    DescribeLocationNfsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationNfsResponse.struct_class = Types::DescribeLocationNfsResponse

    DescribeLocationObjectStorageRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationObjectStorageRequest.struct_class = Types::DescribeLocationObjectStorageRequest

    DescribeLocationObjectStorageResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationObjectStorageResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationObjectStorageResponse.add_member(:access_key, Shapes::ShapeRef.new(shape: ObjectStorageAccessKey, location_name: "AccessKey"))
    DescribeLocationObjectStorageResponse.add_member(:server_port, Shapes::ShapeRef.new(shape: ObjectStorageServerPort, location_name: "ServerPort"))
    DescribeLocationObjectStorageResponse.add_member(:server_protocol, Shapes::ShapeRef.new(shape: ObjectStorageServerProtocol, location_name: "ServerProtocol"))
    DescribeLocationObjectStorageResponse.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationObjectStorageResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationObjectStorageResponse.add_member(:server_certificate, Shapes::ShapeRef.new(shape: ObjectStorageCertificate, location_name: "ServerCertificate"))
    DescribeLocationObjectStorageResponse.struct_class = Types::DescribeLocationObjectStorageResponse

    DescribeLocationS3Request.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationS3Request.struct_class = Types::DescribeLocationS3Request

    DescribeLocationS3Response.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationS3Response.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationS3Response.add_member(:s3_storage_class, Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "S3StorageClass"))
    DescribeLocationS3Response.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "S3Config"))
    DescribeLocationS3Response.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationS3Response.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationS3Response.struct_class = Types::DescribeLocationS3Response

    DescribeLocationSmbRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationSmbRequest.struct_class = Types::DescribeLocationSmbRequest

    DescribeLocationSmbResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationSmbResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationSmbResponse.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationSmbResponse.add_member(:user, Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    DescribeLocationSmbResponse.add_member(:domain, Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    DescribeLocationSmbResponse.add_member(:mount_options, Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    DescribeLocationSmbResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationSmbResponse.struct_class = Types::DescribeLocationSmbResponse

    DescribeStorageSystemRequest.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, required: true, location_name: "StorageSystemArn"))
    DescribeStorageSystemRequest.struct_class = Types::DescribeStorageSystemRequest

    DescribeStorageSystemResourceMetricsRequest.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, required: true, location_name: "DiscoveryJobArn"))
    DescribeStorageSystemResourceMetricsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: DiscoveryResourceType, required: true, location_name: "ResourceType"))
    DescribeStorageSystemResourceMetricsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DescribeStorageSystemResourceMetricsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: DiscoveryTime, location_name: "StartTime"))
    DescribeStorageSystemResourceMetricsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: DiscoveryTime, location_name: "EndTime"))
    DescribeStorageSystemResourceMetricsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DiscoveryMaxResults, location_name: "MaxResults"))
    DescribeStorageSystemResourceMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    DescribeStorageSystemResourceMetricsRequest.struct_class = Types::DescribeStorageSystemResourceMetricsRequest

    DescribeStorageSystemResourceMetricsResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    DescribeStorageSystemResourceMetricsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    DescribeStorageSystemResourceMetricsResponse.struct_class = Types::DescribeStorageSystemResourceMetricsResponse

    DescribeStorageSystemResourcesRequest.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, required: true, location_name: "DiscoveryJobArn"))
    DescribeStorageSystemResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: DiscoveryResourceType, required: true, location_name: "ResourceType"))
    DescribeStorageSystemResourcesRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIds, location_name: "ResourceIds"))
    DescribeStorageSystemResourcesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ResourceFilters, location_name: "Filter"))
    DescribeStorageSystemResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DiscoveryMaxResults, location_name: "MaxResults"))
    DescribeStorageSystemResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    DescribeStorageSystemResourcesRequest.struct_class = Types::DescribeStorageSystemResourcesRequest

    DescribeStorageSystemResourcesResponse.add_member(:resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "ResourceDetails"))
    DescribeStorageSystemResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    DescribeStorageSystemResourcesResponse.struct_class = Types::DescribeStorageSystemResourcesResponse

    DescribeStorageSystemResponse.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, location_name: "StorageSystemArn"))
    DescribeStorageSystemResponse.add_member(:server_configuration, Shapes::ShapeRef.new(shape: DiscoveryServerConfiguration, location_name: "ServerConfiguration"))
    DescribeStorageSystemResponse.add_member(:system_type, Shapes::ShapeRef.new(shape: DiscoverySystemType, location_name: "SystemType"))
    DescribeStorageSystemResponse.add_member(:agent_arns, Shapes::ShapeRef.new(shape: DiscoveryAgentArnList, location_name: "AgentArns"))
    DescribeStorageSystemResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DescribeStorageSystemResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeStorageSystemResponse.add_member(:connectivity_status, Shapes::ShapeRef.new(shape: StorageSystemConnectivityStatus, location_name: "ConnectivityStatus"))
    DescribeStorageSystemResponse.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    DescribeStorageSystemResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    DescribeStorageSystemResponse.add_member(:secrets_manager_arn, Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: "SecretsManagerArn"))
    DescribeStorageSystemResponse.struct_class = Types::DescribeStorageSystemResponse

    DescribeTaskExecutionRequest.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, required: true, location_name: "TaskExecutionArn"))
    DescribeTaskExecutionRequest.struct_class = Types::DescribeTaskExecutionRequest

    DescribeTaskExecutionResponse.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    DescribeTaskExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "Status"))
    DescribeTaskExecutionResponse.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    DescribeTaskExecutionResponse.add_member(:excludes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    DescribeTaskExecutionResponse.add_member(:includes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    DescribeTaskExecutionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "StartTime"))
    DescribeTaskExecutionResponse.add_member(:estimated_files_to_transfer, Shapes::ShapeRef.new(shape: long, location_name: "EstimatedFilesToTransfer"))
    DescribeTaskExecutionResponse.add_member(:estimated_bytes_to_transfer, Shapes::ShapeRef.new(shape: long, location_name: "EstimatedBytesToTransfer"))
    DescribeTaskExecutionResponse.add_member(:files_transferred, Shapes::ShapeRef.new(shape: long, location_name: "FilesTransferred"))
    DescribeTaskExecutionResponse.add_member(:bytes_written, Shapes::ShapeRef.new(shape: long, location_name: "BytesWritten"))
    DescribeTaskExecutionResponse.add_member(:bytes_transferred, Shapes::ShapeRef.new(shape: long, location_name: "BytesTransferred"))
    DescribeTaskExecutionResponse.add_member(:result, Shapes::ShapeRef.new(shape: TaskExecutionResultDetail, location_name: "Result"))
    DescribeTaskExecutionResponse.add_member(:bytes_compressed, Shapes::ShapeRef.new(shape: long, location_name: "BytesCompressed"))
    DescribeTaskExecutionResponse.struct_class = Types::DescribeTaskExecutionResponse

    DescribeTaskRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, required: true, location_name: "TaskArn"))
    DescribeTaskRequest.struct_class = Types::DescribeTaskRequest

    DescribeTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    DescribeTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "Status"))
    DescribeTaskResponse.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    DescribeTaskResponse.add_member(:current_task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "CurrentTaskExecutionArn"))
    DescribeTaskResponse.add_member(:source_location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "SourceLocationArn"))
    DescribeTaskResponse.add_member(:destination_location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "DestinationLocationArn"))
    DescribeTaskResponse.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    DescribeTaskResponse.add_member(:source_network_interface_arns, Shapes::ShapeRef.new(shape: SourceNetworkInterfaceArns, location_name: "SourceNetworkInterfaceArns"))
    DescribeTaskResponse.add_member(:destination_network_interface_arns, Shapes::ShapeRef.new(shape: DestinationNetworkInterfaceArns, location_name: "DestinationNetworkInterfaceArns"))
    DescribeTaskResponse.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    DescribeTaskResponse.add_member(:excludes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    DescribeTaskResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: TaskSchedule, location_name: "Schedule"))
    DescribeTaskResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "ErrorCode"))
    DescribeTaskResponse.add_member(:error_detail, Shapes::ShapeRef.new(shape: string, location_name: "ErrorDetail"))
    DescribeTaskResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeTaskResponse.add_member(:includes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    DescribeTaskResponse.struct_class = Types::DescribeTaskResponse

    DestinationNetworkInterfaceArns.member = Shapes::ShapeRef.new(shape: NetworkInterfaceArn)

    DiscoveryAgentArnList.member = Shapes::ShapeRef.new(shape: AgentArn)

    DiscoveryJobList.member = Shapes::ShapeRef.new(shape: DiscoveryJobListEntry)

    DiscoveryJobListEntry.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, location_name: "DiscoveryJobArn"))
    DiscoveryJobListEntry.add_member(:status, Shapes::ShapeRef.new(shape: DiscoveryJobStatus, location_name: "Status"))
    DiscoveryJobListEntry.struct_class = Types::DiscoveryJobListEntry

    DiscoveryServerConfiguration.add_member(:server_hostname, Shapes::ShapeRef.new(shape: DiscoveryServerHostname, required: true, location_name: "ServerHostname"))
    DiscoveryServerConfiguration.add_member(:server_port, Shapes::ShapeRef.new(shape: DiscoveryServerPort, location_name: "ServerPort"))
    DiscoveryServerConfiguration.struct_class = Types::DiscoveryServerConfiguration

    Ec2Config.add_member(:subnet_arn, Shapes::ShapeRef.new(shape: Ec2SubnetArn, required: true, location_name: "SubnetArn"))
    Ec2Config.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, required: true, location_name: "SecurityGroupArns"))
    Ec2Config.struct_class = Types::Ec2Config

    Ec2SecurityGroupArnList.member = Shapes::ShapeRef.new(shape: Ec2SecurityGroupArn)

    EnabledProtocols.member = Shapes::ShapeRef.new(shape: PtolemyString)

    FilterList.member = Shapes::ShapeRef.new(shape: FilterRule)

    FilterMembers.member = Shapes::ShapeRef.new(shape: PtolemyString)

    FilterRule.add_member(:filter_type, Shapes::ShapeRef.new(shape: FilterType, location_name: "FilterType"))
    FilterRule.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, location_name: "Value"))
    FilterRule.struct_class = Types::FilterRule

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterAttributeValue)

    FsxProtocol.add_member(:nfs, Shapes::ShapeRef.new(shape: FsxProtocolNfs, location_name: "NFS"))
    FsxProtocol.add_member(:smb, Shapes::ShapeRef.new(shape: FsxProtocolSmb, location_name: "SMB"))
    FsxProtocol.struct_class = Types::FsxProtocol

    FsxProtocolNfs.add_member(:mount_options, Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    FsxProtocolNfs.struct_class = Types::FsxProtocolNfs

    FsxProtocolSmb.add_member(:domain, Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    FsxProtocolSmb.add_member(:mount_options, Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    FsxProtocolSmb.add_member(:password, Shapes::ShapeRef.new(shape: SmbPassword, required: true, location_name: "Password"))
    FsxProtocolSmb.add_member(:user, Shapes::ShapeRef.new(shape: SmbUser, required: true, location_name: "User"))
    FsxProtocolSmb.struct_class = Types::FsxProtocolSmb

    GenerateRecommendationsRequest.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, required: true, location_name: "DiscoveryJobArn"))
    GenerateRecommendationsRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIds, required: true, location_name: "ResourceIds"))
    GenerateRecommendationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: DiscoveryResourceType, required: true, location_name: "ResourceType"))
    GenerateRecommendationsRequest.struct_class = Types::GenerateRecommendationsRequest

    GenerateRecommendationsResponse.struct_class = Types::GenerateRecommendationsResponse

    HdfsNameNode.add_member(:hostname, Shapes::ShapeRef.new(shape: HdfsServerHostname, required: true, location_name: "Hostname"))
    HdfsNameNode.add_member(:port, Shapes::ShapeRef.new(shape: HdfsServerPort, required: true, location_name: "Port"))
    HdfsNameNode.struct_class = Types::HdfsNameNode

    HdfsNameNodeList.member = Shapes::ShapeRef.new(shape: HdfsNameNode)

    IOPS.add_member(:read, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Read"))
    IOPS.add_member(:write, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Write"))
    IOPS.add_member(:other, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Other"))
    IOPS.add_member(:total, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Total"))
    IOPS.struct_class = Types::IOPS

    InputTagList.member = Shapes::ShapeRef.new(shape: TagListEntry)

    InternalException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InternalException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "errorCode"))
    InternalException.struct_class = Types::InternalException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InvalidRequestException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "errorCode"))
    InvalidRequestException.add_member(:datasync_error_code, Shapes::ShapeRef.new(shape: string, location_name: "datasyncErrorCode"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    Latency.add_member(:read, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Read"))
    Latency.add_member(:write, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Write"))
    Latency.add_member(:other, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Other"))
    Latency.struct_class = Types::Latency

    ListAgentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAgentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentsRequest.struct_class = Types::ListAgentsRequest

    ListAgentsResponse.add_member(:agents, Shapes::ShapeRef.new(shape: AgentList, location_name: "Agents"))
    ListAgentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentsResponse.struct_class = Types::ListAgentsResponse

    ListDiscoveryJobsRequest.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, location_name: "StorageSystemArn"))
    ListDiscoveryJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DiscoveryMaxResults, location_name: "MaxResults"))
    ListDiscoveryJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    ListDiscoveryJobsRequest.struct_class = Types::ListDiscoveryJobsRequest

    ListDiscoveryJobsResponse.add_member(:discovery_jobs, Shapes::ShapeRef.new(shape: DiscoveryJobList, location_name: "DiscoveryJobs"))
    ListDiscoveryJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    ListDiscoveryJobsResponse.struct_class = Types::ListDiscoveryJobsResponse

    ListLocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: LocationFilters, location_name: "Filters"))
    ListLocationsRequest.struct_class = Types::ListLocationsRequest

    ListLocationsResponse.add_member(:locations, Shapes::ShapeRef.new(shape: LocationList, location_name: "Locations"))
    ListLocationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLocationsResponse.struct_class = Types::ListLocationsResponse

    ListStorageSystemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DiscoveryMaxResults, location_name: "MaxResults"))
    ListStorageSystemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    ListStorageSystemsRequest.struct_class = Types::ListStorageSystemsRequest

    ListStorageSystemsResponse.add_member(:storage_systems, Shapes::ShapeRef.new(shape: StorageSystemList, location_name: "StorageSystems"))
    ListStorageSystemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DiscoveryNextToken, location_name: "NextToken"))
    ListStorageSystemsResponse.struct_class = Types::ListStorageSystemsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: OutputTagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTaskExecutionsRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    ListTaskExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTaskExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTaskExecutionsRequest.struct_class = Types::ListTaskExecutionsRequest

    ListTaskExecutionsResponse.add_member(:task_executions, Shapes::ShapeRef.new(shape: TaskExecutionList, location_name: "TaskExecutions"))
    ListTaskExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTaskExecutionsResponse.struct_class = Types::ListTaskExecutionsResponse

    ListTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: TaskFilters, location_name: "Filters"))
    ListTasksRequest.struct_class = Types::ListTasksRequest

    ListTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: TaskList, location_name: "Tasks"))
    ListTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTasksResponse.struct_class = Types::ListTasksResponse

    LocationFilter.add_member(:name, Shapes::ShapeRef.new(shape: LocationFilterName, required: true, location_name: "Name"))
    LocationFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    LocationFilter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, required: true, location_name: "Operator"))
    LocationFilter.struct_class = Types::LocationFilter

    LocationFilters.member = Shapes::ShapeRef.new(shape: LocationFilter)

    LocationList.member = Shapes::ShapeRef.new(shape: LocationListEntry)

    LocationListEntry.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    LocationListEntry.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    LocationListEntry.struct_class = Types::LocationListEntry

    MaxP95Performance.add_member(:iops_read, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "IopsRead"))
    MaxP95Performance.add_member(:iops_write, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "IopsWrite"))
    MaxP95Performance.add_member(:iops_other, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "IopsOther"))
    MaxP95Performance.add_member(:iops_total, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "IopsTotal"))
    MaxP95Performance.add_member(:throughput_read, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "ThroughputRead"))
    MaxP95Performance.add_member(:throughput_write, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "ThroughputWrite"))
    MaxP95Performance.add_member(:throughput_other, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "ThroughputOther"))
    MaxP95Performance.add_member(:throughput_total, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "ThroughputTotal"))
    MaxP95Performance.add_member(:latency_read, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "LatencyRead"))
    MaxP95Performance.add_member(:latency_write, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "LatencyWrite"))
    MaxP95Performance.add_member(:latency_other, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "LatencyOther"))
    MaxP95Performance.struct_class = Types::MaxP95Performance

    Metrics.member = Shapes::ShapeRef.new(shape: ResourceMetrics)

    NetAppONTAPCluster.add_member(:cifs_share_count, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "CifsShareCount"))
    NetAppONTAPCluster.add_member(:nfs_exported_volumes, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "NfsExportedVolumes"))
    NetAppONTAPCluster.add_member(:resource_id, Shapes::ShapeRef.new(shape: PtolemyUUID, location_name: "ResourceId"))
    NetAppONTAPCluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "ClusterName"))
    NetAppONTAPCluster.add_member(:max_p95_performance, Shapes::ShapeRef.new(shape: MaxP95Performance, location_name: "MaxP95Performance"))
    NetAppONTAPCluster.add_member(:cluster_block_storage_size, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ClusterBlockStorageSize"))
    NetAppONTAPCluster.add_member(:cluster_block_storage_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ClusterBlockStorageUsed"))
    NetAppONTAPCluster.add_member(:cluster_block_storage_logical_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "ClusterBlockStorageLogicalUsed"))
    NetAppONTAPCluster.add_member(:recommendations, Shapes::ShapeRef.new(shape: Recommendations, location_name: "Recommendations"))
    NetAppONTAPCluster.add_member(:recommendation_status, Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: "RecommendationStatus"))
    NetAppONTAPCluster.add_member(:lun_count, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "LunCount"))
    NetAppONTAPCluster.struct_class = Types::NetAppONTAPCluster

    NetAppONTAPClusters.member = Shapes::ShapeRef.new(shape: NetAppONTAPCluster)

    NetAppONTAPSVM.add_member(:cluster_uuid, Shapes::ShapeRef.new(shape: PtolemyUUID, location_name: "ClusterUuid"))
    NetAppONTAPSVM.add_member(:resource_id, Shapes::ShapeRef.new(shape: PtolemyUUID, location_name: "ResourceId"))
    NetAppONTAPSVM.add_member(:svm_name, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "SvmName"))
    NetAppONTAPSVM.add_member(:cifs_share_count, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "CifsShareCount"))
    NetAppONTAPSVM.add_member(:enabled_protocols, Shapes::ShapeRef.new(shape: EnabledProtocols, location_name: "EnabledProtocols"))
    NetAppONTAPSVM.add_member(:total_capacity_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "TotalCapacityUsed"))
    NetAppONTAPSVM.add_member(:total_capacity_provisioned, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "TotalCapacityProvisioned"))
    NetAppONTAPSVM.add_member(:total_logical_capacity_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "TotalLogicalCapacityUsed"))
    NetAppONTAPSVM.add_member(:max_p95_performance, Shapes::ShapeRef.new(shape: MaxP95Performance, location_name: "MaxP95Performance"))
    NetAppONTAPSVM.add_member(:recommendations, Shapes::ShapeRef.new(shape: Recommendations, location_name: "Recommendations"))
    NetAppONTAPSVM.add_member(:nfs_exported_volumes, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "NfsExportedVolumes"))
    NetAppONTAPSVM.add_member(:recommendation_status, Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: "RecommendationStatus"))
    NetAppONTAPSVM.add_member(:total_snapshot_capacity_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "TotalSnapshotCapacityUsed"))
    NetAppONTAPSVM.add_member(:lun_count, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "LunCount"))
    NetAppONTAPSVM.struct_class = Types::NetAppONTAPSVM

    NetAppONTAPSVMs.member = Shapes::ShapeRef.new(shape: NetAppONTAPSVM)

    NetAppONTAPVolume.add_member(:volume_name, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "VolumeName"))
    NetAppONTAPVolume.add_member(:resource_id, Shapes::ShapeRef.new(shape: PtolemyUUID, location_name: "ResourceId"))
    NetAppONTAPVolume.add_member(:cifs_share_count, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "CifsShareCount"))
    NetAppONTAPVolume.add_member(:security_style, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "SecurityStyle"))
    NetAppONTAPVolume.add_member(:svm_uuid, Shapes::ShapeRef.new(shape: PtolemyUUID, location_name: "SvmUuid"))
    NetAppONTAPVolume.add_member(:svm_name, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "SvmName"))
    NetAppONTAPVolume.add_member(:capacity_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "CapacityUsed"))
    NetAppONTAPVolume.add_member(:capacity_provisioned, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "CapacityProvisioned"))
    NetAppONTAPVolume.add_member(:logical_capacity_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "LogicalCapacityUsed"))
    NetAppONTAPVolume.add_member(:nfs_exported, Shapes::ShapeRef.new(shape: PtolemyBoolean, location_name: "NfsExported"))
    NetAppONTAPVolume.add_member(:snapshot_capacity_used, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "SnapshotCapacityUsed"))
    NetAppONTAPVolume.add_member(:max_p95_performance, Shapes::ShapeRef.new(shape: MaxP95Performance, location_name: "MaxP95Performance"))
    NetAppONTAPVolume.add_member(:recommendations, Shapes::ShapeRef.new(shape: Recommendations, location_name: "Recommendations"))
    NetAppONTAPVolume.add_member(:recommendation_status, Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: "RecommendationStatus"))
    NetAppONTAPVolume.add_member(:lun_count, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "LunCount"))
    NetAppONTAPVolume.struct_class = Types::NetAppONTAPVolume

    NetAppONTAPVolumes.member = Shapes::ShapeRef.new(shape: NetAppONTAPVolume)

    NfsMountOptions.add_member(:version, Shapes::ShapeRef.new(shape: NfsVersion, location_name: "Version"))
    NfsMountOptions.struct_class = Types::NfsMountOptions

    OnPremConfig.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, required: true, location_name: "AgentArns"))
    OnPremConfig.struct_class = Types::OnPremConfig

    Options.add_member(:verify_mode, Shapes::ShapeRef.new(shape: VerifyMode, location_name: "VerifyMode"))
    Options.add_member(:overwrite_mode, Shapes::ShapeRef.new(shape: OverwriteMode, location_name: "OverwriteMode"))
    Options.add_member(:atime, Shapes::ShapeRef.new(shape: Atime, location_name: "Atime"))
    Options.add_member(:mtime, Shapes::ShapeRef.new(shape: Mtime, location_name: "Mtime"))
    Options.add_member(:uid, Shapes::ShapeRef.new(shape: Uid, location_name: "Uid"))
    Options.add_member(:gid, Shapes::ShapeRef.new(shape: Gid, location_name: "Gid"))
    Options.add_member(:preserve_deleted_files, Shapes::ShapeRef.new(shape: PreserveDeletedFiles, location_name: "PreserveDeletedFiles"))
    Options.add_member(:preserve_devices, Shapes::ShapeRef.new(shape: PreserveDevices, location_name: "PreserveDevices"))
    Options.add_member(:posix_permissions, Shapes::ShapeRef.new(shape: PosixPermissions, location_name: "PosixPermissions"))
    Options.add_member(:bytes_per_second, Shapes::ShapeRef.new(shape: BytesPerSecond, location_name: "BytesPerSecond"))
    Options.add_member(:task_queueing, Shapes::ShapeRef.new(shape: TaskQueueing, location_name: "TaskQueueing"))
    Options.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    Options.add_member(:transfer_mode, Shapes::ShapeRef.new(shape: TransferMode, location_name: "TransferMode"))
    Options.add_member(:security_descriptor_copy_flags, Shapes::ShapeRef.new(shape: SmbSecurityDescriptorCopyFlags, location_name: "SecurityDescriptorCopyFlags"))
    Options.add_member(:object_tags, Shapes::ShapeRef.new(shape: ObjectTags, location_name: "ObjectTags"))
    Options.struct_class = Types::Options

    OutputTagList.member = Shapes::ShapeRef.new(shape: TagListEntry)

    P95Metrics.add_member(:iops, Shapes::ShapeRef.new(shape: IOPS, location_name: "IOPS"))
    P95Metrics.add_member(:throughput, Shapes::ShapeRef.new(shape: Throughput, location_name: "Throughput"))
    P95Metrics.add_member(:latency, Shapes::ShapeRef.new(shape: Latency, location_name: "Latency"))
    P95Metrics.struct_class = Types::P95Metrics

    PLSecurityGroupArnList.member = Shapes::ShapeRef.new(shape: Ec2SecurityGroupArn)

    PLSubnetArnList.member = Shapes::ShapeRef.new(shape: Ec2SubnetArn)

    PrivateLinkConfig.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    PrivateLinkConfig.add_member(:private_link_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "PrivateLinkEndpoint"))
    PrivateLinkConfig.add_member(:subnet_arns, Shapes::ShapeRef.new(shape: PLSubnetArnList, location_name: "SubnetArns"))
    PrivateLinkConfig.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: PLSecurityGroupArnList, location_name: "SecurityGroupArns"))
    PrivateLinkConfig.struct_class = Types::PrivateLinkConfig

    QopConfiguration.add_member(:rpc_protection, Shapes::ShapeRef.new(shape: HdfsRpcProtection, location_name: "RpcProtection"))
    QopConfiguration.add_member(:data_transfer_protection, Shapes::ShapeRef.new(shape: HdfsDataTransferProtection, location_name: "DataTransferProtection"))
    QopConfiguration.struct_class = Types::QopConfiguration

    Recommendation.add_member(:storage_type, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "StorageType"))
    Recommendation.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: RecommendationsConfigMap, location_name: "StorageConfiguration"))
    Recommendation.add_member(:estimated_monthly_storage_cost, Shapes::ShapeRef.new(shape: PtolemyString, location_name: "EstimatedMonthlyStorageCost"))
    Recommendation.struct_class = Types::Recommendation

    Recommendations.member = Shapes::ShapeRef.new(shape: Recommendation)

    RecommendationsConfigMap.key = Shapes::ShapeRef.new(shape: PtolemyString)
    RecommendationsConfigMap.value = Shapes::ShapeRef.new(shape: PtolemyString)

    RemoveStorageSystemRequest.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, required: true, location_name: "StorageSystemArn"))
    RemoveStorageSystemRequest.struct_class = Types::RemoveStorageSystemRequest

    RemoveStorageSystemResponse.struct_class = Types::RemoveStorageSystemResponse

    ResourceDetails.add_member(:net_app_ontapsv_ms, Shapes::ShapeRef.new(shape: NetAppONTAPSVMs, location_name: "NetAppONTAPSVMs"))
    ResourceDetails.add_member(:net_app_ontap_volumes, Shapes::ShapeRef.new(shape: NetAppONTAPVolumes, location_name: "NetAppONTAPVolumes"))
    ResourceDetails.add_member(:net_app_ontap_clusters, Shapes::ShapeRef.new(shape: NetAppONTAPClusters, location_name: "NetAppONTAPClusters"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceFilters.key = Shapes::ShapeRef.new(shape: DiscoveryResourceFilter)
    ResourceFilters.value = Shapes::ShapeRef.new(shape: FilterMembers)

    ResourceIds.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceMetrics.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ResourceMetrics.add_member(:p95_metrics, Shapes::ShapeRef.new(shape: P95Metrics, location_name: "P95Metrics"))
    ResourceMetrics.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, location_name: "Capacity"))
    ResourceMetrics.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceMetrics.add_member(:resource_type, Shapes::ShapeRef.new(shape: DiscoveryResourceType, location_name: "ResourceType"))
    ResourceMetrics.struct_class = Types::ResourceMetrics

    S3Config.add_member(:bucket_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "BucketAccessRoleArn"))
    S3Config.struct_class = Types::S3Config

    SmbMountOptions.add_member(:version, Shapes::ShapeRef.new(shape: SmbVersion, location_name: "Version"))
    SmbMountOptions.struct_class = Types::SmbMountOptions

    SourceNetworkInterfaceArns.member = Shapes::ShapeRef.new(shape: NetworkInterfaceArn)

    StartDiscoveryJobRequest.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, required: true, location_name: "StorageSystemArn"))
    StartDiscoveryJobRequest.add_member(:collection_duration_minutes, Shapes::ShapeRef.new(shape: CollectionDurationMinutes, required: true, location_name: "CollectionDurationMinutes"))
    StartDiscoveryJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: PtolemyUUID, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartDiscoveryJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    StartDiscoveryJobRequest.struct_class = Types::StartDiscoveryJobRequest

    StartDiscoveryJobResponse.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, location_name: "DiscoveryJobArn"))
    StartDiscoveryJobResponse.struct_class = Types::StartDiscoveryJobResponse

    StartTaskExecutionRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, required: true, location_name: "TaskArn"))
    StartTaskExecutionRequest.add_member(:override_options, Shapes::ShapeRef.new(shape: Options, location_name: "OverrideOptions"))
    StartTaskExecutionRequest.add_member(:includes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    StartTaskExecutionRequest.add_member(:excludes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    StartTaskExecutionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    StartTaskExecutionRequest.struct_class = Types::StartTaskExecutionRequest

    StartTaskExecutionResponse.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    StartTaskExecutionResponse.struct_class = Types::StartTaskExecutionResponse

    StopDiscoveryJobRequest.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, required: true, location_name: "DiscoveryJobArn"))
    StopDiscoveryJobRequest.struct_class = Types::StopDiscoveryJobRequest

    StopDiscoveryJobResponse.struct_class = Types::StopDiscoveryJobResponse

    StorageSystemList.member = Shapes::ShapeRef.new(shape: StorageSystemListEntry)

    StorageSystemListEntry.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, location_name: "StorageSystemArn"))
    StorageSystemListEntry.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    StorageSystemListEntry.struct_class = Types::StorageSystemListEntry

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagListEntry.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    TagListEntry.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    TagListEntry.struct_class = Types::TagListEntry

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: InputTagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaskExecutionList.member = Shapes::ShapeRef.new(shape: TaskExecutionListEntry)

    TaskExecutionListEntry.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    TaskExecutionListEntry.add_member(:status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "Status"))
    TaskExecutionListEntry.struct_class = Types::TaskExecutionListEntry

    TaskExecutionResultDetail.add_member(:prepare_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "PrepareDuration"))
    TaskExecutionResultDetail.add_member(:prepare_status, Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "PrepareStatus"))
    TaskExecutionResultDetail.add_member(:total_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "TotalDuration"))
    TaskExecutionResultDetail.add_member(:transfer_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "TransferDuration"))
    TaskExecutionResultDetail.add_member(:transfer_status, Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "TransferStatus"))
    TaskExecutionResultDetail.add_member(:verify_duration, Shapes::ShapeRef.new(shape: Duration, location_name: "VerifyDuration"))
    TaskExecutionResultDetail.add_member(:verify_status, Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "VerifyStatus"))
    TaskExecutionResultDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "ErrorCode"))
    TaskExecutionResultDetail.add_member(:error_detail, Shapes::ShapeRef.new(shape: string, location_name: "ErrorDetail"))
    TaskExecutionResultDetail.struct_class = Types::TaskExecutionResultDetail

    TaskFilter.add_member(:name, Shapes::ShapeRef.new(shape: TaskFilterName, required: true, location_name: "Name"))
    TaskFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    TaskFilter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, required: true, location_name: "Operator"))
    TaskFilter.struct_class = Types::TaskFilter

    TaskFilters.member = Shapes::ShapeRef.new(shape: TaskFilter)

    TaskList.member = Shapes::ShapeRef.new(shape: TaskListEntry)

    TaskListEntry.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    TaskListEntry.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "Status"))
    TaskListEntry.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    TaskListEntry.struct_class = Types::TaskListEntry

    TaskSchedule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpressionCron, required: true, location_name: "ScheduleExpression"))
    TaskSchedule.struct_class = Types::TaskSchedule

    Throughput.add_member(:read, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Read"))
    Throughput.add_member(:write, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Write"))
    Throughput.add_member(:other, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Other"))
    Throughput.add_member(:total, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "Total"))
    Throughput.struct_class = Types::Throughput

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "Keys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentRequest.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "AgentArn"))
    UpdateAgentRequest.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    UpdateAgentRequest.struct_class = Types::UpdateAgentRequest

    UpdateAgentResponse.struct_class = Types::UpdateAgentResponse

    UpdateDiscoveryJobRequest.add_member(:discovery_job_arn, Shapes::ShapeRef.new(shape: DiscoveryJobArn, required: true, location_name: "DiscoveryJobArn"))
    UpdateDiscoveryJobRequest.add_member(:collection_duration_minutes, Shapes::ShapeRef.new(shape: CollectionDurationMinutes, required: true, location_name: "CollectionDurationMinutes"))
    UpdateDiscoveryJobRequest.struct_class = Types::UpdateDiscoveryJobRequest

    UpdateDiscoveryJobResponse.struct_class = Types::UpdateDiscoveryJobResponse

    UpdateLocationHdfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    UpdateLocationHdfsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: HdfsSubdirectory, location_name: "Subdirectory"))
    UpdateLocationHdfsRequest.add_member(:name_nodes, Shapes::ShapeRef.new(shape: HdfsNameNodeList, location_name: "NameNodes"))
    UpdateLocationHdfsRequest.add_member(:block_size, Shapes::ShapeRef.new(shape: HdfsBlockSize, location_name: "BlockSize"))
    UpdateLocationHdfsRequest.add_member(:replication_factor, Shapes::ShapeRef.new(shape: HdfsReplicationFactor, location_name: "ReplicationFactor"))
    UpdateLocationHdfsRequest.add_member(:kms_key_provider_uri, Shapes::ShapeRef.new(shape: KmsKeyProviderUri, location_name: "KmsKeyProviderUri"))
    UpdateLocationHdfsRequest.add_member(:qop_configuration, Shapes::ShapeRef.new(shape: QopConfiguration, location_name: "QopConfiguration"))
    UpdateLocationHdfsRequest.add_member(:authentication_type, Shapes::ShapeRef.new(shape: HdfsAuthenticationType, location_name: "AuthenticationType"))
    UpdateLocationHdfsRequest.add_member(:simple_user, Shapes::ShapeRef.new(shape: HdfsUser, location_name: "SimpleUser"))
    UpdateLocationHdfsRequest.add_member(:kerberos_principal, Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    UpdateLocationHdfsRequest.add_member(:kerberos_keytab, Shapes::ShapeRef.new(shape: KerberosKeytabFile, location_name: "KerberosKeytab"))
    UpdateLocationHdfsRequest.add_member(:kerberos_krb_5_conf, Shapes::ShapeRef.new(shape: KerberosKrb5ConfFile, location_name: "KerberosKrb5Conf"))
    UpdateLocationHdfsRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationHdfsRequest.struct_class = Types::UpdateLocationHdfsRequest

    UpdateLocationHdfsResponse.struct_class = Types::UpdateLocationHdfsResponse

    UpdateLocationNfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    UpdateLocationNfsRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: NfsSubdirectory, location_name: "Subdirectory"))
    UpdateLocationNfsRequest.add_member(:on_prem_config, Shapes::ShapeRef.new(shape: OnPremConfig, location_name: "OnPremConfig"))
    UpdateLocationNfsRequest.add_member(:mount_options, Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    UpdateLocationNfsRequest.struct_class = Types::UpdateLocationNfsRequest

    UpdateLocationNfsResponse.struct_class = Types::UpdateLocationNfsResponse

    UpdateLocationObjectStorageRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    UpdateLocationObjectStorageRequest.add_member(:server_port, Shapes::ShapeRef.new(shape: ObjectStorageServerPort, location_name: "ServerPort"))
    UpdateLocationObjectStorageRequest.add_member(:server_protocol, Shapes::ShapeRef.new(shape: ObjectStorageServerProtocol, location_name: "ServerProtocol"))
    UpdateLocationObjectStorageRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    UpdateLocationObjectStorageRequest.add_member(:access_key, Shapes::ShapeRef.new(shape: ObjectStorageAccessKey, location_name: "AccessKey"))
    UpdateLocationObjectStorageRequest.add_member(:secret_key, Shapes::ShapeRef.new(shape: ObjectStorageSecretKey, location_name: "SecretKey"))
    UpdateLocationObjectStorageRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationObjectStorageRequest.add_member(:server_certificate, Shapes::ShapeRef.new(shape: ObjectStorageCertificate, location_name: "ServerCertificate"))
    UpdateLocationObjectStorageRequest.struct_class = Types::UpdateLocationObjectStorageRequest

    UpdateLocationObjectStorageResponse.struct_class = Types::UpdateLocationObjectStorageResponse

    UpdateLocationSmbRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    UpdateLocationSmbRequest.add_member(:subdirectory, Shapes::ShapeRef.new(shape: SmbSubdirectory, location_name: "Subdirectory"))
    UpdateLocationSmbRequest.add_member(:user, Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    UpdateLocationSmbRequest.add_member(:domain, Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    UpdateLocationSmbRequest.add_member(:password, Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password"))
    UpdateLocationSmbRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationSmbRequest.add_member(:mount_options, Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    UpdateLocationSmbRequest.struct_class = Types::UpdateLocationSmbRequest

    UpdateLocationSmbResponse.struct_class = Types::UpdateLocationSmbResponse

    UpdateStorageSystemRequest.add_member(:storage_system_arn, Shapes::ShapeRef.new(shape: StorageSystemArn, required: true, location_name: "StorageSystemArn"))
    UpdateStorageSystemRequest.add_member(:server_configuration, Shapes::ShapeRef.new(shape: DiscoveryServerConfiguration, location_name: "ServerConfiguration"))
    UpdateStorageSystemRequest.add_member(:agent_arns, Shapes::ShapeRef.new(shape: DiscoveryAgentArnList, location_name: "AgentArns"))
    UpdateStorageSystemRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateStorageSystemRequest.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    UpdateStorageSystemRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
    UpdateStorageSystemRequest.struct_class = Types::UpdateStorageSystemRequest

    UpdateStorageSystemResponse.struct_class = Types::UpdateStorageSystemResponse

    UpdateTaskExecutionRequest.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, required: true, location_name: "TaskExecutionArn"))
    UpdateTaskExecutionRequest.add_member(:options, Shapes::ShapeRef.new(shape: Options, required: true, location_name: "Options"))
    UpdateTaskExecutionRequest.struct_class = Types::UpdateTaskExecutionRequest

    UpdateTaskExecutionResponse.struct_class = Types::UpdateTaskExecutionResponse

    UpdateTaskRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, required: true, location_name: "TaskArn"))
    UpdateTaskRequest.add_member(:options, Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    UpdateTaskRequest.add_member(:excludes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    UpdateTaskRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: TaskSchedule, location_name: "Schedule"))
    UpdateTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    UpdateTaskRequest.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    UpdateTaskRequest.add_member(:includes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    UpdateTaskRequest.struct_class = Types::UpdateTaskRequest

    UpdateTaskResponse.struct_class = Types::UpdateTaskResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-09"

      api.metadata = {
        "apiVersion" => "2018-11-09",
        "endpointPrefix" => "datasync",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "DataSync",
        "serviceFullName" => "AWS DataSync",
        "serviceId" => "DataSync",
        "signatureVersion" => "v4",
        "signingName" => "datasync",
        "targetPrefix" => "FmrsService",
        "uid" => "datasync-2018-11-09",
      }

      api.add_operation(:add_storage_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddStorageSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: AddStorageSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: AddStorageSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:cancel_task_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTaskExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelTaskExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelTaskExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_efs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationEfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationEfsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationEfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_fsx_lustre, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationFsxLustre"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationFsxLustreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationFsxLustreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_fsx_ontap, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationFsxOntap"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationFsxOntapRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationFsxOntapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_fsx_open_zfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationFsxOpenZfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationFsxOpenZfsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationFsxOpenZfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_fsx_windows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationFsxWindows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationFsxWindowsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationFsxWindowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_hdfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationHdfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationHdfsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationHdfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_nfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationNfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationNfsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationNfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_object_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationObjectStorage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationObjectStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationObjectStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationS3"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationS3Request)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationS3Response)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_location_smb, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLocationSmb"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLocationSmbRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLocationSmbResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:create_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLocationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLocationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_discovery_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDiscoveryJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDiscoveryJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDiscoveryJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_efs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationEfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationEfsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationEfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_fsx_lustre, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationFsxLustre"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationFsxLustreRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationFsxLustreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_fsx_ontap, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationFsxOntap"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationFsxOntapRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationFsxOntapResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_fsx_open_zfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationFsxOpenZfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationFsxOpenZfsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationFsxOpenZfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_fsx_windows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationFsxWindows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationFsxWindowsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationFsxWindowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_hdfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationHdfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationHdfsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationHdfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_nfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationNfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationNfsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationNfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_object_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationObjectStorage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationObjectStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationObjectStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationS3"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationS3Request)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationS3Response)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_location_smb, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLocationSmb"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLocationSmbRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLocationSmbResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_storage_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorageSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeStorageSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStorageSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_storage_system_resource_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorageSystemResourceMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeStorageSystemResourceMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStorageSystemResourceMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_storage_system_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorageSystemResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeStorageSystemResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStorageSystemResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_task_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTaskExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:generate_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: GenerateRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_agents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAgentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAgentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_discovery_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveryJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveryJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveryJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_locations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLocationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_storage_systems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStorageSystems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListStorageSystemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStorageSystemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_task_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTaskExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:remove_storage_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveStorageSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: RemoveStorageSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveStorageSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:start_discovery_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDiscoveryJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartDiscoveryJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDiscoveryJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:start_task_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTaskExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTaskExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTaskExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:stop_discovery_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDiscoveryJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: StopDiscoveryJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDiscoveryJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_discovery_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDiscoveryJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDiscoveryJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDiscoveryJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_location_hdfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLocationHdfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLocationHdfsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLocationHdfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_location_nfs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLocationNfs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLocationNfsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLocationNfsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_location_object_storage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLocationObjectStorage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLocationObjectStorageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLocationObjectStorageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_location_smb, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLocationSmb"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLocationSmbRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLocationSmbResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_storage_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStorageSystem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "discovery-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateStorageSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStorageSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:update_task_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTaskExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)
    end

  end
end
