# frozen_string_literal: true

# This is generated code!

module Aws::EFS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessPointAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointAlreadyExists', name: 'AccessPointAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AccessPointArn', name: 'AccessPointArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}$"})
    AccessPointDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointDescription', name: 'AccessPointDescription')
    AccessPointDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#AccessPointDescriptions', name: 'AccessPointDescriptions')
    AccessPointId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AccessPointId', name: 'AccessPointId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}|fsap-[0-9a-f]{8,40})$"})
    AccessPointLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointLimitExceeded', name: 'AccessPointLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPointNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointNotFound', name: 'AccessPointNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AvailabilityZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AvailabilityZoneId', name: 'AvailabilityZoneId')
    AvailabilityZoneName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AvailabilityZoneName', name: 'AvailabilityZoneName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    AvailabilityZonesMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AvailabilityZonesMismatch', name: 'AvailabilityZonesMismatch', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 14}, "smithy.api#pattern" => "^(\\d{12})|(\\d{4}-\\d{4}-\\d{4})$"})
    Backup = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.efs#Backup', name: 'Backup')
    BackupPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#BackupPolicy', name: 'BackupPolicy')
    BadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#BadRequest', name: 'BadRequest', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BypassPolicyLockoutSafetyCheck = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.efs#BypassPolicyLockoutSafetyCheck', name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateAccessPointOutput', name: 'CreateAccessPointOutput')
    CreateAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateAccessPointRequest', name: 'CreateAccessPointRequest')
    CreateFileSystemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateFileSystemOutput', name: 'CreateFileSystemOutput')
    CreateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateFileSystemRequest', name: 'CreateFileSystemRequest')
    CreateMountTargetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateMountTargetOutput', name: 'CreateMountTargetOutput')
    CreateMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateMountTargetRequest', name: 'CreateMountTargetRequest')
    CreateReplicationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateReplicationConfigurationOutput', name: 'CreateReplicationConfigurationOutput')
    CreateReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateReplicationConfigurationRequest', name: 'CreateReplicationConfigurationRequest')
    CreateTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateTagsRequest', name: 'CreateTagsRequest')
    CreationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreationInfo', name: 'CreationInfo')
    CreationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#CreationToken', name: 'CreationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    DeleteAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteAccessPointRequest', name: 'DeleteAccessPointRequest')
    DeleteFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteFileSystemPolicyRequest', name: 'DeleteFileSystemPolicyRequest')
    DeleteFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteFileSystemRequest', name: 'DeleteFileSystemRequest')
    DeleteMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteMountTargetRequest', name: 'DeleteMountTargetRequest')
    DeleteReplicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteReplicationConfigurationRequest', name: 'DeleteReplicationConfigurationRequest')
    DeleteTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteTagsRequest', name: 'DeleteTagsRequest')
    DeletionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#DeletionMode', name: 'DeletionMode')
    DependencyTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DependencyTimeout', name: 'DependencyTimeout', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    DescribeAccessPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccessPointsRequest', name: 'DescribeAccessPointsRequest')
    DescribeAccessPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccessPointsResponse', name: 'DescribeAccessPointsResponse')
    DescribeAccountPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccountPreferencesRequest', name: 'DescribeAccountPreferencesRequest')
    DescribeAccountPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccountPreferencesResponse', name: 'DescribeAccountPreferencesResponse')
    DescribeBackupPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeBackupPolicyOutput', name: 'DescribeBackupPolicyOutput')
    DescribeBackupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeBackupPolicyRequest', name: 'DescribeBackupPolicyRequest')
    DescribeFileSystemPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemPolicyOutput', name: 'DescribeFileSystemPolicyOutput')
    DescribeFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemPolicyRequest', name: 'DescribeFileSystemPolicyRequest')
    DescribeFileSystemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemsRequest', name: 'DescribeFileSystemsRequest')
    DescribeFileSystemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemsResponse', name: 'DescribeFileSystemsResponse')
    DescribeLifecycleConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeLifecycleConfigurationOutput', name: 'DescribeLifecycleConfigurationOutput')
    DescribeLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeLifecycleConfigurationRequest', name: 'DescribeLifecycleConfigurationRequest')
    DescribeMountTargetSecurityGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetSecurityGroupsRequest', name: 'DescribeMountTargetSecurityGroupsRequest')
    DescribeMountTargetSecurityGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetSecurityGroupsResponse', name: 'DescribeMountTargetSecurityGroupsResponse')
    DescribeMountTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetsRequest', name: 'DescribeMountTargetsRequest')
    DescribeMountTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetsResponse', name: 'DescribeMountTargetsResponse')
    DescribeReplicationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeReplicationConfigurationsRequest', name: 'DescribeReplicationConfigurationsRequest')
    DescribeReplicationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeReplicationConfigurationsResponse', name: 'DescribeReplicationConfigurationsResponse')
    DescribeTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeTagsRequest', name: 'DescribeTagsRequest')
    DescribeTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeTagsResponse', name: 'DescribeTagsResponse')
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#Destination', name: 'Destination')
    DestinationToCreate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DestinationToCreate', name: 'DestinationToCreate')
    Destinations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#Destinations', name: 'Destinations')
    DestinationsToCreate = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#DestinationsToCreate', name: 'DestinationsToCreate')
    Encrypted = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.efs#Encrypted', name: 'Encrypted')
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 1}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ErrorMessage', name: 'ErrorMessage')
    FileSystemAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemAlreadyExists', name: 'FileSystemAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#FileSystemArn', name: 'FileSystemArn')
    FileSystemDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemDescription', name: 'FileSystemDescription')
    FileSystemDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#FileSystemDescriptions', name: 'FileSystemDescriptions')
    FileSystemId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#FileSystemId', name: 'FileSystemId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:file-system/fs-[0-9a-f]{8,40}|fs-[0-9a-f]{8,40})$"})
    FileSystemInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemInUse', name: 'FileSystemInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FileSystemLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemLimitExceeded', name: 'FileSystemLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FileSystemNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemNotFound', name: 'FileSystemNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    FileSystemNullableSizeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#FileSystemNullableSizeValue', name: 'FileSystemNullableSizeValue', traits: {"smithy.api#range" => {"min" => 0}})
    FileSystemProtectionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemProtectionDescription', name: 'FileSystemProtectionDescription')
    FileSystemSize = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemSize', name: 'FileSystemSize')
    FileSystemSizeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#FileSystemSizeValue', name: 'FileSystemSizeValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Gid = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#Gid', name: 'Gid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    IncorrectFileSystemLifeCycleState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#IncorrectFileSystemLifeCycleState', name: 'IncorrectFileSystemLifeCycleState', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IncorrectMountTargetState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#IncorrectMountTargetState', name: 'IncorrectMountTargetState', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InsufficientThroughputCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#InsufficientThroughputCapacity', name: 'InsufficientThroughputCapacity', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#InvalidPolicyException', name: 'InvalidPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$"})
    IpAddressInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#IpAddressInUse', name: 'IpAddressInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#IpAddressType', name: 'IpAddressType')
    Ipv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Ipv6Address', name: 'Ipv6Address', traits: {"smithy.api#length" => {"min" => 3, "max" => 39}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|mrk-[0-9a-f]{32}|alias/[a-zA-Z0-9/_-]+|(arn:aws[-a-z]*:kms:[a-z0-9-]+:\\d{12}:((key/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(key/mrk-[0-9a-f]{32})|(alias/[a-zA-Z0-9/_-]+))))$"})
    LifeCycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#LifeCycleState', name: 'LifeCycleState')
    LifecyclePolicies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#LifecyclePolicies', name: 'LifecyclePolicies', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    LifecyclePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#LifecyclePolicy', name: 'LifecyclePolicy')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Marker', name: 'Marker', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#MaxItems', name: 'MaxItems', traits: {"smithy.api#range" => {"min" => 1}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    ModifyMountTargetSecurityGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ModifyMountTargetSecurityGroupsRequest', name: 'ModifyMountTargetSecurityGroupsRequest')
    MountTargetConflict = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#MountTargetConflict', name: 'MountTargetConflict', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    MountTargetCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#MountTargetCount', name: 'MountTargetCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MountTargetDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#MountTargetDescription', name: 'MountTargetDescription')
    MountTargetDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#MountTargetDescriptions', name: 'MountTargetDescriptions')
    MountTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#MountTargetId', name: 'MountTargetId', traits: {"smithy.api#length" => {"min" => 13, "max" => 45}, "smithy.api#pattern" => "^fsmt-[0-9a-f]{8,40}$"})
    MountTargetNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#MountTargetNotFound', name: 'MountTargetNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Name', name: 'Name')
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#NetworkInterfaceId', name: 'NetworkInterfaceId')
    NetworkInterfaceLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#NetworkInterfaceLimitExceeded', name: 'NetworkInterfaceLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NoFreeAddressesInSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#NoFreeAddressesInSubnet', name: 'NoFreeAddressesInSubnet', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OwnerGid = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#OwnerGid', name: 'OwnerGid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    OwnerUid = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#OwnerUid', name: 'OwnerUid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\/|(\\/(?!\\.)+[^$#<>;`|&?{}^*/\\n]+){1,4})$"})
    PerformanceMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#PerformanceMode', name: 'PerformanceMode')
    Permissions = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Permissions', name: 'Permissions', traits: {"smithy.api#length" => {"min" => 3, "max" => 4}, "smithy.api#pattern" => "^[0-7]{3,4}$"})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    PolicyNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PolicyNotFound', name: 'PolicyNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PosixUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PosixUser', name: 'PosixUser')
    ProvisionedThroughputInMibps = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.efs#ProvisionedThroughputInMibps', name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#range" => {"min" => 1.0}})
    PutAccountPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutAccountPreferencesRequest', name: 'PutAccountPreferencesRequest')
    PutAccountPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutAccountPreferencesResponse', name: 'PutAccountPreferencesResponse')
    PutBackupPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutBackupPolicyOutput', name: 'PutBackupPolicyOutput')
    PutBackupPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutBackupPolicyRequest', name: 'PutBackupPolicyRequest')
    PutFileSystemPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutFileSystemPolicyOutput', name: 'PutFileSystemPolicyOutput')
    PutFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutFileSystemPolicyRequest', name: 'PutFileSystemPolicyRequest')
    PutLifecycleConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutLifecycleConfigurationOutput', name: 'PutLifecycleConfigurationOutput')
    PutLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutLifecycleConfigurationRequest', name: 'PutLifecycleConfigurationRequest')
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#RegionName', name: 'RegionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-{0,1}[0-9]{0,1}$"})
    ReplicationAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ReplicationAlreadyExists', name: 'ReplicationAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ReplicationConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ReplicationConfigurationDescription', name: 'ReplicationConfigurationDescription')
    ReplicationConfigurationDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#ReplicationConfigurationDescriptions', name: 'ReplicationConfigurationDescriptions')
    ReplicationNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ReplicationNotFound', name: 'ReplicationNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationOverwriteProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ReplicationOverwriteProtection', name: 'ReplicationOverwriteProtection')
    ReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ReplicationStatus', name: 'ReplicationStatus')
    Resource = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#Resource', name: 'Resource')
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:(access-point/fsap|file-system/fs)-[0-9a-f]{8,40}|fs(ap)?-[0-9a-f]{8,40})$"})
    ResourceIdPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ResourceIdPreference', name: 'ResourceIdPreference')
    ResourceIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ResourceIdType', name: 'ResourceIdType')
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#Resources', name: 'Resources')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RootDirectory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#RootDirectory', name: 'RootDirectory')
    SecondaryGids = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#SecondaryGids', name: 'SecondaryGids', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#SecurityGroup', name: 'SecurityGroup', traits: {"smithy.api#length" => {"min" => 11, "max" => 43}, "smithy.api#pattern" => "^sg-[0-9a-f]{8,40}$"})
    SecurityGroupLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#SecurityGroupLimitExceeded', name: 'SecurityGroupLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroupNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#SecurityGroupNotFound', name: 'SecurityGroupNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#Status', name: 'Status')
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#StatusMessage', name: 'StatusMessage')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 47}, "smithy.api#pattern" => "^subnet-[0-9a-f]{8,40}$"})
    SubnetNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#SubnetNotFound', name: 'SubnetNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?![aA]{1}[wW]{1}[sS]{1}:)([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#Tags', name: 'Tags')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThroughputLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ThroughputLimitExceeded', name: 'ThroughputLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThroughputMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ThroughputMode', name: 'ThroughputMode')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.efs#Timestamp', name: 'Timestamp')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TooManyRequests = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#TooManyRequests', name: 'TooManyRequests', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransitionToArchiveRules = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#TransitionToArchiveRules', name: 'TransitionToArchiveRules')
    TransitionToIARules = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#TransitionToIARules', name: 'TransitionToIARules')
    TransitionToPrimaryStorageClassRules = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#TransitionToPrimaryStorageClassRules', name: 'TransitionToPrimaryStorageClassRules')
    Uid = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#Uid', name: 'Uid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    UnsupportedAvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UnsupportedAvailabilityZone', name: 'UnsupportedAvailabilityZone', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateFileSystemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemOutput', name: 'UpdateFileSystemOutput')
    UpdateFileSystemProtectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemProtectionOutput', name: 'UpdateFileSystemProtectionOutput')
    UpdateFileSystemProtectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemProtectionRequest', name: 'UpdateFileSystemProtectionRequest')
    UpdateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemRequest', name: 'UpdateFileSystemRequest')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#VpcId', name: 'VpcId')

    AccessPointAlreadyExists.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    AccessPointAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessPointAlreadyExists.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#required" => {}}))
    AccessPointAlreadyExists.type = Types::AccessPointAlreadyExists
    AccessPointDescription.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken'))
    AccessPointDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name'))
    AccessPointDescription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    AccessPointDescription.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId'))
    AccessPointDescription.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointArn, location_name: 'AccessPointArn'))
    AccessPointDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId'))
    AccessPointDescription.add_member(:posix_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'PosixUser'))
    AccessPointDescription.add_member(:root_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDirectory, location_name: 'RootDirectory'))
    AccessPointDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId'))
    AccessPointDescription.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState'))
    AccessPointDescription.type = Types::AccessPointDescription
    AccessPointDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointDescription)
    AccessPointLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    AccessPointLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessPointLimitExceeded.type = Types::AccessPointLimitExceeded
    AccessPointNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    AccessPointNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessPointNotFound.type = Types::AccessPointNotFound
    AvailabilityZonesMismatch.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    AvailabilityZonesMismatch.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AvailabilityZonesMismatch.type = Types::AvailabilityZonesMismatch
    BackupPolicy.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    BackupPolicy.type = Types::BackupPolicy
    BadRequest.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    BadRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadRequest.type = Types::BadRequest
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAccessPointOutput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken'))
    CreateAccessPointOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name'))
    CreateAccessPointOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateAccessPointOutput.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId'))
    CreateAccessPointOutput.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointArn, location_name: 'AccessPointArn'))
    CreateAccessPointOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId'))
    CreateAccessPointOutput.add_member(:posix_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'PosixUser'))
    CreateAccessPointOutput.add_member(:root_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDirectory, location_name: 'RootDirectory'))
    CreateAccessPointOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId'))
    CreateAccessPointOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState'))
    CreateAccessPointOutput.type = Types::CreateAccessPointOutput
    CreateAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateAccessPointRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:posix_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'PosixUser'))
    CreateAccessPointRequest.add_member(:root_directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDirectory, location_name: 'RootDirectory'))
    CreateAccessPointRequest.type = Types::CreateAccessPointRequest
    CreateFileSystemOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:creation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'FileSystemArn'))
    CreateFileSystemOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Name'))
    CreateFileSystemOutput.add_member(:number_of_mount_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetCount, location_name: 'NumberOfMountTargets', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSize, location_name: 'SizeInBytes', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:performance_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted'))
    CreateFileSystemOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    CreateFileSystemOutput.add_member(:throughput_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode'))
    CreateFileSystemOutput.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps'))
    CreateFileSystemOutput.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    CreateFileSystemOutput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    CreateFileSystemOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemProtectionDescription, location_name: 'FileSystemProtection'))
    CreateFileSystemOutput.type = Types::CreateFileSystemOutput
    CreateFileSystemRequest.add_member(:creation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:performance_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode'))
    CreateFileSystemRequest.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted'))
    CreateFileSystemRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    CreateFileSystemRequest.add_member(:throughput_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode'))
    CreateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps'))
    CreateFileSystemRequest.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    CreateFileSystemRequest.add_member(:backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup'))
    CreateFileSystemRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateFileSystemRequest.type = Types::CreateFileSystemRequest
    CreateMountTargetOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId'))
    CreateMountTargetOutput.add_member(:mount_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    CreateMountTargetOutput.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: 'Ipv6Address'))
    CreateMountTargetOutput.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId'))
    CreateMountTargetOutput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    CreateMountTargetOutput.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    CreateMountTargetOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId'))
    CreateMountTargetOutput.type = Types::CreateMountTargetOutput
    CreateMountTargetRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    CreateMountTargetRequest.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: 'Ipv6Address'))
    CreateMountTargetRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType'))
    CreateMountTargetRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups'))
    CreateMountTargetRequest.type = Types::CreateMountTargetRequest
    CreateReplicationConfigurationOutput.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'SourceFileSystemRegion', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'SourceFileSystemArn', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:original_source_file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'OriginalSourceFileSystemArn', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SourceFileSystemOwnerId'))
    CreateReplicationConfigurationOutput.type = Types::CreateReplicationConfigurationOutput
    CreateReplicationConfigurationRequest.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateReplicationConfigurationRequest.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationsToCreate, location_name: 'Destinations', traits: {"smithy.api#required" => {}}))
    CreateReplicationConfigurationRequest.type = Types::CreateReplicationConfigurationRequest
    CreateTagsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreationInfo.add_member(:owner_uid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerUid, location_name: 'OwnerUid', traits: {"smithy.api#required" => {}}))
    CreationInfo.add_member(:owner_gid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerGid, location_name: 'OwnerGid', traits: {"smithy.api#required" => {}}))
    CreationInfo.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'Permissions', traits: {"smithy.api#required" => {}}))
    CreationInfo.type = Types::CreationInfo
    DeleteAccessPointRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointRequest.type = Types::DeleteAccessPointRequest
    DeleteFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemPolicyRequest.type = Types::DeleteFileSystemPolicyRequest
    DeleteFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemRequest.type = Types::DeleteFileSystemRequest
    DeleteMountTargetRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMountTargetRequest.type = Types::DeleteMountTargetRequest
    DeleteReplicationConfigurationRequest.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReplicationConfigurationRequest.add_member(:deletion_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionMode, location_name: 'DeletionMode', traits: {"smithy.api#httpQuery" => "deletionMode"}))
    DeleteReplicationConfigurationRequest.type = Types::DeleteReplicationConfigurationRequest
    DeleteTagsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeletionMode.add_member(:all_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_CONFIGURATIONS', traits: {"smithy.api#enumValue" => "ALL_CONFIGURATIONS"}))
    DeletionMode.add_member(:local_configuration_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL_CONFIGURATION_ONLY', traits: {"smithy.api#enumValue" => "LOCAL_CONFIGURATION_ONLY"}))
    DependencyTimeout.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    DependencyTimeout.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DependencyTimeout.type = Types::DependencyTimeout
    DescribeAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    DescribeAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    DescribeAccessPointsRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#httpQuery" => "AccessPointId"}))
    DescribeAccessPointsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeAccessPointsRequest.type = Types::DescribeAccessPointsRequest
    DescribeAccessPointsResponse.add_member(:access_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointDescriptions, location_name: 'AccessPoints'))
    DescribeAccessPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeAccessPointsResponse.type = Types::DescribeAccessPointsResponse
    DescribeAccountPreferencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeAccountPreferencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeAccountPreferencesRequest.type = Types::DescribeAccountPreferencesRequest
    DescribeAccountPreferencesResponse.add_member(:resource_id_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdPreference, location_name: 'ResourceIdPreference'))
    DescribeAccountPreferencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeAccountPreferencesResponse.type = Types::DescribeAccountPreferencesResponse
    DescribeBackupPolicyOutput.add_member(:backup_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy'))
    DescribeBackupPolicyOutput.type = Types::DescribeBackupPolicyOutput
    DescribeBackupPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupPolicyRequest.type = Types::DescribeBackupPolicyRequest
    DescribeFileSystemPolicyOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId'))
    DescribeFileSystemPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    DescribeFileSystemPolicyOutput.type = Types::DescribeFileSystemPolicyOutput
    DescribeFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFileSystemPolicyRequest.type = Types::DescribeFileSystemPolicyRequest
    DescribeFileSystemsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "MaxItems"}))
    DescribeFileSystemsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "Marker"}))
    DescribeFileSystemsRequest.add_member(:creation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#httpQuery" => "CreationToken"}))
    DescribeFileSystemsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeFileSystemsRequest.type = Types::DescribeFileSystemsRequest
    DescribeFileSystemsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    DescribeFileSystemsResponse.add_member(:file_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemDescriptions, location_name: 'FileSystems'))
    DescribeFileSystemsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker'))
    DescribeFileSystemsResponse.type = Types::DescribeFileSystemsResponse
    DescribeLifecycleConfigurationOutput.add_member(:lifecycle_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: 'LifecyclePolicies'))
    DescribeLifecycleConfigurationOutput.type = Types::DescribeLifecycleConfigurationOutput
    DescribeLifecycleConfigurationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLifecycleConfigurationRequest.type = Types::DescribeLifecycleConfigurationRequest
    DescribeMountTargetSecurityGroupsRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMountTargetSecurityGroupsRequest.type = Types::DescribeMountTargetSecurityGroupsRequest
    DescribeMountTargetSecurityGroupsResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#required" => {}}))
    DescribeMountTargetSecurityGroupsResponse.type = Types::DescribeMountTargetSecurityGroupsResponse
    DescribeMountTargetsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "MaxItems"}))
    DescribeMountTargetsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "Marker"}))
    DescribeMountTargetsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeMountTargetsRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#httpQuery" => "MountTargetId"}))
    DescribeMountTargetsRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#httpQuery" => "AccessPointId"}))
    DescribeMountTargetsRequest.type = Types::DescribeMountTargetsRequest
    DescribeMountTargetsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    DescribeMountTargetsResponse.add_member(:mount_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetDescriptions, location_name: 'MountTargets'))
    DescribeMountTargetsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker'))
    DescribeMountTargetsResponse.type = Types::DescribeMountTargetsResponse
    DescribeReplicationConfigurationsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpQuery" => "FileSystemId"}))
    DescribeReplicationConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    DescribeReplicationConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    DescribeReplicationConfigurationsRequest.type = Types::DescribeReplicationConfigurationsRequest
    DescribeReplicationConfigurationsResponse.add_member(:replications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDescriptions, location_name: 'Replications'))
    DescribeReplicationConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeReplicationConfigurationsResponse.type = Types::DescribeReplicationConfigurationsResponse
    DescribeTagsRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#httpQuery" => "MaxItems"}))
    DescribeTagsRequest.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#httpQuery" => "Marker"}))
    DescribeTagsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResponse.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker'))
    DescribeTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    DescribeTagsResponse.add_member(:next_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker'))
    DescribeTagsResponse.type = Types::DescribeTagsResponse
    Destination.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    Destination.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    Destination.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'Region', traits: {"smithy.api#required" => {}}))
    Destination.add_member(:last_replicated_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastReplicatedTimestamp'))
    Destination.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId'))
    Destination.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage'))
    Destination.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    Destination.type = Types::Destination
    DestinationToCreate.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'Region'))
    DestinationToCreate.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    DestinationToCreate.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    DestinationToCreate.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId'))
    DestinationToCreate.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn'))
    DestinationToCreate.type = Types::DestinationToCreate
    Destinations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination)
    DestinationsToCreate.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationToCreate)
    FileSystemAlreadyExists.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemAlreadyExists.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    FileSystemAlreadyExists.type = Types::FileSystemAlreadyExists
    FileSystemDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:creation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'FileSystemArn'))
    FileSystemDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Name'))
    FileSystemDescription.add_member(:number_of_mount_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetCount, location_name: 'NumberOfMountTargets', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSize, location_name: 'SizeInBytes', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:performance_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted'))
    FileSystemDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    FileSystemDescription.add_member(:throughput_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode'))
    FileSystemDescription.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps'))
    FileSystemDescription.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    FileSystemDescription.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    FileSystemDescription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemProtectionDescription, location_name: 'FileSystemProtection'))
    FileSystemDescription.type = Types::FileSystemDescription
    FileSystemDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemDescription)
    FileSystemInUse.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemInUse.type = Types::FileSystemInUse
    FileSystemLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemLimitExceeded.type = Types::FileSystemLimitExceeded
    FileSystemNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemNotFound.type = Types::FileSystemNotFound
    FileSystemProtectionDescription.add_member(:replication_overwrite_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationOverwriteProtection, location_name: 'ReplicationOverwriteProtection'))
    FileSystemProtectionDescription.type = Types::FileSystemProtectionDescription
    FileSystemSize.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSizeValue, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FileSystemSize.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp'))
    FileSystemSize.add_member(:value_in_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: 'ValueInIA'))
    FileSystemSize.add_member(:value_in_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: 'ValueInStandard'))
    FileSystemSize.add_member(:value_in_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: 'ValueInArchive'))
    FileSystemSize.type = Types::FileSystemSize
    IncorrectFileSystemLifeCycleState.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    IncorrectFileSystemLifeCycleState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IncorrectFileSystemLifeCycleState.type = Types::IncorrectFileSystemLifeCycleState
    IncorrectMountTargetState.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    IncorrectMountTargetState.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IncorrectMountTargetState.type = Types::IncorrectMountTargetState
    InsufficientThroughputCapacity.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    InsufficientThroughputCapacity.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InsufficientThroughputCapacity.type = Types::InsufficientThroughputCapacity
    InternalServerError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerError.type = Types::InternalServerError
    InvalidPolicyException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    InvalidPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidPolicyException.type = Types::InvalidPolicyException
    IpAddressInUse.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    IpAddressInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IpAddressInUse.type = Types::IpAddressInUse
    IpAddressType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4_ONLY', traits: {"smithy.api#enumValue" => "IPV4_ONLY"}))
    IpAddressType.add_member(:ipv6_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6_ONLY', traits: {"smithy.api#enumValue" => "IPV6_ONLY"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    LifeCycleState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    LifeCycleState.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    LifeCycleState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "updating"}))
    LifeCycleState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    LifeCycleState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "deleted"}))
    LifeCycleState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    LifecyclePolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicy)
    LifecyclePolicy.add_member(:transition_to_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionToIARules, location_name: 'TransitionToIA'))
    LifecyclePolicy.add_member(:transition_to_primary_storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionToPrimaryStorageClassRules, location_name: 'TransitionToPrimaryStorageClass'))
    LifecyclePolicy.add_member(:transition_to_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionToArchiveRules, location_name: 'TransitionToArchive'))
    LifecyclePolicy.type = Types::LifecyclePolicy
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModifyMountTargetSecurityGroupsRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ModifyMountTargetSecurityGroupsRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups'))
    ModifyMountTargetSecurityGroupsRequest.type = Types::ModifyMountTargetSecurityGroupsRequest
    MountTargetConflict.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    MountTargetConflict.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MountTargetConflict.type = Types::MountTargetConflict
    MountTargetDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId'))
    MountTargetDescription.add_member(:mount_target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#required" => {}}))
    MountTargetDescription.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress'))
    MountTargetDescription.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: 'Ipv6Address'))
    MountTargetDescription.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId'))
    MountTargetDescription.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    MountTargetDescription.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    MountTargetDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId'))
    MountTargetDescription.type = Types::MountTargetDescription
    MountTargetDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetDescription)
    MountTargetNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    MountTargetNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MountTargetNotFound.type = Types::MountTargetNotFound
    NetworkInterfaceLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    NetworkInterfaceLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NetworkInterfaceLimitExceeded.type = Types::NetworkInterfaceLimitExceeded
    NoFreeAddressesInSubnet.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    NoFreeAddressesInSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoFreeAddressesInSubnet.type = Types::NoFreeAddressesInSubnet
    PerformanceMode.add_member(:general_purpose, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_PURPOSE', traits: {"smithy.api#enumValue" => "generalPurpose"}))
    PerformanceMode.add_member(:max_io, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_IO', traits: {"smithy.api#enumValue" => "maxIO"}))
    PolicyNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    PolicyNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicyNotFound.type = Types::PolicyNotFound
    PosixUser.add_member(:uid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Uid, location_name: 'Uid', traits: {"smithy.api#required" => {}}))
    PosixUser.add_member(:gid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Gid, location_name: 'Gid', traits: {"smithy.api#required" => {}}))
    PosixUser.add_member(:secondary_gids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryGids, location_name: 'SecondaryGids'))
    PosixUser.type = Types::PosixUser
    PutAccountPreferencesRequest.add_member(:resource_id_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceIdType', traits: {"smithy.api#required" => {}}))
    PutAccountPreferencesRequest.type = Types::PutAccountPreferencesRequest
    PutAccountPreferencesResponse.add_member(:resource_id_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdPreference, location_name: 'ResourceIdPreference'))
    PutAccountPreferencesResponse.type = Types::PutAccountPreferencesResponse
    PutBackupPolicyOutput.add_member(:backup_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy'))
    PutBackupPolicyOutput.type = Types::PutBackupPolicyOutput
    PutBackupPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupPolicyRequest.add_member(:backup_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy', traits: {"smithy.api#required" => {}}))
    PutBackupPolicyRequest.type = Types::PutBackupPolicyRequest
    PutFileSystemPolicyOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId'))
    PutFileSystemPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy'))
    PutFileSystemPolicyOutput.type = Types::PutFileSystemPolicyOutput
    PutFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:bypass_policy_lockout_safety_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BypassPolicyLockoutSafetyCheck, location_name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false}))
    PutFileSystemPolicyRequest.type = Types::PutFileSystemPolicyRequest
    PutLifecycleConfigurationOutput.add_member(:lifecycle_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: 'LifecyclePolicies'))
    PutLifecycleConfigurationOutput.type = Types::PutLifecycleConfigurationOutput
    PutLifecycleConfigurationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutLifecycleConfigurationRequest.add_member(:lifecycle_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: 'LifecyclePolicies', traits: {"smithy.api#required" => {}}))
    PutLifecycleConfigurationRequest.type = Types::PutLifecycleConfigurationRequest
    ReplicationAlreadyExists.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ReplicationAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ReplicationAlreadyExists.type = Types::ReplicationAlreadyExists
    ReplicationConfigurationDescription.add_member(:source_file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'SourceFileSystemRegion', traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'SourceFileSystemArn', traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:original_source_file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'OriginalSourceFileSystemArn', traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SourceFileSystemOwnerId'))
    ReplicationConfigurationDescription.type = Types::ReplicationConfigurationDescription
    ReplicationConfigurationDescriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDescription)
    ReplicationNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ReplicationNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ReplicationNotFound.type = Types::ReplicationNotFound
    ReplicationOverwriteProtection.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationOverwriteProtection.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ReplicationOverwriteProtection.add_member(:replicating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATING', traits: {"smithy.api#enumValue" => "REPLICATING"}))
    ReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    ReplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ReplicationStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    ReplicationStatus.add_member(:pausing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSING', traits: {"smithy.api#enumValue" => "PAUSING"}))
    Resource.add_member(:file_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FileSystem', traits: {"smithy.api#enumValue" => "FILE_SYSTEM"}))
    Resource.add_member(:mount_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MountTarget', traits: {"smithy.api#enumValue" => "MOUNT_TARGET"}))
    ResourceIdPreference.add_member(:resource_id_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceIdType'))
    ResourceIdPreference.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'Resources'))
    ResourceIdPreference.type = Types::ResourceIdPreference
    ResourceIdType.add_member(:long_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LongId', traits: {"smithy.api#enumValue" => "LONG_ID"}))
    ResourceIdType.add_member(:short_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ShortId', traits: {"smithy.api#enumValue" => "SHORT_ID"}))
    Resources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    RootDirectory.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path'))
    RootDirectory.add_member(:creation_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationInfo, location_name: 'CreationInfo'))
    RootDirectory.type = Types::RootDirectory
    SecondaryGids.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Gid)
    SecurityGroupLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    SecurityGroupLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SecurityGroupLimitExceeded.type = Types::SecurityGroupLimitExceeded
    SecurityGroupNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    SecurityGroupNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SecurityGroupNotFound.type = Types::SecurityGroupNotFound
    SecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup)
    Status.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    Status.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    Status.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    Status.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    SubnetNotFound.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    SubnetNotFound.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SubnetNotFound.type = Types::SubnetNotFound
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    ThroughputLimitExceeded.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    ThroughputLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThroughputLimitExceeded.type = Types::ThroughputLimitExceeded
    ThroughputMode.add_member(:bursting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BURSTING', traits: {"smithy.api#enumValue" => "bursting"}))
    ThroughputMode.add_member(:provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "provisioned"}))
    ThroughputMode.add_member(:elastic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC', traits: {"smithy.api#enumValue" => "elastic"}))
    TooManyRequests.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    TooManyRequests.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequests.type = Types::TooManyRequests
    TransitionToArchiveRules.add_member(:after_1_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_1_DAY', traits: {"smithy.api#enumValue" => "AFTER_1_DAY"}))
    TransitionToArchiveRules.add_member(:after_7_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_7_DAYS', traits: {"smithy.api#enumValue" => "AFTER_7_DAYS"}))
    TransitionToArchiveRules.add_member(:after_14_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_14_DAYS', traits: {"smithy.api#enumValue" => "AFTER_14_DAYS"}))
    TransitionToArchiveRules.add_member(:after_30_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_30_DAYS', traits: {"smithy.api#enumValue" => "AFTER_30_DAYS"}))
    TransitionToArchiveRules.add_member(:after_60_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_60_DAYS', traits: {"smithy.api#enumValue" => "AFTER_60_DAYS"}))
    TransitionToArchiveRules.add_member(:after_90_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_90_DAYS', traits: {"smithy.api#enumValue" => "AFTER_90_DAYS"}))
    TransitionToArchiveRules.add_member(:after_180_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_180_DAYS', traits: {"smithy.api#enumValue" => "AFTER_180_DAYS"}))
    TransitionToArchiveRules.add_member(:after_270_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_270_DAYS', traits: {"smithy.api#enumValue" => "AFTER_270_DAYS"}))
    TransitionToArchiveRules.add_member(:after_365_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_365_DAYS', traits: {"smithy.api#enumValue" => "AFTER_365_DAYS"}))
    TransitionToIARules.add_member(:after_7_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_7_DAYS', traits: {"smithy.api#enumValue" => "AFTER_7_DAYS"}))
    TransitionToIARules.add_member(:after_14_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_14_DAYS', traits: {"smithy.api#enumValue" => "AFTER_14_DAYS"}))
    TransitionToIARules.add_member(:after_30_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_30_DAYS', traits: {"smithy.api#enumValue" => "AFTER_30_DAYS"}))
    TransitionToIARules.add_member(:after_60_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_60_DAYS', traits: {"smithy.api#enumValue" => "AFTER_60_DAYS"}))
    TransitionToIARules.add_member(:after_90_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_90_DAYS', traits: {"smithy.api#enumValue" => "AFTER_90_DAYS"}))
    TransitionToIARules.add_member(:after_1_day, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_1_DAY', traits: {"smithy.api#enumValue" => "AFTER_1_DAY"}))
    TransitionToIARules.add_member(:after_180_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_180_DAYS', traits: {"smithy.api#enumValue" => "AFTER_180_DAYS"}))
    TransitionToIARules.add_member(:after_270_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_270_DAYS', traits: {"smithy.api#enumValue" => "AFTER_270_DAYS"}))
    TransitionToIARules.add_member(:after_365_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_365_DAYS', traits: {"smithy.api#enumValue" => "AFTER_365_DAYS"}))
    TransitionToPrimaryStorageClassRules.add_member(:after_1_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_1_ACCESS', traits: {"smithy.api#enumValue" => "AFTER_1_ACCESS"}))
    UnsupportedAvailabilityZone.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    UnsupportedAvailabilityZone.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnsupportedAvailabilityZone.type = Types::UnsupportedAvailabilityZone
    UntagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateFileSystemOutput.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:creation_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'FileSystemArn'))
    UpdateFileSystemOutput.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:life_cycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Name'))
    UpdateFileSystemOutput.add_member(:number_of_mount_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetCount, location_name: 'NumberOfMountTargets', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSize, location_name: 'SizeInBytes', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:performance_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted'))
    UpdateFileSystemOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    UpdateFileSystemOutput.add_member(:throughput_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode'))
    UpdateFileSystemOutput.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps'))
    UpdateFileSystemOutput.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName'))
    UpdateFileSystemOutput.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId'))
    UpdateFileSystemOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemProtectionDescription, location_name: 'FileSystemProtection'))
    UpdateFileSystemOutput.type = Types::UpdateFileSystemOutput
    UpdateFileSystemProtectionOutput.add_member(:replication_overwrite_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationOverwriteProtection, location_name: 'ReplicationOverwriteProtection'))
    UpdateFileSystemProtectionOutput.type = Types::UpdateFileSystemProtectionOutput
    UpdateFileSystemProtectionRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemProtectionRequest.add_member(:replication_overwrite_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationOverwriteProtection, location_name: 'ReplicationOverwriteProtection'))
    UpdateFileSystemProtectionRequest.type = Types::UpdateFileSystemProtectionRequest
    UpdateFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemRequest.add_member(:throughput_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode'))
    UpdateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps'))
    UpdateFileSystemRequest.type = Types::UpdateFileSystemRequest
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    MagnolioAPIServiceV20150201 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.efs#MagnolioAPIService_v20150201"
      service.name = "MagnolioAPIServiceV20150201"
      service.version = "2015-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EFS", "arnNamespace" => "elasticfilesystem", "cloudFormationName" => "EFS", "cloudTrailEventSource" => "elasticfilesystem.amazonaws.com", "docId" => "elasticfilesystem-2015-02-01", "endpointPrefix" => "elasticfilesystem"}, "aws.auth#sigv4" => {"name" => "elasticfilesystem"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic File System"}
      service.add_operation(:create_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateAccessPoint"
        operation.name = "CreateAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/access-points", "code" => 200}}
      end)
      service.add_operation(:create_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateFileSystem"
        operation.name = "CreateFileSystem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFileSystemRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFileSystemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/file-systems", "code" => 201}}
      end)
      service.add_operation(:create_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateMountTarget"
        operation.name = "CreateMountTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMountTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMountTargetOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZonesMismatch)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetConflict)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoFreeAddressesInSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/mount-targets", "code" => 200}}
      end)
      service.add_operation(:create_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateReplicationConfiguration"
        operation.name = "CreateReplicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration", "code" => 200}}
      end)
      service.add_operation(:create_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateTags"
        operation.name = "CreateTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use TagResource."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/create-tags/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:delete_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteAccessPoint"
        operation.name = "DeleteAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/access-points/{AccessPointId}", "code" => 204}}
      end)
      service.add_operation(:delete_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteFileSystem"
        operation.name = "DeleteFileSystem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileSystemRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:delete_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteFileSystemPolicy"
        operation.name = "DeleteFileSystemPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileSystemPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:delete_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteMountTarget"
        operation.name = "DeleteMountTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMountTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeout)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/mount-targets/{MountTargetId}", "code" => 204}}
      end)
      service.add_operation(:delete_replication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteReplicationConfiguration"
        operation.name = "DeleteReplicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use UntagResource."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/delete-tags/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:describe_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeAccessPoints"
        operation.name = "DescribeAccessPoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessPointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessPointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/access-points", "code" => 200}}
        operation[:paginator] = Paginators::DescribeAccessPoints.new
      end)
      service.add_operation(:describe_account_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeAccountPreferences"
        operation.name = "DescribeAccountPreferences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountPreferencesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountPreferencesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/account-preferences", "code" => 200}}
      end)
      service.add_operation(:describe_backup_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeBackupPolicy"
        operation.name = "DescribeBackupPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/backup-policy", "code" => 200}}
      end)
      service.add_operation(:describe_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeFileSystemPolicy"
        operation.name = "DescribeFileSystemPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:describe_file_systems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeFileSystems"
        operation.name = "DescribeFileSystems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeFileSystemsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeFileSystems.new
      end)
      service.add_operation(:describe_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeLifecycleConfiguration"
        operation.name = "DescribeLifecycleConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLifecycleConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLifecycleConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration", "code" => 200}}
      end)
      service.add_operation(:describe_mount_target_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeMountTargetSecurityGroups"
        operation.name = "DescribeMountTargetSecurityGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetSecurityGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetSecurityGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectMountTargetState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/mount-targets/{MountTargetId}/security-groups", "code" => 200}}
      end)
      service.add_operation(:describe_mount_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeMountTargets"
        operation.name = "DescribeMountTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/mount-targets", "code" => 200}}
        operation[:paginator] = Paginators::DescribeMountTargets.new
      end)
      service.add_operation(:describe_replication_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeReplicationConfigurations"
        operation.name = "DescribeReplicationConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/replication-configurations", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurations.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use ListTagsForResource."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/tags/{FileSystemId}", "code" => 200}}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:modify_mount_target_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#ModifyMountTargetSecurityGroups"
        operation.name = "ModifyMountTargetSecurityGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMountTargetSecurityGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectMountTargetState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/mount-targets/{MountTargetId}/security-groups", "code" => 204}}
      end)
      service.add_operation(:put_account_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutAccountPreferences"
        operation.name = "PutAccountPreferences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountPreferencesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountPreferencesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/account-preferences", "code" => 200}}
      end)
      service.add_operation(:put_backup_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutBackupPolicy"
        operation.name = "PutBackupPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/backup-policy", "code" => 200}}
      end)
      service.add_operation(:put_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutFileSystemPolicy"
        operation.name = "PutFileSystemPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileSystemPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileSystemPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:put_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutLifecycleConfiguration"
        operation.name = "PutLifecycleConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecycleConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecycleConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:update_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UpdateFileSystem"
        operation.name = "UpdateFileSystem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequests)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}", "code" => 202}}
      end)
      service.add_operation(:update_file_system_protection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UpdateFileSystemProtection"
        operation.name = "UpdateFileSystemProtection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemProtectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemProtectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequests)
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
