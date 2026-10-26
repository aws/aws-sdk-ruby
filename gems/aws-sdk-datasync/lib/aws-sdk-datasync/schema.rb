# frozen_string_literal: true

# This is generated code!

module Aws::DataSync
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActivationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ActivationKey", name: "ActivationKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 29}, "smithy.api#pattern" => "^[A-Z0-9]{5}(-[A-Z0-9]{5}){4}$"})
    AgentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#AgentArn", name: "AgentArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$"})
    AgentArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#AgentArnList", name: "AgentArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
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
    Ec2SecurityGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#Ec2SecurityGroupArn", name: "Ec2SecurityGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/sg-[a-f0-9]+$"})
    Ec2SecurityGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#Ec2SecurityGroupArnList", name: "Ec2SecurityGroupArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Ec2SubnetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#Ec2SubnetArn", name: "Ec2SubnetArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:subnet/subnet-[a-f0-9]+$"})
    EfsAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#EfsAccessPointArn", name: "EfsAccessPointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]+:[0-9]{12}:access-point/fsap-[0-9a-f]{8,40}$"})
    EfsFilesystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#EfsFilesystemArn", name: "EfsFilesystemArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]+:[0-9]{12}:file-system/fs-[0-9a-f]{8,40}$"})
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
    FsxFilesystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#FsxFilesystemArn", name: "FsxFilesystemArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]+:[0-9]{12}:file-system/fs-[0-9a-f]+$"})
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
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$"})
    IamRoleArnOrEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#IamRoleArnOrEmptyString", name: "IamRoleArnOrEmptyString", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/[a-zA-Z0-9+=,.@_/-]+|)$"})
    InputTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#InputTagList", name: "InputTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#InternalException", name: "InternalException", traits: {"smithy.api#error" => "server"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    ItemCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#ItemCount", name: "ItemCount")
    KerberosKeytabFile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.datasync#KerberosKeytabFile", name: "KerberosKeytabFile", traits: {"smithy.api#length" => {"min" => 0, "max" => 65536}})
    KerberosKrb5ConfFile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.datasync#KerberosKrb5ConfFile", name: "KerberosKrb5ConfFile", traits: {"smithy.api#length" => {"min" => 0, "max" => 131072}})
    KerberosPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#KerberosPrincipal", name: "KerberosPrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$"})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):kms:[a-z\\-0-9]+:[0-9]{12}:key/.*|)$"})
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
    LocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#LocationArn", name: "LocationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$"})
    LocationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#LocationFilter", name: "LocationFilter")
    LocationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#LocationFilterName", name: "LocationFilterName")
    LocationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#LocationFilters", name: "LocationFilters")
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#LocationList", name: "LocationList")
    LocationListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#LocationListEntry", name: "LocationListEntry")
    LocationUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#LocationUri", name: "LocationUri", traits: {"smithy.api#length" => {"min" => 0, "max" => 4360}, "smithy.api#pattern" => "^(efs|nfs|s3|smb|hdfs|fsx[a-z0-9-]+)://[a-zA-Z0-9.:/\\-]+$"})
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#LogGroupArn", name: "LogGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 562}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):logs:[a-z\\-0-9]+:[0-9]{12}:log-group:([^:\\*]*)(:\\*)?$"})
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
    ObjectMetadata = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ObjectMetadata", name: "ObjectMetadata")
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
    S3BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#S3BucketArn", name: "S3BucketArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 268}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):s3:[a-z\\-0-9]*:[0-9]{12}:accesspoint[/:][a-zA-Z0-9\\-.]{1,63}$|^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):s3-outposts:[a-z\\-0-9]+:[0-9]{12}:outpost[/:][a-zA-Z0-9\\-]{1,63}[/:]accesspoint[/:][a-zA-Z0-9\\-]{1,63}$|^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):s3:::[a-zA-Z0-9.\\-_]{1,255}$"})
    S3Config = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#S3Config", name: "S3Config")
    S3ManifestConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#S3ManifestConfig", name: "S3ManifestConfig")
    S3ObjectVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#S3ObjectVersionId", name: "S3ObjectVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^.+$"})
    S3StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#S3StorageClass", name: "S3StorageClass")
    S3Subdirectory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#S3Subdirectory", name: "S3Subdirectory", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$"})
    ScheduleDisabledBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ScheduleDisabledBy", name: "ScheduleDisabledBy")
    ScheduleDisabledReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ScheduleDisabledReason", name: "ScheduleDisabledReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[\\w\\s.,'?!:;\\/=|<>()-]*$"})
    ScheduleExpressionCron = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#ScheduleExpressionCron", name: "ScheduleExpressionCron", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\ \\_\\*\\?\\,\\|\\^\\-\\/\\#\\s\\(\\)\\+]*$"})
    ScheduleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#ScheduleStatus", name: "ScheduleStatus")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#SecretArn", name: "SecretArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z\\-0-9]+:[0-9]{12}:secret:.*|)$"})
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
    StorageVirtualMachineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#StorageVirtualMachineArn", name: "StorageVirtualMachineArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 162}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]+:[0-9]{12}:storage-virtual-machine/fs-[0-9a-f]+/svm-[0-9a-f]{17,}$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+=._:/-]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.datasync#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagListEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TagListEntry", name: "TagListEntry")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s+=._:@/-]+$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:(((agent|task|location)/(agent|task|loc)-[a-z0-9]{17}(/execution/exec-[a-f0-9]{17})?)|(system/storage-system-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(/job/discovery-job-[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})?))$"})
    TaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TaskArn", name: "TaskArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:task/task-[0-9a-f]{17}$"})
    TaskExecutionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#TaskExecutionArn", name: "TaskExecutionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:task/task-[0-9a-f]{17}/execution/exec-[0-9a-f]{17}$"})
    TaskExecutionFilesFailedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionFilesFailedDetail", name: "TaskExecutionFilesFailedDetail")
    TaskExecutionFilesListedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionFilesListedDetail", name: "TaskExecutionFilesListedDetail")
    TaskExecutionFoldersFailedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionFoldersFailedDetail", name: "TaskExecutionFoldersFailedDetail")
    TaskExecutionFoldersListedDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.datasync#TaskExecutionFoldersListedDetail", name: "TaskExecutionFoldersListedDetail")
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
    UpdatedEfsAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#UpdatedEfsAccessPointArn", name: "UpdatedEfsAccessPointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]+:[0-9]{12}:access-point/fsap-[0-9a-f]{8,40}$)|(^$)$"})
    UpdatedEfsIamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#UpdatedEfsIamRoleArn", name: "UpdatedEfsIamRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$)|(^$)$"})
    VerifyMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.datasync#VerifyMode", name: "VerifyMode")
    VpcEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#VpcEndpointId", name: "VpcEndpointId", traits: {"smithy.api#pattern" => "^vpce-[0-9a-f]{17}$"})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.datasync#long", name: "Long", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.datasync#string", name: "String")

    AgentArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "member"))
    AgentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentListEntry, name: "member"))
    AgentListEntry.add_member(:agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "AgentArn"))
    AgentListEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    AgentListEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "Status"))
    AgentListEntry.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "Platform"))
    AgentListEntry.type = Types::AgentListEntry
    AgentStatus.add_member(:online, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLINE", traits: {"smithy.api#enumValue" => "ONLINE"}))
    AgentStatus.add_member(:offline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFFLINE", traits: {"smithy.api#enumValue" => "OFFLINE"}))
    Atime.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Atime.add_member(:best_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_EFFORT", traits: {"smithy.api#enumValue" => "BEST_EFFORT"}))
    AzureAccessTier.add_member(:hot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOT", traits: {"smithy.api#enumValue" => "HOT"}))
    AzureAccessTier.add_member(:cool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COOL", traits: {"smithy.api#enumValue" => "COOL"}))
    AzureAccessTier.add_member(:archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVE", traits: {"smithy.api#enumValue" => "ARCHIVE"}))
    AzureBlobAuthenticationType.add_member(:sas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAS", traits: {"smithy.api#enumValue" => "SAS"}))
    AzureBlobAuthenticationType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AzureBlobSasConfiguration.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobSasToken, name: "Token", traits: {"smithy.api#required" => {}}))
    AzureBlobSasConfiguration.type = Types::AzureBlobSasConfiguration
    AzureBlobType.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    CancelTaskExecutionRequest.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "TaskExecutionArn", traits: {"smithy.api#required" => {}}))
    CancelTaskExecutionRequest.type = Types::CancelTaskExecutionRequest
    CancelTaskExecutionResponse.type = Types::CancelTaskExecutionResponse
    CmkSecretConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    CmkSecretConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    CmkSecretConfig.type = Types::CmkSecretConfig
    CreateAgentRequest.add_member(:activation_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationKey, name: "ActivationKey", traits: {"smithy.api#required" => {}}))
    CreateAgentRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "AgentName"))
    CreateAgentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateAgentRequest.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    CreateAgentRequest.add_member(:subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PLSubnetArnList, name: "SubnetArns"))
    CreateAgentRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PLSecurityGroupArnList, name: "SecurityGroupArns"))
    CreateAgentRequest.type = Types::CreateAgentRequest
    CreateAgentResponse.add_member(:agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "AgentArn"))
    CreateAgentResponse.type = Types::CreateAgentResponse
    CreateLocationAzureBlobRequest.add_member(:container_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobContainerUrl, name: "ContainerUrl", traits: {"smithy.api#required" => {}}))
    CreateLocationAzureBlobRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobAuthenticationType, name: "AuthenticationType", traits: {"smithy.api#required" => {}}))
    CreateLocationAzureBlobRequest.add_member(:sas_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobSasConfiguration, name: "SasConfiguration"))
    CreateLocationAzureBlobRequest.add_member(:blob_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobType, name: "BlobType"))
    CreateLocationAzureBlobRequest.add_member(:access_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureAccessTier, name: "AccessTier"))
    CreateLocationAzureBlobRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobSubdirectory, name: "Subdirectory"))
    CreateLocationAzureBlobRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    CreateLocationAzureBlobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationAzureBlobRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    CreateLocationAzureBlobRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    CreateLocationAzureBlobRequest.type = Types::CreateLocationAzureBlobRequest
    CreateLocationAzureBlobResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationAzureBlobResponse.type = Types::CreateLocationAzureBlobResponse
    CreateLocationEfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsSubdirectory, name: "Subdirectory"))
    CreateLocationEfsRequest.add_member(:efs_filesystem_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsFilesystemArn, name: "EfsFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationEfsRequest.add_member(:ec2_config, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Config, name: "Ec2Config", traits: {"smithy.api#required" => {}}))
    CreateLocationEfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationEfsRequest.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsAccessPointArn, name: "AccessPointArn"))
    CreateLocationEfsRequest.add_member(:file_system_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "FileSystemAccessRoleArn"))
    CreateLocationEfsRequest.add_member(:in_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsInTransitEncryption, name: "InTransitEncryption"))
    CreateLocationEfsRequest.type = Types::CreateLocationEfsRequest
    CreateLocationEfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationEfsResponse.type = Types::CreateLocationEfsResponse
    CreateLocationFsxLustreRequest.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxFilesystemArn, name: "FsxFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxLustreRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxLustreRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxLustreSubdirectory, name: "Subdirectory"))
    CreateLocationFsxLustreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationFsxLustreRequest.type = Types::CreateLocationFsxLustreRequest
    CreateLocationFsxLustreResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationFsxLustreResponse.type = Types::CreateLocationFsxLustreResponse
    CreateLocationFsxOntapRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOntapRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOntapRequest.add_member(:storage_virtual_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineArn, name: "StorageVirtualMachineArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOntapRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxOntapSubdirectory, name: "Subdirectory"))
    CreateLocationFsxOntapRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationFsxOntapRequest.type = Types::CreateLocationFsxOntapRequest
    CreateLocationFsxOntapResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationFsxOntapResponse.type = Types::CreateLocationFsxOntapResponse
    CreateLocationFsxOpenZfsRequest.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxFilesystemArn, name: "FsxFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOpenZfsRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOpenZfsRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxOpenZfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxOpenZfsSubdirectory, name: "Subdirectory"))
    CreateLocationFsxOpenZfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationFsxOpenZfsRequest.type = Types::CreateLocationFsxOpenZfsRequest
    CreateLocationFsxOpenZfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationFsxOpenZfsResponse.type = Types::CreateLocationFsxOpenZfsResponse
    CreateLocationFsxWindowsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxWindowsSubdirectory, name: "Subdirectory"))
    CreateLocationFsxWindowsRequest.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxFilesystemArn, name: "FsxFilesystemArn", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationFsxWindowsRequest.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User", traits: {"smithy.api#required" => {}}))
    CreateLocationFsxWindowsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbDomain, name: "Domain"))
    CreateLocationFsxWindowsRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbPassword, name: "Password"))
    CreateLocationFsxWindowsRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    CreateLocationFsxWindowsRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    CreateLocationFsxWindowsRequest.type = Types::CreateLocationFsxWindowsRequest
    CreateLocationFsxWindowsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationFsxWindowsResponse.type = Types::CreateLocationFsxWindowsResponse
    CreateLocationHdfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsSubdirectory, name: "Subdirectory"))
    CreateLocationHdfsRequest.add_member(:name_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsNameNodeList, name: "NameNodes", traits: {"smithy.api#required" => {}}))
    CreateLocationHdfsRequest.add_member(:block_size, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsBlockSize, name: "BlockSize"))
    CreateLocationHdfsRequest.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsReplicationFactor, name: "ReplicationFactor"))
    CreateLocationHdfsRequest.add_member(:kms_key_provider_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyProviderUri, name: "KmsKeyProviderUri"))
    CreateLocationHdfsRequest.add_member(:qop_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QopConfiguration, name: "QopConfiguration"))
    CreateLocationHdfsRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsAuthenticationType, name: "AuthenticationType", traits: {"smithy.api#required" => {}}))
    CreateLocationHdfsRequest.add_member(:simple_user, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsUser, name: "SimpleUser"))
    CreateLocationHdfsRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosPrincipal, name: "KerberosPrincipal"))
    CreateLocationHdfsRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKeytabFile, name: "KerberosKeytab"))
    CreateLocationHdfsRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKrb5ConfFile, name: "KerberosKrb5Conf"))
    CreateLocationHdfsRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns", traits: {"smithy.api#required" => {}}))
    CreateLocationHdfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationHdfsRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    CreateLocationHdfsRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    CreateLocationHdfsRequest.type = Types::CreateLocationHdfsRequest
    CreateLocationHdfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationHdfsResponse.type = Types::CreateLocationHdfsResponse
    CreateLocationNfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsSubdirectory, name: "Subdirectory", traits: {"smithy.api#required" => {}}))
    CreateLocationNfsRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerHostname, name: "ServerHostname", traits: {"smithy.api#required" => {}}))
    CreateLocationNfsRequest.add_member(:on_prem_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremConfig, name: "OnPremConfig", traits: {"smithy.api#required" => {}}))
    CreateLocationNfsRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsMountOptions, name: "MountOptions"))
    CreateLocationNfsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationNfsRequest.type = Types::CreateLocationNfsRequest
    CreateLocationNfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationNfsResponse.type = Types::CreateLocationNfsResponse
    CreateLocationObjectStorageRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerHostname, name: "ServerHostname", traits: {"smithy.api#required" => {}}))
    CreateLocationObjectStorageRequest.add_member(:server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageServerPort, name: "ServerPort"))
    CreateLocationObjectStorageRequest.add_member(:server_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageServerProtocol, name: "ServerProtocol"))
    CreateLocationObjectStorageRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Subdirectory, name: "Subdirectory"))
    CreateLocationObjectStorageRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageBucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    CreateLocationObjectStorageRequest.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageAccessKey, name: "AccessKey"))
    CreateLocationObjectStorageRequest.add_member(:secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageSecretKey, name: "SecretKey"))
    CreateLocationObjectStorageRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    CreateLocationObjectStorageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationObjectStorageRequest.add_member(:server_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageCertificate, name: "ServerCertificate"))
    CreateLocationObjectStorageRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    CreateLocationObjectStorageRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    CreateLocationObjectStorageRequest.type = Types::CreateLocationObjectStorageRequest
    CreateLocationObjectStorageResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationObjectStorageResponse.type = Types::CreateLocationObjectStorageResponse
    CreateLocationS3Request.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Subdirectory, name: "Subdirectory"))
    CreateLocationS3Request.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArn, name: "S3BucketArn", traits: {"smithy.api#required" => {}}))
    CreateLocationS3Request.add_member(:s3_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "S3StorageClass"))
    CreateLocationS3Request.add_member(:s3_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Config, name: "S3Config", traits: {"smithy.api#required" => {}}))
    CreateLocationS3Request.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    CreateLocationS3Request.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationS3Request.type = Types::CreateLocationS3Request
    CreateLocationS3Response.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationS3Response.type = Types::CreateLocationS3Response
    CreateLocationSmbRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbSubdirectory, name: "Subdirectory", traits: {"smithy.api#required" => {}}))
    CreateLocationSmbRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerHostname, name: "ServerHostname", traits: {"smithy.api#required" => {}}))
    CreateLocationSmbRequest.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User"))
    CreateLocationSmbRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbDomain, name: "Domain"))
    CreateLocationSmbRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbPassword, name: "Password"))
    CreateLocationSmbRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    CreateLocationSmbRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    CreateLocationSmbRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns", traits: {"smithy.api#required" => {}}))
    CreateLocationSmbRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbMountOptions, name: "MountOptions"))
    CreateLocationSmbRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateLocationSmbRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbAuthenticationType, name: "AuthenticationType"))
    CreateLocationSmbRequest.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpList, name: "DnsIpAddresses"))
    CreateLocationSmbRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosPrincipal, name: "KerberosPrincipal"))
    CreateLocationSmbRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKeytabFile, name: "KerberosKeytab"))
    CreateLocationSmbRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKrb5ConfFile, name: "KerberosKrb5Conf"))
    CreateLocationSmbRequest.type = Types::CreateLocationSmbRequest
    CreateLocationSmbResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    CreateLocationSmbResponse.type = Types::CreateLocationSmbResponse
    CreateTaskRequest.add_member(:source_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "SourceLocationArn", traits: {"smithy.api#required" => {}}))
    CreateTaskRequest.add_member(:destination_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "DestinationLocationArn", traits: {"smithy.api#required" => {}}))
    CreateTaskRequest.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "CloudWatchLogGroupArn"))
    CreateTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    CreateTaskRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options"))
    CreateTaskRequest.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Excludes"))
    CreateTaskRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSchedule, name: "Schedule"))
    CreateTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    CreateTaskRequest.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Includes"))
    CreateTaskRequest.add_member(:manifest_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestConfig, name: "ManifestConfig"))
    CreateTaskRequest.add_member(:task_report_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskReportConfig, name: "TaskReportConfig"))
    CreateTaskRequest.add_member(:task_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskMode, name: "TaskMode"))
    CreateTaskRequest.type = Types::CreateTaskRequest
    CreateTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    CreateTaskResponse.type = Types::CreateTaskResponse
    CustomSecretConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    CustomSecretConfig.add_member(:secret_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnOrEmptyString, name: "SecretAccessRoleArn"))
    CustomSecretConfig.type = Types::CustomSecretConfig
    DeleteAgentRequest.add_member(:agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "AgentArn", traits: {"smithy.api#required" => {}}))
    DeleteAgentRequest.type = Types::DeleteAgentRequest
    DeleteAgentResponse.type = Types::DeleteAgentResponse
    DeleteLocationRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DeleteLocationRequest.type = Types::DeleteLocationRequest
    DeleteLocationResponse.type = Types::DeleteLocationResponse
    DeleteTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn", traits: {"smithy.api#required" => {}}))
    DeleteTaskRequest.type = Types::DeleteTaskRequest
    DeleteTaskResponse.type = Types::DeleteTaskResponse
    DescribeAgentRequest.add_member(:agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "AgentArn", traits: {"smithy.api#required" => {}}))
    DescribeAgentRequest.type = Types::DescribeAgentRequest
    DescribeAgentResponse.add_member(:agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "AgentArn"))
    DescribeAgentResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    DescribeAgentResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, name: "Status"))
    DescribeAgentResponse.add_member(:last_connection_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LastConnectionTime"))
    DescribeAgentResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeAgentResponse.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "EndpointType"))
    DescribeAgentResponse.add_member(:private_link_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateLinkConfig, name: "PrivateLinkConfig"))
    DescribeAgentResponse.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "Platform"))
    DescribeAgentResponse.type = Types::DescribeAgentResponse
    DescribeLocationAzureBlobRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationAzureBlobRequest.type = Types::DescribeLocationAzureBlobRequest
    DescribeLocationAzureBlobResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationAzureBlobResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationAzureBlobResponse.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobAuthenticationType, name: "AuthenticationType"))
    DescribeLocationAzureBlobResponse.add_member(:blob_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobType, name: "BlobType"))
    DescribeLocationAzureBlobResponse.add_member(:access_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureAccessTier, name: "AccessTier"))
    DescribeLocationAzureBlobResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    DescribeLocationAzureBlobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationAzureBlobResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecretConfig, name: "ManagedSecretConfig"))
    DescribeLocationAzureBlobResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    DescribeLocationAzureBlobResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    DescribeLocationAzureBlobResponse.type = Types::DescribeLocationAzureBlobResponse
    DescribeLocationEfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationEfsRequest.type = Types::DescribeLocationEfsRequest
    DescribeLocationEfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationEfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationEfsResponse.add_member(:ec2_config, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Config, name: "Ec2Config"))
    DescribeLocationEfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationEfsResponse.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsAccessPointArn, name: "AccessPointArn"))
    DescribeLocationEfsResponse.add_member(:file_system_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "FileSystemAccessRoleArn"))
    DescribeLocationEfsResponse.add_member(:in_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsInTransitEncryption, name: "InTransitEncryption"))
    DescribeLocationEfsResponse.type = Types::DescribeLocationEfsResponse
    DescribeLocationFsxLustreRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxLustreRequest.type = Types::DescribeLocationFsxLustreRequest
    DescribeLocationFsxLustreResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationFsxLustreResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationFsxLustreResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns"))
    DescribeLocationFsxLustreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationFsxLustreResponse.type = Types::DescribeLocationFsxLustreResponse
    DescribeLocationFsxOntapRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxOntapRequest.type = Types::DescribeLocationFsxOntapRequest
    DescribeLocationFsxOntapResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationFsxOntapResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationFsxOntapResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationFsxOntapResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocol, name: "Protocol"))
    DescribeLocationFsxOntapResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns"))
    DescribeLocationFsxOntapResponse.add_member(:storage_virtual_machine_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageVirtualMachineArn, name: "StorageVirtualMachineArn"))
    DescribeLocationFsxOntapResponse.add_member(:fsx_filesystem_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxFilesystemArn, name: "FsxFilesystemArn"))
    DescribeLocationFsxOntapResponse.type = Types::DescribeLocationFsxOntapResponse
    DescribeLocationFsxOpenZfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxOpenZfsRequest.type = Types::DescribeLocationFsxOpenZfsRequest
    DescribeLocationFsxOpenZfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationFsxOpenZfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationFsxOpenZfsResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns"))
    DescribeLocationFsxOpenZfsResponse.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocol, name: "Protocol"))
    DescribeLocationFsxOpenZfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationFsxOpenZfsResponse.type = Types::DescribeLocationFsxOpenZfsResponse
    DescribeLocationFsxWindowsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationFsxWindowsRequest.type = Types::DescribeLocationFsxWindowsRequest
    DescribeLocationFsxWindowsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationFsxWindowsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationFsxWindowsResponse.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns"))
    DescribeLocationFsxWindowsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationFsxWindowsResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User"))
    DescribeLocationFsxWindowsResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbDomain, name: "Domain"))
    DescribeLocationFsxWindowsResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecretConfig, name: "ManagedSecretConfig"))
    DescribeLocationFsxWindowsResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    DescribeLocationFsxWindowsResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    DescribeLocationFsxWindowsResponse.type = Types::DescribeLocationFsxWindowsResponse
    DescribeLocationHdfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationHdfsRequest.type = Types::DescribeLocationHdfsRequest
    DescribeLocationHdfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationHdfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationHdfsResponse.add_member(:name_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsNameNodeList, name: "NameNodes"))
    DescribeLocationHdfsResponse.add_member(:block_size, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsBlockSize, name: "BlockSize"))
    DescribeLocationHdfsResponse.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsReplicationFactor, name: "ReplicationFactor"))
    DescribeLocationHdfsResponse.add_member(:kms_key_provider_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyProviderUri, name: "KmsKeyProviderUri"))
    DescribeLocationHdfsResponse.add_member(:qop_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QopConfiguration, name: "QopConfiguration"))
    DescribeLocationHdfsResponse.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsAuthenticationType, name: "AuthenticationType"))
    DescribeLocationHdfsResponse.add_member(:simple_user, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsUser, name: "SimpleUser"))
    DescribeLocationHdfsResponse.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosPrincipal, name: "KerberosPrincipal"))
    DescribeLocationHdfsResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    DescribeLocationHdfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationHdfsResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecretConfig, name: "ManagedSecretConfig"))
    DescribeLocationHdfsResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    DescribeLocationHdfsResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    DescribeLocationHdfsResponse.type = Types::DescribeLocationHdfsResponse
    DescribeLocationNfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationNfsRequest.type = Types::DescribeLocationNfsRequest
    DescribeLocationNfsResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationNfsResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationNfsResponse.add_member(:on_prem_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremConfig, name: "OnPremConfig"))
    DescribeLocationNfsResponse.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsMountOptions, name: "MountOptions"))
    DescribeLocationNfsResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationNfsResponse.type = Types::DescribeLocationNfsResponse
    DescribeLocationObjectStorageRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationObjectStorageRequest.type = Types::DescribeLocationObjectStorageRequest
    DescribeLocationObjectStorageResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationObjectStorageResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationObjectStorageResponse.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageAccessKey, name: "AccessKey"))
    DescribeLocationObjectStorageResponse.add_member(:server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageServerPort, name: "ServerPort"))
    DescribeLocationObjectStorageResponse.add_member(:server_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageServerProtocol, name: "ServerProtocol"))
    DescribeLocationObjectStorageResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    DescribeLocationObjectStorageResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationObjectStorageResponse.add_member(:server_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageCertificate, name: "ServerCertificate"))
    DescribeLocationObjectStorageResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecretConfig, name: "ManagedSecretConfig"))
    DescribeLocationObjectStorageResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    DescribeLocationObjectStorageResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    DescribeLocationObjectStorageResponse.type = Types::DescribeLocationObjectStorageResponse
    DescribeLocationS3Request.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationS3Request.type = Types::DescribeLocationS3Request
    DescribeLocationS3Response.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationS3Response.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationS3Response.add_member(:s3_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "S3StorageClass"))
    DescribeLocationS3Response.add_member(:s3_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Config, name: "S3Config"))
    DescribeLocationS3Response.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    DescribeLocationS3Response.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationS3Response.type = Types::DescribeLocationS3Response
    DescribeLocationSmbRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    DescribeLocationSmbRequest.type = Types::DescribeLocationSmbRequest
    DescribeLocationSmbResponse.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    DescribeLocationSmbResponse.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    DescribeLocationSmbResponse.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    DescribeLocationSmbResponse.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User"))
    DescribeLocationSmbResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbDomain, name: "Domain"))
    DescribeLocationSmbResponse.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbMountOptions, name: "MountOptions"))
    DescribeLocationSmbResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeLocationSmbResponse.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpList, name: "DnsIpAddresses"))
    DescribeLocationSmbResponse.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosPrincipal, name: "KerberosPrincipal"))
    DescribeLocationSmbResponse.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbAuthenticationType, name: "AuthenticationType"))
    DescribeLocationSmbResponse.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecretConfig, name: "ManagedSecretConfig"))
    DescribeLocationSmbResponse.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    DescribeLocationSmbResponse.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    DescribeLocationSmbResponse.type = Types::DescribeLocationSmbResponse
    DescribeTaskExecutionRequest.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "TaskExecutionArn", traits: {"smithy.api#required" => {}}))
    DescribeTaskExecutionRequest.type = Types::DescribeTaskExecutionRequest
    DescribeTaskExecutionResponse.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "TaskExecutionArn"))
    DescribeTaskExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "Status"))
    DescribeTaskExecutionResponse.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options"))
    DescribeTaskExecutionResponse.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Excludes"))
    DescribeTaskExecutionResponse.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Includes"))
    DescribeTaskExecutionResponse.add_member(:manifest_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestConfig, name: "ManifestConfig"))
    DescribeTaskExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "StartTime"))
    DescribeTaskExecutionResponse.add_member(:estimated_files_to_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedFilesToTransfer", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:estimated_bytes_to_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedBytesToTransfer", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FilesTransferred", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:bytes_written, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesWritten", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:bytes_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesTransferred", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:bytes_compressed, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "BytesCompressed", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionResultDetail, name: "Result"))
    DescribeTaskExecutionResponse.add_member(:task_report_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskReportConfig, name: "TaskReportConfig"))
    DescribeTaskExecutionResponse.add_member(:files_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FilesDeleted", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FilesSkipped", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FilesVerified", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:report_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportResult, name: "ReportResult"))
    DescribeTaskExecutionResponse.add_member(:estimated_files_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedFilesToDelete", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:task_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskMode, name: "TaskMode"))
    DescribeTaskExecutionResponse.add_member(:files_prepared, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FilesPrepared", traits: {"smithy.api#default" => 0}))
    DescribeTaskExecutionResponse.add_member(:files_listed, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionFilesListedDetail, name: "FilesListed"))
    DescribeTaskExecutionResponse.add_member(:files_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionFilesFailedDetail, name: "FilesFailed"))
    DescribeTaskExecutionResponse.add_member(:estimated_folders_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "EstimatedFoldersToDelete"))
    DescribeTaskExecutionResponse.add_member(:estimated_folders_to_transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "EstimatedFoldersToTransfer"))
    DescribeTaskExecutionResponse.add_member(:folders_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "FoldersSkipped"))
    DescribeTaskExecutionResponse.add_member(:folders_prepared, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "FoldersPrepared"))
    DescribeTaskExecutionResponse.add_member(:folders_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "FoldersTransferred"))
    DescribeTaskExecutionResponse.add_member(:folders_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "FoldersVerified"))
    DescribeTaskExecutionResponse.add_member(:folders_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "FoldersDeleted"))
    DescribeTaskExecutionResponse.add_member(:folders_listed, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionFoldersListedDetail, name: "FoldersListed"))
    DescribeTaskExecutionResponse.add_member(:folders_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionFoldersFailedDetail, name: "FoldersFailed"))
    DescribeTaskExecutionResponse.add_member(:launch_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "LaunchTime"))
    DescribeTaskExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "EndTime"))
    DescribeTaskExecutionResponse.type = Types::DescribeTaskExecutionResponse
    DescribeTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn", traits: {"smithy.api#required" => {}}))
    DescribeTaskRequest.type = Types::DescribeTaskRequest
    DescribeTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    DescribeTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "Status"))
    DescribeTaskResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    DescribeTaskResponse.add_member(:current_task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "CurrentTaskExecutionArn"))
    DescribeTaskResponse.add_member(:source_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "SourceLocationArn"))
    DescribeTaskResponse.add_member(:destination_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "DestinationLocationArn"))
    DescribeTaskResponse.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "CloudWatchLogGroupArn"))
    DescribeTaskResponse.add_member(:source_network_interface_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceNetworkInterfaceArns, name: "SourceNetworkInterfaceArns"))
    DescribeTaskResponse.add_member(:destination_network_interface_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationNetworkInterfaceArns, name: "DestinationNetworkInterfaceArns"))
    DescribeTaskResponse.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options"))
    DescribeTaskResponse.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Excludes"))
    DescribeTaskResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSchedule, name: "Schedule"))
    DescribeTaskResponse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    DescribeTaskResponse.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetail"))
    DescribeTaskResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "CreationTime"))
    DescribeTaskResponse.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Includes"))
    DescribeTaskResponse.add_member(:manifest_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestConfig, name: "ManifestConfig"))
    DescribeTaskResponse.add_member(:task_report_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskReportConfig, name: "TaskReportConfig"))
    DescribeTaskResponse.add_member(:schedule_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskScheduleDetails, name: "ScheduleDetails"))
    DescribeTaskResponse.add_member(:task_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskMode, name: "TaskMode"))
    DescribeTaskResponse.type = Types::DescribeTaskResponse
    DestinationNetworkInterfaceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceArn, name: "member"))
    DnsIpList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerIpAddress, name: "member"))
    Ec2Config.add_member(:subnet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SubnetArn, name: "SubnetArn", traits: {"smithy.api#required" => {}}))
    Ec2Config.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArnList, name: "SecurityGroupArns", traits: {"smithy.api#required" => {}}))
    Ec2Config.type = Types::Ec2Config
    Ec2SecurityGroupArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArn, name: "member"))
    EfsInTransitEncryption.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EfsInTransitEncryption.add_member(:tls1_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TLS1_2", traits: {"smithy.api#enumValue" => "TLS1_2"}))
    EndpointType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EndpointType.add_member(:private_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE_LINK", traits: {"smithy.api#enumValue" => "PRIVATE_LINK"}))
    EndpointType.add_member(:fips, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIPS", traits: {"smithy.api#enumValue" => "FIPS"}))
    EndpointType.add_member(:fips_private_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIPS_PRIVATE_LINK", traits: {"smithy.api#enumValue" => "FIPS_PRIVATE_LINK"}))
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRule, name: "member"))
    FilterRule.add_member(:filter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterType, name: "FilterType"))
    FilterRule.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "Value"))
    FilterRule.type = Types::FilterRule
    FilterType.add_member(:simple_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMPLE_PATTERN", traits: {"smithy.api#enumValue" => "SIMPLE_PATTERN"}))
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterAttributeValue, name: "member"))
    FsxProtocol.add_member(:nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocolNfs, name: "NFS"))
    FsxProtocol.add_member(:smb, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocolSmb, name: "SMB"))
    FsxProtocol.type = Types::FsxProtocol
    FsxProtocolNfs.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsMountOptions, name: "MountOptions"))
    FsxProtocolNfs.type = Types::FsxProtocolNfs
    FsxProtocolSmb.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbDomain, name: "Domain"))
    FsxProtocolSmb.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbMountOptions, name: "MountOptions"))
    FsxProtocolSmb.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbPassword, name: "Password", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    FsxProtocolSmb.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User", traits: {"smithy.api#required" => {}}))
    FsxProtocolSmb.add_member(:managed_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecretConfig, name: "ManagedSecretConfig"))
    FsxProtocolSmb.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    FsxProtocolSmb.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    FsxProtocolSmb.type = Types::FsxProtocolSmb
    FsxUpdateProtocol.add_member(:nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocolNfs, name: "NFS"))
    FsxUpdateProtocol.add_member(:smb, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxUpdateProtocolSmb, name: "SMB"))
    FsxUpdateProtocol.type = Types::FsxUpdateProtocol
    FsxUpdateProtocolSmb.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSmbDomain, name: "Domain"))
    FsxUpdateProtocolSmb.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbMountOptions, name: "MountOptions"))
    FsxUpdateProtocolSmb.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbPassword, name: "Password"))
    FsxUpdateProtocolSmb.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User"))
    FsxUpdateProtocolSmb.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    FsxUpdateProtocolSmb.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    FsxUpdateProtocolSmb.type = Types::FsxUpdateProtocolSmb
    Gid.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Gid.add_member(:int_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT_VALUE", traits: {"smithy.api#enumValue" => "INT_VALUE"}))
    Gid.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    Gid.add_member(:both, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTH", traits: {"smithy.api#enumValue" => "BOTH"}))
    HdfsAuthenticationType.add_member(:simple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMPLE", traits: {"smithy.api#enumValue" => "SIMPLE"}))
    HdfsAuthenticationType.add_member(:kerberos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KERBEROS", traits: {"smithy.api#enumValue" => "KERBEROS"}))
    HdfsDataTransferProtection.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    HdfsDataTransferProtection.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHENTICATION", traits: {"smithy.api#enumValue" => "AUTHENTICATION"}))
    HdfsDataTransferProtection.add_member(:integrity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRITY", traits: {"smithy.api#enumValue" => "INTEGRITY"}))
    HdfsDataTransferProtection.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVACY", traits: {"smithy.api#enumValue" => "PRIVACY"}))
    HdfsNameNode.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsServerHostname, name: "Hostname", traits: {"smithy.api#required" => {}}))
    HdfsNameNode.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsServerPort, name: "Port", traits: {"smithy.api#required" => {}}))
    HdfsNameNode.type = Types::HdfsNameNode
    HdfsNameNodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsNameNode, name: "member"))
    HdfsRpcProtection.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    HdfsRpcProtection.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHENTICATION", traits: {"smithy.api#enumValue" => "AUTHENTICATION"}))
    HdfsRpcProtection.add_member(:integrity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRITY", traits: {"smithy.api#enumValue" => "INTEGRITY"}))
    HdfsRpcProtection.add_member(:privacy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVACY", traits: {"smithy.api#enumValue" => "PRIVACY"}))
    InputTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListEntry, name: "member"))
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InternalException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorCode"))
    InternalException.type = Types::InternalException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidRequestException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "errorCode"))
    InvalidRequestException.add_member(:datasync_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "datasyncErrorCode"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAgentsRequest.type = Types::ListAgentsRequest
    ListAgentsResponse.add_member(:agents, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentList, name: "Agents"))
    ListAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAgentsResponse.type = Types::ListAgentsResponse
    ListLocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListLocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLocationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationFilters, name: "Filters"))
    ListLocationsRequest.type = Types::ListLocationsRequest
    ListLocationsResponse.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Locations"))
    ListLocationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLocationsResponse.type = Types::ListLocationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputTagList, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskExecutionsRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    ListTaskExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTaskExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTaskExecutionsRequest.type = Types::ListTaskExecutionsRequest
    ListTaskExecutionsResponse.add_member(:task_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionList, name: "TaskExecutions"))
    ListTaskExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTaskExecutionsResponse.type = Types::ListTaskExecutionsResponse
    ListTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilters, name: "Filters"))
    ListTasksRequest.type = Types::ListTasksRequest
    ListTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "Tasks"))
    ListTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTasksResponse.type = Types::ListTasksResponse
    LocationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    LocationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    LocationFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator", traits: {"smithy.api#required" => {}}))
    LocationFilter.type = Types::LocationFilter
    LocationFilterName.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocationUri", traits: {"smithy.api#enumValue" => "LocationUri"}))
    LocationFilterName.add_member(:location_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocationType", traits: {"smithy.api#enumValue" => "LocationType"}))
    LocationFilterName.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreationTime", traits: {"smithy.api#enumValue" => "CreationTime"}))
    LocationFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationFilter, name: "member"))
    LocationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationListEntry, name: "member"))
    LocationListEntry.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn"))
    LocationListEntry.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUri, name: "LocationUri"))
    LocationListEntry.type = Types::LocationListEntry
    LogLevel.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    LogLevel.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    LogLevel.add_member(:transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER", traits: {"smithy.api#enumValue" => "TRANSFER"}))
    ManagedSecretConfig.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    ManagedSecretConfig.type = Types::ManagedSecretConfig
    ManifestAction.add_member(:transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER", traits: {"smithy.api#enumValue" => "TRANSFER"}))
    ManifestConfig.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestAction, name: "Action"))
    ManifestConfig.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestFormat, name: "Format"))
    ManifestConfig.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceManifestConfig, name: "Source"))
    ManifestConfig.type = Types::ManifestConfig
    ManifestFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    Mtime.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Mtime.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    NfsMountOptions.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsVersion, name: "Version"))
    NfsMountOptions.type = Types::NfsMountOptions
    NfsVersion.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    NfsVersion.add_member(:nfs3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS3", traits: {"smithy.api#enumValue" => "NFS3"}))
    NfsVersion.add_member(:nfs4_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS4_0", traits: {"smithy.api#enumValue" => "NFS4_0"}))
    NfsVersion.add_member(:nfs4_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS4_1", traits: {"smithy.api#enumValue" => "NFS4_1"}))
    NfsVersion.add_member(:nfs4_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NFS4_2", traits: {"smithy.api#enumValue" => "NFS4_2"}))
    ObjectMetadata.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    ObjectMetadata.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ObjectStorageServerProtocol.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    ObjectStorageServerProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ObjectTags.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    ObjectTags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ObjectVersionIds.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    ObjectVersionIds.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    OnPremConfig.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns", traits: {"smithy.api#required" => {}}))
    OnPremConfig.type = Types::OnPremConfig
    Operator.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "Equals"}))
    Operator.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NotEquals"}))
    Operator.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "In"}))
    Operator.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LE", traits: {"smithy.api#enumValue" => "LessThanOrEqual"}))
    Operator.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LessThan"}))
    Operator.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GreaterThanOrEqual"}))
    Operator.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    Operator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "Contains"}))
    Operator.add_member(:not_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NotContains"}))
    Operator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BeginsWith"}))
    Options.add_member(:verify_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: VerifyMode, name: "VerifyMode"))
    Options.add_member(:overwrite_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: OverwriteMode, name: "OverwriteMode"))
    Options.add_member(:atime, ::Smithy::Schema::Shapes::MemberShape.new(target: Atime, name: "Atime"))
    Options.add_member(:mtime, ::Smithy::Schema::Shapes::MemberShape.new(target: Mtime, name: "Mtime"))
    Options.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: Uid, name: "Uid"))
    Options.add_member(:gid, ::Smithy::Schema::Shapes::MemberShape.new(target: Gid, name: "Gid"))
    Options.add_member(:preserve_deleted_files, ::Smithy::Schema::Shapes::MemberShape.new(target: PreserveDeletedFiles, name: "PreserveDeletedFiles"))
    Options.add_member(:preserve_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: PreserveDevices, name: "PreserveDevices"))
    Options.add_member(:posix_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixPermissions, name: "PosixPermissions"))
    Options.add_member(:bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesPerSecond, name: "BytesPerSecond"))
    Options.add_member(:task_queueing, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskQueueing, name: "TaskQueueing"))
    Options.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLevel, name: "LogLevel"))
    Options.add_member(:transfer_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TransferMode, name: "TransferMode"))
    Options.add_member(:security_descriptor_copy_flags, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbSecurityDescriptorCopyFlags, name: "SecurityDescriptorCopyFlags"))
    Options.add_member(:object_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTags, name: "ObjectTags"))
    Options.add_member(:object_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectMetadata, name: "ObjectMetadata"))
    Options.type = Types::Options
    OutputTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagListEntry, name: "member"))
    OverwriteMode.add_member(:always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS", traits: {"smithy.api#enumValue" => "ALWAYS"}))
    OverwriteMode.add_member(:never, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEVER", traits: {"smithy.api#enumValue" => "NEVER"}))
    PLSecurityGroupArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SecurityGroupArn, name: "member"))
    PLSubnetArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2SubnetArn, name: "member"))
    PhaseStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    PhaseStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    PhaseStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    Platform.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentVersion, name: "Version"))
    Platform.type = Types::Platform
    PosixPermissions.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PosixPermissions.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    PreserveDeletedFiles.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    PreserveDeletedFiles.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    PreserveDevices.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PreserveDevices.add_member(:preserve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRESERVE", traits: {"smithy.api#enumValue" => "PRESERVE"}))
    PrivateLinkConfig.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointId, name: "VpcEndpointId"))
    PrivateLinkConfig.add_member(:private_link_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "PrivateLinkEndpoint"))
    PrivateLinkConfig.add_member(:subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PLSubnetArnList, name: "SubnetArns"))
    PrivateLinkConfig.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PLSecurityGroupArnList, name: "SecurityGroupArns"))
    PrivateLinkConfig.type = Types::PrivateLinkConfig
    QopConfiguration.add_member(:rpc_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsRpcProtection, name: "RpcProtection"))
    QopConfiguration.add_member(:data_transfer_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsDataTransferProtection, name: "DataTransferProtection"))
    QopConfiguration.type = Types::QopConfiguration
    ReportDestination.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestinationS3, name: "S3"))
    ReportDestination.type = Types::ReportDestination
    ReportDestinationS3.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Subdirectory, name: "Subdirectory"))
    ReportDestinationS3.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArn, name: "S3BucketArn", traits: {"smithy.api#required" => {}}))
    ReportDestinationS3.add_member(:bucket_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    ReportDestinationS3.type = Types::ReportDestinationS3
    ReportLevel.add_member(:errors_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERRORS_ONLY", traits: {"smithy.api#enumValue" => "ERRORS_ONLY"}))
    ReportLevel.add_member(:successes_and_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSES_AND_ERRORS", traits: {"smithy.api#enumValue" => "SUCCESSES_AND_ERRORS"}))
    ReportOutputType.add_member(:summary_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUMMARY_ONLY", traits: {"smithy.api#enumValue" => "SUMMARY_ONLY"}))
    ReportOutputType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ReportOverride.add_member(:report_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportLevel, name: "ReportLevel"))
    ReportOverride.type = Types::ReportOverride
    ReportOverrides.add_member(:transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOverride, name: "Transferred"))
    ReportOverrides.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOverride, name: "Verified"))
    ReportOverrides.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOverride, name: "Deleted"))
    ReportOverrides.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOverride, name: "Skipped"))
    ReportOverrides.type = Types::ReportOverrides
    ReportResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseStatus, name: "Status"))
    ReportResult.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ReportResult.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetail"))
    ReportResult.type = Types::ReportResult
    S3Config.add_member(:bucket_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    S3Config.type = Types::S3Config
    S3ManifestConfig.add_member(:manifest_object_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Subdirectory, name: "ManifestObjectPath", traits: {"smithy.api#required" => {}}))
    S3ManifestConfig.add_member(:bucket_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "BucketAccessRoleArn", traits: {"smithy.api#required" => {}}))
    S3ManifestConfig.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArn, name: "S3BucketArn", traits: {"smithy.api#required" => {}}))
    S3ManifestConfig.add_member(:manifest_object_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersionId, name: "ManifestObjectVersionId"))
    S3ManifestConfig.type = Types::S3ManifestConfig
    S3StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3StorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    S3StorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    S3StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    S3StorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    S3StorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    S3StorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPOSTS", traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    S3StorageClass.add_member(:glacier_instant_retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_INSTANT_RETRIEVAL", traits: {"smithy.api#enumValue" => "GLACIER_INSTANT_RETRIEVAL"}))
    ScheduleDisabledBy.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ScheduleDisabledBy.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    ScheduleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ScheduleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SmbAuthenticationType.add_member(:ntlm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NTLM", traits: {"smithy.api#enumValue" => "NTLM"}))
    SmbAuthenticationType.add_member(:kerberos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KERBEROS", traits: {"smithy.api#enumValue" => "KERBEROS"}))
    SmbMountOptions.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbVersion, name: "Version"))
    SmbMountOptions.type = Types::SmbMountOptions
    SmbSecurityDescriptorCopyFlags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    SmbSecurityDescriptorCopyFlags.add_member(:owner_dacl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER_DACL", traits: {"smithy.api#enumValue" => "OWNER_DACL"}))
    SmbSecurityDescriptorCopyFlags.add_member(:owner_dacl_sacl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER_DACL_SACL", traits: {"smithy.api#enumValue" => "OWNER_DACL_SACL"}))
    SmbVersion.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    SmbVersion.add_member(:smb2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMB2", traits: {"smithy.api#enumValue" => "SMB2"}))
    SmbVersion.add_member(:smb3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMB3", traits: {"smithy.api#enumValue" => "SMB3"}))
    SmbVersion.add_member(:smb1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMB1", traits: {"smithy.api#enumValue" => "SMB1"}))
    SmbVersion.add_member(:smb2_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMB2_0", traits: {"smithy.api#enumValue" => "SMB2_0"}))
    SourceManifestConfig.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ManifestConfig, name: "S3", traits: {"smithy.api#required" => {}}))
    SourceManifestConfig.type = Types::SourceManifestConfig
    SourceNetworkInterfaceArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceArn, name: "member"))
    StartTaskExecutionRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn", traits: {"smithy.api#required" => {}}))
    StartTaskExecutionRequest.add_member(:override_options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "OverrideOptions"))
    StartTaskExecutionRequest.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Includes"))
    StartTaskExecutionRequest.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Excludes"))
    StartTaskExecutionRequest.add_member(:manifest_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestConfig, name: "ManifestConfig"))
    StartTaskExecutionRequest.add_member(:task_report_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskReportConfig, name: "TaskReportConfig"))
    StartTaskExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags"))
    StartTaskExecutionRequest.type = Types::StartTaskExecutionRequest
    StartTaskExecutionResponse.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "TaskExecutionArn"))
    StartTaskExecutionResponse.type = Types::StartTaskExecutionResponse
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagListEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    TagListEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    TagListEntry.type = Types::TagListEntry
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: InputTagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskExecutionFilesFailedDetail.add_member(:prepare, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Prepare", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.add_member(:transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Transfer", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.add_member(:verify, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Verify", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Delete", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesFailedDetail.type = Types::TaskExecutionFilesFailedDetail
    TaskExecutionFilesListedDetail.add_member(:at_source, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AtSource", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesListedDetail.add_member(:at_destination_for_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AtDestinationForDelete", traits: {"smithy.api#default" => 0}))
    TaskExecutionFilesListedDetail.type = Types::TaskExecutionFilesListedDetail
    TaskExecutionFoldersFailedDetail.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "List", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersFailedDetail.add_member(:prepare, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Prepare", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersFailedDetail.add_member(:transfer, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Transfer", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersFailedDetail.add_member(:verify, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Verify", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersFailedDetail.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Delete", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersFailedDetail.type = Types::TaskExecutionFoldersFailedDetail
    TaskExecutionFoldersListedDetail.add_member(:at_source, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AtSource", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersListedDetail.add_member(:at_destination_for_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "AtDestinationForDelete", traits: {"smithy.api#default" => 0}))
    TaskExecutionFoldersListedDetail.type = Types::TaskExecutionFoldersListedDetail
    TaskExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionListEntry, name: "member"))
    TaskExecutionListEntry.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "TaskExecutionArn"))
    TaskExecutionListEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "Status"))
    TaskExecutionListEntry.add_member(:task_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskMode, name: "TaskMode"))
    TaskExecutionListEntry.type = Types::TaskExecutionListEntry
    TaskExecutionResultDetail.add_member(:prepare_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "PrepareDuration"))
    TaskExecutionResultDetail.add_member(:prepare_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseStatus, name: "PrepareStatus"))
    TaskExecutionResultDetail.add_member(:total_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "TotalDuration"))
    TaskExecutionResultDetail.add_member(:transfer_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "TransferDuration"))
    TaskExecutionResultDetail.add_member(:transfer_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseStatus, name: "TransferStatus"))
    TaskExecutionResultDetail.add_member(:verify_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "VerifyDuration"))
    TaskExecutionResultDetail.add_member(:verify_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseStatus, name: "VerifyStatus"))
    TaskExecutionResultDetail.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    TaskExecutionResultDetail.add_member(:error_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorDetail"))
    TaskExecutionResultDetail.type = Types::TaskExecutionResultDetail
    TaskExecutionStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    TaskExecutionStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    TaskExecutionStatus.add_member(:launching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCHING", traits: {"smithy.api#enumValue" => "LAUNCHING"}))
    TaskExecutionStatus.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREPARING", traits: {"smithy.api#enumValue" => "PREPARING"}))
    TaskExecutionStatus.add_member(:transferring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFERRING", traits: {"smithy.api#enumValue" => "TRANSFERRING"}))
    TaskExecutionStatus.add_member(:verifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFYING", traits: {"smithy.api#enumValue" => "VERIFYING"}))
    TaskExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    TaskExecutionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TaskFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    TaskFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    TaskFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: Operator, name: "Operator", traits: {"smithy.api#required" => {}}))
    TaskFilter.type = Types::TaskFilter
    TaskFilterName.add_member(:location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocationId", traits: {"smithy.api#enumValue" => "LocationId"}))
    TaskFilterName.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreationTime", traits: {"smithy.api#enumValue" => "CreationTime"}))
    TaskFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilter, name: "member"))
    TaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskListEntry, name: "member"))
    TaskListEntry.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    TaskListEntry.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "Status"))
    TaskListEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    TaskListEntry.add_member(:task_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskMode, name: "TaskMode"))
    TaskListEntry.type = Types::TaskListEntry
    TaskMode.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    TaskMode.add_member(:enhanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENHANCED", traits: {"smithy.api#enumValue" => "ENHANCED"}))
    TaskQueueing.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TaskQueueing.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TaskReportConfig.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "Destination"))
    TaskReportConfig.add_member(:output_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOutputType, name: "OutputType"))
    TaskReportConfig.add_member(:report_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportLevel, name: "ReportLevel"))
    TaskReportConfig.add_member(:object_version_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionIds, name: "ObjectVersionIds"))
    TaskReportConfig.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOverrides, name: "Overrides"))
    TaskReportConfig.type = Types::TaskReportConfig
    TaskSchedule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpressionCron, name: "ScheduleExpression", traits: {"smithy.api#required" => {}}))
    TaskSchedule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleStatus, name: "Status"))
    TaskSchedule.type = Types::TaskSchedule
    TaskScheduleDetails.add_member(:status_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "StatusUpdateTime"))
    TaskScheduleDetails.add_member(:disabled_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDisabledReason, name: "DisabledReason"))
    TaskScheduleDetails.add_member(:disabled_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDisabledBy, name: "DisabledBy"))
    TaskScheduleDetails.type = Types::TaskScheduleDetails
    TaskStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TaskStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TaskStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    TaskStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    TaskStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    TransferMode.add_member(:changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGED", traits: {"smithy.api#enumValue" => "CHANGED"}))
    TransferMode.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    Uid.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Uid.add_member(:int_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT_VALUE", traits: {"smithy.api#enumValue" => "INT_VALUE"}))
    Uid.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    Uid.add_member(:both, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTH", traits: {"smithy.api#enumValue" => "BOTH"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "Keys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAgentRequest.add_member(:agent_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArn, name: "AgentArn", traits: {"smithy.api#required" => {}}))
    UpdateAgentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    UpdateAgentRequest.type = Types::UpdateAgentRequest
    UpdateAgentResponse.type = Types::UpdateAgentResponse
    UpdateLocationAzureBlobRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationAzureBlobRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobSubdirectory, name: "Subdirectory"))
    UpdateLocationAzureBlobRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobAuthenticationType, name: "AuthenticationType"))
    UpdateLocationAzureBlobRequest.add_member(:sas_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobSasConfiguration, name: "SasConfiguration"))
    UpdateLocationAzureBlobRequest.add_member(:blob_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureBlobType, name: "BlobType"))
    UpdateLocationAzureBlobRequest.add_member(:access_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureAccessTier, name: "AccessTier"))
    UpdateLocationAzureBlobRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    UpdateLocationAzureBlobRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    UpdateLocationAzureBlobRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    UpdateLocationAzureBlobRequest.type = Types::UpdateLocationAzureBlobRequest
    UpdateLocationAzureBlobResponse.type = Types::UpdateLocationAzureBlobResponse
    UpdateLocationEfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationEfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsSubdirectory, name: "Subdirectory"))
    UpdateLocationEfsRequest.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedEfsAccessPointArn, name: "AccessPointArn"))
    UpdateLocationEfsRequest.add_member(:file_system_access_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedEfsIamRoleArn, name: "FileSystemAccessRoleArn"))
    UpdateLocationEfsRequest.add_member(:in_transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsInTransitEncryption, name: "InTransitEncryption"))
    UpdateLocationEfsRequest.type = Types::UpdateLocationEfsRequest
    UpdateLocationEfsResponse.type = Types::UpdateLocationEfsResponse
    UpdateLocationFsxLustreRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxLustreRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbSubdirectory, name: "Subdirectory"))
    UpdateLocationFsxLustreRequest.type = Types::UpdateLocationFsxLustreRequest
    UpdateLocationFsxLustreResponse.type = Types::UpdateLocationFsxLustreResponse
    UpdateLocationFsxOntapRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxOntapRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxUpdateProtocol, name: "Protocol"))
    UpdateLocationFsxOntapRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxOntapSubdirectory, name: "Subdirectory"))
    UpdateLocationFsxOntapRequest.type = Types::UpdateLocationFsxOntapRequest
    UpdateLocationFsxOntapResponse.type = Types::UpdateLocationFsxOntapResponse
    UpdateLocationFsxOpenZfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxOpenZfsRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxProtocol, name: "Protocol"))
    UpdateLocationFsxOpenZfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbSubdirectory, name: "Subdirectory"))
    UpdateLocationFsxOpenZfsRequest.type = Types::UpdateLocationFsxOpenZfsRequest
    UpdateLocationFsxOpenZfsResponse.type = Types::UpdateLocationFsxOpenZfsResponse
    UpdateLocationFsxWindowsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationFsxWindowsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxWindowsSubdirectory, name: "Subdirectory"))
    UpdateLocationFsxWindowsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSmbDomain, name: "Domain"))
    UpdateLocationFsxWindowsRequest.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User"))
    UpdateLocationFsxWindowsRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbPassword, name: "Password"))
    UpdateLocationFsxWindowsRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    UpdateLocationFsxWindowsRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    UpdateLocationFsxWindowsRequest.type = Types::UpdateLocationFsxWindowsRequest
    UpdateLocationFsxWindowsResponse.type = Types::UpdateLocationFsxWindowsResponse
    UpdateLocationHdfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationHdfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsSubdirectory, name: "Subdirectory"))
    UpdateLocationHdfsRequest.add_member(:name_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsNameNodeList, name: "NameNodes"))
    UpdateLocationHdfsRequest.add_member(:block_size, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsBlockSize, name: "BlockSize"))
    UpdateLocationHdfsRequest.add_member(:replication_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsReplicationFactor, name: "ReplicationFactor"))
    UpdateLocationHdfsRequest.add_member(:kms_key_provider_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyProviderUri, name: "KmsKeyProviderUri"))
    UpdateLocationHdfsRequest.add_member(:qop_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QopConfiguration, name: "QopConfiguration"))
    UpdateLocationHdfsRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsAuthenticationType, name: "AuthenticationType"))
    UpdateLocationHdfsRequest.add_member(:simple_user, ::Smithy::Schema::Shapes::MemberShape.new(target: HdfsUser, name: "SimpleUser"))
    UpdateLocationHdfsRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosPrincipal, name: "KerberosPrincipal"))
    UpdateLocationHdfsRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKeytabFile, name: "KerberosKeytab"))
    UpdateLocationHdfsRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKrb5ConfFile, name: "KerberosKrb5Conf"))
    UpdateLocationHdfsRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    UpdateLocationHdfsRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    UpdateLocationHdfsRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    UpdateLocationHdfsRequest.type = Types::UpdateLocationHdfsRequest
    UpdateLocationHdfsResponse.type = Types::UpdateLocationHdfsResponse
    UpdateLocationNfsRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationNfsRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsSubdirectory, name: "Subdirectory"))
    UpdateLocationNfsRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerHostname, name: "ServerHostname"))
    UpdateLocationNfsRequest.add_member(:on_prem_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremConfig, name: "OnPremConfig"))
    UpdateLocationNfsRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: NfsMountOptions, name: "MountOptions"))
    UpdateLocationNfsRequest.type = Types::UpdateLocationNfsRequest
    UpdateLocationNfsResponse.type = Types::UpdateLocationNfsResponse
    UpdateLocationObjectStorageRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationObjectStorageRequest.add_member(:server_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageServerPort, name: "ServerPort"))
    UpdateLocationObjectStorageRequest.add_member(:server_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageServerProtocol, name: "ServerProtocol"))
    UpdateLocationObjectStorageRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Subdirectory, name: "Subdirectory"))
    UpdateLocationObjectStorageRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerHostname, name: "ServerHostname"))
    UpdateLocationObjectStorageRequest.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageAccessKey, name: "AccessKey"))
    UpdateLocationObjectStorageRequest.add_member(:secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageSecretKey, name: "SecretKey"))
    UpdateLocationObjectStorageRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    UpdateLocationObjectStorageRequest.add_member(:server_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageCertificate, name: "ServerCertificate"))
    UpdateLocationObjectStorageRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    UpdateLocationObjectStorageRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    UpdateLocationObjectStorageRequest.type = Types::UpdateLocationObjectStorageRequest
    UpdateLocationObjectStorageResponse.type = Types::UpdateLocationObjectStorageResponse
    UpdateLocationS3Request.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationS3Request.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Subdirectory, name: "Subdirectory"))
    UpdateLocationS3Request.add_member(:s3_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "S3StorageClass"))
    UpdateLocationS3Request.add_member(:s3_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Config, name: "S3Config"))
    UpdateLocationS3Request.type = Types::UpdateLocationS3Request
    UpdateLocationS3Response.type = Types::UpdateLocationS3Response
    UpdateLocationSmbRequest.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArn, name: "LocationArn", traits: {"smithy.api#required" => {}}))
    UpdateLocationSmbRequest.add_member(:subdirectory, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbSubdirectory, name: "Subdirectory"))
    UpdateLocationSmbRequest.add_member(:server_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerHostname, name: "ServerHostname"))
    UpdateLocationSmbRequest.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbUser, name: "User"))
    UpdateLocationSmbRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbDomain, name: "Domain"))
    UpdateLocationSmbRequest.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbPassword, name: "Password"))
    UpdateLocationSmbRequest.add_member(:cmk_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CmkSecretConfig, name: "CmkSecretConfig"))
    UpdateLocationSmbRequest.add_member(:custom_secret_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomSecretConfig, name: "CustomSecretConfig"))
    UpdateLocationSmbRequest.add_member(:agent_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentArnList, name: "AgentArns"))
    UpdateLocationSmbRequest.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbMountOptions, name: "MountOptions"))
    UpdateLocationSmbRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SmbAuthenticationType, name: "AuthenticationType"))
    UpdateLocationSmbRequest.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpList, name: "DnsIpAddresses"))
    UpdateLocationSmbRequest.add_member(:kerberos_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosPrincipal, name: "KerberosPrincipal"))
    UpdateLocationSmbRequest.add_member(:kerberos_keytab, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKeytabFile, name: "KerberosKeytab"))
    UpdateLocationSmbRequest.add_member(:kerberos_krb5_conf, ::Smithy::Schema::Shapes::MemberShape.new(target: KerberosKrb5ConfFile, name: "KerberosKrb5Conf"))
    UpdateLocationSmbRequest.type = Types::UpdateLocationSmbRequest
    UpdateLocationSmbResponse.type = Types::UpdateLocationSmbResponse
    UpdateTaskExecutionRequest.add_member(:task_execution_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionArn, name: "TaskExecutionArn", traits: {"smithy.api#required" => {}}))
    UpdateTaskExecutionRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options", traits: {"smithy.api#required" => {}}))
    UpdateTaskExecutionRequest.type = Types::UpdateTaskExecutionRequest
    UpdateTaskExecutionResponse.type = Types::UpdateTaskExecutionResponse
    UpdateTaskRequest.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn", traits: {"smithy.api#required" => {}}))
    UpdateTaskRequest.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Options, name: "Options"))
    UpdateTaskRequest.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Excludes"))
    UpdateTaskRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSchedule, name: "Schedule"))
    UpdateTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    UpdateTaskRequest.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "CloudWatchLogGroupArn"))
    UpdateTaskRequest.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "Includes"))
    UpdateTaskRequest.add_member(:manifest_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestConfig, name: "ManifestConfig"))
    UpdateTaskRequest.add_member(:task_report_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskReportConfig, name: "TaskReportConfig"))
    UpdateTaskRequest.type = Types::UpdateTaskRequest
    UpdateTaskResponse.type = Types::UpdateTaskResponse
    VerifyMode.add_member(:point_in_time_consistent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POINT_IN_TIME_CONSISTENT", traits: {"smithy.api#enumValue" => "POINT_IN_TIME_CONSISTENT"}))
    VerifyMode.add_member(:only_files_transferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONLY_FILES_TRANSFERRED", traits: {"smithy.api#enumValue" => "ONLY_FILES_TRANSFERRED"}))
    VerifyMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))

    FmrsService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.datasync#FmrsService"
      service.name = "FmrsService"
      service.version = "2018-11-09"
      service.traits = {"aws.api#service" => {"sdkId" => "DataSync", "arnNamespace" => "datasync", "cloudFormationName" => "DataSync", "cloudTrailEventSource" => "datasync.amazonaws.com", "endpointPrefix" => "datasync"}, "aws.auth#sigv4" => {"name" => "datasync"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS DataSync", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://datasync-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://datasync-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://datasync.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://datasync.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CancelTaskExecution"
        operation.name = "CancelTaskExecution"
        operation.input = CancelTaskExecutionRequest
        operation.output = CancelTaskExecutionResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateAgent"
        operation.name = "CreateAgent"
        operation.input = CreateAgentRequest
        operation.output = CreateAgentResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_azure_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationAzureBlob"
        operation.name = "CreateLocationAzureBlob"
        operation.input = CreateLocationAzureBlobRequest
        operation.output = CreateLocationAzureBlobResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_efs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationEfs"
        operation.name = "CreateLocationEfs"
        operation.input = CreateLocationEfsRequest
        operation.output = CreateLocationEfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_lustre, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxLustre"
        operation.name = "CreateLocationFsxLustre"
        operation.input = CreateLocationFsxLustreRequest
        operation.output = CreateLocationFsxLustreResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_ontap, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxOntap"
        operation.name = "CreateLocationFsxOntap"
        operation.input = CreateLocationFsxOntapRequest
        operation.output = CreateLocationFsxOntapResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_open_zfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxOpenZfs"
        operation.name = "CreateLocationFsxOpenZfs"
        operation.input = CreateLocationFsxOpenZfsRequest
        operation.output = CreateLocationFsxOpenZfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_fsx_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationFsxWindows"
        operation.name = "CreateLocationFsxWindows"
        operation.input = CreateLocationFsxWindowsRequest
        operation.output = CreateLocationFsxWindowsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_hdfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationHdfs"
        operation.name = "CreateLocationHdfs"
        operation.input = CreateLocationHdfsRequest
        operation.output = CreateLocationHdfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_nfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationNfs"
        operation.name = "CreateLocationNfs"
        operation.input = CreateLocationNfsRequest
        operation.output = CreateLocationNfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_object_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationObjectStorage"
        operation.name = "CreateLocationObjectStorage"
        operation.input = CreateLocationObjectStorageRequest
        operation.output = CreateLocationObjectStorageResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationS3"
        operation.name = "CreateLocationS3"
        operation.input = CreateLocationS3Request
        operation.output = CreateLocationS3Response
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_location_smb, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateLocationSmb"
        operation.name = "CreateLocationSmb"
        operation.input = CreateLocationSmbRequest
        operation.output = CreateLocationSmbResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:create_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#CreateTask"
        operation.name = "CreateTask"
        operation.input = CreateTaskRequest
        operation.output = CreateTaskResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DeleteAgent"
        operation.name = "DeleteAgent"
        operation.input = DeleteAgentRequest
        operation.output = DeleteAgentResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DeleteLocation"
        operation.name = "DeleteLocation"
        operation.input = DeleteLocationRequest
        operation.output = DeleteLocationResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:delete_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DeleteTask"
        operation.name = "DeleteTask"
        operation.input = DeleteTaskRequest
        operation.output = DeleteTaskResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeAgent"
        operation.name = "DescribeAgent"
        operation.input = DescribeAgentRequest
        operation.output = DescribeAgentResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_azure_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationAzureBlob"
        operation.name = "DescribeLocationAzureBlob"
        operation.input = DescribeLocationAzureBlobRequest
        operation.output = DescribeLocationAzureBlobResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_efs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationEfs"
        operation.name = "DescribeLocationEfs"
        operation.input = DescribeLocationEfsRequest
        operation.output = DescribeLocationEfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_lustre, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxLustre"
        operation.name = "DescribeLocationFsxLustre"
        operation.input = DescribeLocationFsxLustreRequest
        operation.output = DescribeLocationFsxLustreResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_ontap, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxOntap"
        operation.name = "DescribeLocationFsxOntap"
        operation.input = DescribeLocationFsxOntapRequest
        operation.output = DescribeLocationFsxOntapResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_open_zfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxOpenZfs"
        operation.name = "DescribeLocationFsxOpenZfs"
        operation.input = DescribeLocationFsxOpenZfsRequest
        operation.output = DescribeLocationFsxOpenZfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_fsx_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationFsxWindows"
        operation.name = "DescribeLocationFsxWindows"
        operation.input = DescribeLocationFsxWindowsRequest
        operation.output = DescribeLocationFsxWindowsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_hdfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationHdfs"
        operation.name = "DescribeLocationHdfs"
        operation.input = DescribeLocationHdfsRequest
        operation.output = DescribeLocationHdfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_nfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationNfs"
        operation.name = "DescribeLocationNfs"
        operation.input = DescribeLocationNfsRequest
        operation.output = DescribeLocationNfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_object_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationObjectStorage"
        operation.name = "DescribeLocationObjectStorage"
        operation.input = DescribeLocationObjectStorageRequest
        operation.output = DescribeLocationObjectStorageResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationS3"
        operation.name = "DescribeLocationS3"
        operation.input = DescribeLocationS3Request
        operation.output = DescribeLocationS3Response
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_location_smb, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeLocationSmb"
        operation.name = "DescribeLocationSmb"
        operation.input = DescribeLocationSmbRequest
        operation.output = DescribeLocationSmbResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeTask"
        operation.name = "DescribeTask"
        operation.input = DescribeTaskRequest
        operation.output = DescribeTaskResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:describe_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#DescribeTaskExecution"
        operation.name = "DescribeTaskExecution"
        operation.input = DescribeTaskExecutionRequest
        operation.output = DescribeTaskExecutionResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:list_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListAgents"
        operation.name = "ListAgents"
        operation.input = ListAgentsRequest
        operation.output = ListAgentsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAgents.new
      end)
      service.add_operation(:list_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListLocations"
        operation.name = "ListLocations"
        operation.input = ListLocationsRequest
        operation.output = ListLocationsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLocations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_task_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListTaskExecutions"
        operation.name = "ListTaskExecutions"
        operation.input = ListTaskExecutionsRequest
        operation.output = ListTaskExecutionsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTaskExecutions.new
      end)
      service.add_operation(:list_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#ListTasks"
        operation.name = "ListTasks"
        operation.input = ListTasksRequest
        operation.output = ListTasksResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:start_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#StartTaskExecution"
        operation.name = "StartTaskExecution"
        operation.input = StartTaskExecutionRequest
        operation.output = StartTaskExecutionResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateAgent"
        operation.name = "UpdateAgent"
        operation.input = UpdateAgentRequest
        operation.output = UpdateAgentResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_azure_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationAzureBlob"
        operation.name = "UpdateLocationAzureBlob"
        operation.input = UpdateLocationAzureBlobRequest
        operation.output = UpdateLocationAzureBlobResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_efs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationEfs"
        operation.name = "UpdateLocationEfs"
        operation.input = UpdateLocationEfsRequest
        operation.output = UpdateLocationEfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_lustre, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxLustre"
        operation.name = "UpdateLocationFsxLustre"
        operation.input = UpdateLocationFsxLustreRequest
        operation.output = UpdateLocationFsxLustreResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_ontap, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxOntap"
        operation.name = "UpdateLocationFsxOntap"
        operation.input = UpdateLocationFsxOntapRequest
        operation.output = UpdateLocationFsxOntapResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_open_zfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxOpenZfs"
        operation.name = "UpdateLocationFsxOpenZfs"
        operation.input = UpdateLocationFsxOpenZfsRequest
        operation.output = UpdateLocationFsxOpenZfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_fsx_windows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationFsxWindows"
        operation.name = "UpdateLocationFsxWindows"
        operation.input = UpdateLocationFsxWindowsRequest
        operation.output = UpdateLocationFsxWindowsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_hdfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationHdfs"
        operation.name = "UpdateLocationHdfs"
        operation.input = UpdateLocationHdfsRequest
        operation.output = UpdateLocationHdfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_nfs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationNfs"
        operation.name = "UpdateLocationNfs"
        operation.input = UpdateLocationNfsRequest
        operation.output = UpdateLocationNfsResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_object_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationObjectStorage"
        operation.name = "UpdateLocationObjectStorage"
        operation.input = UpdateLocationObjectStorageRequest
        operation.output = UpdateLocationObjectStorageResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationS3"
        operation.name = "UpdateLocationS3"
        operation.input = UpdateLocationS3Request
        operation.output = UpdateLocationS3Response
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_location_smb, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateLocationSmb"
        operation.name = "UpdateLocationSmb"
        operation.input = UpdateLocationSmbRequest
        operation.output = UpdateLocationSmbResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateTask"
        operation.name = "UpdateTask"
        operation.input = UpdateTaskRequest
        operation.output = UpdateTaskResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
        operation.traits = {}
      end)
      service.add_operation(:update_task_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.datasync#UpdateTaskExecution"
        operation.name = "UpdateTaskExecution"
        operation.input = UpdateTaskExecutionRequest
        operation.output = UpdateTaskExecutionResponse
        operation.errors << InternalException
        operation.errors << InvalidRequestException
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
