# frozen_string_literal: true

# This is generated code!

module Aws::EFS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessPointAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#AccessPointAlreadyExists", name: "AccessPointAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#AccessPointArn", name: "AccessPointArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}$"})
    AccessPointDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#AccessPointDescription", name: "AccessPointDescription")
    AccessPointDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#AccessPointDescriptions", name: "AccessPointDescriptions")
    AccessPointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#AccessPointId", name: "AccessPointId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}|fsap-[0-9a-f]{8,40})$"})
    AccessPointLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#AccessPointLimitExceeded", name: "AccessPointLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPointNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#AccessPointNotFound", name: "AccessPointNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AvailabilityZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#AvailabilityZoneId", name: "AvailabilityZoneId")
    AvailabilityZoneName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#AvailabilityZoneName", name: "AvailabilityZoneName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    AvailabilityZonesMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#AvailabilityZonesMismatch", name: "AvailabilityZonesMismatch", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 14}, "smithy.api#pattern" => "^(\\d{12})|(\\d{4}-\\d{4}-\\d{4})$"})
    Backup = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.efs#Backup", name: "Backup")
    BackupPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#BackupPolicy", name: "BackupPolicy")
    BadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#BadRequest", name: "BadRequest", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BypassPolicyLockoutSafetyCheck = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.efs#BypassPolicyLockoutSafetyCheck", name: "BypassPolicyLockoutSafetyCheck", traits: {"smithy.api#default" => false})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateAccessPointOutput", name: "CreateAccessPointOutput")
    CreateAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateAccessPointRequest", name: "CreateAccessPointRequest")
    CreateFileSystemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateFileSystemOutput", name: "CreateFileSystemOutput")
    CreateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateFileSystemRequest", name: "CreateFileSystemRequest")
    CreateMountTargetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateMountTargetOutput", name: "CreateMountTargetOutput")
    CreateMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateMountTargetRequest", name: "CreateMountTargetRequest")
    CreateReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateReplicationConfigurationOutput", name: "CreateReplicationConfigurationOutput")
    CreateReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateReplicationConfigurationRequest", name: "CreateReplicationConfigurationRequest")
    CreateTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreateTagsRequest", name: "CreateTagsRequest")
    CreationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#CreationInfo", name: "CreationInfo")
    CreationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#CreationToken", name: "CreationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    DeleteAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DeleteAccessPointRequest", name: "DeleteAccessPointRequest")
    DeleteFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DeleteFileSystemPolicyRequest", name: "DeleteFileSystemPolicyRequest")
    DeleteFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DeleteFileSystemRequest", name: "DeleteFileSystemRequest")
    DeleteMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DeleteMountTargetRequest", name: "DeleteMountTargetRequest")
    DeleteReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DeleteReplicationConfigurationRequest", name: "DeleteReplicationConfigurationRequest")
    DeleteTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DeleteTagsRequest", name: "DeleteTagsRequest")
    DeletionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#DeletionMode", name: "DeletionMode")
    DependencyTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DependencyTimeout", name: "DependencyTimeout", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    DescribeAccessPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeAccessPointsRequest", name: "DescribeAccessPointsRequest")
    DescribeAccessPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeAccessPointsResponse", name: "DescribeAccessPointsResponse")
    DescribeAccountPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeAccountPreferencesRequest", name: "DescribeAccountPreferencesRequest")
    DescribeAccountPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeAccountPreferencesResponse", name: "DescribeAccountPreferencesResponse")
    DescribeBackupPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeBackupPolicyOutput", name: "DescribeBackupPolicyOutput")
    DescribeBackupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeBackupPolicyRequest", name: "DescribeBackupPolicyRequest")
    DescribeFileSystemPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeFileSystemPolicyOutput", name: "DescribeFileSystemPolicyOutput")
    DescribeFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeFileSystemPolicyRequest", name: "DescribeFileSystemPolicyRequest")
    DescribeFileSystemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeFileSystemsRequest", name: "DescribeFileSystemsRequest")
    DescribeFileSystemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeFileSystemsResponse", name: "DescribeFileSystemsResponse")
    DescribeLifecycleConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeLifecycleConfigurationOutput", name: "DescribeLifecycleConfigurationOutput")
    DescribeLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeLifecycleConfigurationRequest", name: "DescribeLifecycleConfigurationRequest")
    DescribeMountTargetSecurityGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeMountTargetSecurityGroupsRequest", name: "DescribeMountTargetSecurityGroupsRequest")
    DescribeMountTargetSecurityGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeMountTargetSecurityGroupsResponse", name: "DescribeMountTargetSecurityGroupsResponse")
    DescribeMountTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeMountTargetsRequest", name: "DescribeMountTargetsRequest")
    DescribeMountTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeMountTargetsResponse", name: "DescribeMountTargetsResponse")
    DescribeReplicationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeReplicationConfigurationsRequest", name: "DescribeReplicationConfigurationsRequest")
    DescribeReplicationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeReplicationConfigurationsResponse", name: "DescribeReplicationConfigurationsResponse")
    DescribeTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeTagsRequest", name: "DescribeTagsRequest")
    DescribeTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DescribeTagsResponse", name: "DescribeTagsResponse")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#Destination", name: "Destination")
    DestinationToCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#DestinationToCreate", name: "DestinationToCreate")
    Destinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#Destinations", name: "Destinations")
    DestinationsToCreate = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#DestinationsToCreate", name: "DestinationsToCreate")
    Encrypted = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.efs#Encrypted", name: "Encrypted")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#ErrorMessage", name: "ErrorMessage")
    FileSystemAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemAlreadyExists", name: "FileSystemAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#FileSystemArn", name: "FileSystemArn")
    FileSystemDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemDescription", name: "FileSystemDescription")
    FileSystemDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#FileSystemDescriptions", name: "FileSystemDescriptions")
    FileSystemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#FileSystemId", name: "FileSystemId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:file-system/fs-[0-9a-f]{8,40}|fs-[0-9a-f]{8,40})$"})
    FileSystemInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemInUse", name: "FileSystemInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FileSystemLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemLimitExceeded", name: "FileSystemLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FileSystemNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemNotFound", name: "FileSystemNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    FileSystemNullableSizeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#FileSystemNullableSizeValue", name: "FileSystemNullableSizeValue", traits: {"smithy.api#range" => {"min" => 0}})
    FileSystemProtectionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemProtectionDescription", name: "FileSystemProtectionDescription")
    FileSystemSize = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#FileSystemSize", name: "FileSystemSize")
    FileSystemSizeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#FileSystemSizeValue", name: "FileSystemSizeValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Gid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#Gid", name: "Gid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    IncorrectFileSystemLifeCycleState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#IncorrectFileSystemLifeCycleState", name: "IncorrectFileSystemLifeCycleState", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IncorrectMountTargetState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#IncorrectMountTargetState", name: "IncorrectMountTargetState", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InsufficientThroughputCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#InsufficientThroughputCapacity", name: "InsufficientThroughputCapacity", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#InvalidPolicyException", name: "InvalidPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$"})
    IpAddressInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#IpAddressInUse", name: "IpAddressInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#IpAddressType", name: "IpAddressType")
    Ipv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Ipv6Address", name: "Ipv6Address", traits: {"smithy.api#length" => {"min" => 3, "max" => 39}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|mrk-[0-9a-f]{32}|alias/[a-zA-Z0-9/_-]+|(arn:aws[-a-z]*:kms:[a-z0-9-]+:\\d{12}:((key/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(key/mrk-[0-9a-f]{32})|(alias/[a-zA-Z0-9/_-]+))))$"})
    LifeCycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#LifeCycleState", name: "LifeCycleState")
    LifecyclePolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#LifecyclePolicies", name: "LifecyclePolicies", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    LifecyclePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#LifecyclePolicy", name: "LifecyclePolicy")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Marker", name: "Marker", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#MaxItems", name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    ModifyMountTargetSecurityGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ModifyMountTargetSecurityGroupsRequest", name: "ModifyMountTargetSecurityGroupsRequest")
    MountTargetConflict = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#MountTargetConflict", name: "MountTargetConflict", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    MountTargetCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#MountTargetCount", name: "MountTargetCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MountTargetDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#MountTargetDescription", name: "MountTargetDescription")
    MountTargetDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#MountTargetDescriptions", name: "MountTargetDescriptions")
    MountTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#MountTargetId", name: "MountTargetId", traits: {"smithy.api#length" => {"min" => 13, "max" => 45}, "smithy.api#pattern" => "^fsmt-[0-9a-f]{8,40}$"})
    MountTargetNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#MountTargetNotFound", name: "MountTargetNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Name", name: "Name")
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#NetworkInterfaceId", name: "NetworkInterfaceId")
    NetworkInterfaceLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#NetworkInterfaceLimitExceeded", name: "NetworkInterfaceLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NoFreeAddressesInSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#NoFreeAddressesInSubnet", name: "NoFreeAddressesInSubnet", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OwnerGid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#OwnerGid", name: "OwnerGid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    OwnerUid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#OwnerUid", name: "OwnerUid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Path", name: "Path", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\/|(\\/(?!\\.)+[^$#<>;`|&?{}^*/\\n]+){1,4})$"})
    PerformanceMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#PerformanceMode", name: "PerformanceMode")
    Permissions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Permissions", name: "Permissions", traits: {"smithy.api#length" => {"min" => 3, "max" => 4}, "smithy.api#pattern" => "^[0-7]{3,4}$"})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    PolicyNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PolicyNotFound", name: "PolicyNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PosixUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PosixUser", name: "PosixUser")
    ProvisionedThroughputInMibps = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.efs#ProvisionedThroughputInMibps", name: "ProvisionedThroughputInMibps", traits: {"smithy.api#range" => {"min" => 1.0}})
    PutAccountPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutAccountPreferencesRequest", name: "PutAccountPreferencesRequest")
    PutAccountPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutAccountPreferencesResponse", name: "PutAccountPreferencesResponse")
    PutBackupPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutBackupPolicyOutput", name: "PutBackupPolicyOutput")
    PutBackupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutBackupPolicyRequest", name: "PutBackupPolicyRequest")
    PutFileSystemPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutFileSystemPolicyOutput", name: "PutFileSystemPolicyOutput")
    PutFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutFileSystemPolicyRequest", name: "PutFileSystemPolicyRequest")
    PutLifecycleConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutLifecycleConfigurationOutput", name: "PutLifecycleConfigurationOutput")
    PutLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#PutLifecycleConfigurationRequest", name: "PutLifecycleConfigurationRequest")
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-{0,1}[0-9]{0,1}$"})
    ReplicationAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ReplicationAlreadyExists", name: "ReplicationAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ReplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ReplicationConfigurationDescription", name: "ReplicationConfigurationDescription")
    ReplicationConfigurationDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#ReplicationConfigurationDescriptions", name: "ReplicationConfigurationDescriptions")
    ReplicationNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ReplicationNotFound", name: "ReplicationNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationOverwriteProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#ReplicationOverwriteProtection", name: "ReplicationOverwriteProtection")
    ReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#ReplicationStatus", name: "ReplicationStatus")
    Resource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#Resource", name: "Resource")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:(access-point/fsap|file-system/fs)-[0-9a-f]{8,40}|fs(ap)?-[0-9a-f]{8,40})$"})
    ResourceIdPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ResourceIdPreference", name: "ResourceIdPreference")
    ResourceIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#ResourceIdType", name: "ResourceIdType")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#Resources", name: "Resources")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RootDirectory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#RootDirectory", name: "RootDirectory")
    SecondaryGids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#SecondaryGids", name: "SecondaryGids", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#SecurityGroup", name: "SecurityGroup", traits: {"smithy.api#length" => {"min" => 11, "max" => 43}, "smithy.api#pattern" => "^sg-[0-9a-f]{8,40}$"})
    SecurityGroupLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#SecurityGroupLimitExceeded", name: "SecurityGroupLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroupNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#SecurityGroupNotFound", name: "SecurityGroupNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#SecurityGroups", name: "SecurityGroups", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#Status", name: "Status")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#StatusMessage", name: "StatusMessage")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 47}, "smithy.api#pattern" => "^subnet-[0-9a-f]{8,40}$"})
    SubnetNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#SubnetNotFound", name: "SubnetNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?![aA]{1}[wW]{1}[sS]{1}:)([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.efs#Tags", name: "Tags")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThroughputLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ThroughputLimitExceeded", name: "ThroughputLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThroughputMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#ThroughputMode", name: "ThroughputMode")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.efs#Timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TooManyRequests = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#TooManyRequests", name: "TooManyRequests", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransitionToArchiveRules = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#TransitionToArchiveRules", name: "TransitionToArchiveRules")
    TransitionToIARules = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#TransitionToIARules", name: "TransitionToIARules")
    TransitionToPrimaryStorageClassRules = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.efs#TransitionToPrimaryStorageClassRules", name: "TransitionToPrimaryStorageClassRules")
    Uid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.efs#Uid", name: "Uid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    UnsupportedAvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#UnsupportedAvailabilityZone", name: "UnsupportedAvailabilityZone", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateFileSystemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#UpdateFileSystemOutput", name: "UpdateFileSystemOutput")
    UpdateFileSystemProtectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#UpdateFileSystemProtectionOutput", name: "UpdateFileSystemProtectionOutput")
    UpdateFileSystemProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#UpdateFileSystemProtectionRequest", name: "UpdateFileSystemProtectionRequest")
    UpdateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#UpdateFileSystemRequest", name: "UpdateFileSystemRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.efs#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.efs#VpcId", name: "VpcId")

    AccessPointAlreadyExists.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    AccessPointAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessPointAlreadyExists.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "AccessPointId", traits: {"smithy.api#required" => {}}))
    AccessPointAlreadyExists.type = Types::AccessPointAlreadyExists
    AccessPointDescription.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    AccessPointDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    AccessPointDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    AccessPointDescription.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "AccessPointId"))
    AccessPointDescription.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn"))
    AccessPointDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    AccessPointDescription.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "PosixUser"))
    AccessPointDescription.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "RootDirectory"))
    AccessPointDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId"))
    AccessPointDescription.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState"))
    AccessPointDescription.type = Types::AccessPointDescription
    AccessPointDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointDescription, name: "member"))
    AccessPointLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    AccessPointLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessPointLimitExceeded.type = Types::AccessPointLimitExceeded
    AccessPointNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    AccessPointNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessPointNotFound.type = Types::AccessPointNotFound
    AvailabilityZonesMismatch.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    AvailabilityZonesMismatch.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AvailabilityZonesMismatch.type = Types::AvailabilityZonesMismatch
    BackupPolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status", traits: {"smithy.api#required" => {}}))
    BackupPolicy.type = Types::BackupPolicy
    BadRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    BadRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    BadRequest.type = Types::BadRequest
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAccessPointOutput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    CreateAccessPointOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateAccessPointOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAccessPointOutput.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "AccessPointId"))
    CreateAccessPointOutput.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn"))
    CreateAccessPointOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    CreateAccessPointOutput.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "PosixUser"))
    CreateAccessPointOutput.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "RootDirectory"))
    CreateAccessPointOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId"))
    CreateAccessPointOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState"))
    CreateAccessPointOutput.type = Types::CreateAccessPointOutput
    CreateAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAccessPointRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "PosixUser"))
    CreateAccessPointRequest.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "RootDirectory"))
    CreateAccessPointRequest.type = Types::CreateAccessPointRequest
    CreateFileSystemOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:creation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationToken, name: "CreationToken", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "FileSystemArn"))
    CreateFileSystemOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    CreateFileSystemOutput.add_member(:number_of_mount_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetCount, name: "NumberOfMountTargets", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemSize, name: "SizeInBytes", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMode, name: "PerformanceMode", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Encrypted, name: "Encrypted"))
    CreateFileSystemOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateFileSystemOutput.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "ThroughputMode"))
    CreateFileSystemOutput.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputInMibps, name: "ProvisionedThroughputInMibps"))
    CreateFileSystemOutput.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    CreateFileSystemOutput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    CreateFileSystemOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemProtectionDescription, name: "FileSystemProtection"))
    CreateFileSystemOutput.type = Types::CreateFileSystemOutput
    CreateFileSystemRequest.add_member(:creation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationToken, name: "CreationToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMode, name: "PerformanceMode"))
    CreateFileSystemRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Encrypted, name: "Encrypted"))
    CreateFileSystemRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    CreateFileSystemRequest.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "ThroughputMode"))
    CreateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputInMibps, name: "ProvisionedThroughputInMibps"))
    CreateFileSystemRequest.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    CreateFileSystemRequest.add_member(:backup, ::Smithy::Schema::Shapes::MemberShape.new(target: Backup, name: "Backup"))
    CreateFileSystemRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateFileSystemRequest.type = Types::CreateFileSystemRequest
    CreateMountTargetOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId"))
    CreateMountTargetOutput.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "MountTargetId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState", traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    CreateMountTargetOutput.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "Ipv6Address"))
    CreateMountTargetOutput.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId"))
    CreateMountTargetOutput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    CreateMountTargetOutput.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    CreateMountTargetOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    CreateMountTargetOutput.type = Types::CreateMountTargetOutput
    CreateMountTargetRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    CreateMountTargetRequest.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "Ipv6Address"))
    CreateMountTargetRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "IpAddressType"))
    CreateMountTargetRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    CreateMountTargetRequest.type = Types::CreateMountTargetRequest
    CreateReplicationConfigurationOutput.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "SourceFileSystemId", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "SourceFileSystemRegion", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "SourceFileSystemArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:original_source_file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "OriginalSourceFileSystemArn", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, name: "Destinations", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SourceFileSystemOwnerId"))
    CreateReplicationConfigurationOutput.type = Types::CreateReplicationConfigurationOutput
    CreateReplicationConfigurationRequest.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "SourceFileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateReplicationConfigurationRequest.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationsToCreate, name: "Destinations", traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationRequest.type = Types::CreateReplicationConfigurationRequest
    CreateTagsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreationInfo.add_member(:owner_uid, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerUid, name: "OwnerUid", traits: {"smithy.api#required" => {}}))
    CreationInfo.add_member(:owner_gid, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerGid, name: "OwnerGid", traits: {"smithy.api#required" => {}}))
    CreationInfo.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: Permissions, name: "Permissions", traits: {"smithy.api#required" => {}}))
    CreationInfo.type = Types::CreationInfo
    DeleteAccessPointRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "AccessPointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointRequest.type = Types::DeleteAccessPointRequest
    DeleteFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemPolicyRequest.type = Types::DeleteFileSystemPolicyRequest
    DeleteFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemRequest.type = Types::DeleteFileSystemRequest
    DeleteMountTargetRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "MountTargetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMountTargetRequest.type = Types::DeleteMountTargetRequest
    DeleteReplicationConfigurationRequest.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "SourceFileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReplicationConfigurationRequest.add_member(:deletion_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionMode, name: "DeletionMode", traits: {"smithy.api#httpQuery" => "deletionMode"}))
    DeleteReplicationConfigurationRequest.type = Types::DeleteReplicationConfigurationRequest
    DeleteTagsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeletionMode.add_member(:all_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_CONFIGURATIONS", traits: {"smithy.api#enumValue" => "ALL_CONFIGURATIONS"}))
    DeletionMode.add_member(:local_configuration_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_CONFIGURATION_ONLY", traits: {"smithy.api#enumValue" => "LOCAL_CONFIGURATION_ONLY"}))
    DependencyTimeout.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    DependencyTimeout.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DependencyTimeout.type = Types::DependencyTimeout
    DescribeAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    DescribeAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    DescribeAccessPointsRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "AccessPointId", traits: {"smithy.api#httpQuery" => "AccessPointId"}))
    DescribeAccessPointsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeAccessPointsRequest.type = Types::DescribeAccessPointsRequest
    DescribeAccessPointsResponse.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointDescriptions, name: "AccessPoints"))
    DescribeAccessPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    DescribeAccessPointsResponse.type = Types::DescribeAccessPointsResponse
    DescribeAccountPreferencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    DescribeAccountPreferencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeAccountPreferencesRequest.type = Types::DescribeAccountPreferencesRequest
    DescribeAccountPreferencesResponse.add_member(:resource_id_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdPreference, name: "ResourceIdPreference"))
    DescribeAccountPreferencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    DescribeAccountPreferencesResponse.type = Types::DescribeAccountPreferencesResponse
    DescribeBackupPolicyOutput.add_member(:backup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPolicy, name: "BackupPolicy"))
    DescribeBackupPolicyOutput.type = Types::DescribeBackupPolicyOutput
    DescribeBackupPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupPolicyRequest.type = Types::DescribeBackupPolicyRequest
    DescribeFileSystemPolicyOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    DescribeFileSystemPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    DescribeFileSystemPolicyOutput.type = Types::DescribeFileSystemPolicyOutput
    DescribeFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFileSystemPolicyRequest.type = Types::DescribeFileSystemPolicyRequest
    DescribeFileSystemsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    DescribeFileSystemsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    DescribeFileSystemsRequest.add_member(:creation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationToken, name: "CreationToken", traits: {"smithy.api#httpQuery" => "CreationToken"}))
    DescribeFileSystemsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeFileSystemsRequest.type = Types::DescribeFileSystemsRequest
    DescribeFileSystemsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeFileSystemsResponse.add_member(:file_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemDescriptions, name: "FileSystems"))
    DescribeFileSystemsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    DescribeFileSystemsResponse.type = Types::DescribeFileSystemsResponse
    DescribeLifecycleConfigurationOutput.add_member(:lifecycle_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicies, name: "LifecyclePolicies"))
    DescribeLifecycleConfigurationOutput.type = Types::DescribeLifecycleConfigurationOutput
    DescribeLifecycleConfigurationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLifecycleConfigurationRequest.type = Types::DescribeLifecycleConfigurationRequest
    DescribeMountTargetSecurityGroupsRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "MountTargetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMountTargetSecurityGroupsRequest.type = Types::DescribeMountTargetSecurityGroupsRequest
    DescribeMountTargetSecurityGroupsResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups", traits: {"smithy.api#required" => {}}))
    DescribeMountTargetSecurityGroupsResponse.type = Types::DescribeMountTargetSecurityGroupsResponse
    DescribeMountTargetsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    DescribeMountTargetsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    DescribeMountTargetsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeMountTargetsRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "MountTargetId", traits: {"smithy.api#httpQuery" => "MountTargetId"}))
    DescribeMountTargetsRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "AccessPointId", traits: {"smithy.api#httpQuery" => "AccessPointId"}))
    DescribeMountTargetsRequest.type = Types::DescribeMountTargetsRequest
    DescribeMountTargetsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeMountTargetsResponse.add_member(:mount_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetDescriptions, name: "MountTargets"))
    DescribeMountTargetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    DescribeMountTargetsResponse.type = Types::DescribeMountTargetsResponse
    DescribeReplicationConfigurationsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeReplicationConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    DescribeReplicationConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    DescribeReplicationConfigurationsRequest.type = Types::DescribeReplicationConfigurationsRequest
    DescribeReplicationConfigurationsResponse.add_member(:replications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDescriptions, name: "Replications"))
    DescribeReplicationConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    DescribeReplicationConfigurationsResponse.type = Types::DescribeReplicationConfigurationsResponse
    DescribeTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "MaxItems", traits: {"smithy.api#httpQuery" => "MaxItems"}))
    DescribeTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker", traits: {"smithy.api#httpQuery" => "Marker"}))
    DescribeTagsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    DescribeTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    DescribeTagsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "NextMarker"))
    DescribeTagsResponse.type = Types::DescribeTagsResponse
    Destination.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "Region", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:last_replicated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastReplicatedTimestamp"))
    Destination.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId"))
    Destination.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    Destination.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    Destination.type = Types::Destination
    DestinationToCreate.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "Region"))
    DestinationToCreate.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    DestinationToCreate.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    DestinationToCreate.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    DestinationToCreate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DestinationToCreate.type = Types::DestinationToCreate
    Destinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "member"))
    DestinationsToCreate.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationToCreate, name: "member"))
    FileSystemAlreadyExists.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    FileSystemAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileSystemAlreadyExists.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    FileSystemAlreadyExists.type = Types::FileSystemAlreadyExists
    FileSystemDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:creation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationToken, name: "CreationToken", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "FileSystemArn"))
    FileSystemDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    FileSystemDescription.add_member(:number_of_mount_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetCount, name: "NumberOfMountTargets", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemSize, name: "SizeInBytes", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMode, name: "PerformanceMode", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Encrypted, name: "Encrypted"))
    FileSystemDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    FileSystemDescription.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "ThroughputMode"))
    FileSystemDescription.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputInMibps, name: "ProvisionedThroughputInMibps"))
    FileSystemDescription.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    FileSystemDescription.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    FileSystemDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemProtectionDescription, name: "FileSystemProtection"))
    FileSystemDescription.type = Types::FileSystemDescription
    FileSystemDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemDescription, name: "member"))
    FileSystemInUse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    FileSystemInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileSystemInUse.type = Types::FileSystemInUse
    FileSystemLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    FileSystemLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileSystemLimitExceeded.type = Types::FileSystemLimitExceeded
    FileSystemNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    FileSystemNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FileSystemNotFound.type = Types::FileSystemNotFound
    FileSystemProtectionDescription.add_member(:replication_overwrite_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationOverwriteProtection, name: "ReplicationOverwriteProtection"))
    FileSystemProtectionDescription.type = Types::FileSystemProtectionDescription
    FileSystemSize.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemSizeValue, name: "Value", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FileSystemSize.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    FileSystemSize.add_member(:value_in_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemNullableSizeValue, name: "ValueInIA"))
    FileSystemSize.add_member(:value_in_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemNullableSizeValue, name: "ValueInStandard"))
    FileSystemSize.add_member(:value_in_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemNullableSizeValue, name: "ValueInArchive"))
    FileSystemSize.type = Types::FileSystemSize
    IncorrectFileSystemLifeCycleState.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    IncorrectFileSystemLifeCycleState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IncorrectFileSystemLifeCycleState.type = Types::IncorrectFileSystemLifeCycleState
    IncorrectMountTargetState.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    IncorrectMountTargetState.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IncorrectMountTargetState.type = Types::IncorrectMountTargetState
    InsufficientThroughputCapacity.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    InsufficientThroughputCapacity.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InsufficientThroughputCapacity.type = Types::InsufficientThroughputCapacity
    InternalServerError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerError.type = Types::InternalServerError
    InvalidPolicyException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    InvalidPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidPolicyException.type = Types::InvalidPolicyException
    IpAddressInUse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    IpAddressInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IpAddressInUse.type = Types::IpAddressInUse
    IpAddressType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4_ONLY", traits: {"smithy.api#enumValue" => "IPV4_ONLY"}))
    IpAddressType.add_member(:ipv6_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6_ONLY", traits: {"smithy.api#enumValue" => "IPV6_ONLY"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    LifeCycleState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "creating"}))
    LifeCycleState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "available"}))
    LifeCycleState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "updating"}))
    LifeCycleState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "deleting"}))
    LifeCycleState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "deleted"}))
    LifeCycleState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    LifecyclePolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicy, name: "member"))
    LifecyclePolicy.add_member(:transition_to_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionToIARules, name: "TransitionToIA"))
    LifecyclePolicy.add_member(:transition_to_primary_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionToPrimaryStorageClassRules, name: "TransitionToPrimaryStorageClass"))
    LifecyclePolicy.add_member(:transition_to_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionToArchiveRules, name: "TransitionToArchive"))
    LifecyclePolicy.type = Types::LifecyclePolicy
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModifyMountTargetSecurityGroupsRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "MountTargetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ModifyMountTargetSecurityGroupsRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "SecurityGroups"))
    ModifyMountTargetSecurityGroupsRequest.type = Types::ModifyMountTargetSecurityGroupsRequest
    MountTargetConflict.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    MountTargetConflict.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MountTargetConflict.type = Types::MountTargetConflict
    MountTargetDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId"))
    MountTargetDescription.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "MountTargetId", traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "SubnetId", traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState", traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, name: "IpAddress"))
    MountTargetDescription.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "Ipv6Address"))
    MountTargetDescription.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "NetworkInterfaceId"))
    MountTargetDescription.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    MountTargetDescription.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    MountTargetDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    MountTargetDescription.type = Types::MountTargetDescription
    MountTargetDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetDescription, name: "member"))
    MountTargetNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    MountTargetNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    MountTargetNotFound.type = Types::MountTargetNotFound
    NetworkInterfaceLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    NetworkInterfaceLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NetworkInterfaceLimitExceeded.type = Types::NetworkInterfaceLimitExceeded
    NoFreeAddressesInSubnet.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    NoFreeAddressesInSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NoFreeAddressesInSubnet.type = Types::NoFreeAddressesInSubnet
    PerformanceMode.add_member(:general_purpose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERAL_PURPOSE", traits: {"smithy.api#enumValue" => "generalPurpose"}))
    PerformanceMode.add_member(:max_io, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_IO", traits: {"smithy.api#enumValue" => "maxIO"}))
    PolicyNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PolicyNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PolicyNotFound.type = Types::PolicyNotFound
    PosixUser.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: Uid, name: "Uid", traits: {"smithy.api#required" => {}}))
    PosixUser.add_member(:gid, ::Smithy::Schema::Shapes::MemberShape.new(target: Gid, name: "Gid", traits: {"smithy.api#required" => {}}))
    PosixUser.add_member(:secondary_gids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryGids, name: "SecondaryGids"))
    PosixUser.type = Types::PosixUser
    PutAccountPreferencesRequest.add_member(:resource_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceIdType", traits: {"smithy.api#required" => {}}))
    PutAccountPreferencesRequest.type = Types::PutAccountPreferencesRequest
    PutAccountPreferencesResponse.add_member(:resource_id_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdPreference, name: "ResourceIdPreference"))
    PutAccountPreferencesResponse.type = Types::PutAccountPreferencesResponse
    PutBackupPolicyOutput.add_member(:backup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPolicy, name: "BackupPolicy"))
    PutBackupPolicyOutput.type = Types::PutBackupPolicyOutput
    PutBackupPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupPolicyRequest.add_member(:backup_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupPolicy, name: "BackupPolicy", traits: {"smithy.api#required" => {}}))
    PutBackupPolicyRequest.type = Types::PutBackupPolicyRequest
    PutFileSystemPolicyOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId"))
    PutFileSystemPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    PutFileSystemPolicyOutput.type = Types::PutFileSystemPolicyOutput
    PutFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::MemberShape.new(target: BypassPolicyLockoutSafetyCheck, name: "BypassPolicyLockoutSafetyCheck", traits: {"smithy.api#default" => false}))
    PutFileSystemPolicyRequest.type = Types::PutFileSystemPolicyRequest
    PutLifecycleConfigurationOutput.add_member(:lifecycle_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicies, name: "LifecyclePolicies"))
    PutLifecycleConfigurationOutput.type = Types::PutLifecycleConfigurationOutput
    PutLifecycleConfigurationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutLifecycleConfigurationRequest.add_member(:lifecycle_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicies, name: "LifecyclePolicies", traits: {"smithy.api#required" => {}}))
    PutLifecycleConfigurationRequest.type = Types::PutLifecycleConfigurationRequest
    ReplicationAlreadyExists.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ReplicationAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ReplicationAlreadyExists.type = Types::ReplicationAlreadyExists
    ReplicationConfigurationDescription.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "SourceFileSystemId", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "SourceFileSystemRegion", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "SourceFileSystemArn", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:original_source_file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "OriginalSourceFileSystemArn", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: Destinations, name: "Destinations", traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SourceFileSystemOwnerId"))
    ReplicationConfigurationDescription.type = Types::ReplicationConfigurationDescription
    ReplicationConfigurationDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfigurationDescription, name: "member"))
    ReplicationNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ReplicationNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ReplicationNotFound.type = Types::ReplicationNotFound
    ReplicationOverwriteProtection.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationOverwriteProtection.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ReplicationOverwriteProtection.add_member(:replicating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATING", traits: {"smithy.api#enumValue" => "REPLICATING"}))
    ReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ReplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ReplicationStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    ReplicationStatus.add_member(:pausing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSING", traits: {"smithy.api#enumValue" => "PAUSING"}))
    Resource.add_member(:file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FileSystem", traits: {"smithy.api#enumValue" => "FILE_SYSTEM"}))
    Resource.add_member(:mount_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MountTarget", traits: {"smithy.api#enumValue" => "MOUNT_TARGET"}))
    ResourceIdPreference.add_member(:resource_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdType, name: "ResourceIdType"))
    ResourceIdPreference.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "Resources"))
    ResourceIdPreference.type = Types::ResourceIdPreference
    ResourceIdType.add_member(:long_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LongId", traits: {"smithy.api#enumValue" => "LONG_ID"}))
    ResourceIdType.add_member(:short_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ShortId", traits: {"smithy.api#enumValue" => "SHORT_ID"}))
    Resources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    RootDirectory.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "Path"))
    RootDirectory.add_member(:creation_info, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationInfo, name: "CreationInfo"))
    RootDirectory.type = Types::RootDirectory
    SecondaryGids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Gid, name: "member"))
    SecurityGroupLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    SecurityGroupLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SecurityGroupLimitExceeded.type = Types::SecurityGroupLimitExceeded
    SecurityGroupNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    SecurityGroupNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SecurityGroupNotFound.type = Types::SecurityGroupNotFound
    SecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "member"))
    Status.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Status.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    Status.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Status.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    SubnetNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    SubnetNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SubnetNotFound.type = Types::SubnetNotFound
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ThrottlingException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    ThroughputLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ThroughputLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThroughputLimitExceeded.type = Types::ThroughputLimitExceeded
    ThroughputMode.add_member(:bursting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BURSTING", traits: {"smithy.api#enumValue" => "bursting"}))
    ThroughputMode.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "provisioned"}))
    ThroughputMode.add_member(:elastic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC", traits: {"smithy.api#enumValue" => "elastic"}))
    TooManyRequests.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    TooManyRequests.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TooManyRequests.type = Types::TooManyRequests
    TransitionToArchiveRules.add_member(:after_1_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_1_DAY", traits: {"smithy.api#enumValue" => "AFTER_1_DAY"}))
    TransitionToArchiveRules.add_member(:after_7_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_7_DAYS", traits: {"smithy.api#enumValue" => "AFTER_7_DAYS"}))
    TransitionToArchiveRules.add_member(:after_14_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_14_DAYS", traits: {"smithy.api#enumValue" => "AFTER_14_DAYS"}))
    TransitionToArchiveRules.add_member(:after_30_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_30_DAYS", traits: {"smithy.api#enumValue" => "AFTER_30_DAYS"}))
    TransitionToArchiveRules.add_member(:after_60_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_60_DAYS", traits: {"smithy.api#enumValue" => "AFTER_60_DAYS"}))
    TransitionToArchiveRules.add_member(:after_90_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_90_DAYS", traits: {"smithy.api#enumValue" => "AFTER_90_DAYS"}))
    TransitionToArchiveRules.add_member(:after_180_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_180_DAYS", traits: {"smithy.api#enumValue" => "AFTER_180_DAYS"}))
    TransitionToArchiveRules.add_member(:after_270_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_270_DAYS", traits: {"smithy.api#enumValue" => "AFTER_270_DAYS"}))
    TransitionToArchiveRules.add_member(:after_365_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_365_DAYS", traits: {"smithy.api#enumValue" => "AFTER_365_DAYS"}))
    TransitionToIARules.add_member(:after_7_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_7_DAYS", traits: {"smithy.api#enumValue" => "AFTER_7_DAYS"}))
    TransitionToIARules.add_member(:after_14_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_14_DAYS", traits: {"smithy.api#enumValue" => "AFTER_14_DAYS"}))
    TransitionToIARules.add_member(:after_30_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_30_DAYS", traits: {"smithy.api#enumValue" => "AFTER_30_DAYS"}))
    TransitionToIARules.add_member(:after_60_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_60_DAYS", traits: {"smithy.api#enumValue" => "AFTER_60_DAYS"}))
    TransitionToIARules.add_member(:after_90_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_90_DAYS", traits: {"smithy.api#enumValue" => "AFTER_90_DAYS"}))
    TransitionToIARules.add_member(:after_1_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_1_DAY", traits: {"smithy.api#enumValue" => "AFTER_1_DAY"}))
    TransitionToIARules.add_member(:after_180_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_180_DAYS", traits: {"smithy.api#enumValue" => "AFTER_180_DAYS"}))
    TransitionToIARules.add_member(:after_270_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_270_DAYS", traits: {"smithy.api#enumValue" => "AFTER_270_DAYS"}))
    TransitionToIARules.add_member(:after_365_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_365_DAYS", traits: {"smithy.api#enumValue" => "AFTER_365_DAYS"}))
    TransitionToPrimaryStorageClassRules.add_member(:after_1_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_1_ACCESS", traits: {"smithy.api#enumValue" => "AFTER_1_ACCESS"}))
    UnsupportedAvailabilityZone.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    UnsupportedAvailabilityZone.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedAvailabilityZone.type = Types::UnsupportedAvailabilityZone
    UntagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateFileSystemOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:creation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationToken, name: "CreationToken", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "FileSystemArn"))
    UpdateFileSystemOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "LifeCycleState", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Name"))
    UpdateFileSystemOutput.add_member(:number_of_mount_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetCount, name: "NumberOfMountTargets", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemSize, name: "SizeInBytes", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceMode, name: "PerformanceMode", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Encrypted, name: "Encrypted"))
    UpdateFileSystemOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    UpdateFileSystemOutput.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "ThroughputMode"))
    UpdateFileSystemOutput.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputInMibps, name: "ProvisionedThroughputInMibps"))
    UpdateFileSystemOutput.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneName, name: "AvailabilityZoneName"))
    UpdateFileSystemOutput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "AvailabilityZoneId"))
    UpdateFileSystemOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemProtectionDescription, name: "FileSystemProtection"))
    UpdateFileSystemOutput.type = Types::UpdateFileSystemOutput
    UpdateFileSystemProtectionOutput.add_member(:replication_overwrite_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationOverwriteProtection, name: "ReplicationOverwriteProtection"))
    UpdateFileSystemProtectionOutput.type = Types::UpdateFileSystemProtectionOutput
    UpdateFileSystemProtectionRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemProtectionRequest.add_member(:replication_overwrite_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationOverwriteProtection, name: "ReplicationOverwriteProtection"))
    UpdateFileSystemProtectionRequest.type = Types::UpdateFileSystemProtectionRequest
    UpdateFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemRequest.add_member(:throughput_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputMode, name: "ThroughputMode"))
    UpdateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputInMibps, name: "ProvisionedThroughputInMibps"))
    UpdateFileSystemRequest.type = Types::UpdateFileSystemRequest
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    MagnolioAPIServiceV20150201 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.efs#MagnolioAPIService_v20150201"
      service.name = "MagnolioAPIServiceV20150201"
      service.version = "2015-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EFS", "arnNamespace" => "elasticfilesystem", "cloudFormationName" => "EFS", "cloudTrailEventSource" => "elasticfilesystem.amazonaws.com", "docId" => "elasticfilesystem-2015-02-01", "endpointPrefix" => "elasticfilesystem"}, "aws.auth#sigv4" => {"name" => "elasticfilesystem"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic File System", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://efs.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://efs-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://elasticfilesystem-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://elasticfilesystem-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://elasticfilesystem.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://elasticfilesystem.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 18, "nodes" => "/////wAAAAH/////AAAAAAAAABAAAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAACAAAAAcF9eEMAAAACQX14QgF9eEJAAAABAAAAA8AAAAJAAAABQAAAA8AAAAKAAAABgAAAA8AAAALAAAABwAAAA0AAAAMAAAACAX14QcF9eELAAAACAAAAA4F9eEKAAAACQX14QYF9eEHAAAACAX14QUF9eEEAAAAAwAAABIAAAARAAAACAX14QEF9eEDAAAACAX14QEF9eEC"}}
      service.add_operation(:create_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateAccessPoint"
        operation.name = "CreateAccessPoint"
        operation.input = CreateAccessPointRequest
        operation.output = CreateAccessPointOutput
        operation.errors << AccessPointAlreadyExists
        operation.errors << AccessPointLimitExceeded
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InternalServerError
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/access-points", "code" => 200}}
      end)
      service.add_operation(:create_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateFileSystem"
        operation.name = "CreateFileSystem"
        operation.input = CreateFileSystemRequest
        operation.output = CreateFileSystemOutput
        operation.errors << BadRequest
        operation.errors << FileSystemAlreadyExists
        operation.errors << FileSystemLimitExceeded
        operation.errors << InsufficientThroughputCapacity
        operation.errors << InternalServerError
        operation.errors << ThroughputLimitExceeded
        operation.errors << UnsupportedAvailabilityZone
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/file-systems", "code" => 201}}
      end)
      service.add_operation(:create_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateMountTarget"
        operation.name = "CreateMountTarget"
        operation.input = CreateMountTargetRequest
        operation.output = CreateMountTargetOutput
        operation.errors << AvailabilityZonesMismatch
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InternalServerError
        operation.errors << IpAddressInUse
        operation.errors << MountTargetConflict
        operation.errors << NetworkInterfaceLimitExceeded
        operation.errors << NoFreeAddressesInSubnet
        operation.errors << SecurityGroupLimitExceeded
        operation.errors << SecurityGroupNotFound
        operation.errors << SubnetNotFound
        operation.errors << UnsupportedAvailabilityZone
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/mount-targets", "code" => 200}}
      end)
      service.add_operation(:create_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateReplicationConfiguration"
        operation.name = "CreateReplicationConfiguration"
        operation.input = CreateReplicationConfigurationRequest
        operation.output = CreateReplicationConfigurationOutput
        operation.errors << BadRequest
        operation.errors << ConflictException
        operation.errors << FileSystemLimitExceeded
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InsufficientThroughputCapacity
        operation.errors << InternalServerError
        operation.errors << ReplicationNotFound
        operation.errors << ThroughputLimitExceeded
        operation.errors << UnsupportedAvailabilityZone
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration", "code" => 200}}
      end)
      service.add_operation(:create_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateTags"
        operation.name = "CreateTags"
        operation.input = CreateTagsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use TagResource."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/create-tags/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:delete_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteAccessPoint"
        operation.name = "DeleteAccessPoint"
        operation.input = DeleteAccessPointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessPointNotFound
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/access-points/{AccessPointId}", "code" => 204}}
      end)
      service.add_operation(:delete_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteFileSystem"
        operation.name = "DeleteFileSystem"
        operation.input = DeleteFileSystemRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << FileSystemInUse
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:delete_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteFileSystemPolicy"
        operation.name = "DeleteFileSystemPolicy"
        operation.input = DeleteFileSystemPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:delete_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteMountTarget"
        operation.name = "DeleteMountTarget"
        operation.input = DeleteMountTargetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << DependencyTimeout
        operation.errors << InternalServerError
        operation.errors << MountTargetNotFound
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/mount-targets/{MountTargetId}", "code" => 204}}
      end)
      service.add_operation(:delete_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteReplicationConfiguration"
        operation.name = "DeleteReplicationConfiguration"
        operation.input = DeleteReplicationConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << ReplicationNotFound
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = DeleteTagsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use UntagResource."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/delete-tags/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:describe_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeAccessPoints"
        operation.name = "DescribeAccessPoints"
        operation.input = DescribeAccessPointsRequest
        operation.output = DescribeAccessPointsResponse
        operation.errors << AccessPointNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/access-points", "code" => 200}}
        operation[:paginator] = Paginators::DescribeAccessPoints.new
      end)
      service.add_operation(:describe_account_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeAccountPreferences"
        operation.name = "DescribeAccountPreferences"
        operation.input = DescribeAccountPreferencesRequest
        operation.output = DescribeAccountPreferencesResponse
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/account-preferences", "code" => 200}}
      end)
      service.add_operation(:describe_backup_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeBackupPolicy"
        operation.name = "DescribeBackupPolicy"
        operation.input = DescribeBackupPolicyRequest
        operation.output = DescribeBackupPolicyOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << PolicyNotFound
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/backup-policy", "code" => 200}}
      end)
      service.add_operation(:describe_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeFileSystemPolicy"
        operation.name = "DescribeFileSystemPolicy"
        operation.input = DescribeFileSystemPolicyRequest
        operation.output = DescribeFileSystemPolicyOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << PolicyNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:describe_file_systems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeFileSystems"
        operation.name = "DescribeFileSystems"
        operation.input = DescribeFileSystemsRequest
        operation.output = DescribeFileSystemsResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeFileSystemsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeFileSystems.new
      end)
      service.add_operation(:describe_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeLifecycleConfiguration"
        operation.name = "DescribeLifecycleConfiguration"
        operation.input = DescribeLifecycleConfigurationRequest
        operation.output = DescribeLifecycleConfigurationOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration", "code" => 200}}
      end)
      service.add_operation(:describe_mount_target_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeMountTargetSecurityGroups"
        operation.name = "DescribeMountTargetSecurityGroups"
        operation.input = DescribeMountTargetSecurityGroupsRequest
        operation.output = DescribeMountTargetSecurityGroupsResponse
        operation.errors << BadRequest
        operation.errors << IncorrectMountTargetState
        operation.errors << InternalServerError
        operation.errors << MountTargetNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/mount-targets/{MountTargetId}/security-groups", "code" => 200}}
      end)
      service.add_operation(:describe_mount_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeMountTargets"
        operation.name = "DescribeMountTargets"
        operation.input = DescribeMountTargetsRequest
        operation.output = DescribeMountTargetsResponse
        operation.errors << AccessPointNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << MountTargetNotFound
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/mount-targets", "code" => 200}}
        operation[:paginator] = Paginators::DescribeMountTargets.new
      end)
      service.add_operation(:describe_replication_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeReplicationConfigurations"
        operation.name = "DescribeReplicationConfigurations"
        operation.input = DescribeReplicationConfigurationsRequest
        operation.output = DescribeReplicationConfigurationsResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.errors << ReplicationNotFound
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/replication-configurations", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurations.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsRequest
        operation.output = DescribeTagsResponse
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use ListTagsForResource."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/tags/{FileSystemId}", "code" => 200}}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessPointNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:modify_mount_target_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#ModifyMountTargetSecurityGroups"
        operation.name = "ModifyMountTargetSecurityGroups"
        operation.input = ModifyMountTargetSecurityGroupsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequest
        operation.errors << IncorrectMountTargetState
        operation.errors << InternalServerError
        operation.errors << MountTargetNotFound
        operation.errors << SecurityGroupLimitExceeded
        operation.errors << SecurityGroupNotFound
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/mount-targets/{MountTargetId}/security-groups", "code" => 204}}
      end)
      service.add_operation(:put_account_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutAccountPreferences"
        operation.name = "PutAccountPreferences"
        operation.input = PutAccountPreferencesRequest
        operation.output = PutAccountPreferencesResponse
        operation.errors << BadRequest
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/account-preferences", "code" => 200}}
      end)
      service.add_operation(:put_backup_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutBackupPolicy"
        operation.name = "PutBackupPolicy"
        operation.input = PutBackupPolicyRequest
        operation.output = PutBackupPolicyOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InternalServerError
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/backup-policy", "code" => 200}}
      end)
      service.add_operation(:put_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutFileSystemPolicy"
        operation.name = "PutFileSystemPolicy"
        operation.input = PutFileSystemPolicyRequest
        operation.output = PutFileSystemPolicyOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InternalServerError
        operation.errors << InvalidPolicyException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:put_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutLifecycleConfiguration"
        operation.name = "PutLifecycleConfiguration"
        operation.input = PutLifecycleConfigurationRequest
        operation.output = PutLifecycleConfigurationOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessPointNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessPointNotFound
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << InternalServerError
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:update_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UpdateFileSystem"
        operation.name = "UpdateFileSystem"
        operation.input = UpdateFileSystemRequest
        operation.output = UpdateFileSystemOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InsufficientThroughputCapacity
        operation.errors << InternalServerError
        operation.errors << ThroughputLimitExceeded
        operation.errors << TooManyRequests
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}", "code" => 202}}
      end)
      service.add_operation(:update_file_system_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UpdateFileSystemProtection"
        operation.name = "UpdateFileSystemProtection"
        operation.input = UpdateFileSystemProtectionRequest
        operation.output = UpdateFileSystemProtectionOutput
        operation.errors << BadRequest
        operation.errors << FileSystemNotFound
        operation.errors << IncorrectFileSystemLifeCycleState
        operation.errors << InsufficientThroughputCapacity
        operation.errors << InternalServerError
        operation.errors << ReplicationAlreadyExists
        operation.errors << ThroughputLimitExceeded
        operation.errors << TooManyRequests
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/protection", "code" => 200}, "smithy.api#idempotent" => {}}
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
