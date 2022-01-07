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
    AgentArn = Shapes::StringShape.new(name: 'AgentArn')
    AgentArnList = Shapes::ListShape.new(name: 'AgentArnList')
    AgentList = Shapes::ListShape.new(name: 'AgentList')
    AgentListEntry = Shapes::StructureShape.new(name: 'AgentListEntry')
    AgentStatus = Shapes::StringShape.new(name: 'AgentStatus')
    Atime = Shapes::StringShape.new(name: 'Atime')
    BytesPerSecond = Shapes::IntegerShape.new(name: 'BytesPerSecond')
    CancelTaskExecutionRequest = Shapes::StructureShape.new(name: 'CancelTaskExecutionRequest')
    CancelTaskExecutionResponse = Shapes::StructureShape.new(name: 'CancelTaskExecutionResponse')
    CreateAgentRequest = Shapes::StructureShape.new(name: 'CreateAgentRequest')
    CreateAgentResponse = Shapes::StructureShape.new(name: 'CreateAgentResponse')
    CreateLocationEfsRequest = Shapes::StructureShape.new(name: 'CreateLocationEfsRequest')
    CreateLocationEfsResponse = Shapes::StructureShape.new(name: 'CreateLocationEfsResponse')
    CreateLocationFsxLustreRequest = Shapes::StructureShape.new(name: 'CreateLocationFsxLustreRequest')
    CreateLocationFsxLustreResponse = Shapes::StructureShape.new(name: 'CreateLocationFsxLustreResponse')
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
    DeleteAgentRequest = Shapes::StructureShape.new(name: 'DeleteAgentRequest')
    DeleteAgentResponse = Shapes::StructureShape.new(name: 'DeleteAgentResponse')
    DeleteLocationRequest = Shapes::StructureShape.new(name: 'DeleteLocationRequest')
    DeleteLocationResponse = Shapes::StructureShape.new(name: 'DeleteLocationResponse')
    DeleteTaskRequest = Shapes::StructureShape.new(name: 'DeleteTaskRequest')
    DeleteTaskResponse = Shapes::StructureShape.new(name: 'DeleteTaskResponse')
    DescribeAgentRequest = Shapes::StructureShape.new(name: 'DescribeAgentRequest')
    DescribeAgentResponse = Shapes::StructureShape.new(name: 'DescribeAgentResponse')
    DescribeLocationEfsRequest = Shapes::StructureShape.new(name: 'DescribeLocationEfsRequest')
    DescribeLocationEfsResponse = Shapes::StructureShape.new(name: 'DescribeLocationEfsResponse')
    DescribeLocationFsxLustreRequest = Shapes::StructureShape.new(name: 'DescribeLocationFsxLustreRequest')
    DescribeLocationFsxLustreResponse = Shapes::StructureShape.new(name: 'DescribeLocationFsxLustreResponse')
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
    DescribeTaskExecutionRequest = Shapes::StructureShape.new(name: 'DescribeTaskExecutionRequest')
    DescribeTaskExecutionResponse = Shapes::StructureShape.new(name: 'DescribeTaskExecutionResponse')
    DescribeTaskRequest = Shapes::StructureShape.new(name: 'DescribeTaskRequest')
    DescribeTaskResponse = Shapes::StructureShape.new(name: 'DescribeTaskResponse')
    DestinationNetworkInterfaceArns = Shapes::ListShape.new(name: 'DestinationNetworkInterfaceArns')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    Ec2Config = Shapes::StructureShape.new(name: 'Ec2Config')
    Ec2SecurityGroupArn = Shapes::StringShape.new(name: 'Ec2SecurityGroupArn')
    Ec2SecurityGroupArnList = Shapes::ListShape.new(name: 'Ec2SecurityGroupArnList')
    Ec2SubnetArn = Shapes::StringShape.new(name: 'Ec2SubnetArn')
    EfsFilesystemArn = Shapes::StringShape.new(name: 'EfsFilesystemArn')
    EfsSubdirectory = Shapes::StringShape.new(name: 'EfsSubdirectory')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    FilterAttributeValue = Shapes::StringShape.new(name: 'FilterAttributeValue')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterRule = Shapes::StructureShape.new(name: 'FilterRule')
    FilterType = Shapes::StringShape.new(name: 'FilterType')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    FsxFilesystemArn = Shapes::StringShape.new(name: 'FsxFilesystemArn')
    FsxLustreSubdirectory = Shapes::StringShape.new(name: 'FsxLustreSubdirectory')
    FsxWindowsSubdirectory = Shapes::StringShape.new(name: 'FsxWindowsSubdirectory')
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
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InputTagList = Shapes::ListShape.new(name: 'InputTagList')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KerberosKeytabFile = Shapes::BlobShape.new(name: 'KerberosKeytabFile')
    KerberosKrb5ConfFile = Shapes::BlobShape.new(name: 'KerberosKrb5ConfFile')
    KerberosPrincipal = Shapes::StringShape.new(name: 'KerberosPrincipal')
    KmsKeyProviderUri = Shapes::StringShape.new(name: 'KmsKeyProviderUri')
    ListAgentsRequest = Shapes::StructureShape.new(name: 'ListAgentsRequest')
    ListAgentsResponse = Shapes::StructureShape.new(name: 'ListAgentsResponse')
    ListLocationsRequest = Shapes::StructureShape.new(name: 'ListLocationsRequest')
    ListLocationsResponse = Shapes::StructureShape.new(name: 'ListLocationsResponse')
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
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Mtime = Shapes::StringShape.new(name: 'Mtime')
    NetworkInterfaceArn = Shapes::StringShape.new(name: 'NetworkInterfaceArn')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NfsMountOptions = Shapes::StructureShape.new(name: 'NfsMountOptions')
    NfsSubdirectory = Shapes::StringShape.new(name: 'NfsSubdirectory')
    NfsVersion = Shapes::StringShape.new(name: 'NfsVersion')
    ObjectStorageAccessKey = Shapes::StringShape.new(name: 'ObjectStorageAccessKey')
    ObjectStorageBucketName = Shapes::StringShape.new(name: 'ObjectStorageBucketName')
    ObjectStorageSecretKey = Shapes::StringShape.new(name: 'ObjectStorageSecretKey')
    ObjectStorageServerPort = Shapes::IntegerShape.new(name: 'ObjectStorageServerPort')
    ObjectStorageServerProtocol = Shapes::StringShape.new(name: 'ObjectStorageServerProtocol')
    OnPremConfig = Shapes::StructureShape.new(name: 'OnPremConfig')
    Operator = Shapes::StringShape.new(name: 'Operator')
    Options = Shapes::StructureShape.new(name: 'Options')
    OutputTagList = Shapes::ListShape.new(name: 'OutputTagList')
    OverwriteMode = Shapes::StringShape.new(name: 'OverwriteMode')
    PLSecurityGroupArnList = Shapes::ListShape.new(name: 'PLSecurityGroupArnList')
    PLSubnetArnList = Shapes::ListShape.new(name: 'PLSubnetArnList')
    PhaseStatus = Shapes::StringShape.new(name: 'PhaseStatus')
    PosixPermissions = Shapes::StringShape.new(name: 'PosixPermissions')
    PreserveDeletedFiles = Shapes::StringShape.new(name: 'PreserveDeletedFiles')
    PreserveDevices = Shapes::StringShape.new(name: 'PreserveDevices')
    PrivateLinkConfig = Shapes::StructureShape.new(name: 'PrivateLinkConfig')
    QopConfiguration = Shapes::StructureShape.new(name: 'QopConfiguration')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3StorageClass = Shapes::StringShape.new(name: 'S3StorageClass')
    S3Subdirectory = Shapes::StringShape.new(name: 'S3Subdirectory')
    ScheduleExpressionCron = Shapes::StringShape.new(name: 'ScheduleExpressionCron')
    ServerHostname = Shapes::StringShape.new(name: 'ServerHostname')
    SmbDomain = Shapes::StringShape.new(name: 'SmbDomain')
    SmbMountOptions = Shapes::StructureShape.new(name: 'SmbMountOptions')
    SmbPassword = Shapes::StringShape.new(name: 'SmbPassword')
    SmbSecurityDescriptorCopyFlags = Shapes::StringShape.new(name: 'SmbSecurityDescriptorCopyFlags')
    SmbSubdirectory = Shapes::StringShape.new(name: 'SmbSubdirectory')
    SmbUser = Shapes::StringShape.new(name: 'SmbUser')
    SmbVersion = Shapes::StringShape.new(name: 'SmbVersion')
    SourceNetworkInterfaceArns = Shapes::ListShape.new(name: 'SourceNetworkInterfaceArns')
    StartTaskExecutionRequest = Shapes::StructureShape.new(name: 'StartTaskExecutionRequest')
    StartTaskExecutionResponse = Shapes::StructureShape.new(name: 'StartTaskExecutionResponse')
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
    Time = Shapes::TimestampShape.new(name: 'Time')
    TransferMode = Shapes::StringShape.new(name: 'TransferMode')
    Uid = Shapes::StringShape.new(name: 'Uid')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAgentRequest = Shapes::StructureShape.new(name: 'UpdateAgentRequest')
    UpdateAgentResponse = Shapes::StructureShape.new(name: 'UpdateAgentResponse')
    UpdateLocationHdfsRequest = Shapes::StructureShape.new(name: 'UpdateLocationHdfsRequest')
    UpdateLocationHdfsResponse = Shapes::StructureShape.new(name: 'UpdateLocationHdfsResponse')
    UpdateLocationNfsRequest = Shapes::StructureShape.new(name: 'UpdateLocationNfsRequest')
    UpdateLocationNfsResponse = Shapes::StructureShape.new(name: 'UpdateLocationNfsResponse')
    UpdateLocationObjectStorageRequest = Shapes::StructureShape.new(name: 'UpdateLocationObjectStorageRequest')
    UpdateLocationObjectStorageResponse = Shapes::StructureShape.new(name: 'UpdateLocationObjectStorageResponse')
    UpdateLocationSmbRequest = Shapes::StructureShape.new(name: 'UpdateLocationSmbRequest')
    UpdateLocationSmbResponse = Shapes::StructureShape.new(name: 'UpdateLocationSmbResponse')
    UpdateTaskExecutionRequest = Shapes::StructureShape.new(name: 'UpdateTaskExecutionRequest')
    UpdateTaskExecutionResponse = Shapes::StructureShape.new(name: 'UpdateTaskExecutionResponse')
    UpdateTaskRequest = Shapes::StructureShape.new(name: 'UpdateTaskRequest')
    UpdateTaskResponse = Shapes::StructureShape.new(name: 'UpdateTaskResponse')
    VerifyMode = Shapes::StringShape.new(name: 'VerifyMode')
    VpcEndpointId = Shapes::StringShape.new(name: 'VpcEndpointId')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')

    AgentArnList.member = Shapes::ShapeRef.new(shape: AgentArn)

    AgentList.member = Shapes::ShapeRef.new(shape: AgentListEntry)

    AgentListEntry.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    AgentListEntry.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    AgentListEntry.add_member(:status, Shapes::ShapeRef.new(shape: AgentStatus, location_name: "Status"))
    AgentListEntry.struct_class = Types::AgentListEntry

    CancelTaskExecutionRequest.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, required: true, location_name: "TaskExecutionArn"))
    CancelTaskExecutionRequest.struct_class = Types::CancelTaskExecutionRequest

    CancelTaskExecutionResponse.struct_class = Types::CancelTaskExecutionResponse

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

    DescribeLocationEfsRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationEfsRequest.struct_class = Types::DescribeLocationEfsRequest

    DescribeLocationEfsResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationEfsResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationEfsResponse.add_member(:ec2_config, Shapes::ShapeRef.new(shape: Ec2Config, location_name: "Ec2Config"))
    DescribeLocationEfsResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationEfsResponse.struct_class = Types::DescribeLocationEfsResponse

    DescribeLocationFsxLustreRequest.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, required: true, location_name: "LocationArn"))
    DescribeLocationFsxLustreRequest.struct_class = Types::DescribeLocationFsxLustreRequest

    DescribeLocationFsxLustreResponse.add_member(:location_arn, Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxLustreResponse.add_member(:location_uri, Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxLustreResponse.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxLustreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxLustreResponse.struct_class = Types::DescribeLocationFsxLustreResponse

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

    Ec2Config.add_member(:subnet_arn, Shapes::ShapeRef.new(shape: Ec2SubnetArn, required: true, location_name: "SubnetArn"))
    Ec2Config.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, required: true, location_name: "SecurityGroupArns"))
    Ec2Config.struct_class = Types::Ec2Config

    Ec2SecurityGroupArnList.member = Shapes::ShapeRef.new(shape: Ec2SecurityGroupArn)

    FilterList.member = Shapes::ShapeRef.new(shape: FilterRule)

    FilterRule.add_member(:filter_type, Shapes::ShapeRef.new(shape: FilterType, location_name: "FilterType"))
    FilterRule.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, location_name: "Value"))
    FilterRule.struct_class = Types::FilterRule

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterAttributeValue)

    HdfsNameNode.add_member(:hostname, Shapes::ShapeRef.new(shape: HdfsServerHostname, required: true, location_name: "Hostname"))
    HdfsNameNode.add_member(:port, Shapes::ShapeRef.new(shape: HdfsServerPort, required: true, location_name: "Port"))
    HdfsNameNode.struct_class = Types::HdfsNameNode

    HdfsNameNodeList.member = Shapes::ShapeRef.new(shape: HdfsNameNode)

    InputTagList.member = Shapes::ShapeRef.new(shape: TagListEntry)

    InternalException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InternalException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "errorCode"))
    InternalException.struct_class = Types::InternalException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "message"))
    InvalidRequestException.add_member(:error_code, Shapes::ShapeRef.new(shape: string, location_name: "errorCode"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListAgentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAgentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentsRequest.struct_class = Types::ListAgentsRequest

    ListAgentsResponse.add_member(:agents, Shapes::ShapeRef.new(shape: AgentList, location_name: "Agents"))
    ListAgentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentsResponse.struct_class = Types::ListAgentsResponse

    ListLocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: LocationFilters, location_name: "Filters"))
    ListLocationsRequest.struct_class = Types::ListLocationsRequest

    ListLocationsResponse.add_member(:locations, Shapes::ShapeRef.new(shape: LocationList, location_name: "Locations"))
    ListLocationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLocationsResponse.struct_class = Types::ListLocationsResponse

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
    Options.struct_class = Types::Options

    OutputTagList.member = Shapes::ShapeRef.new(shape: TagListEntry)

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

    S3Config.add_member(:bucket_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "BucketAccessRoleArn"))
    S3Config.struct_class = Types::S3Config

    SmbMountOptions.add_member(:version, Shapes::ShapeRef.new(shape: SmbVersion, location_name: "Version"))
    SmbMountOptions.struct_class = Types::SmbMountOptions

    SourceNetworkInterfaceArns.member = Shapes::ShapeRef.new(shape: NetworkInterfaceArn)

    StartTaskExecutionRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, required: true, location_name: "TaskArn"))
    StartTaskExecutionRequest.add_member(:override_options, Shapes::ShapeRef.new(shape: Options, location_name: "OverrideOptions"))
    StartTaskExecutionRequest.add_member(:includes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    StartTaskExecutionRequest.add_member(:excludes, Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    StartTaskExecutionRequest.struct_class = Types::StartTaskExecutionRequest

    StartTaskExecutionResponse.add_member(:task_execution_arn, Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    StartTaskExecutionResponse.struct_class = Types::StartTaskExecutionResponse

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

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "Keys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAgentRequest.add_member(:agent_arn, Shapes::ShapeRef.new(shape: AgentArn, required: true, location_name: "AgentArn"))
    UpdateAgentRequest.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    UpdateAgentRequest.struct_class = Types::UpdateAgentRequest

    UpdateAgentResponse.struct_class = Types::UpdateAgentResponse

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

      api.add_operation(:start_task_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTaskExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTaskExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTaskExecutionResponse)
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
