# frozen_string_literal: true

# This is generated code!

module Aws::DataSync
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ActivationKey", name: "ActivationKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 29}, "smithy.api#pattern" => "^[A-Z0-9]{5}(-[A-Z0-9]{5}){4}$"})
    AgentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#AgentArn", name: "AgentArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$"})
    AgentArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#AgentArnList", name: "AgentArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AgentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#AgentList", name: "AgentList")
    AgentListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#AgentListEntry", name: "AgentListEntry")
    AgentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#AgentStatus", name: "AgentStatus")
    AgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#AgentVersion", name: "AgentVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+=._:@/-]+$"})
    Atime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#Atime", name: "Atime")
    AzureAccessTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#AzureAccessTier", name: "AzureAccessTier")
    AzureBlobAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#AzureBlobAuthenticationType", name: "AzureBlobAuthenticationType")
    AzureBlobContainerUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#AzureBlobContainerUrl", name: "AzureBlobContainerUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 325}, "smithy.api#pattern" => "^https:\\/\\/[A-Za-z0-9]((\\.|-+)?[A-Za-z0-9]){0,252}\\/[a-z0-9](-?[a-z0-9]){2,62}$"})
    AzureBlobSasConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#AzureBlobSasConfiguration", name: "AzureBlobSasConfiguration")
    AzureBlobSasToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#AzureBlobSasToken", name: "AzureBlobSasToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    AzureBlobSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#AzureBlobSubdirectory", name: "AzureBlobSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}\\p{C}]*$"})
    AzureBlobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#AzureBlobType", name: "AzureBlobType")
    BytesPerSecond = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#BytesPerSecond", name: "BytesPerSecond", traits: {"smithy.api#range" => {"min" => -1}})
    CancelTaskExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CancelTaskExecutionRequest", name: "CancelTaskExecutionRequest")
    CancelTaskExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CancelTaskExecutionResponse", name: "CancelTaskExecutionResponse")
    CmkSecretConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CmkSecretConfig", name: "CmkSecretConfig")
    CreateAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateAgentRequest", name: "CreateAgentRequest")
    CreateAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateAgentResponse", name: "CreateAgentResponse")
    CreateLocationAzureBlobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationAzureBlobRequest", name: "CreateLocationAzureBlobRequest")
    CreateLocationAzureBlobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationAzureBlobResponse", name: "CreateLocationAzureBlobResponse")
    CreateLocationEfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationEfsRequest", name: "CreateLocationEfsRequest")
    CreateLocationEfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationEfsResponse", name: "CreateLocationEfsResponse")
    CreateLocationFsxLustreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxLustreRequest", name: "CreateLocationFsxLustreRequest")
    CreateLocationFsxLustreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxLustreResponse", name: "CreateLocationFsxLustreResponse")
    CreateLocationFsxOntapRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxOntapRequest", name: "CreateLocationFsxOntapRequest")
    CreateLocationFsxOntapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxOntapResponse", name: "CreateLocationFsxOntapResponse")
    CreateLocationFsxOpenZfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxOpenZfsRequest", name: "CreateLocationFsxOpenZfsRequest")
    CreateLocationFsxOpenZfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxOpenZfsResponse", name: "CreateLocationFsxOpenZfsResponse")
    CreateLocationFsxWindowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxWindowsRequest", name: "CreateLocationFsxWindowsRequest")
    CreateLocationFsxWindowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationFsxWindowsResponse", name: "CreateLocationFsxWindowsResponse")
    CreateLocationHdfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationHdfsRequest", name: "CreateLocationHdfsRequest")
    CreateLocationHdfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationHdfsResponse", name: "CreateLocationHdfsResponse")
    CreateLocationNfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationNfsRequest", name: "CreateLocationNfsRequest")
    CreateLocationNfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationNfsResponse", name: "CreateLocationNfsResponse")
    CreateLocationObjectStorageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationObjectStorageRequest", name: "CreateLocationObjectStorageRequest")
    CreateLocationObjectStorageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationObjectStorageResponse", name: "CreateLocationObjectStorageResponse")
    CreateLocationS3Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationS3Request", name: "CreateLocationS3Request")
    CreateLocationS3Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationS3Response", name: "CreateLocationS3Response")
    CreateLocationSmbRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationSmbRequest", name: "CreateLocationSmbRequest")
    CreateLocationSmbResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateLocationSmbResponse", name: "CreateLocationSmbResponse")
    CreateTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateTaskRequest", name: "CreateTaskRequest")
    CreateTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CreateTaskResponse", name: "CreateTaskResponse")
    CustomSecretConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#CustomSecretConfig", name: "CustomSecretConfig")
    DeleteAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DeleteAgentRequest", name: "DeleteAgentRequest")
    DeleteAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DeleteAgentResponse", name: "DeleteAgentResponse")
    DeleteLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DeleteLocationRequest", name: "DeleteLocationRequest")
    DeleteLocationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DeleteLocationResponse", name: "DeleteLocationResponse")
    DeleteTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DeleteTaskRequest", name: "DeleteTaskRequest")
    DeleteTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DeleteTaskResponse", name: "DeleteTaskResponse")
    DescribeAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeAgentRequest", name: "DescribeAgentRequest")
    DescribeAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeAgentResponse", name: "DescribeAgentResponse")
    DescribeLocationAzureBlobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationAzureBlobRequest", name: "DescribeLocationAzureBlobRequest")
    DescribeLocationAzureBlobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationAzureBlobResponse", name: "DescribeLocationAzureBlobResponse")
    DescribeLocationEfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationEfsRequest", name: "DescribeLocationEfsRequest")
    DescribeLocationEfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationEfsResponse", name: "DescribeLocationEfsResponse")
    DescribeLocationFsxLustreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxLustreRequest", name: "DescribeLocationFsxLustreRequest")
    DescribeLocationFsxLustreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxLustreResponse", name: "DescribeLocationFsxLustreResponse")
    DescribeLocationFsxOntapRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxOntapRequest", name: "DescribeLocationFsxOntapRequest")
    DescribeLocationFsxOntapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxOntapResponse", name: "DescribeLocationFsxOntapResponse")
    DescribeLocationFsxOpenZfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxOpenZfsRequest", name: "DescribeLocationFsxOpenZfsRequest")
    DescribeLocationFsxOpenZfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxOpenZfsResponse", name: "DescribeLocationFsxOpenZfsResponse")
    DescribeLocationFsxWindowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxWindowsRequest", name: "DescribeLocationFsxWindowsRequest")
    DescribeLocationFsxWindowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationFsxWindowsResponse", name: "DescribeLocationFsxWindowsResponse")
    DescribeLocationHdfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationHdfsRequest", name: "DescribeLocationHdfsRequest")
    DescribeLocationHdfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationHdfsResponse", name: "DescribeLocationHdfsResponse")
    DescribeLocationNfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationNfsRequest", name: "DescribeLocationNfsRequest")
    DescribeLocationNfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationNfsResponse", name: "DescribeLocationNfsResponse")
    DescribeLocationObjectStorageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationObjectStorageRequest", name: "DescribeLocationObjectStorageRequest")
    DescribeLocationObjectStorageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationObjectStorageResponse", name: "DescribeLocationObjectStorageResponse")
    DescribeLocationS3Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationS3Request", name: "DescribeLocationS3Request")
    DescribeLocationS3Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationS3Response", name: "DescribeLocationS3Response")
    DescribeLocationSmbRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationSmbRequest", name: "DescribeLocationSmbRequest")
    DescribeLocationSmbResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeLocationSmbResponse", name: "DescribeLocationSmbResponse")
    DescribeTaskExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeTaskExecutionRequest", name: "DescribeTaskExecutionRequest")
    DescribeTaskExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeTaskExecutionResponse", name: "DescribeTaskExecutionResponse")
    DescribeTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeTaskRequest", name: "DescribeTaskRequest")
    DescribeTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#DescribeTaskResponse", name: "DescribeTaskResponse")
    DestinationNetworkInterfaceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#DestinationNetworkInterfaceArns", name: "DestinationNetworkInterfaceArns")
    DnsIpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#DnsIpList", name: "DnsIpList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    Duration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#Duration", name: "Duration", traits: {"smithy.api#range" => {"min" => 0}})
    Ec2Config = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#Ec2Config", name: "Ec2Config")
    Ec2SecurityGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#Ec2SecurityGroupArn", name: "Ec2SecurityGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/sg-[a-f0-9]+$"})
    Ec2SecurityGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#Ec2SecurityGroupArnList", name: "Ec2SecurityGroupArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Ec2SubnetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#Ec2SubnetArn", name: "Ec2SubnetArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:subnet/.*$"})
    EfsAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#EfsAccessPointArn", name: "EfsAccessPointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]+:[0-9]{12}:access-point/fsap-[0-9a-f]{8,40}$"})
    EfsFilesystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#EfsFilesystemArn", name: "EfsFilesystemArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]*:[0-9]{12}:file-system/fs-.*$"})
    EfsInTransitEncryption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#EfsInTransitEncryption", name: "EfsInTransitEncryption")
    EfsSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#EfsSubdirectory", name: "EfsSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$"})
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z$"})
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#EndpointType", name: "EndpointType")
    FilterAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FilterAttributeValue", name: "FilterAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-zA-Z_\\ \\-\\:\\*\\.\\\\/\\?-]*$"})
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    FilterRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#FilterRule", name: "FilterRule")
    FilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#FilterType", name: "FilterType", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[A-Z0-9_]+$"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 102400}, "smithy.api#pattern" => "^[^\\x00]+$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#FilterValues", name: "FilterValues")
    FsxFilesystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FsxFilesystemArn", name: "FsxFilesystemArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]*:[0-9]{12}:file-system/fs-.*$"})
    FsxLustreSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FsxLustreSubdirectory", name: "FsxLustreSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"})
    FsxOntapSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FsxOntapSubdirectory", name: "FsxOntapSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,255}$"})
    FsxOpenZfsSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FsxOpenZfsSubdirectory", name: "FsxOpenZfsSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[^\\u0000\\u0085\\u2028\\u2029\\r\\n]{1,4096}$"})
    FsxProtocol = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#FsxProtocol", name: "FsxProtocol")
    FsxProtocolNfs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#FsxProtocolNfs", name: "FsxProtocolNfs")
    FsxProtocolSmb = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#FsxProtocolSmb", name: "FsxProtocolSmb")
    FsxUpdateProtocol = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#FsxUpdateProtocol", name: "FsxUpdateProtocol")
    FsxUpdateProtocolSmb = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#FsxUpdateProtocolSmb", name: "FsxUpdateProtocolSmb")
    FsxWindowsSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FsxWindowsSubdirectory", name: "FsxWindowsSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"})
    Gid = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#Gid", name: "Gid")
    HdfsAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#HdfsAuthenticationType", name: "HdfsAuthenticationType")
    HdfsBlockSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#HdfsBlockSize", name: "HdfsBlockSize", traits: {"smithy.api#range" => {"min" => 1048576, "max" => 1073741824}})
    HdfsDataTransferProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#HdfsDataTransferProtection", name: "HdfsDataTransferProtection")
    HdfsNameNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#HdfsNameNode", name: "HdfsNameNode")
    HdfsNameNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#HdfsNameNodeList", name: "HdfsNameNodeList", traits: {"smithy.api#length" => {"min" => 1}})
    HdfsReplicationFactor = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#HdfsReplicationFactor", name: "HdfsReplicationFactor", traits: {"smithy.api#range" => {"min" => 1, "max" => 512}})
    HdfsRpcProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#HdfsRpcProtection", name: "HdfsRpcProtection")
    HdfsServerHostname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#HdfsServerHostname", name: "HdfsServerHostname", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$"})
    HdfsServerPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#HdfsServerPort", name: "HdfsServerPort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65536}})
    HdfsSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#HdfsSubdirectory", name: "HdfsSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"})
    HdfsUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#HdfsUser", name: "HdfsUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[_.A-Za-z0-9][-_.A-Za-z0-9]*$"})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$"})
    IamRoleArnOrEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#IamRoleArnOrEmptyString", name: "IamRoleArnOrEmptyString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):iam::[0-9]{12}:role/[a-zA-Z0-9+=,.@_-]+|)$"})
    InputTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#InputTagList", name: "InputTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    KerberosKeytabFile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.datasync#KerberosKeytabFile", name: "KerberosKeytabFile", traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    KerberosKrb5ConfFile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.datasync#KerberosKrb5ConfFile", name: "KerberosKrb5ConfFile", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    KerberosPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#KerberosPrincipal", name: "KerberosPrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):kms:[a-z\\-0-9]+:[0-9]{12}:key/.*|)$"})
    KmsKeyProviderUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#KmsKeyProviderUri", name: "KmsKeyProviderUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^kms:\\/\\/http[s]?@(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])(;(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9]))*:[0-9]{1,5}\\/kms$"})
    ListAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListAgentsRequest", name: "ListAgentsRequest")
    ListAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListAgentsResponse", name: "ListAgentsResponse")
    ListLocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListLocationsRequest", name: "ListLocationsRequest")
    ListLocationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListLocationsResponse", name: "ListLocationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTaskExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListTaskExecutionsRequest", name: "ListTaskExecutionsRequest")
    ListTaskExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListTaskExecutionsResponse", name: "ListTaskExecutionsResponse")
    ListTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListTasksRequest", name: "ListTasksRequest")
    ListTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ListTasksResponse", name: "ListTasksResponse")
    LocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#LocationArn", name: "LocationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$"})
    LocationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#LocationFilter", name: "LocationFilter")
    LocationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#LocationFilterName", name: "LocationFilterName")
    LocationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#LocationFilters", name: "LocationFilters")
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#LocationList", name: "LocationList")
    LocationListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#LocationListEntry", name: "LocationListEntry")
    LocationUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#LocationUri", name: "LocationUri", traits: {"smithy.api#length" => {"min" => 0, "max" => 4360}, "smithy.api#pattern" => "^(efs|nfs|s3|smb|hdfs|fsx[a-z0-9-]+)://[a-zA-Z0-9.:/\\-]+$"})
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#LogGroupArn", name: "LogGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 562}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):logs:[a-z\\-0-9]+:[0-9]{12}:log-group:([^:\\*]*)(:\\*)?$"})
    LogLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#LogLevel", name: "LogLevel")
    ManagedSecretConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ManagedSecretConfig", name: "ManagedSecretConfig")
    ManifestAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ManifestAction", name: "ManifestAction")
    ManifestConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ManifestConfig", name: "ManifestConfig")
    ManifestFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ManifestFormat", name: "ManifestFormat")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    Mtime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#Mtime", name: "Mtime")
    NetworkInterfaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#NetworkInterfaceArn", name: "NetworkInterfaceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:aws[\\-a-z]{0,}:ec2:[a-z\\-0-9]*:[0-9]{12}:network-interface/eni-[0-9a-f]+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}, "smithy.api#pattern" => "^[a-zA-Z0-9=_-]+$"})
    NfsMountOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#NfsMountOptions", name: "NfsMountOptions")
    NfsSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#NfsSubdirectory", name: "NfsSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]+$"})
    NfsVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#NfsVersion", name: "NfsVersion")
    ObjectStorageAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ObjectStorageAccessKey", name: "ObjectStorageAccessKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^.*$"})
    ObjectStorageBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ObjectStorageBucketName", name: "ObjectStorageBucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\.\\(\\)\\$\\p{Zs}]+$"})
    ObjectStorageCertificate = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.datasync#ObjectStorageCertificate", name: "ObjectStorageCertificate", traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}})
    ObjectStorageSecretKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ObjectStorageSecretKey", name: "ObjectStorageSecretKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    ObjectStorageServerPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#ObjectStorageServerPort", name: "ObjectStorageServerPort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65536}})
    ObjectStorageServerProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ObjectStorageServerProtocol", name: "ObjectStorageServerProtocol")
    ObjectTags = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ObjectTags", name: "ObjectTags")
    ObjectVersionIds = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ObjectVersionIds", name: "ObjectVersionIds")
    OnPremConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#OnPremConfig", name: "OnPremConfig")
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#Operator", name: "Operator")
    Options = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#Options", name: "Options")
    OutputTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#OutputTagList", name: "OutputTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 55}})
    OverwriteMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#OverwriteMode", name: "OverwriteMode")
    PLSecurityGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#PLSecurityGroupArnList", name: "PLSecurityGroupArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    PLSubnetArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#PLSubnetArnList", name: "PLSubnetArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    PhaseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#PhaseStatus", name: "PhaseStatus")
    Platform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#Platform", name: "Platform")
    PosixPermissions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#PosixPermissions", name: "PosixPermissions")
    PreserveDeletedFiles = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#PreserveDeletedFiles", name: "PreserveDeletedFiles")
    PreserveDevices = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#PreserveDevices", name: "PreserveDevices")
    PrivateLinkConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#PrivateLinkConfig", name: "PrivateLinkConfig")
    QopConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#QopConfiguration", name: "QopConfiguration")
    ReportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ReportDestination", name: "ReportDestination")
    ReportDestinationS3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ReportDestinationS3", name: "ReportDestinationS3")
    ReportLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ReportLevel", name: "ReportLevel")
    ReportOutputType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ReportOutputType", name: "ReportOutputType")
    ReportOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ReportOverride", name: "ReportOverride")
    ReportOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ReportOverrides", name: "ReportOverrides")
    ReportResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#ReportResult", name: "ReportResult")
    S3BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#S3BucketArn", name: "S3BucketArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 268}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3:[a-z\\-0-9]*:[0-9]{12}:accesspoint[/:][a-zA-Z0-9\\-.]{1,63}$|^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3-outposts:[a-z\\-0-9]+:[0-9]{12}:outpost[/:][a-zA-Z0-9\\-]{1,63}[/:]accesspoint[/:][a-zA-Z0-9\\-]{1,63}$|^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3:::[a-zA-Z0-9.\\-_]{1,255}$"})
    S3Config = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#S3Config", name: "S3Config")
    S3ManifestConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#S3ManifestConfig", name: "S3ManifestConfig")
    S3ObjectVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#S3ObjectVersionId", name: "S3ObjectVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.+$"})
    S3StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#S3StorageClass", name: "S3StorageClass")
    S3Subdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#S3Subdirectory", name: "S3Subdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$"})
    ScheduleDisabledBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ScheduleDisabledBy", name: "ScheduleDisabledBy")
    ScheduleDisabledReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ScheduleDisabledReason", name: "ScheduleDisabledReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[\\w\\s.,'?!:;\\/=|<>()-]*$"})
    ScheduleExpressionCron = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ScheduleExpressionCron", name: "ScheduleExpressionCron", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\ \\_\\*\\?\\,\\|\\^\\-\\/\\#\\s\\(\\)\\+]*$"})
    ScheduleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ScheduleStatus", name: "ScheduleStatus")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#SecretArn", name: "SecretArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):secretsmanager:[a-z\\-0-9]+:[0-9]{12}:secret:.*|)$"})
    ServerHostname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ServerHostname", name: "ServerHostname", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-:]*[A-Za-z0-9])$"})
    ServerIpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ServerIpAddress", name: "ServerIpAddress", traits: {"smithy.api#length" => {"min" => 7, "max" => 39}, "smithy.api#pattern" => "^\\A((25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}|([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6}))\\z$"})
    SmbAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#SmbAuthenticationType", name: "SmbAuthenticationType")
    SmbDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#SmbDomain", name: "SmbDomain", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^[A-Za-z0-9]((\\.|-+)?[A-Za-z0-9]){0,252}$"})
    SmbMountOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#SmbMountOptions", name: "SmbMountOptions")
    SmbPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#SmbPassword", name: "SmbPassword", traits: {"smithy.api#length" => {"min" => 0, "max" => 104}, "smithy.api#pattern" => "^.{0,104}$", "smithy.api#sensitive" => {}})
    SmbSecurityDescriptorCopyFlags = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#SmbSecurityDescriptorCopyFlags", name: "SmbSecurityDescriptorCopyFlags")
    SmbSubdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#SmbSubdirectory", name: "SmbSubdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"})
    SmbUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#SmbUser", name: "SmbUser", traits: {"smithy.api#length" => {"min" => 0, "max" => 104}, "smithy.api#pattern" => "^[^\\x22\\x5B\\x5D/\\\\:;|=,+*?\\x3C\\x3E]{1,104}$"})
    SmbVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#SmbVersion", name: "SmbVersion")
    SourceManifestConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#SourceManifestConfig", name: "SourceManifestConfig")
    SourceNetworkInterfaceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#SourceNetworkInterfaceArns", name: "SourceNetworkInterfaceArns")
    StartTaskExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#StartTaskExecutionRequest", name: "StartTaskExecutionRequest")
    StartTaskExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#StartTaskExecutionResponse", name: "StartTaskExecutionResponse")
    StorageVirtualMachineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#StorageVirtualMachineArn", name: "StorageVirtualMachineArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 162}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]+:[0-9]{12}:storage-virtual-machine/fs-[0-9a-f]+/svm-[0-9a-f]{17,}$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+=._:/-]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TagListEntry", name: "TagListEntry")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+=._:@/-]+$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:(agent|task|location|system)/((agent|task|loc)-[a-f0-9]{17}|storage-system-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})(/execution/exec-[a-f0-9]{17})?$"})
    TaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TaskArn", name: "TaskArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]*:[0-9]{12}:task/task-[0-9a-f]{17}$"})
    TaskExecutionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TaskExecutionArn", name: "TaskExecutionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]*:[0-9]{12}:task/task-[0-9a-f]{17}/execution/exec-[0-9a-f]{17}$"})
    TaskExecutionFilesFailedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionFilesFailedDetail", name: "TaskExecutionFilesFailedDetail")
    TaskExecutionFilesListedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionFilesListedDetail", name: "TaskExecutionFilesListedDetail")
    TaskExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#TaskExecutionList", name: "TaskExecutionList")
    TaskExecutionListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionListEntry", name: "TaskExecutionListEntry")
    TaskExecutionResultDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionResultDetail", name: "TaskExecutionResultDetail")
    TaskExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#TaskExecutionStatus", name: "TaskExecutionStatus")
    TaskFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskFilter", name: "TaskFilter")
    TaskFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#TaskFilterName", name: "TaskFilterName")
    TaskFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#TaskFilters", name: "TaskFilters")
    TaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#TaskList", name: "TaskList")
    TaskListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskListEntry", name: "TaskListEntry")
    TaskMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#TaskMode", name: "TaskMode")
    TaskQueueing = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#TaskQueueing", name: "TaskQueueing")
    TaskReportConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskReportConfig", name: "TaskReportConfig")
    TaskSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskSchedule", name: "TaskSchedule")
    TaskScheduleDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskScheduleDetails", name: "TaskScheduleDetails")
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#TaskStatus", name: "TaskStatus")
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.datasync#Time", name: "Time")
    TransferMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#TransferMode", name: "TransferMode")
    Uid = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#Uid", name: "Uid")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAgentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateAgentRequest", name: "UpdateAgentRequest")
    UpdateAgentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateAgentResponse", name: "UpdateAgentResponse")
    UpdateLocationAzureBlobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationAzureBlobRequest", name: "UpdateLocationAzureBlobRequest")
    UpdateLocationAzureBlobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationAzureBlobResponse", name: "UpdateLocationAzureBlobResponse")
    UpdateLocationEfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationEfsRequest", name: "UpdateLocationEfsRequest")
    UpdateLocationEfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationEfsResponse", name: "UpdateLocationEfsResponse")
    UpdateLocationFsxLustreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxLustreRequest", name: "UpdateLocationFsxLustreRequest")
    UpdateLocationFsxLustreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxLustreResponse", name: "UpdateLocationFsxLustreResponse")
    UpdateLocationFsxOntapRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxOntapRequest", name: "UpdateLocationFsxOntapRequest")
    UpdateLocationFsxOntapResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxOntapResponse", name: "UpdateLocationFsxOntapResponse")
    UpdateLocationFsxOpenZfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxOpenZfsRequest", name: "UpdateLocationFsxOpenZfsRequest")
    UpdateLocationFsxOpenZfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxOpenZfsResponse", name: "UpdateLocationFsxOpenZfsResponse")
    UpdateLocationFsxWindowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxWindowsRequest", name: "UpdateLocationFsxWindowsRequest")
    UpdateLocationFsxWindowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationFsxWindowsResponse", name: "UpdateLocationFsxWindowsResponse")
    UpdateLocationHdfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationHdfsRequest", name: "UpdateLocationHdfsRequest")
    UpdateLocationHdfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationHdfsResponse", name: "UpdateLocationHdfsResponse")
    UpdateLocationNfsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationNfsRequest", name: "UpdateLocationNfsRequest")
    UpdateLocationNfsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationNfsResponse", name: "UpdateLocationNfsResponse")
    UpdateLocationObjectStorageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationObjectStorageRequest", name: "UpdateLocationObjectStorageRequest")
    UpdateLocationObjectStorageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationObjectStorageResponse", name: "UpdateLocationObjectStorageResponse")
    UpdateLocationS3Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationS3Request", name: "UpdateLocationS3Request")
    UpdateLocationS3Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationS3Response", name: "UpdateLocationS3Response")
    UpdateLocationSmbRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationSmbRequest", name: "UpdateLocationSmbRequest")
    UpdateLocationSmbResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateLocationSmbResponse", name: "UpdateLocationSmbResponse")
    UpdateSmbDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#UpdateSmbDomain", name: "UpdateSmbDomain", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^([A-Za-z0-9]((\\.|-+)?[A-Za-z0-9]){0,252})?$"})
    UpdateTaskExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateTaskExecutionRequest", name: "UpdateTaskExecutionRequest")
    UpdateTaskExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateTaskExecutionResponse", name: "UpdateTaskExecutionResponse")
    UpdateTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateTaskRequest", name: "UpdateTaskRequest")
    UpdateTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#UpdateTaskResponse", name: "UpdateTaskResponse")
    UpdatedEfsAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#UpdatedEfsAccessPointArn", name: "UpdatedEfsAccessPointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]+:[0-9]{12}:access-point/fsap-[0-9a-f]{8,40}$)|(^$)$"})
    UpdatedEfsIamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#UpdatedEfsIamRoleArn", name: "UpdatedEfsIamRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$)|(^$)$"})
    VerifyMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#VerifyMode", name: "VerifyMode")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#long", name: "Long", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#string", name: "String")

    AgentArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn)
    AgentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentListEntry)
    AgentListEntry.add_member(:agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    AgentListEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    AgentListEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: "Status"))
    AgentListEntry.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: "Platform"))
    AgentListEntry.type = Types::AgentListEntry
    AgentStatus.add_member(:online, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONLINE", traits: {"smithy.api#enumValue" => "ONLINE"}))
    AgentStatus.add_member(:offline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFFLINE", traits: {"smithy.api#enumValue" => "OFFLINE"}))
    Atime.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Atime.add_member(:best_effort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEST_EFFORT", traits: {"smithy.api#enumValue" => "BEST_EFFORT"}))
    AzureAccessTier.add_member(:hot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOT", traits: {"smithy.api#enumValue" => "HOT"}))
    AzureAccessTier.add_member(:cool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COOL", traits: {"smithy.api#enumValue" => "COOL"}))
    AzureAccessTier.add_member(:archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVE", traits: {"smithy.api#enumValue" => "ARCHIVE"}))
    AzureBlobAuthenticationType.add_member(:sas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAS", traits: {"smithy.api#enumValue" => "SAS"}))
    AzureBlobAuthenticationType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AzureBlobSasConfiguration.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobSasToken, location_name: "Token", traits: {"smithy.api#required" => {}}))
    AzureBlobSasConfiguration.type = Types::AzureBlobSasConfiguration
    AzureBlobType.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    CancelTaskExecutionRequest.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn", traits: {"smithy.api#required" => {}}))
    CancelTaskExecutionRequest.type = Types::CancelTaskExecutionRequest
    CancelTaskExecutionResponse.type = Types::CancelTaskExecutionResponse
    CmkSecretConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    CmkSecretConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    CmkSecretConfig.type = Types::CmkSecretConfig
    CreateAgentRequest.add_member(:activation_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationKey, location_name: "ActivationKey", traits: {"smithy.api#required" => {}}))
    CreateAgentRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "AgentName"))
    CreateAgentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateAgentRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    CreateAgentRequest.add_member(:subnet_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PLSubnetArnList, location_name: "SubnetArns"))
    CreateAgentRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PLSecurityGroupArnList, location_name: "SecurityGroupArns"))
    CreateAgentRequest.type = Types::CreateAgentRequest
    CreateAgentResponse.add_member(:agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    CreateAgentResponse.type = Types::CreateAgentResponse
    CreateLocationAzureBlobRequest.add_member(:container_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobContainerUrl, location_name: "ContainerUrl", traits: {"smithy.api#required" => {}}))
    CreateLocationAzureBlobRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobAuthenticationType, location_name: "AuthenticationType", traits: {"smithy.api#required" => {}}))
    CreateLocationAzureBlobRequest.add_member(:sas_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobSasConfiguration, location_name: "SasConfiguration"))
    CreateLocationAzureBlobRequest.add_member(:blob_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobType, location_name: "BlobType"))
    CreateLocationAzureBlobRequest.add_member(:access_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureAccessTier, location_name: "AccessTier"))
    CreateLocationAzureBlobRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobSubdirectory, location_name: "Subdirectory"))
    CreateLocationAzureBlobRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    CreateLocationAzureBlobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationAzureBlobRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CmkSecretConfig, location_name: "CmkSecretConfig"))
    CreateLocationAzureBlobRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSecretConfig, location_name: "CustomSecretConfig"))
    CreateLocationAzureBlobRequest.type = Types::CreateLocationAzureBlobRequest
    CreateLocationAzureBlobResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationAzureBlobResponse.type = Types::CreateLocationAzureBlobResponse
    CreateLocationEfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsSubdirectory, location_name: "Subdirectory"))
    CreateLocationEfsRequest.add_member(:efs_filesystem_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFilesystemArn, location_name: "EfsFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationEfsRequest.add_member(:ec2_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Config, location_name: "Ec2Config", traits: {"smithy.api#required" => {}}))
    CreateLocationEfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationEfsRequest.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsAccessPointArn, location_name: "AccessPointArn"))
    CreateLocationEfsRequest.add_member(:file_system_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "FileSystemAccessRoleArn"))
    CreateLocationEfsRequest.add_member(:in_transit_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsInTransitEncryption, location_name: "InTransitEncryption"))
    CreateLocationEfsRequest.type = Types::CreateLocationEfsRequest
    CreateLocationEfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationEfsResponse.type = Types::CreateLocationEfsResponse
    CreateLocationFsxLustreRequest.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxFilesystemArn, location_name: "FsxFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxLustreRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxLustreRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxLustreSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxLustreRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxLustreRequest.type = Types::CreateLocationFsxLustreRequest
    CreateLocationFsxLustreResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxLustreResponse.type = Types::CreateLocationFsxLustreResponse
    CreateLocationFsxOntapRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOntapRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOntapRequest.add_member(:storage_virtual_machine_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageVirtualMachineArn, location_name: "StorageVirtualMachineArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOntapRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxOntapSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxOntapRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxOntapRequest.type = Types::CreateLocationFsxOntapRequest
    CreateLocationFsxOntapResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxOntapResponse.type = Types::CreateLocationFsxOntapResponse
    CreateLocationFsxOpenZfsRequest.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxFilesystemArn, location_name: "FsxFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOpenZfsRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOpenZfsRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOpenZfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxOpenZfsSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxOpenZfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxOpenZfsRequest.type = Types::CreateLocationFsxOpenZfsRequest
    CreateLocationFsxOpenZfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxOpenZfsResponse.type = Types::CreateLocationFsxOpenZfsResponse
    CreateLocationFsxWindowsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxWindowsSubdirectory, location_name: "Subdirectory"))
    CreateLocationFsxWindowsRequest.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxFilesystemArn, location_name: "FsxFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationFsxWindowsRequest.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    CreateLocationFsxWindowsRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.type = Types::CreateLocationFsxWindowsRequest
    CreateLocationFsxWindowsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationFsxWindowsResponse.type = Types::CreateLocationFsxWindowsResponse
    CreateLocationHdfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsSubdirectory, location_name: "Subdirectory"))
    CreateLocationHdfsRequest.add_member(:name_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsNameNodeList, location_name: "NameNodes", traits: {"smithy.api#required" => {}}))
    CreateLocationHdfsRequest.add_member(:block_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsBlockSize, location_name: "BlockSize"))
    CreateLocationHdfsRequest.add_member(:replication_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsReplicationFactor, location_name: "ReplicationFactor"))
    CreateLocationHdfsRequest.add_member(:kms_key_provider_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyProviderUri, location_name: "KmsKeyProviderUri"))
    CreateLocationHdfsRequest.add_member(:qop_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QopConfiguration, location_name: "QopConfiguration"))
    CreateLocationHdfsRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsAuthenticationType, location_name: "AuthenticationType", traits: {"smithy.api#required" => {}}))
    CreateLocationHdfsRequest.add_member(:simple_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsUser, location_name: "SimpleUser"))
    CreateLocationHdfsRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    CreateLocationHdfsRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKeytabFile, location_name: "KerberosKeytab"))
    CreateLocationHdfsRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKrb5ConfFile, location_name: "KerberosKrb5Conf"))
    CreateLocationHdfsRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns", traits: {"smithy.api#required" => {}}))
    CreateLocationHdfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationHdfsRequest.type = Types::CreateLocationHdfsRequest
    CreateLocationHdfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationHdfsResponse.type = Types::CreateLocationHdfsResponse
    CreateLocationNfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsSubdirectory, location_name: "Subdirectory", traits: {"smithy.api#required" => {}}))
    CreateLocationNfsRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerHostname, location_name: "ServerHostname", traits: {"smithy.api#required" => {}}))
    CreateLocationNfsRequest.add_member(:on_prem_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremConfig, location_name: "OnPremConfig", traits: {"smithy.api#required" => {}}))
    CreateLocationNfsRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    CreateLocationNfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationNfsRequest.type = Types::CreateLocationNfsRequest
    CreateLocationNfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationNfsResponse.type = Types::CreateLocationNfsResponse
    CreateLocationObjectStorageRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerHostname, location_name: "ServerHostname", traits: {"smithy.api#required" => {}}))
    CreateLocationObjectStorageRequest.add_member(:server_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageServerPort, location_name: "ServerPort"))
    CreateLocationObjectStorageRequest.add_member(:server_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageServerProtocol, location_name: "ServerProtocol"))
    CreateLocationObjectStorageRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    CreateLocationObjectStorageRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageBucketName, location_name: "BucketName", traits: {"smithy.api#required" => {}}))
    CreateLocationObjectStorageRequest.add_member(:access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageAccessKey, location_name: "AccessKey"))
    CreateLocationObjectStorageRequest.add_member(:secret_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageSecretKey, location_name: "SecretKey"))
    CreateLocationObjectStorageRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    CreateLocationObjectStorageRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationObjectStorageRequest.add_member(:server_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageCertificate, location_name: "ServerCertificate"))
    CreateLocationObjectStorageRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CmkSecretConfig, location_name: "CmkSecretConfig"))
    CreateLocationObjectStorageRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSecretConfig, location_name: "CustomSecretConfig"))
    CreateLocationObjectStorageRequest.type = Types::CreateLocationObjectStorageRequest
    CreateLocationObjectStorageResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationObjectStorageResponse.type = Types::CreateLocationObjectStorageResponse
    CreateLocationS3Request.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    CreateLocationS3Request.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "S3BucketArn", traits: {"smithy.api#required" => {}}))
    CreateLocationS3Request.add_member(:s3_storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "S3StorageClass"))
    CreateLocationS3Request.add_member(:s3_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: "S3Config", traits: {"smithy.api#required" => {}}))
    CreateLocationS3Request.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    CreateLocationS3Request.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationS3Request.type = Types::CreateLocationS3Request
    CreateLocationS3Response.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationS3Response.type = Types::CreateLocationS3Response
    CreateLocationSmbRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbSubdirectory, location_name: "Subdirectory", traits: {"smithy.api#required" => {}}))
    CreateLocationSmbRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerHostname, location_name: "ServerHostname", traits: {"smithy.api#required" => {}}))
    CreateLocationSmbRequest.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    CreateLocationSmbRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    CreateLocationSmbRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password"))
    CreateLocationSmbRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns", traits: {"smithy.api#required" => {}}))
    CreateLocationSmbRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    CreateLocationSmbRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateLocationSmbRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbAuthenticationType, location_name: "AuthenticationType"))
    CreateLocationSmbRequest.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpList, location_name: "DnsIpAddresses"))
    CreateLocationSmbRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    CreateLocationSmbRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKeytabFile, location_name: "KerberosKeytab"))
    CreateLocationSmbRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKrb5ConfFile, location_name: "KerberosKrb5Conf"))
    CreateLocationSmbRequest.type = Types::CreateLocationSmbRequest
    CreateLocationSmbResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    CreateLocationSmbResponse.type = Types::CreateLocationSmbResponse
    CreateTaskRequest.add_member(:source_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "SourceLocationArn", traits: {"smithy.api#required" => {}}))
    CreateTaskRequest.add_member(:destination_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "DestinationLocationArn", traits: {"smithy.api#required" => {}}))
    CreateTaskRequest.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    CreateTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    CreateTaskRequest.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    CreateTaskRequest.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    CreateTaskRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSchedule, location_name: "Schedule"))
    CreateTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    CreateTaskRequest.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    CreateTaskRequest.add_member(:manifest_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestConfig, location_name: "ManifestConfig"))
    CreateTaskRequest.add_member(:task_report_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskReportConfig, location_name: "TaskReportConfig"))
    CreateTaskRequest.add_member(:task_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskMode, location_name: "TaskMode"))
    CreateTaskRequest.type = Types::CreateTaskRequest
    CreateTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    CreateTaskResponse.type = Types::CreateTaskResponse
    CustomSecretConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    CustomSecretConfig.add_member(:secret_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnOrEmptyString, location_name: "SecretAccessRoleArn"))
    CustomSecretConfig.type = Types::CustomSecretConfig
    DeleteAgentRequest.add_member(:agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn", traits: {"smithy.api#required" => {}}))
    DeleteAgentRequest.type = Types::DeleteAgentRequest
    DeleteAgentResponse.type = Types::DeleteAgentResponse
    DeleteLocationRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DeleteLocationRequest.type = Types::DeleteLocationRequest
    DeleteLocationResponse.type = Types::DeleteLocationResponse
    DeleteTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn", traits: {"smithy.api#required" => {}}))
    DeleteTaskRequest.type = Types::DeleteTaskRequest
    DeleteTaskResponse.type = Types::DeleteTaskResponse
    DescribeAgentRequest.add_member(:agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn", traits: {"smithy.api#required" => {}}))
    DescribeAgentRequest.type = Types::DescribeAgentRequest
    DescribeAgentResponse.add_member(:agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn"))
    DescribeAgentResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    DescribeAgentResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: "Status"))
    DescribeAgentResponse.add_member(:last_connection_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LastConnectionTime"))
    DescribeAgentResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeAgentResponse.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    DescribeAgentResponse.add_member(:private_link_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateLinkConfig, location_name: "PrivateLinkConfig"))
    DescribeAgentResponse.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: "Platform"))
    DescribeAgentResponse.type = Types::DescribeAgentResponse
    DescribeLocationAzureBlobRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationAzureBlobRequest.type = Types::DescribeLocationAzureBlobRequest
    DescribeLocationAzureBlobResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationAzureBlobResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationAzureBlobResponse.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobAuthenticationType, location_name: "AuthenticationType"))
    DescribeLocationAzureBlobResponse.add_member(:blob_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobType, location_name: "BlobType"))
    DescribeLocationAzureBlobResponse.add_member(:access_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureAccessTier, location_name: "AccessTier"))
    DescribeLocationAzureBlobResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationAzureBlobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationAzureBlobResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedSecretConfig, location_name: "ManagedSecretConfig"))
    DescribeLocationAzureBlobResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CmkSecretConfig, location_name: "CmkSecretConfig"))
    DescribeLocationAzureBlobResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSecretConfig, location_name: "CustomSecretConfig"))
    DescribeLocationAzureBlobResponse.type = Types::DescribeLocationAzureBlobResponse
    DescribeLocationEfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationEfsRequest.type = Types::DescribeLocationEfsRequest
    DescribeLocationEfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationEfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationEfsResponse.add_member(:ec2_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2Config, location_name: "Ec2Config"))
    DescribeLocationEfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationEfsResponse.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsAccessPointArn, location_name: "AccessPointArn"))
    DescribeLocationEfsResponse.add_member(:file_system_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "FileSystemAccessRoleArn"))
    DescribeLocationEfsResponse.add_member(:in_transit_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsInTransitEncryption, location_name: "InTransitEncryption"))
    DescribeLocationEfsResponse.type = Types::DescribeLocationEfsResponse
    DescribeLocationFsxLustreRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxLustreRequest.type = Types::DescribeLocationFsxLustreRequest
    DescribeLocationFsxLustreResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxLustreResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxLustreResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxLustreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxLustreResponse.type = Types::DescribeLocationFsxLustreResponse
    DescribeLocationFsxOntapRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxOntapRequest.type = Types::DescribeLocationFsxOntapRequest
    DescribeLocationFsxOntapResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxOntapResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxOntapResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxOntapResponse.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol"))
    DescribeLocationFsxOntapResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxOntapResponse.add_member(:storage_virtual_machine_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageVirtualMachineArn, location_name: "StorageVirtualMachineArn"))
    DescribeLocationFsxOntapResponse.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxFilesystemArn, location_name: "FsxFilesystemArn"))
    DescribeLocationFsxOntapResponse.type = Types::DescribeLocationFsxOntapResponse
    DescribeLocationFsxOpenZfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxOpenZfsRequest.type = Types::DescribeLocationFsxOpenZfsRequest
    DescribeLocationFsxOpenZfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxOpenZfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxOpenZfsResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxOpenZfsResponse.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol"))
    DescribeLocationFsxOpenZfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxOpenZfsResponse.type = Types::DescribeLocationFsxOpenZfsResponse
    DescribeLocationFsxWindowsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxWindowsRequest.type = Types::DescribeLocationFsxWindowsRequest
    DescribeLocationFsxWindowsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationFsxWindowsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationFsxWindowsResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns"))
    DescribeLocationFsxWindowsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationFsxWindowsResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    DescribeLocationFsxWindowsResponse.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    DescribeLocationFsxWindowsResponse.type = Types::DescribeLocationFsxWindowsResponse
    DescribeLocationHdfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationHdfsRequest.type = Types::DescribeLocationHdfsRequest
    DescribeLocationHdfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationHdfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationHdfsResponse.add_member(:name_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsNameNodeList, location_name: "NameNodes"))
    DescribeLocationHdfsResponse.add_member(:block_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsBlockSize, location_name: "BlockSize"))
    DescribeLocationHdfsResponse.add_member(:replication_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsReplicationFactor, location_name: "ReplicationFactor"))
    DescribeLocationHdfsResponse.add_member(:kms_key_provider_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyProviderUri, location_name: "KmsKeyProviderUri"))
    DescribeLocationHdfsResponse.add_member(:qop_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QopConfiguration, location_name: "QopConfiguration"))
    DescribeLocationHdfsResponse.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsAuthenticationType, location_name: "AuthenticationType"))
    DescribeLocationHdfsResponse.add_member(:simple_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsUser, location_name: "SimpleUser"))
    DescribeLocationHdfsResponse.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    DescribeLocationHdfsResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationHdfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationHdfsResponse.type = Types::DescribeLocationHdfsResponse
    DescribeLocationNfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationNfsRequest.type = Types::DescribeLocationNfsRequest
    DescribeLocationNfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationNfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationNfsResponse.add_member(:on_prem_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremConfig, location_name: "OnPremConfig"))
    DescribeLocationNfsResponse.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    DescribeLocationNfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationNfsResponse.type = Types::DescribeLocationNfsResponse
    DescribeLocationObjectStorageRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationObjectStorageRequest.type = Types::DescribeLocationObjectStorageRequest
    DescribeLocationObjectStorageResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationObjectStorageResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationObjectStorageResponse.add_member(:access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageAccessKey, location_name: "AccessKey"))
    DescribeLocationObjectStorageResponse.add_member(:server_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageServerPort, location_name: "ServerPort"))
    DescribeLocationObjectStorageResponse.add_member(:server_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageServerProtocol, location_name: "ServerProtocol"))
    DescribeLocationObjectStorageResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationObjectStorageResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationObjectStorageResponse.add_member(:server_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageCertificate, location_name: "ServerCertificate"))
    DescribeLocationObjectStorageResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedSecretConfig, location_name: "ManagedSecretConfig"))
    DescribeLocationObjectStorageResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CmkSecretConfig, location_name: "CmkSecretConfig"))
    DescribeLocationObjectStorageResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSecretConfig, location_name: "CustomSecretConfig"))
    DescribeLocationObjectStorageResponse.type = Types::DescribeLocationObjectStorageResponse
    DescribeLocationS3Request.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationS3Request.type = Types::DescribeLocationS3Request
    DescribeLocationS3Response.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationS3Response.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationS3Response.add_member(:s3_storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "S3StorageClass"))
    DescribeLocationS3Response.add_member(:s3_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: "S3Config"))
    DescribeLocationS3Response.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationS3Response.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationS3Response.type = Types::DescribeLocationS3Response
    DescribeLocationSmbRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationSmbRequest.type = Types::DescribeLocationSmbRequest
    DescribeLocationSmbResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    DescribeLocationSmbResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    DescribeLocationSmbResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    DescribeLocationSmbResponse.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    DescribeLocationSmbResponse.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    DescribeLocationSmbResponse.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    DescribeLocationSmbResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeLocationSmbResponse.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpList, location_name: "DnsIpAddresses"))
    DescribeLocationSmbResponse.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    DescribeLocationSmbResponse.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbAuthenticationType, location_name: "AuthenticationType"))
    DescribeLocationSmbResponse.type = Types::DescribeLocationSmbResponse
    DescribeTaskExecutionRequest.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn", traits: {"smithy.api#required" => {}}))
    DescribeTaskExecutionRequest.type = Types::DescribeTaskExecutionRequest
    DescribeTaskExecutionResponse.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    DescribeTaskExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "Status"))
    DescribeTaskExecutionResponse.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    DescribeTaskExecutionResponse.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    DescribeTaskExecutionResponse.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    DescribeTaskExecutionResponse.add_member(:manifest_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestConfig, location_name: "ManifestConfig"))
    DescribeTaskExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "StartTime"))
    DescribeTaskExecutionResponse.add_member(:estimated_files_to_transfer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "EstimatedFilesToTransfer", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:estimated_bytes_to_transfer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "EstimatedBytesToTransfer", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_transferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FilesTransferred", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:bytes_written, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "BytesWritten", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "BytesTransferred", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:bytes_compressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "BytesCompressed", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionResultDetail, location_name: "Result"))
    DescribeTaskExecutionResponse.add_member(:task_report_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskReportConfig, location_name: "TaskReportConfig"))
    DescribeTaskExecutionResponse.add_member(:files_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FilesDeleted", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FilesSkipped", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FilesVerified", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:report_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportResult, location_name: "ReportResult"))
    DescribeTaskExecutionResponse.add_member(:estimated_files_to_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "EstimatedFilesToDelete", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:task_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskMode, location_name: "TaskMode"))
    DescribeTaskExecutionResponse.add_member(:files_prepared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "FilesPrepared", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_listed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionFilesListedDetail, location_name: "FilesListed"))
    DescribeTaskExecutionResponse.add_member(:files_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionFilesFailedDetail, location_name: "FilesFailed"))
    DescribeTaskExecutionResponse.add_member(:launch_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "LaunchTime"))
    DescribeTaskExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "EndTime"))
    DescribeTaskExecutionResponse.type = Types::DescribeTaskExecutionResponse
    DescribeTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn", traits: {"smithy.api#required" => {}}))
    DescribeTaskRequest.type = Types::DescribeTaskRequest
    DescribeTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    DescribeTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: "Status"))
    DescribeTaskResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    DescribeTaskResponse.add_member(:current_task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "CurrentTaskExecutionArn"))
    DescribeTaskResponse.add_member(:source_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "SourceLocationArn"))
    DescribeTaskResponse.add_member(:destination_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "DestinationLocationArn"))
    DescribeTaskResponse.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    DescribeTaskResponse.add_member(:source_network_interface_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNetworkInterfaceArns, location_name: "SourceNetworkInterfaceArns"))
    DescribeTaskResponse.add_member(:destination_network_interface_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationNetworkInterfaceArns, location_name: "DestinationNetworkInterfaceArns"))
    DescribeTaskResponse.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    DescribeTaskResponse.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    DescribeTaskResponse.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSchedule, location_name: "Schedule"))
    DescribeTaskResponse.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    DescribeTaskResponse.add_member(:error_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorDetail"))
    DescribeTaskResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "CreationTime"))
    DescribeTaskResponse.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    DescribeTaskResponse.add_member(:manifest_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestConfig, location_name: "ManifestConfig"))
    DescribeTaskResponse.add_member(:task_report_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskReportConfig, location_name: "TaskReportConfig"))
    DescribeTaskResponse.add_member(:schedule_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskScheduleDetails, location_name: "ScheduleDetails"))
    DescribeTaskResponse.add_member(:task_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskMode, location_name: "TaskMode"))
    DescribeTaskResponse.type = Types::DescribeTaskResponse
    DestinationNetworkInterfaceArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceArn)
    DnsIpList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerIpAddress)
    Ec2Config.add_member(:subnet_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SubnetArn, location_name: "SubnetArn", traits: {"smithy.api#required" => {}}))
    Ec2Config.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArnList, location_name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    Ec2Config.type = Types::Ec2Config
    Ec2SecurityGroupArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArn)
    EfsInTransitEncryption.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EfsInTransitEncryption.add_member(:tls1_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TLS1_2", traits: {"smithy.api#enumValue" => "TLS1_2"}))
    EndpointType.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EndpointType.add_member(:private_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE_LINK", traits: {"smithy.api#enumValue" => "PRIVATE_LINK"}))
    EndpointType.add_member(:fips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIPS", traits: {"smithy.api#enumValue" => "FIPS"}))
    EndpointType.add_member(:fips_private_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIPS_PRIVATE_LINK", traits: {"smithy.api#enumValue" => "FIPS_PRIVATE_LINK"}))
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterRule)
    FilterRule.add_member(:filter_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterType, location_name: "FilterType"))
    FilterRule.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue, location_name: "Value"))
    FilterRule.type = Types::FilterRule
    FilterType.add_member(:simple_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIMPLE_PATTERN", traits: {"smithy.api#enumValue" => "SIMPLE_PATTERN"}))
    FilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttributeValue)
    FsxProtocol.add_member(:nfs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocolNfs, location_name: "NFS"))
    FsxProtocol.add_member(:smb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocolSmb, location_name: "SMB"))
    FsxProtocol.type = Types::FsxProtocol
    FsxProtocolNfs.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    FsxProtocolNfs.type = Types::FsxProtocolNfs
    FsxProtocolSmb.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    FsxProtocolSmb.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    FsxProtocolSmb.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password", traits: {"smithy.api#required" => {}}))
    FsxProtocolSmb.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User", traits: {"smithy.api#required" => {}}))
    FsxProtocolSmb.type = Types::FsxProtocolSmb
    FsxUpdateProtocol.add_member(:nfs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocolNfs, location_name: "NFS"))
    FsxUpdateProtocol.add_member(:smb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxUpdateProtocolSmb, location_name: "SMB"))
    FsxUpdateProtocol.type = Types::FsxUpdateProtocol
    FsxUpdateProtocolSmb.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmbDomain, location_name: "Domain"))
    FsxUpdateProtocolSmb.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    FsxUpdateProtocolSmb.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password"))
    FsxUpdateProtocolSmb.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    FsxUpdateProtocolSmb.type = Types::FsxUpdateProtocolSmb
    Gid.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Gid.add_member(:int_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INT_VALUE", traits: {"smithy.api#enumValue" => "INT_VALUE"}))
    Gid.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    Gid.add_member(:both, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOTH", traits: {"smithy.api#enumValue" => "BOTH"}))
    HdfsAuthenticationType.add_member(:simple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIMPLE", traits: {"smithy.api#enumValue" => "SIMPLE"}))
    HdfsAuthenticationType.add_member(:kerberos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KERBEROS", traits: {"smithy.api#enumValue" => "KERBEROS"}))
    HdfsDataTransferProtection.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    HdfsDataTransferProtection.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATION", traits: {"smithy.api#enumValue" => "AUTHENTICATION"}))
    HdfsDataTransferProtection.add_member(:integrity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEGRITY", traits: {"smithy.api#enumValue" => "INTEGRITY"}))
    HdfsDataTransferProtection.add_member(:privacy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVACY", traits: {"smithy.api#enumValue" => "PRIVACY"}))
    HdfsNameNode.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsServerHostname, location_name: "Hostname", traits: {"smithy.api#required" => {}}))
    HdfsNameNode.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsServerPort, location_name: "Port", traits: {"smithy.api#required" => {}}))
    HdfsNameNode.type = Types::HdfsNameNode
    HdfsNameNodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsNameNode)
    HdfsRpcProtection.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    HdfsRpcProtection.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATION", traits: {"smithy.api#enumValue" => "AUTHENTICATION"}))
    HdfsRpcProtection.add_member(:integrity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEGRITY", traits: {"smithy.api#enumValue" => "INTEGRITY"}))
    HdfsRpcProtection.add_member(:privacy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVACY", traits: {"smithy.api#enumValue" => "PRIVACY"}))
    InputTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagListEntry)
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    InternalException.type = Types::InternalException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    InvalidRequestException.add_member(:datasync_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "datasyncErrorCode"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentsRequest.type = Types::ListAgentsRequest
    ListAgentsResponse.add_member(:agents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentList, location_name: "Agents"))
    ListAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAgentsResponse.type = Types::ListAgentsResponse
    ListLocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListLocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLocationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationFilters, location_name: "Filters"))
    ListLocationsRequest.type = Types::ListLocationsRequest
    ListLocationsResponse.add_member(:locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationList, location_name: "Locations"))
    ListLocationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLocationsResponse.type = Types::ListLocationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputTagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskExecutionsRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    ListTaskExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTaskExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTaskExecutionsRequest.type = Types::ListTaskExecutionsRequest
    ListTaskExecutionsResponse.add_member(:task_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionList, location_name: "TaskExecutions"))
    ListTaskExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTaskExecutionsResponse.type = Types::ListTaskExecutionsResponse
    ListTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFilters, location_name: "Filters"))
    ListTasksRequest.type = Types::ListTasksRequest
    ListTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskList, location_name: "Tasks"))
    ListTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTasksResponse.type = Types::ListTasksResponse
    LocationFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    LocationFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    LocationFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: "Operator", traits: {"smithy.api#required" => {}}))
    LocationFilter.type = Types::LocationFilter
    LocationFilterName.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LocationUri", traits: {"smithy.api#enumValue" => "LocationUri"}))
    LocationFilterName.add_member(:location_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LocationType", traits: {"smithy.api#enumValue" => "LocationType"}))
    LocationFilterName.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreationTime", traits: {"smithy.api#enumValue" => "CreationTime"}))
    LocationFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationFilter)
    LocationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationListEntry)
    LocationListEntry.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn"))
    LocationListEntry.add_member(:location_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationUri, location_name: "LocationUri"))
    LocationListEntry.type = Types::LocationListEntry
    LogLevel.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    LogLevel.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    LogLevel.add_member(:transfer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER", traits: {"smithy.api#enumValue" => "TRANSFER"}))
    ManagedSecretConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    ManagedSecretConfig.type = Types::ManagedSecretConfig
    ManifestAction.add_member(:transfer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER", traits: {"smithy.api#enumValue" => "TRANSFER"}))
    ManifestConfig.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestAction, location_name: "Action"))
    ManifestConfig.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestFormat, location_name: "Format"))
    ManifestConfig.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceManifestConfig, location_name: "Source"))
    ManifestConfig.type = Types::ManifestConfig
    ManifestFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    Mtime.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Mtime.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    NfsMountOptions.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsVersion, location_name: "Version"))
    NfsMountOptions.type = Types::NfsMountOptions
    NfsVersion.add_member(:automatic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    NfsVersion.add_member(:nfs3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NFS3", traits: {"smithy.api#enumValue" => "NFS3"}))
    NfsVersion.add_member(:nfs4_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NFS4_0", traits: {"smithy.api#enumValue" => "NFS4_0"}))
    NfsVersion.add_member(:nfs4_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NFS4_1", traits: {"smithy.api#enumValue" => "NFS4_1"}))
    ObjectStorageServerProtocol.add_member(:https, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    ObjectStorageServerProtocol.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ObjectTags.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    ObjectTags.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ObjectVersionIds.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    ObjectVersionIds.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    OnPremConfig.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns", traits: {"smithy.api#required" => {}}))
    OnPremConfig.type = Types::OnPremConfig
    Operator.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQ", traits: {"smithy.api#enumValue" => "Equals"}))
    Operator.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NE", traits: {"smithy.api#enumValue" => "NotEquals"}))
    Operator.add_member(:in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN", traits: {"smithy.api#enumValue" => "In"}))
    Operator.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LE", traits: {"smithy.api#enumValue" => "LessThanOrEqual"}))
    Operator.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LT", traits: {"smithy.api#enumValue" => "LessThan"}))
    Operator.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GE", traits: {"smithy.api#enumValue" => "GreaterThanOrEqual"}))
    Operator.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GT", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    Operator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "Contains"}))
    Operator.add_member(:not_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NotContains"}))
    Operator.add_member(:begins_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BeginsWith"}))
    Options.add_member(:verify_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VerifyMode, location_name: "VerifyMode"))
    Options.add_member(:overwrite_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverwriteMode, location_name: "OverwriteMode"))
    Options.add_member(:atime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Atime, location_name: "Atime"))
    Options.add_member(:mtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Mtime, location_name: "Mtime"))
    Options.add_member(:uid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uid, location_name: "Uid"))
    Options.add_member(:gid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Gid, location_name: "Gid"))
    Options.add_member(:preserve_deleted_files, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreserveDeletedFiles, location_name: "PreserveDeletedFiles"))
    Options.add_member(:preserve_devices, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreserveDevices, location_name: "PreserveDevices"))
    Options.add_member(:posix_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixPermissions, location_name: "PosixPermissions"))
    Options.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BytesPerSecond, location_name: "BytesPerSecond"))
    Options.add_member(:task_queueing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskQueueing, location_name: "TaskQueueing"))
    Options.add_member(:log_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogLevel, location_name: "LogLevel"))
    Options.add_member(:transfer_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransferMode, location_name: "TransferMode"))
    Options.add_member(:security_descriptor_copy_flags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbSecurityDescriptorCopyFlags, location_name: "SecurityDescriptorCopyFlags"))
    Options.add_member(:object_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTags, location_name: "ObjectTags"))
    Options.type = Types::Options
    OutputTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagListEntry)
    OverwriteMode.add_member(:always, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALWAYS", traits: {"smithy.api#enumValue" => "ALWAYS"}))
    OverwriteMode.add_member(:never, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEVER", traits: {"smithy.api#enumValue" => "NEVER"}))
    PLSecurityGroupArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SecurityGroupArn)
    PLSubnetArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2SubnetArn)
    PhaseStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PhaseStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    PhaseStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    Platform.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion, location_name: "Version"))
    Platform.type = Types::Platform
    PosixPermissions.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PosixPermissions.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    PreserveDeletedFiles.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    PreserveDeletedFiles.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    PreserveDevices.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PreserveDevices.add_member(:preserve, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    PrivateLinkConfig.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointId, location_name: "VpcEndpointId"))
    PrivateLinkConfig.add_member(:private_link_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: "PrivateLinkEndpoint"))
    PrivateLinkConfig.add_member(:subnet_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PLSubnetArnList, location_name: "SubnetArns"))
    PrivateLinkConfig.add_member(:security_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PLSecurityGroupArnList, location_name: "SecurityGroupArns"))
    PrivateLinkConfig.type = Types::PrivateLinkConfig
    QopConfiguration.add_member(:rpc_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsRpcProtection, location_name: "RpcProtection"))
    QopConfiguration.add_member(:data_transfer_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsDataTransferProtection, location_name: "DataTransferProtection"))
    QopConfiguration.type = Types::QopConfiguration
    ReportDestination.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDestinationS3, location_name: "S3"))
    ReportDestination.type = Types::ReportDestination
    ReportDestinationS3.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    ReportDestinationS3.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "S3BucketArn", traits: {"smithy.api#required" => {}}))
    ReportDestinationS3.add_member(:bucket_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    ReportDestinationS3.type = Types::ReportDestinationS3
    ReportLevel.add_member(:errors_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERRORS_ONLY", traits: {"smithy.api#enumValue" => "ERRORS_ONLY"}))
    ReportLevel.add_member(:successes_and_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESSES_AND_ERRORS", traits: {"smithy.api#enumValue" => "SUCCESSES_AND_ERRORS"}))
    ReportOutputType.add_member(:summary_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUMMARY_ONLY", traits: {"smithy.api#enumValue" => "SUMMARY_ONLY"}))
    ReportOutputType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ReportOverride.add_member(:report_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportLevel, location_name: "ReportLevel"))
    ReportOverride.type = Types::ReportOverride
    ReportOverrides.add_member(:transferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportOverride, location_name: "Transferred"))
    ReportOverrides.add_member(:verified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportOverride, location_name: "Verified"))
    ReportOverrides.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportOverride, location_name: "Deleted"))
    ReportOverrides.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportOverride, location_name: "Skipped"))
    ReportOverrides.type = Types::ReportOverrides
    ReportResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "Status"))
    ReportResult.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ReportResult.add_member(:error_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorDetail"))
    ReportResult.type = Types::ReportResult
    S3Config.add_member(:bucket_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    S3Config.type = Types::S3Config
    S3ManifestConfig.add_member(:manifest_object_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "ManifestObjectPath", traits: {"smithy.api#required" => {}}))
    S3ManifestConfig.add_member(:bucket_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    S3ManifestConfig.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "S3BucketArn", traits: {"smithy.api#required" => {}}))
    S3ManifestConfig.add_member(:manifest_object_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersionId, location_name: "ManifestObjectVersionId"))
    S3ManifestConfig.type = Types::S3ManifestConfig
    S3StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3StorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    S3StorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    S3StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    S3StorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    S3StorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    S3StorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTPOSTS", traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    S3StorageClass.add_member(:glacier_instant_retrieval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER_INSTANT_RETRIEVAL", traits: {"smithy.api#enumValue" => "GLACIER_INSTANT_RETRIEVAL"}))
    ScheduleDisabledBy.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ScheduleDisabledBy.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    ScheduleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ScheduleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SmbAuthenticationType.add_member(:ntlm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NTLM", traits: {"smithy.api#enumValue" => "NTLM"}))
    SmbAuthenticationType.add_member(:kerberos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KERBEROS", traits: {"smithy.api#enumValue" => "KERBEROS"}))
    SmbMountOptions.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbVersion, location_name: "Version"))
    SmbMountOptions.type = Types::SmbMountOptions
    SmbSecurityDescriptorCopyFlags.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    SmbSecurityDescriptorCopyFlags.add_member(:owner_dacl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OWNER_DACL", traits: {"smithy.api#enumValue" => "OWNER_DACL"}))
    SmbSecurityDescriptorCopyFlags.add_member(:owner_dacl_sacl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OWNER_DACL_SACL", traits: {"smithy.api#enumValue" => "OWNER_DACL_SACL"}))
    SmbVersion.add_member(:automatic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    SmbVersion.add_member(:smb2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMB2", traits: {"smithy.api#enumValue" => "SMB2"}))
    SmbVersion.add_member(:smb3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMB3", traits: {"smithy.api#enumValue" => "SMB3"}))
    SmbVersion.add_member(:smb1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMB1", traits: {"smithy.api#enumValue" => "SMB1"}))
    SmbVersion.add_member(:smb2_0, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMB2_0", traits: {"smithy.api#enumValue" => "SMB2_0"}))
    SourceManifestConfig.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ManifestConfig, location_name: "S3", traits: {"smithy.api#required" => {}}))
    SourceManifestConfig.type = Types::SourceManifestConfig
    SourceNetworkInterfaceArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceArn)
    StartTaskExecutionRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn", traits: {"smithy.api#required" => {}}))
    StartTaskExecutionRequest.add_member(:override_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: "OverrideOptions"))
    StartTaskExecutionRequest.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    StartTaskExecutionRequest.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    StartTaskExecutionRequest.add_member(:manifest_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestConfig, location_name: "ManifestConfig"))
    StartTaskExecutionRequest.add_member(:task_report_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskReportConfig, location_name: "TaskReportConfig"))
    StartTaskExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags"))
    StartTaskExecutionRequest.type = Types::StartTaskExecutionRequest
    StartTaskExecutionResponse.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    StartTaskExecutionResponse.type = Types::StartTaskExecutionResponse
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagListEntry.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    TagListEntry.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    TagListEntry.type = Types::TagListEntry
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputTagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskExecutionFilesFailedDetail.add_member(:prepare, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Prepare", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.add_member(:transfer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Transfer", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.add_member(:verify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Verify", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "Delete", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.type = Types::TaskExecutionFilesFailedDetail
    TaskExecutionFilesListedDetail.add_member(:at_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "AtSource", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesListedDetail.add_member(:at_destination_for_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "AtDestinationForDelete", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesListedDetail.type = Types::TaskExecutionFilesListedDetail
    TaskExecutionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionListEntry)
    TaskExecutionListEntry.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn"))
    TaskExecutionListEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "Status"))
    TaskExecutionListEntry.add_member(:task_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskMode, location_name: "TaskMode"))
    TaskExecutionListEntry.type = Types::TaskExecutionListEntry
    TaskExecutionResultDetail.add_member(:prepare_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: "PrepareDuration"))
    TaskExecutionResultDetail.add_member(:prepare_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "PrepareStatus"))
    TaskExecutionResultDetail.add_member(:total_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: "TotalDuration"))
    TaskExecutionResultDetail.add_member(:transfer_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: "TransferDuration"))
    TaskExecutionResultDetail.add_member(:transfer_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "TransferStatus"))
    TaskExecutionResultDetail.add_member(:verify_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: "VerifyDuration"))
    TaskExecutionResultDetail.add_member(:verify_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseStatus, location_name: "VerifyStatus"))
    TaskExecutionResultDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    TaskExecutionResultDetail.add_member(:error_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ErrorDetail"))
    TaskExecutionResultDetail.type = Types::TaskExecutionResultDetail
    TaskExecutionStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    TaskExecutionStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    TaskExecutionStatus.add_member(:launching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAUNCHING", traits: {"smithy.api#enumValue" => "LAUNCHING"}))
    TaskExecutionStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    TaskExecutionStatus.add_member(:transferring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFERRING", traits: {"smithy.api#enumValue" => "TRANSFERRING"}))
    TaskExecutionStatus.add_member(:verifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERIFYING", traits: {"smithy.api#enumValue" => "VERIFYING"}))
    TaskExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    TaskExecutionStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TaskFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    TaskFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    TaskFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: "Operator", traits: {"smithy.api#required" => {}}))
    TaskFilter.type = Types::TaskFilter
    TaskFilterName.add_member(:location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LocationId", traits: {"smithy.api#enumValue" => "LocationId"}))
    TaskFilterName.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreationTime", traits: {"smithy.api#enumValue" => "CreationTime"}))
    TaskFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFilter)
    TaskList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskListEntry)
    TaskListEntry.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    TaskListEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: "Status"))
    TaskListEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    TaskListEntry.add_member(:task_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskMode, location_name: "TaskMode"))
    TaskListEntry.type = Types::TaskListEntry
    TaskMode.add_member(:basic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    TaskMode.add_member(:enhanced, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    TaskQueueing.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TaskQueueing.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TaskReportConfig.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportDestination, location_name: "Destination"))
    TaskReportConfig.add_member(:output_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportOutputType, location_name: "OutputType"))
    TaskReportConfig.add_member(:report_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportLevel, location_name: "ReportLevel"))
    TaskReportConfig.add_member(:object_version_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectVersionIds, location_name: "ObjectVersionIds"))
    TaskReportConfig.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportOverrides, location_name: "Overrides"))
    TaskReportConfig.type = Types::TaskReportConfig
    TaskSchedule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleExpressionCron, location_name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    TaskSchedule.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleStatus, location_name: "Status"))
    TaskSchedule.type = Types::TaskSchedule
    TaskScheduleDetails.add_member(:status_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: "StatusUpdateTime"))
    TaskScheduleDetails.add_member(:disabled_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDisabledReason, location_name: "DisabledReason"))
    TaskScheduleDetails.add_member(:disabled_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDisabledBy, location_name: "DisabledBy"))
    TaskScheduleDetails.type = Types::TaskScheduleDetails
    TaskStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TaskStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TaskStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    TaskStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    TaskStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    TransferMode.add_member(:changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHANGED", traits: {"smithy.api#enumValue" => "CHANGED"}))
    TransferMode.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Uid.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Uid.add_member(:int_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INT_VALUE", traits: {"smithy.api#enumValue" => "INT_VALUE"}))
    Uid.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    Uid.add_member(:both, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOTH", traits: {"smithy.api#enumValue" => "BOTH"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourceArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "Keys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAgentRequest.add_member(:agent_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArn, location_name: "AgentArn", traits: {"smithy.api#required" => {}}))
    UpdateAgentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    UpdateAgentRequest.type = Types::UpdateAgentRequest
    UpdateAgentResponse.type = Types::UpdateAgentResponse
    UpdateLocationAzureBlobRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationAzureBlobRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobSubdirectory, location_name: "Subdirectory"))
    UpdateLocationAzureBlobRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobAuthenticationType, location_name: "AuthenticationType"))
    UpdateLocationAzureBlobRequest.add_member(:sas_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobSasConfiguration, location_name: "SasConfiguration"))
    UpdateLocationAzureBlobRequest.add_member(:blob_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureBlobType, location_name: "BlobType"))
    UpdateLocationAzureBlobRequest.add_member(:access_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AzureAccessTier, location_name: "AccessTier"))
    UpdateLocationAzureBlobRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationAzureBlobRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CmkSecretConfig, location_name: "CmkSecretConfig"))
    UpdateLocationAzureBlobRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSecretConfig, location_name: "CustomSecretConfig"))
    UpdateLocationAzureBlobRequest.type = Types::UpdateLocationAzureBlobRequest
    UpdateLocationAzureBlobResponse.type = Types::UpdateLocationAzureBlobResponse
    UpdateLocationEfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationEfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsSubdirectory, location_name: "Subdirectory"))
    UpdateLocationEfsRequest.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedEfsAccessPointArn, location_name: "AccessPointArn"))
    UpdateLocationEfsRequest.add_member(:file_system_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatedEfsIamRoleArn, location_name: "FileSystemAccessRoleArn"))
    UpdateLocationEfsRequest.add_member(:in_transit_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsInTransitEncryption, location_name: "InTransitEncryption"))
    UpdateLocationEfsRequest.type = Types::UpdateLocationEfsRequest
    UpdateLocationEfsResponse.type = Types::UpdateLocationEfsResponse
    UpdateLocationFsxLustreRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxLustreRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbSubdirectory, location_name: "Subdirectory"))
    UpdateLocationFsxLustreRequest.type = Types::UpdateLocationFsxLustreRequest
    UpdateLocationFsxLustreResponse.type = Types::UpdateLocationFsxLustreResponse
    UpdateLocationFsxOntapRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxOntapRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxUpdateProtocol, location_name: "Protocol"))
    UpdateLocationFsxOntapRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxOntapSubdirectory, location_name: "Subdirectory"))
    UpdateLocationFsxOntapRequest.type = Types::UpdateLocationFsxOntapRequest
    UpdateLocationFsxOntapResponse.type = Types::UpdateLocationFsxOntapResponse
    UpdateLocationFsxOpenZfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxOpenZfsRequest.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxProtocol, location_name: "Protocol"))
    UpdateLocationFsxOpenZfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbSubdirectory, location_name: "Subdirectory"))
    UpdateLocationFsxOpenZfsRequest.type = Types::UpdateLocationFsxOpenZfsRequest
    UpdateLocationFsxOpenZfsResponse.type = Types::UpdateLocationFsxOpenZfsResponse
    UpdateLocationFsxWindowsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxWindowsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FsxWindowsSubdirectory, location_name: "Subdirectory"))
    UpdateLocationFsxWindowsRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSmbDomain, location_name: "Domain"))
    UpdateLocationFsxWindowsRequest.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    UpdateLocationFsxWindowsRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password"))
    UpdateLocationFsxWindowsRequest.type = Types::UpdateLocationFsxWindowsRequest
    UpdateLocationFsxWindowsResponse.type = Types::UpdateLocationFsxWindowsResponse
    UpdateLocationHdfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationHdfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsSubdirectory, location_name: "Subdirectory"))
    UpdateLocationHdfsRequest.add_member(:name_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsNameNodeList, location_name: "NameNodes"))
    UpdateLocationHdfsRequest.add_member(:block_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsBlockSize, location_name: "BlockSize"))
    UpdateLocationHdfsRequest.add_member(:replication_factor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsReplicationFactor, location_name: "ReplicationFactor"))
    UpdateLocationHdfsRequest.add_member(:kms_key_provider_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyProviderUri, location_name: "KmsKeyProviderUri"))
    UpdateLocationHdfsRequest.add_member(:qop_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QopConfiguration, location_name: "QopConfiguration"))
    UpdateLocationHdfsRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsAuthenticationType, location_name: "AuthenticationType"))
    UpdateLocationHdfsRequest.add_member(:simple_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HdfsUser, location_name: "SimpleUser"))
    UpdateLocationHdfsRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    UpdateLocationHdfsRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKeytabFile, location_name: "KerberosKeytab"))
    UpdateLocationHdfsRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKrb5ConfFile, location_name: "KerberosKrb5Conf"))
    UpdateLocationHdfsRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationHdfsRequest.type = Types::UpdateLocationHdfsRequest
    UpdateLocationHdfsResponse.type = Types::UpdateLocationHdfsResponse
    UpdateLocationNfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationNfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsSubdirectory, location_name: "Subdirectory"))
    UpdateLocationNfsRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerHostname, location_name: "ServerHostname"))
    UpdateLocationNfsRequest.add_member(:on_prem_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremConfig, location_name: "OnPremConfig"))
    UpdateLocationNfsRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NfsMountOptions, location_name: "MountOptions"))
    UpdateLocationNfsRequest.type = Types::UpdateLocationNfsRequest
    UpdateLocationNfsResponse.type = Types::UpdateLocationNfsResponse
    UpdateLocationObjectStorageRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationObjectStorageRequest.add_member(:server_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageServerPort, location_name: "ServerPort"))
    UpdateLocationObjectStorageRequest.add_member(:server_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageServerProtocol, location_name: "ServerProtocol"))
    UpdateLocationObjectStorageRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    UpdateLocationObjectStorageRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerHostname, location_name: "ServerHostname"))
    UpdateLocationObjectStorageRequest.add_member(:access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageAccessKey, location_name: "AccessKey"))
    UpdateLocationObjectStorageRequest.add_member(:secret_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageSecretKey, location_name: "SecretKey"))
    UpdateLocationObjectStorageRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationObjectStorageRequest.add_member(:server_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectStorageCertificate, location_name: "ServerCertificate"))
    UpdateLocationObjectStorageRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CmkSecretConfig, location_name: "CmkSecretConfig"))
    UpdateLocationObjectStorageRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomSecretConfig, location_name: "CustomSecretConfig"))
    UpdateLocationObjectStorageRequest.type = Types::UpdateLocationObjectStorageRequest
    UpdateLocationObjectStorageResponse.type = Types::UpdateLocationObjectStorageResponse
    UpdateLocationS3Request.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationS3Request.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Subdirectory, location_name: "Subdirectory"))
    UpdateLocationS3Request.add_member(:s3_storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "S3StorageClass"))
    UpdateLocationS3Request.add_member(:s3_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: "S3Config"))
    UpdateLocationS3Request.type = Types::UpdateLocationS3Request
    UpdateLocationS3Response.type = Types::UpdateLocationS3Response
    UpdateLocationSmbRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationArn, location_name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationSmbRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbSubdirectory, location_name: "Subdirectory"))
    UpdateLocationSmbRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerHostname, location_name: "ServerHostname"))
    UpdateLocationSmbRequest.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbUser, location_name: "User"))
    UpdateLocationSmbRequest.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbDomain, location_name: "Domain"))
    UpdateLocationSmbRequest.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbPassword, location_name: "Password"))
    UpdateLocationSmbRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArnList, location_name: "AgentArns"))
    UpdateLocationSmbRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbMountOptions, location_name: "MountOptions"))
    UpdateLocationSmbRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SmbAuthenticationType, location_name: "AuthenticationType"))
    UpdateLocationSmbRequest.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpList, location_name: "DnsIpAddresses"))
    UpdateLocationSmbRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosPrincipal, location_name: "KerberosPrincipal"))
    UpdateLocationSmbRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKeytabFile, location_name: "KerberosKeytab"))
    UpdateLocationSmbRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KerberosKrb5ConfFile, location_name: "KerberosKrb5Conf"))
    UpdateLocationSmbRequest.type = Types::UpdateLocationSmbRequest
    UpdateLocationSmbResponse.type = Types::UpdateLocationSmbResponse
    UpdateTaskExecutionRequest.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskExecutionArn, location_name: "TaskExecutionArn", traits: {"smithy.api#required" => {}}))
    UpdateTaskExecutionRequest.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: "Options", traits: {"smithy.api#required" => {}}))
    UpdateTaskExecutionRequest.type = Types::UpdateTaskExecutionRequest
    UpdateTaskExecutionResponse.type = Types::UpdateTaskExecutionResponse
    UpdateTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn", traits: {"smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Options, location_name: "Options"))
    UpdateTaskRequest.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Excludes"))
    UpdateTaskRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskSchedule, location_name: "Schedule"))
    UpdateTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    UpdateTaskRequest.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "CloudWatchLogGroupArn"))
    UpdateTaskRequest.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: "Includes"))
    UpdateTaskRequest.add_member(:manifest_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestConfig, location_name: "ManifestConfig"))
    UpdateTaskRequest.add_member(:task_report_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskReportConfig, location_name: "TaskReportConfig"))
    UpdateTaskRequest.type = Types::UpdateTaskRequest
    UpdateTaskResponse.type = Types::UpdateTaskResponse
    VerifyMode.add_member(:point_in_time_consistent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POINT_IN_TIME_CONSISTENT", traits: {"smithy.api#enumValue" => "POINT_IN_TIME_CONSISTENT"}))
    VerifyMode.add_member(:only_files_transferred, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONLY_FILES_TRANSFERRED", traits: {"smithy.api#enumValue" => "ONLY_FILES_TRANSFERRED"}))
    VerifyMode.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))

    FmrsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.datasync#FmrsService"
      service.name = "FmrsService"
      service.version = "2018-11-09"
      service.traits = {"aws.api#service" => {"sdkId" => "DataSync", "arnNamespace" => "datasync", "cloudFormationName" => "DataSync", "cloudTrailEventSource" => "datasync.amazonaws.com", "endpointPrefix" => "datasync"}, "aws.auth#sigv4" => {"name" => "datasync"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS DataSync"}
      service.add_operation(:cancel_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CancelTaskExecution"
        operation.name = "CancelTaskExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTaskExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTaskExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateAgent"
        operation.name = "CreateAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_azure_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationAzureBlob"
        operation.name = "CreateLocationAzureBlob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationAzureBlobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationAzureBlobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_efs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationEfs"
        operation.name = "CreateLocationEfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationEfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationEfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_lustre, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxLustre"
        operation.name = "CreateLocationFsxLustre"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxLustreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxLustreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_ontap, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxOntap"
        operation.name = "CreateLocationFsxOntap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxOntapRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxOntapResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_open_zfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxOpenZfs"
        operation.name = "CreateLocationFsxOpenZfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxOpenZfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxOpenZfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxWindows"
        operation.name = "CreateLocationFsxWindows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxWindowsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationFsxWindowsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_hdfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationHdfs"
        operation.name = "CreateLocationHdfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationHdfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationHdfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_nfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationNfs"
        operation.name = "CreateLocationNfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationNfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationNfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_object_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationObjectStorage"
        operation.name = "CreateLocationObjectStorage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationObjectStorageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationObjectStorageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationS3"
        operation.name = "CreateLocationS3"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationS3Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationS3Response)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_location_smb, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationSmb"
        operation.name = "CreateLocationSmb"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationSmbRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLocationSmbResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:create_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateTask"
        operation.name = "CreateTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DeleteAgent"
        operation.name = "DeleteAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DeleteLocation"
        operation.name = "DeleteLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLocationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:delete_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DeleteTask"
        operation.name = "DeleteTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeAgent"
        operation.name = "DescribeAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_azure_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationAzureBlob"
        operation.name = "DescribeLocationAzureBlob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationAzureBlobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationAzureBlobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_efs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationEfs"
        operation.name = "DescribeLocationEfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationEfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationEfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_lustre, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxLustre"
        operation.name = "DescribeLocationFsxLustre"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxLustreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxLustreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_ontap, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxOntap"
        operation.name = "DescribeLocationFsxOntap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxOntapRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxOntapResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_open_zfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxOpenZfs"
        operation.name = "DescribeLocationFsxOpenZfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxOpenZfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxOpenZfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxWindows"
        operation.name = "DescribeLocationFsxWindows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxWindowsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationFsxWindowsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_hdfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationHdfs"
        operation.name = "DescribeLocationHdfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationHdfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationHdfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_nfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationNfs"
        operation.name = "DescribeLocationNfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationNfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationNfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_object_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationObjectStorage"
        operation.name = "DescribeLocationObjectStorage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationObjectStorageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationObjectStorageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationS3"
        operation.name = "DescribeLocationS3"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationS3Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationS3Response)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_location_smb, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationSmb"
        operation.name = "DescribeLocationSmb"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationSmbRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLocationSmbResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeTask"
        operation.name = "DescribeTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeTaskExecution"
        operation.name = "DescribeTaskExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTaskExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTaskExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:list_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListAgents"
        operation.name = "ListAgents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAgents.new
      end)
      service.add_operation(:list_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListLocations"
        operation.name = "ListLocations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLocationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLocationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListLocations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_task_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListTaskExecutions"
        operation.name = "ListTaskExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaskExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTaskExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTaskExecutions.new
      end)
      service.add_operation(:list_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListTasks"
        operation.name = "ListTasks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTasksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTasksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:start_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#StartTaskExecution"
        operation.name = "StartTaskExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTaskExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTaskExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateAgent"
        operation.name = "UpdateAgent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_azure_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationAzureBlob"
        operation.name = "UpdateLocationAzureBlob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationAzureBlobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationAzureBlobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_efs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationEfs"
        operation.name = "UpdateLocationEfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationEfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationEfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_lustre, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxLustre"
        operation.name = "UpdateLocationFsxLustre"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxLustreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxLustreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_ontap, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxOntap"
        operation.name = "UpdateLocationFsxOntap"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxOntapRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxOntapResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_open_zfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxOpenZfs"
        operation.name = "UpdateLocationFsxOpenZfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxOpenZfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxOpenZfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxWindows"
        operation.name = "UpdateLocationFsxWindows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxWindowsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationFsxWindowsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_hdfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationHdfs"
        operation.name = "UpdateLocationHdfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationHdfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationHdfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_nfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationNfs"
        operation.name = "UpdateLocationNfs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationNfsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationNfsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_object_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationObjectStorage"
        operation.name = "UpdateLocationObjectStorage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationObjectStorageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationObjectStorageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationS3"
        operation.name = "UpdateLocationS3"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationS3Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationS3Response)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_location_smb, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationSmb"
        operation.name = "UpdateLocationSmb"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationSmbRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLocationSmbResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateTask"
        operation.name = "UpdateTask"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaskRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaskResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:update_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateTaskExecution"
        operation.name = "UpdateTaskExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaskExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTaskExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
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
