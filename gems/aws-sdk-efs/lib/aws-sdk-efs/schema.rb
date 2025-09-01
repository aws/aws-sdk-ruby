# frozen_string_literal: true

# This is generated code!

module Aws::EFS
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessPointAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointAlreadyExists', name: 'AccessPointAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    AccessPointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AccessPointArn', name: 'AccessPointArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}$"})
    AccessPointDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointDescription', name: 'AccessPointDescription')
    AccessPointDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#AccessPointDescriptions', name: 'AccessPointDescriptions')
    AccessPointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AccessPointId', name: 'AccessPointId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}|fsap-[0-9a-f]{8,40})$"})
    AccessPointLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointLimitExceeded', name: 'AccessPointLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessPointNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AccessPointNotFound', name: 'AccessPointNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AvailabilityZoneId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AvailabilityZoneId', name: 'AvailabilityZoneId')
    AvailabilityZoneName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AvailabilityZoneName', name: 'AvailabilityZoneName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    AvailabilityZonesMismatch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#AvailabilityZonesMismatch', name: 'AvailabilityZonesMismatch', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 0, "max" => 14}, "smithy.api#pattern" => "^(\\d{12})|(\\d{4}-\\d{4}-\\d{4})$"})
    Backup = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.efs#Backup', name: 'Backup')
    BackupPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#BackupPolicy', name: 'BackupPolicy')
    BadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#BadRequest', name: 'BadRequest', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BypassPolicyLockoutSafetyCheck = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.efs#BypassPolicyLockoutSafetyCheck', name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPointOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateAccessPointOutput', name: 'CreateAccessPointOutput')
    CreateAccessPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateAccessPointRequest', name: 'CreateAccessPointRequest')
    CreateFileSystemOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateFileSystemOutput', name: 'CreateFileSystemOutput')
    CreateFileSystemRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateFileSystemRequest', name: 'CreateFileSystemRequest')
    CreateMountTargetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateMountTargetOutput', name: 'CreateMountTargetOutput')
    CreateMountTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateMountTargetRequest', name: 'CreateMountTargetRequest')
    CreateReplicationConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateReplicationConfigurationOutput', name: 'CreateReplicationConfigurationOutput')
    CreateReplicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateReplicationConfigurationRequest', name: 'CreateReplicationConfigurationRequest')
    CreateTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreateTagsRequest', name: 'CreateTagsRequest')
    CreationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#CreationInfo', name: 'CreationInfo')
    CreationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#CreationToken', name: 'CreationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.+$"})
    DeleteAccessPointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteAccessPointRequest', name: 'DeleteAccessPointRequest')
    DeleteFileSystemPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteFileSystemPolicyRequest', name: 'DeleteFileSystemPolicyRequest')
    DeleteFileSystemRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteFileSystemRequest', name: 'DeleteFileSystemRequest')
    DeleteMountTargetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteMountTargetRequest', name: 'DeleteMountTargetRequest')
    DeleteReplicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteReplicationConfigurationRequest', name: 'DeleteReplicationConfigurationRequest')
    DeleteTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DeleteTagsRequest', name: 'DeleteTagsRequest')
    DeletionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#DeletionMode', name: 'DeletionMode')
    DependencyTimeout = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DependencyTimeout', name: 'DependencyTimeout', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 504})
    DescribeAccessPointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccessPointsRequest', name: 'DescribeAccessPointsRequest')
    DescribeAccessPointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccessPointsResponse', name: 'DescribeAccessPointsResponse')
    DescribeAccountPreferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccountPreferencesRequest', name: 'DescribeAccountPreferencesRequest')
    DescribeAccountPreferencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeAccountPreferencesResponse', name: 'DescribeAccountPreferencesResponse')
    DescribeBackupPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeBackupPolicyOutput', name: 'DescribeBackupPolicyOutput')
    DescribeBackupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeBackupPolicyRequest', name: 'DescribeBackupPolicyRequest')
    DescribeFileSystemPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemPolicyOutput', name: 'DescribeFileSystemPolicyOutput')
    DescribeFileSystemPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemPolicyRequest', name: 'DescribeFileSystemPolicyRequest')
    DescribeFileSystemsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemsRequest', name: 'DescribeFileSystemsRequest')
    DescribeFileSystemsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeFileSystemsResponse', name: 'DescribeFileSystemsResponse')
    DescribeLifecycleConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeLifecycleConfigurationOutput', name: 'DescribeLifecycleConfigurationOutput')
    DescribeLifecycleConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeLifecycleConfigurationRequest', name: 'DescribeLifecycleConfigurationRequest')
    DescribeMountTargetSecurityGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetSecurityGroupsRequest', name: 'DescribeMountTargetSecurityGroupsRequest')
    DescribeMountTargetSecurityGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetSecurityGroupsResponse', name: 'DescribeMountTargetSecurityGroupsResponse')
    DescribeMountTargetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetsRequest', name: 'DescribeMountTargetsRequest')
    DescribeMountTargetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeMountTargetsResponse', name: 'DescribeMountTargetsResponse')
    DescribeReplicationConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeReplicationConfigurationsRequest', name: 'DescribeReplicationConfigurationsRequest')
    DescribeReplicationConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeReplicationConfigurationsResponse', name: 'DescribeReplicationConfigurationsResponse')
    DescribeTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeTagsRequest', name: 'DescribeTagsRequest')
    DescribeTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DescribeTagsResponse', name: 'DescribeTagsResponse')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#Destination', name: 'Destination')
    DestinationToCreate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#DestinationToCreate', name: 'DestinationToCreate')
    Destinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#Destinations', name: 'Destinations')
    DestinationsToCreate = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#DestinationsToCreate', name: 'DestinationsToCreate')
    Encrypted = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.efs#Encrypted', name: 'Encrypted')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 1}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ErrorMessage', name: 'ErrorMessage')
    FileSystemAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemAlreadyExists', name: 'FileSystemAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FileSystemArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#FileSystemArn', name: 'FileSystemArn')
    FileSystemDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemDescription', name: 'FileSystemDescription')
    FileSystemDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#FileSystemDescriptions', name: 'FileSystemDescriptions')
    FileSystemId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#FileSystemId', name: 'FileSystemId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:file-system/fs-[0-9a-f]{8,40}|fs-[0-9a-f]{8,40})$"})
    FileSystemInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemInUse', name: 'FileSystemInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FileSystemLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemLimitExceeded', name: 'FileSystemLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    FileSystemNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemNotFound', name: 'FileSystemNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    FileSystemNullableSizeValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#FileSystemNullableSizeValue', name: 'FileSystemNullableSizeValue', traits: {"smithy.api#range" => {"min" => 0}})
    FileSystemProtectionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemProtectionDescription', name: 'FileSystemProtectionDescription')
    FileSystemSize = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#FileSystemSize', name: 'FileSystemSize')
    FileSystemSizeValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#FileSystemSizeValue', name: 'FileSystemSizeValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Gid = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#Gid', name: 'Gid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    IncorrectFileSystemLifeCycleState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#IncorrectFileSystemLifeCycleState', name: 'IncorrectFileSystemLifeCycleState', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IncorrectMountTargetState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#IncorrectMountTargetState', name: 'IncorrectMountTargetState', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    InsufficientThroughputCapacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#InsufficientThroughputCapacity', name: 'InsufficientThroughputCapacity', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#InvalidPolicyException', name: 'InvalidPolicyException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#IpAddress', name: 'IpAddress', traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$"})
    IpAddressInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#IpAddressInUse', name: 'IpAddressInUse', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    IpAddressType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#IpAddressType', name: 'IpAddressType')
    Ipv6Address = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Ipv6Address', name: 'Ipv6Address', traits: {"smithy.api#length" => {"min" => 3, "max" => 39}})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|mrk-[0-9a-f]{32}|alias/[a-zA-Z0-9/_-]+|(arn:aws[-a-z]*:kms:[a-z0-9-]+:\\d{12}:((key/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(key/mrk-[0-9a-f]{32})|(alias/[a-zA-Z0-9/_-]+))))$"})
    LifeCycleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#LifeCycleState', name: 'LifeCycleState')
    LifecyclePolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#LifecyclePolicies', name: 'LifecyclePolicies', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    LifecyclePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#LifecyclePolicy', name: 'LifecyclePolicy')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Marker = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Marker', name: 'Marker', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    MaxItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#MaxItems', name: 'MaxItems', traits: {"smithy.api#range" => {"min" => 1}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    ModifyMountTargetSecurityGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ModifyMountTargetSecurityGroupsRequest', name: 'ModifyMountTargetSecurityGroupsRequest')
    MountTargetConflict = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#MountTargetConflict', name: 'MountTargetConflict', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    MountTargetCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#MountTargetCount', name: 'MountTargetCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    MountTargetDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#MountTargetDescription', name: 'MountTargetDescription')
    MountTargetDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#MountTargetDescriptions', name: 'MountTargetDescriptions')
    MountTargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#MountTargetId', name: 'MountTargetId', traits: {"smithy.api#length" => {"min" => 13, "max" => 45}, "smithy.api#pattern" => "^fsmt-[0-9a-f]{8,40}$"})
    MountTargetNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#MountTargetNotFound', name: 'MountTargetNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Name', name: 'Name')
    NetworkInterfaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#NetworkInterfaceId', name: 'NetworkInterfaceId')
    NetworkInterfaceLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#NetworkInterfaceLimitExceeded', name: 'NetworkInterfaceLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    NoFreeAddressesInSubnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#NoFreeAddressesInSubnet', name: 'NoFreeAddressesInSubnet', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    OwnerGid = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#OwnerGid', name: 'OwnerGid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    OwnerUid = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#OwnerUid', name: 'OwnerUid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Path', name: 'Path', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\/|(\\/(?!\\.)+[^$#<>;`|&?{}^*/\\n]+){1,4})$"})
    PerformanceMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#PerformanceMode', name: 'PerformanceMode')
    Permissions = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Permissions', name: 'Permissions', traits: {"smithy.api#length" => {"min" => 3, "max" => 4}, "smithy.api#pattern" => "^[0-7]{3,4}$"})
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    PolicyNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PolicyNotFound', name: 'PolicyNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PosixUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PosixUser', name: 'PosixUser')
    ProvisionedThroughputInMibps = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.efs#ProvisionedThroughputInMibps', name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#range" => {"min" => 1.0}})
    PutAccountPreferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutAccountPreferencesRequest', name: 'PutAccountPreferencesRequest')
    PutAccountPreferencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutAccountPreferencesResponse', name: 'PutAccountPreferencesResponse')
    PutBackupPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutBackupPolicyOutput', name: 'PutBackupPolicyOutput')
    PutBackupPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutBackupPolicyRequest', name: 'PutBackupPolicyRequest')
    PutFileSystemPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutFileSystemPolicyOutput', name: 'PutFileSystemPolicyOutput')
    PutFileSystemPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutFileSystemPolicyRequest', name: 'PutFileSystemPolicyRequest')
    PutLifecycleConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutLifecycleConfigurationOutput', name: 'PutLifecycleConfigurationOutput')
    PutLifecycleConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#PutLifecycleConfigurationRequest', name: 'PutLifecycleConfigurationRequest')
    RegionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#RegionName', name: 'RegionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-{0,1}[0-9]{0,1}$"})
    ReplicationAlreadyExists = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ReplicationAlreadyExists', name: 'ReplicationAlreadyExists', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ReplicationConfigurationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ReplicationConfigurationDescription', name: 'ReplicationConfigurationDescription')
    ReplicationConfigurationDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#ReplicationConfigurationDescriptions', name: 'ReplicationConfigurationDescriptions')
    ReplicationNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ReplicationNotFound', name: 'ReplicationNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReplicationOverwriteProtection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ReplicationOverwriteProtection', name: 'ReplicationOverwriteProtection')
    ReplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ReplicationStatus', name: 'ReplicationStatus')
    Resource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#Resource', name: 'Resource')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:(access-point/fsap|file-system/fs)-[0-9a-f]{8,40}|fs(ap)?-[0-9a-f]{8,40})$"})
    ResourceIdPreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ResourceIdPreference', name: 'ResourceIdPreference')
    ResourceIdType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ResourceIdType', name: 'ResourceIdType')
    Resources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#Resources', name: 'Resources')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RootDirectory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#RootDirectory', name: 'RootDirectory')
    SecondaryGids = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#SecondaryGids', name: 'SecondaryGids', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SecurityGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#SecurityGroup', name: 'SecurityGroup', traits: {"smithy.api#length" => {"min" => 11, "max" => 43}, "smithy.api#pattern" => "^sg-[0-9a-f]{8,40}$"})
    SecurityGroupLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#SecurityGroupLimitExceeded', name: 'SecurityGroupLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroupNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#SecurityGroupNotFound', name: 'SecurityGroupNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SecurityGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#SecurityGroups', name: 'SecurityGroups', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#Status', name: 'Status')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#StatusMessage', name: 'StatusMessage')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 47}, "smithy.api#pattern" => "^subnet-[0-9a-f]{8,40}$"})
    SubnetNotFound = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#SubnetNotFound', name: 'SubnetNotFound', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?![aA]{1}[wW]{1}[sS]{1}:)([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.efs#Tags', name: 'Tags')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThroughputLimitExceeded = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ThroughputLimitExceeded', name: 'ThroughputLimitExceeded', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThroughputMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#ThroughputMode', name: 'ThroughputMode')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.efs#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    TooManyRequests = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#TooManyRequests', name: 'TooManyRequests', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TransitionToArchiveRules = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#TransitionToArchiveRules', name: 'TransitionToArchiveRules')
    TransitionToIARules = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#TransitionToIARules', name: 'TransitionToIARules')
    TransitionToPrimaryStorageClassRules = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.efs#TransitionToPrimaryStorageClassRules', name: 'TransitionToPrimaryStorageClassRules')
    Uid = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.efs#Uid', name: 'Uid', traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    UnsupportedAvailabilityZone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UnsupportedAvailabilityZone', name: 'UnsupportedAvailabilityZone', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateFileSystemOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemOutput', name: 'UpdateFileSystemOutput')
    UpdateFileSystemProtectionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemProtectionOutput', name: 'UpdateFileSystemProtectionOutput')
    UpdateFileSystemProtectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemProtectionRequest', name: 'UpdateFileSystemProtectionRequest')
    UpdateFileSystemRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#UpdateFileSystemRequest', name: 'UpdateFileSystemRequest')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.efs#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.efs#VpcId', name: 'VpcId')

    AccessPointAlreadyExists.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    AccessPointAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessPointAlreadyExists.add_member(:access_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#required" => {}}))
    AccessPointAlreadyExists.type = Types::AccessPointAlreadyExists
    AccessPointDescription.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The opaque string specified in the request to ensure idempotent creation.</p>"}))
    AccessPointDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the access point. This is the value of the <code>Name</code> tag.</p>"}))
    AccessPointDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the access point, presented as an array of Tag objects.</p>"}))
    AccessPointDescription.add_member(:access_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#documentation" => "<p>The ID of the access point, assigned by Amazon EFS.</p>"}))
    AccessPointDescription.add_member(:access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointArn, location_name: 'AccessPointArn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) associated with the access\n      point.</p>"}))
    AccessPointDescription.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the EFS file system that the access point applies to.</p>"}))
    AccessPointDescription.add_member(:posix_user, Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'PosixUser', traits: {"smithy.api#documentation" => "<p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by\n      NFS clients using the access point.</p>"}))
    AccessPointDescription.add_member(:root_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDirectory, location_name: 'RootDirectory', traits: {"smithy.api#documentation" => "<p>The directory on the EFS file system that the access point exposes as the root\n      directory to NFS clients using the access point.</p>"}))
    AccessPointDescription.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>Identifies the Amazon Web Services account that owns the access point resource.</p>"}))
    AccessPointDescription.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>Identifies the lifecycle phase of the access point.</p>"}))
    AccessPointDescription.type = Types::AccessPointDescription
    AccessPointDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointDescription)
    AccessPointLimitExceeded.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    AccessPointLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessPointLimitExceeded.type = Types::AccessPointLimitExceeded
    AccessPointNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    AccessPointNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessPointNotFound.type = Types::AccessPointNotFound
    AvailabilityZonesMismatch.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    AvailabilityZonesMismatch.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AvailabilityZonesMismatch.type = Types::AvailabilityZonesMismatch
    BackupPolicy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes the status of the file system's backup policy.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>\n                     <code>ENABLED</code>\n                  </b> – EFS is automatically\n          backing up the file system.</p>\n            </li>\n            <li>\n               <p>\n                  <b>\n                     <code>ENABLING</code>\n                  </b> – EFS is turning on\n          automatic backups for the file system.</p>\n            </li>\n            <li>\n               <p>\n                  <b>\n                     <code>DISABLED</code>\n                  </b> – Automatic back ups are turned\n          off for the file system.</p>\n            </li>\n            <li>\n               <p>\n                  <b>\n                     <code>DISABLING</code>\n                  </b> – EFS is turning off\n          automatic backups for the file system.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    BackupPolicy.type = Types::BackupPolicy
    BadRequest.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    BadRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadRequest.type = Types::BadRequest
    ConflictException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAccessPointOutput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The opaque string specified in the request to ensure idempotent creation.</p>"}))
    CreateAccessPointOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the access point. This is the value of the <code>Name</code> tag.</p>"}))
    CreateAccessPointOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the access point, presented as an array of Tag objects.</p>"}))
    CreateAccessPointOutput.add_member(:access_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#documentation" => "<p>The ID of the access point, assigned by Amazon EFS.</p>"}))
    CreateAccessPointOutput.add_member(:access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointArn, location_name: 'AccessPointArn', traits: {"smithy.api#documentation" => "<p>The unique Amazon Resource Name (ARN) associated with the access\n      point.</p>"}))
    CreateAccessPointOutput.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the EFS file system that the access point applies to.</p>"}))
    CreateAccessPointOutput.add_member(:posix_user, Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'PosixUser', traits: {"smithy.api#documentation" => "<p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by\n      NFS clients using the access point.</p>"}))
    CreateAccessPointOutput.add_member(:root_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDirectory, location_name: 'RootDirectory', traits: {"smithy.api#documentation" => "<p>The directory on the EFS file system that the access point exposes as the root\n      directory to NFS clients using the access point.</p>"}))
    CreateAccessPointOutput.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>Identifies the Amazon Web Services account that owns the access point resource.</p>"}))
    CreateAccessPointOutput.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>Identifies the lifecycle phase of the access point.</p>"}))
    CreateAccessPointOutput.type = Types::CreateAccessPointOutput
    CreateAccessPointRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent\n      creation.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Creates tags associated with the access point. Each tag is a key-value pair, each key must be unique. For more \n      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n      in the <i>Amazon Web Services General Reference Guide</i>.</p>"}))
    CreateAccessPointRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the EFS file system that the access point provides access to.</p>", "smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:posix_user, Smithy::Schema::Shapes::ShapeRef.new(shape: PosixUser, location_name: 'PosixUser', traits: {"smithy.api#documentation" => "<p>The operating system user and\n      group applied to all file system requests made using the access point.</p>"}))
    CreateAccessPointRequest.add_member(:root_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDirectory, location_name: 'RootDirectory', traits: {"smithy.api#documentation" => "<p>Specifies the directory on the EFS file system that the access point exposes as\n      the root directory of your file system to NFS clients using the access point. The clients\n      using the access point can only access the root directory and below. If the\n        <code>RootDirectory</code> > <code>Path</code> specified does not exist, Amazon EFS creates it and applies the <code>CreationInfo</code> settings when a client connects to an\n      access point. When specifying a <code>RootDirectory</code>, you must provide the\n        <code>Path</code>, and the <code>CreationInfo</code>.</p>\n         <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory. \n      If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount \n      using the access point will fail.</p>"}))
    CreateAccessPointRequest.type = Types::CreateAccessPointRequest
    CreateFileSystemOutput.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that created the file system.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:creation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#documentation" => "<p>The opaque string specified in the request.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system, assigned by Amazon EFS.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'FileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the EFS file system, in the\n      format\n          <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>\n            </code>.\n      Example with sample data:\n        <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>\n         </p>"}))
    CreateFileSystemOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time that the file system was created, in seconds (since\n      1970-01-01T00:00:00Z).</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>The lifecycle phase of the file system.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>You can add tags to a file system, including a <code>Name</code> tag. For more\n      information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns\n      the value in this field. </p>"}))
    CreateFileSystemOutput.add_member(:number_of_mount_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetCount, location_name: 'NumberOfMountTargets', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSize, location_name: 'SizeInBytes', traits: {"smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the file system, in its\n        <code>Value</code> field, and the time at which that size was determined in its\n        <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of\n      seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent\n      the size of a consistent snapshot of the file system, but it is eventually consistent when\n      there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual\n      size only if the file system is not modified for a period longer than a couple of hours.\n      Otherwise, the value is not the exact size that the file system was at any point in time.\n    </p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#documentation" => "<p>The performance mode of the file system.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>A Boolean value that, if true, indicates that the file system is encrypted.</p>"}))
    CreateFileSystemOutput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of an KMS key used to protect the encrypted file system.</p>"}))
    CreateFileSystemOutput.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode', traits: {"smithy.api#documentation" => "<p>Displays the file system's throughput mode. For more information, see \n      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes\">Throughput modes</a> \n      in the <i>Amazon EFS User Guide</i>.\n    </p>"}))
    CreateFileSystemOutput.add_member(:provisioned_throughput_in_mibps, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#documentation" => "<p>The amount of provisioned throughput, measured in MiBps, for the file system. Valid for\n      file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>"}))
    CreateFileSystemOutput.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is\n      valid only for One Zone file systems. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html\">Using EFS storage\n        classes</a> in the <i>Amazon EFS User Guide</i>.</p>"}))
    CreateFileSystemOutput.add_member(:availability_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId', traits: {"smithy.api#documentation" => "<p>The unique and consistent identifier of the Availability Zone in which the file system is\n      located, and is valid only for One Zone file systems. For example,\n        <code>use1-az1</code> is an Availability Zone ID for the us-east-1 Amazon Web Services Region, and\n      it has the same location in every Amazon Web Services account.</p>"}))
    CreateFileSystemOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the file system, presented as an array of <code>Tag</code>\n      objects.</p>", "smithy.api#required" => {}}))
    CreateFileSystemOutput.add_member(:file_system_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemProtectionDescription, location_name: 'FileSystemProtection', traits: {"smithy.api#documentation" => "<p>Describes the protection on the file system. </p>"}))
    CreateFileSystemOutput.type = Types::CreateFileSystemOutput
    CreateFileSystemRequest.add_member(:creation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#documentation" => "<p>A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent\n      creation.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#documentation" => "<p>The performance mode of the file system. We recommend <code>generalPurpose</code>\n      performance mode for all file systems. File systems using the <code>maxIO</code> performance\n      mode can scale to higher levels of aggregate throughput and operations per second with a\n      tradeoff of slightly higher latencies for most file operations. The performance mode\n      can't be changed after the file system has been created. The <code>maxIO</code> mode is\n      not supported on One Zone file systems.</p>\n         <important>\n            <p>Due to the higher per-operation latencies with Max I/O, we recommend using General Purpose performance mode for all file systems.</p>\n         </important>\n         <p>Default is <code>generalPurpose</code>.</p>"}))
    CreateFileSystemRequest.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>A Boolean value that, if true, creates an encrypted file system. When creating an\n      encrypted file system, you have the option of specifying an existing Key Management Service key (KMS key).\n      If you don't specify a KMS key, then the default KMS key for\n      Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system.\n    </p>"}))
    CreateFileSystemRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the KMS key that you want to use to protect the encrypted file\n      system. This parameter is required only if you want to use a non-default KMS key. If this parameter is not specified, the default KMS key for Amazon EFS is used. You can specify a KMS key ID using the following\n      formats:</p>\n         <ul>\n            <li>\n               <p>Key ID - A unique identifier of the key, for example\n            <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>ARN - An Amazon Resource Name (ARN) for the key, for example\n            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>Key alias - A previously created display name for a key, for example\n            <code>alias/projectKey1</code>.</p>\n            </li>\n            <li>\n               <p>Key alias ARN - An ARN for a key alias, for example\n            <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>\n            </li>\n         </ul>\n         <p>If you use <code>KmsKeyId</code>, you must set the <a>CreateFileSystemRequest$Encrypted</a> \n      parameter to true.</p>\n         <important>\n            <p>EFS accepts only symmetric KMS keys. You cannot use asymmetric \n      KMS keys with Amazon EFS file systems.</p>\n         </important>"}))
    CreateFileSystemRequest.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode', traits: {"smithy.api#documentation" => "<p>Specifies the throughput mode for the file system. The mode can be <code>bursting</code>,\n        <code>provisioned</code>, or <code>elastic</code>. If you set <code>ThroughputMode</code> to\n        <code>provisioned</code>, you must also set a value for\n        <code>ProvisionedThroughputInMibps</code>. After you create the file system, you can\n      decrease your file system's Provisioned throughput or change between the\n      throughput modes, with certain time restrictions. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput\">Specifying\n        throughput with provisioned mode</a> in the <i>Amazon EFS User\n        Guide</i>. </p>\n         <p>Default is <code>bursting</code>.</p>"}))
    CreateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#documentation" => "<p>The throughput, measured in mebibytes per second (MiBps), that you want to provision for a\n      file system that you're creating. Required if <code>ThroughputMode</code> is set to\n        <code>provisioned</code>. Valid values are 1-3414 MiBps, with the upper limit depending on\n      Region. To increase this limit, contact Amazon Web ServicesSupport. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits\">Amazon EFS quotas\n        that you can increase</a> in the <i>Amazon EFS User\n      Guide</i>.</p>"}))
    CreateFileSystemRequest.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>For One Zone file systems, specify the Amazon Web Services\n      Availability Zone in which to create the file system. Use the format <code>us-east-1a</code> to\n      specify the  Availability Zone. For more information about One Zone file systems, see\n      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html#file-system-type\">EFS file system types</a> in the <i>Amazon EFS User Guide</i>.</p>\n         <note>\n            <p>One Zone file systems are not available in all Availability Zones in Amazon Web Services Regions where Amazon EFS is available.</p>\n         </note>"}))
    CreateFileSystemRequest.add_member(:backup, Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup', traits: {"smithy.api#documentation" => "<p>Specifies whether automatic backups are enabled on the file system that you are creating.\n      Set the value to <code>true</code> to enable automatic backups. If you are creating a\n      One Zone file system, automatic backups are enabled by default. For more\n      information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups\">Automatic backups</a> in the\n          <i>Amazon EFS User Guide</i>.</p>\n         <p>Default is <code>false</code>. However, if you specify an <code>AvailabilityZoneName</code>, \n      the default is <code>true</code>.</p>\n         <note>\n            <p>Backup is not available in all Amazon Web Services Regions where Amazon EFS is available.</p>\n         </note>"}))
    CreateFileSystemRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Use to create one or more tags associated with the file system. Each\n        tag is a user-defined key-value pair. Name your file system on creation by including a\n        <code>\"Key\":\"Name\",\"Value\":\"{value}\"</code> key-value pair. Each key must be unique. For more \n        information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>\n        in the <i>Amazon Web Services General Reference Guide</i>.</p>"}))
    CreateFileSystemRequest.type = Types::CreateFileSystemRequest
    CreateMountTargetOutput.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>Amazon Web Services account ID that owns the resource.</p>"}))
    CreateMountTargetOutput.add_member(:mount_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#documentation" => "<p>System-assigned mount target ID.</p>", "smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system for which the mount target is intended.</p>", "smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the mount target's subnet.</p>", "smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>Lifecycle state of the mount target.</p>", "smithy.api#required" => {}}))
    CreateMountTargetOutput.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>Address at which the file system can be mounted by using the mount target.</p>"}))
    CreateMountTargetOutput.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: 'Ipv6Address', traits: {"smithy.api#documentation" => "<p>The IPv6 address for the mount target.</p>"}))
    CreateMountTargetOutput.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The ID of the network interface that Amazon EFS created when it created the mount\n      target.</p>"}))
    CreateMountTargetOutput.add_member(:availability_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId', traits: {"smithy.api#documentation" => "<p>The unique and consistent identifier of the Availability Zone that the mount target resides in.\n      For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it\n      has the same location in every Amazon Web Services account.</p>"}))
    CreateMountTargetOutput.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone in which the mount target is located. Availability Zones are\n      independently mapped to names for each Amazon Web Services account. For example, the\n      Availability Zone <code>us-east-1a</code> for your Amazon Web Services account might not be the\n      same location as <code>us-east-1a</code> for another Amazon Web Services account.</p>"}))
    CreateMountTargetOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) ID that the mount target is configured in.</p>"}))
    CreateMountTargetOutput.type = Types::CreateMountTargetOutput
    CreateMountTargetRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system for which to create the mount target.</p>", "smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the subnet to add the mount target in. For One Zone file systems, use the subnet\n      that is associated with the file system's Availability Zone.</p>", "smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>If the IP address type for the mount target is IPv4, then specify the IPv4 address within\n      the address range of the specified subnet.</p>"}))
    CreateMountTargetRequest.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: 'Ipv6Address', traits: {"smithy.api#documentation" => "<p>If the IP address type for the mount target is IPv6, then specify the IPv6 address within\n      the address range of the specified subnet.</p>"}))
    CreateMountTargetRequest.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressType, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>Specify the type of IP address of the mount target you are creating. Options are IPv4,\n      dual stack, or IPv6. If you don’t specify an IpAddressType, then IPv4 is used.</p>\n         <ul>\n            <li>\n               <p>IPV4_ONLY – Create mount target with IPv4 only subnet or dual-stack subnet.</p>\n            </li>\n            <li>\n               <p>DUAL_STACK – Create mount target with dual-stack subnet.</p>\n            </li>\n            <li>\n               <p>IPV6_ONLY – Create mount target with IPv6 only subnet.</p>\n            </li>\n         </ul>\n         <note>\n            <p>Creating IPv6 mount target only ENI in dual-stack subnet is not supported.</p>\n         </note>"}))
    CreateMountTargetRequest.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be for the same\n      VPC as the subnet specified. The maximum number of security groups depends on account quota.\n      For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html\">Amazon VPC Quotas</a>\n      in the <i>Amazon VPC User Guide</i> (see the <b>Security Groups</b>\n      table).\n    </p>"}))
    CreateMountTargetRequest.type = Types::CreateMountTargetRequest
    CreateReplicationConfigurationOutput.add_member(:source_file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the source Amazon EFS file system that is being replicated.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'SourceFileSystemRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the source EFS file system is\n      located.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'SourceFileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the current source file system in the\n      replication configuration.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:original_source_file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'OriginalSourceFileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the original source EFS file\n      system in the replication configuration.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Describes when the replication configuration was created.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>An array of destination objects. Only one destination object is supported.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationOutput.add_member(:source_file_system_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SourceFileSystemOwnerId', traits: {"smithy.api#documentation" => "<p>ID of the Amazon Web Services account in which the source file system resides.</p>"}))
    CreateReplicationConfigurationOutput.type = Types::CreateReplicationConfigurationOutput
    CreateReplicationConfigurationRequest.add_member(:source_file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon EFS file system that you want to replicate. This file system cannot already be \n    a source or destination file system in another replication configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateReplicationConfigurationRequest.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationsToCreate, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>An array of destination configuration objects. Only one destination configuration object is supported.</p>", "smithy.api#required" => {}}))
    CreateReplicationConfigurationRequest.type = Types::CreateReplicationConfigurationRequest
    CreateTagsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system whose tags you want to modify (String). This operation modifies\n      the tags only, not the file system.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value\n      pair. </p>", "smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreationInfo.add_member(:owner_uid, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerUid, location_name: 'OwnerUid', traits: {"smithy.api#documentation" => "<p>Specifies the POSIX user ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>", "smithy.api#required" => {}}))
    CreationInfo.add_member(:owner_gid, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerGid, location_name: 'OwnerGid', traits: {"smithy.api#documentation" => "<p>Specifies the POSIX group ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>", "smithy.api#required" => {}}))
    CreationInfo.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>Specifies the POSIX permissions to apply to the <code>RootDirectory</code>, in the format of an octal number representing the file's mode bits.</p>", "smithy.api#required" => {}}))
    CreationInfo.type = Types::CreationInfo
    DeleteAccessPointRequest.add_member(:access_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#documentation" => "<p>The ID of the access point that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointRequest.type = Types::DeleteAccessPointRequest
    DeleteFileSystemPolicyRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies the EFS file system for which to delete the\n        <code>FileSystemPolicy</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemPolicyRequest.type = Types::DeleteFileSystemPolicyRequest
    DeleteFileSystemRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemRequest.type = Types::DeleteFileSystemRequest
    DeleteMountTargetRequest.add_member(:mount_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#documentation" => "<p>The ID of the mount target to delete (String).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMountTargetRequest.type = Types::DeleteMountTargetRequest
    DeleteReplicationConfigurationRequest.add_member(:source_file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the source file system in the replication configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReplicationConfigurationRequest.add_member(:deletion_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionMode, location_name: 'DeletionMode', traits: {"smithy.api#documentation" => "<p>When replicating across Amazon Web Services accounts or across Amazon Web Services Regions, \n      Amazon EFS deletes the replication configuration from both the source \n      and destination account or Region (<code>ALL_CONFIGURATIONS</code>) by default. \n      If there's a configuration or permissions issue that prevents Amazon EFS from deleting the \n      replication configuration from both sides, you can use the <code>LOCAL_CONFIGURATION_ONLY</code> mode\n      to delete the replication configuration from only the local side (the account\n       or Region from which the delete is performed). </p>\n         <note>\n            <p>Only use the <code>LOCAL_CONFIGURATION_ONLY</code> mode in the case that Amazon EFS is unable\n       to delete the replication configuration in both the source and destination account or Region. \n        Deleting the local configuration \n       leaves the configuration in the other account or Region unrecoverable.</p>\n            <p>Additionally, do not use this mode for same-account, same-region replication as doing so results in a \n        BadRequest exception error.</p>\n         </note>", "smithy.api#httpQuery" => "deletionMode"}))
    DeleteReplicationConfigurationRequest.type = Types::DeleteReplicationConfigurationRequest
    DeleteTagsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system whose tags you want to delete (String).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys to delete.</p>", "smithy.api#required" => {}}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeletionMode.add_member(:all_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_CONFIGURATIONS', traits: {"smithy.api#enumValue" => "ALL_CONFIGURATIONS"}))
    DeletionMode.add_member(:local_configuration_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL_CONFIGURATION_ONLY', traits: {"smithy.api#enumValue" => "LOCAL_CONFIGURATION_ONLY"}))
    DependencyTimeout.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    DependencyTimeout.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DependencyTimeout.type = Types::DependencyTimeout
    DescribeAccessPointsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>(Optional) When retrieving all access points for a file system,\n      you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.  \n      The default value is 100. </p>", "smithy.api#httpQuery" => "MaxResults"}))
    DescribeAccessPointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n            <code>NextToken</code> is present if the response is paginated. You can use \n      <code>NextMarker</code> in the subsequent request to fetch the next page of access point descriptions.</p>", "smithy.api#httpQuery" => "NextToken"}))
    DescribeAccessPointsRequest.add_member(:access_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#documentation" => "<p>(Optional) Specifies an EFS access point to describe in the response; mutually\n      exclusive with <code>FileSystemId</code>.</p>", "smithy.api#httpQuery" => "AccessPointId"}))
    DescribeAccessPointsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>(Optional) If you provide a <code>FileSystemId</code>, EFS returns all access\n      points for that file system; mutually exclusive with <code>AccessPointId</code>.</p>", "smithy.api#httpQuery" => "FileSystemId"}))
    DescribeAccessPointsRequest.type = Types::DescribeAccessPointsRequest
    DescribeAccessPointsResponse.add_member(:access_points, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointDescriptions, location_name: 'AccessPoints', traits: {"smithy.api#documentation" => "<p>An array of access point descriptions.</p>"}))
    DescribeAccessPointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Present if there are more access points than returned in the response. \n      You can use the NextMarker in the subsequent request to fetch the additional descriptions.</p>"}))
    DescribeAccessPointsResponse.type = Types::DescribeAccessPointsResponse
    DescribeAccountPreferencesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of \n      Amazon Web Services account preferences if the response payload was paginated.</p>"}))
    DescribeAccountPreferencesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>(Optional) When retrieving account preferences,\n      you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.  \n      The default value is 100. </p>"}))
    DescribeAccountPreferencesRequest.type = Types::DescribeAccountPreferencesRequest
    DescribeAccountPreferencesResponse.add_member(:resource_id_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdPreference, location_name: 'ResourceIdPreference', traits: {"smithy.api#documentation" => "<p>Describes the resource ID preference setting for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region.</p>"}))
    DescribeAccountPreferencesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Present if there are more records than returned in the response. \n      You can use the <code>NextToken</code> in the subsequent request to fetch the additional descriptions.</p>"}))
    DescribeAccountPreferencesResponse.type = Types::DescribeAccountPreferencesResponse
    DescribeBackupPolicyOutput.add_member(:backup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy', traits: {"smithy.api#documentation" => "<p>Describes the file system's backup policy, indicating whether automatic backups are\n      turned on or off.</p>"}))
    DescribeBackupPolicyOutput.type = Types::DescribeBackupPolicyOutput
    DescribeBackupPolicyRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies which EFS file system for which to retrieve the\n        <code>BackupPolicy</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeBackupPolicyRequest.type = Types::DescribeBackupPolicyRequest
    DescribeFileSystemPolicyOutput.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies the EFS file system to which the <code>FileSystemPolicy</code>\n      applies.</p>"}))
    DescribeFileSystemPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file\n      system.</p>"}))
    DescribeFileSystemPolicyOutput.type = Types::DescribeFileSystemPolicyOutput
    DescribeFileSystemPolicyRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies which EFS file system to retrieve the <code>FileSystemPolicy</code>\n      for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeFileSystemPolicyRequest.type = Types::DescribeFileSystemPolicyRequest
    DescribeFileSystemsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>(Optional) Specifies the maximum number of file systems to return in the response\n      (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.\n      </p>", "smithy.api#httpQuery" => "MaxItems"}))
    DescribeFileSystemsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>(Optional) Opaque pagination token returned from a previous\n        <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the\n      list from where the returning call had left off. </p>", "smithy.api#httpQuery" => "Marker"}))
    DescribeFileSystemsRequest.add_member(:creation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#documentation" => "<p>(Optional) Restricts the list to the file system with this creation token (String). You\n      specify a creation token when you create an Amazon EFS file system.</p>", "smithy.api#httpQuery" => "CreationToken"}))
    DescribeFileSystemsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>(Optional) ID of the file system whose description you want to retrieve\n      (String).</p>", "smithy.api#httpQuery" => "FileSystemId"}))
    DescribeFileSystemsRequest.type = Types::DescribeFileSystemsRequest
    DescribeFileSystemsResponse.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>Present if provided by caller in the request (String).</p>"}))
    DescribeFileSystemsResponse.add_member(:file_systems, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemDescriptions, location_name: 'FileSystems', traits: {"smithy.api#documentation" => "<p>An array of file system descriptions.</p>"}))
    DescribeFileSystemsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>Present if there are more file systems than returned in the response (String). You can\n      use the <code>NextMarker</code> in the subsequent request to fetch the descriptions.</p>"}))
    DescribeFileSystemsResponse.type = Types::DescribeFileSystemsResponse
    DescribeLifecycleConfigurationOutput.add_member(:lifecycle_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: 'LifecyclePolicies', traits: {"smithy.api#documentation" => "<p>An array of lifecycle management policies. EFS supports a maximum of one\n      policy per file system.</p>"}))
    DescribeLifecycleConfigurationOutput.type = Types::DescribeLifecycleConfigurationOutput
    DescribeLifecycleConfigurationRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system whose <code>LifecycleConfiguration</code> object you want to\n      retrieve (String).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLifecycleConfigurationRequest.type = Types::DescribeLifecycleConfigurationRequest
    DescribeMountTargetSecurityGroupsRequest.add_member(:mount_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#documentation" => "<p>The ID of the mount target whose security groups you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMountTargetSecurityGroupsRequest.type = Types::DescribeMountTargetSecurityGroupsRequest
    DescribeMountTargetSecurityGroupsResponse.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>An array of security groups.</p>", "smithy.api#required" => {}}))
    DescribeMountTargetSecurityGroupsResponse.type = Types::DescribeMountTargetSecurityGroupsResponse
    DescribeMountTargetsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>(Optional) Maximum number of mount targets to return in the response. Currently, this\n      number is automatically set to\n      10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    DescribeMountTargetsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>(Optional) Opaque pagination token returned from a previous\n        <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue\n      the list from where the previous returning call left off.</p>", "smithy.api#httpQuery" => "Marker"}))
    DescribeMountTargetsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>(Optional) ID of the file system whose mount targets you want to list (String). It must\n      be included in your request if an <code>AccessPointId</code> or <code>MountTargetId</code> is not included. Accepts either a file system ID or ARN as input.</p>", "smithy.api#httpQuery" => "FileSystemId"}))
    DescribeMountTargetsRequest.add_member(:mount_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#documentation" => "<p>(Optional) ID of the mount target that you want to have described (String). It must be\n      included in your request if <code>FileSystemId</code> is not included. Accepts either a mount target ID or ARN as input.</p>", "smithy.api#httpQuery" => "MountTargetId"}))
    DescribeMountTargetsRequest.add_member(:access_point_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointId, location_name: 'AccessPointId', traits: {"smithy.api#documentation" => "<p>(Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a\n      <code>FileSystemId</code> or <code>MountTargetId</code> is not included in your request. Accepts either an access point ID or ARN as input.</p>", "smithy.api#httpQuery" => "AccessPointId"}))
    DescribeMountTargetsRequest.type = Types::DescribeMountTargetsRequest
    DescribeMountTargetsResponse.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>If the request included the <code>Marker</code>, the response returns that value in\n      this field.</p>"}))
    DescribeMountTargetsResponse.add_member(:mount_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetDescriptions, location_name: 'MountTargets', traits: {"smithy.api#documentation" => "<p>Returns the file system's mount targets as an array of\n        <code>MountTargetDescription</code> objects.</p>"}))
    DescribeMountTargetsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If a value is present, there are more mount targets to return. In a subsequent request,\n      you can provide <code>Marker</code> in your request with this value to retrieve the next set\n      of mount targets.</p>"}))
    DescribeMountTargetsResponse.type = Types::DescribeMountTargetsResponse
    DescribeReplicationConfigurationsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>You can retrieve the replication configuration for a specific file system by providing its\n      file system ID. For cross-account,cross-region replication, an account can only describe the replication\n      configuration for a file system in its own Region.</p>", "smithy.api#httpQuery" => "FileSystemId"}))
    DescribeReplicationConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n            <code>NextToken</code> is present if the response is paginated. You can use\n        <code>NextToken</code> in a subsequent request to fetch the next page of\n      output.</p>", "smithy.api#httpQuery" => "NextToken"}))
    DescribeReplicationConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>(Optional) To limit the number of objects returned in a response, you can specify the\n        <code>MaxItems</code> parameter. The default value is 100. </p>", "smithy.api#httpQuery" => "MaxResults"}))
    DescribeReplicationConfigurationsRequest.type = Types::DescribeReplicationConfigurationsRequest
    DescribeReplicationConfigurationsResponse.add_member(:replications, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDescriptions, location_name: 'Replications', traits: {"smithy.api#documentation" => "<p>The collection of replication configurations that is returned.</p>"}))
    DescribeReplicationConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>You can use the <code>NextToken</code> from the previous response in a subsequent \n      request to fetch the additional descriptions.</p>"}))
    DescribeReplicationConfigurationsResponse.type = Types::DescribeReplicationConfigurationsResponse
    DescribeTagsRequest.add_member(:max_items, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'MaxItems', traits: {"smithy.api#documentation" => "<p>(Optional) The maximum number of file system tags to return in the response. Currently,\n      this number is automatically set to\n      100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.</p>", "smithy.api#httpQuery" => "MaxItems"}))
    DescribeTagsRequest.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>(Optional) An opaque pagination token returned from a previous\n        <code>DescribeTags</code> operation (String). If present, it specifies to continue the list\n      from where the previous call left off.</p>", "smithy.api#httpQuery" => "Marker"}))
    DescribeTagsRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system whose tag set you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResponse.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>If the request included a <code>Marker</code>, the response returns that value in this\n      field.</p>"}))
    DescribeTagsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Returns tags associated with the file system as an array of <code>Tag</code> objects.\n    </p>", "smithy.api#required" => {}}))
    DescribeTagsResponse.add_member(:next_marker, Smithy::Schema::Shapes::ShapeRef.new(shape: Marker, location_name: 'NextMarker', traits: {"smithy.api#documentation" => "<p>If a value is present, there are more tags to return. In a subsequent request, you can\n      provide the value of <code>NextMarker</code> as the value of the <code>Marker</code> parameter\n      in your next request to retrieve the next set of tags.</p>"}))
    DescribeTagsResponse.type = Types::DescribeTagsResponse
    Destination.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes the status of the replication configuration. For more information \n    about replication status, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#restoring-backup-efsmonitoring-replication-status.html\">Viewing\n      replication details</a> in the <i>Amazon EFS User Guide</i>. \n    </p>", "smithy.api#required" => {}}))
    Destination.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the destination Amazon EFS file system.</p>", "smithy.api#required" => {}}))
    Destination.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the destination file system is located.</p>", "smithy.api#required" => {}}))
    Destination.add_member(:last_replicated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastReplicatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the most recent sync was successfully completed on the destination file\n      system. Any changes to data on the source file system that occurred before this time have been\n      successfully replicated to the destination file system. Any changes that occurred after this\n      time might not be fully replicated.</p>"}))
    Destination.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>ID of the Amazon Web Services account in which the destination file system resides.</p>"}))
    Destination.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Message that provides details about the <code>PAUSED</code> or <code>ERRROR</code> state \n      of the replication destination configuration. For more information \n      about replication status messages, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#restoring-backup-efsmonitoring-replication-status.html\">Viewing\n        replication details</a> in the <i>Amazon EFS User Guide</i>. \n    </p>"}))
    Destination.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the IAM role in the source account that allows\n        Amazon EFS to perform replication on its behalf. This is optional for same-account\n      replication and required for cross-account replication.</p>"}))
    Destination.type = Types::Destination
    DestinationToCreate.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>To create a file system that uses Regional storage, specify the Amazon Web Services Region in which to create the destination file system. The Region must be enabled\n      for the Amazon Web Services account that owns the source file system. For more information, see\n        <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable\">Managing Amazon Web Services Regions</a> in the <i>Amazon Web Services General\n        Reference Reference Guide</i>.</p>"}))
    DestinationToCreate.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>To create a file system that uses One Zone storage, specify the name of the\n      Availability Zone in which to create the destination file system.</p>"}))
    DestinationToCreate.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>Specify the Key Management Service (KMS) key that you want to use to\n      encrypt the destination file system. If you do not specify a KMS key, Amazon EFS uses your default KMS key for Amazon EFS,\n        <code>/aws/elasticfilesystem</code>. This ID can be in one of the following formats:</p>\n         <ul>\n            <li>\n               <p>Key ID - The unique identifier of the key, for example\n            <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>ARN - The ARN for the key, for example\n            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>\n            </li>\n            <li>\n               <p>Key alias - A previously created display name for a key, for example\n          <code>alias/projectKey1</code>.</p>\n            </li>\n            <li>\n               <p>Key alias ARN - The ARN for a key alias, for example\n            <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>\n            </li>\n         </ul>"}))
    DestinationToCreate.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID or ARN of the file system to use for the destination. \n      For cross-account replication, this must be an  ARN. The file system's \n      replication overwrite replication must be disabled. If no ID or ARN is \n      specified, then a new file system is created. </p>\n         <note>\n            <p>When you initially configure replication to an existing file system, Amazon EFS\n        writes data to or removes existing data from the destination file system to match data in\n        the source file system. If you don't want to change data in the destination file system,\n        then you should replicate to a new file system instead. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/create-replication.html\">https://docs.aws.amazon.com/efs/latest/ug/create-replication.html</a>.</p>\n         </note>"}))
    DestinationToCreate.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the IAM role in the source account that allows\n        Amazon EFS to perform replication on its behalf. This is optional for same-account\n      replication and required for cross-account replication.</p>"}))
    DestinationToCreate.type = Types::DestinationToCreate
    Destinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Destination)
    DestinationsToCreate.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationToCreate)
    FileSystemAlreadyExists.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemAlreadyExists.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#required" => {}}))
    FileSystemAlreadyExists.type = Types::FileSystemAlreadyExists
    FileSystemDescription.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that created the file system.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:creation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#documentation" => "<p>The opaque string specified in the request.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system, assigned by Amazon EFS.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'FileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the EFS file system, in the\n      format\n          <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>\n            </code>.\n      Example with sample data:\n        <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>\n         </p>"}))
    FileSystemDescription.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time that the file system was created, in seconds (since\n      1970-01-01T00:00:00Z).</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>The lifecycle phase of the file system.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>You can add tags to a file system, including a <code>Name</code> tag. For more\n      information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns\n      the value in this field. </p>"}))
    FileSystemDescription.add_member(:number_of_mount_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetCount, location_name: 'NumberOfMountTargets', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSize, location_name: 'SizeInBytes', traits: {"smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the file system, in its\n        <code>Value</code> field, and the time at which that size was determined in its\n        <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of\n      seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent\n      the size of a consistent snapshot of the file system, but it is eventually consistent when\n      there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual\n      size only if the file system is not modified for a period longer than a couple of hours.\n      Otherwise, the value is not the exact size that the file system was at any point in time.\n    </p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#documentation" => "<p>The performance mode of the file system.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>A Boolean value that, if true, indicates that the file system is encrypted.</p>"}))
    FileSystemDescription.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of an KMS key used to protect the encrypted file system.</p>"}))
    FileSystemDescription.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode', traits: {"smithy.api#documentation" => "<p>Displays the file system's throughput mode. For more information, see \n      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes\">Throughput modes</a> \n      in the <i>Amazon EFS User Guide</i>.\n    </p>"}))
    FileSystemDescription.add_member(:provisioned_throughput_in_mibps, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#documentation" => "<p>The amount of provisioned throughput, measured in MiBps, for the file system. Valid for\n      file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>"}))
    FileSystemDescription.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is\n      valid only for One Zone file systems. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html\">Using EFS storage\n        classes</a> in the <i>Amazon EFS User Guide</i>.</p>"}))
    FileSystemDescription.add_member(:availability_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId', traits: {"smithy.api#documentation" => "<p>The unique and consistent identifier of the Availability Zone in which the file system is\n      located, and is valid only for One Zone file systems. For example,\n        <code>use1-az1</code> is an Availability Zone ID for the us-east-1 Amazon Web Services Region, and\n      it has the same location in every Amazon Web Services account.</p>"}))
    FileSystemDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the file system, presented as an array of <code>Tag</code>\n      objects.</p>", "smithy.api#required" => {}}))
    FileSystemDescription.add_member(:file_system_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemProtectionDescription, location_name: 'FileSystemProtection', traits: {"smithy.api#documentation" => "<p>Describes the protection on the file system. </p>"}))
    FileSystemDescription.type = Types::FileSystemDescription
    FileSystemDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemDescription)
    FileSystemInUse.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemInUse.type = Types::FileSystemInUse
    FileSystemLimitExceeded.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemLimitExceeded.type = Types::FileSystemLimitExceeded
    FileSystemNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    FileSystemNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    FileSystemNotFound.type = Types::FileSystemNotFound
    FileSystemProtectionDescription.add_member(:replication_overwrite_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationOverwriteProtection, location_name: 'ReplicationOverwriteProtection', traits: {"smithy.api#documentation" => "<p>The status of the file system's replication overwrite protection.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The file system cannot be used as the destination file\n          system in a replication configuration. The file system is writeable. Replication overwrite\n          protection is <code>ENABLED</code> by default. </p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The file system can be used as the destination file\n          system in a replication configuration. The file system is read-only and can only be\n          modified by EFS replication.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATING</code> – The file system is being used as the destination\n          file system in a replication configuration. The file system is read-only and is modified\n          only by EFS replication.</p>\n            </li>\n         </ul>\n         <p>If the replication configuration is deleted, the file system's replication overwrite\n      protection is re-enabled, the file system becomes writeable.</p>"}))
    FileSystemProtectionDescription.type = Types::FileSystemProtectionDescription
    FileSystemSize.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSizeValue, location_name: 'Value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the file system.</p>", "smithy.api#required" => {}}))
    FileSystemSize.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The time at which the size of data, returned in the <code>Value</code> field, was\n      determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.</p>"}))
    FileSystemSize.add_member(:value_in_ia, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: 'ValueInIA', traits: {"smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the Infrequent Access storage\n      class.</p>"}))
    FileSystemSize.add_member(:value_in_standard, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: 'ValueInStandard', traits: {"smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the Standard\n      storage class.</p>"}))
    FileSystemSize.add_member(:value_in_archive, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: 'ValueInArchive', traits: {"smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the Archive\n      storage class.</p>"}))
    FileSystemSize.type = Types::FileSystemSize
    IncorrectFileSystemLifeCycleState.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    IncorrectFileSystemLifeCycleState.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IncorrectFileSystemLifeCycleState.type = Types::IncorrectFileSystemLifeCycleState
    IncorrectMountTargetState.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    IncorrectMountTargetState.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IncorrectMountTargetState.type = Types::IncorrectMountTargetState
    InsufficientThroughputCapacity.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    InsufficientThroughputCapacity.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InsufficientThroughputCapacity.type = Types::InsufficientThroughputCapacity
    InternalServerError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerError.type = Types::InternalServerError
    InvalidPolicyException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    InvalidPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidPolicyException.type = Types::InvalidPolicyException
    IpAddressInUse.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    IpAddressInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IpAddressInUse.type = Types::IpAddressInUse
    IpAddressType.add_member(:ipv4_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4_ONLY', traits: {"smithy.api#enumValue" => "IPV4_ONLY"}))
    IpAddressType.add_member(:ipv6_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6_ONLY', traits: {"smithy.api#enumValue" => "IPV6_ONLY"}))
    IpAddressType.add_member(:dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUAL_STACK', traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    LifeCycleState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    LifeCycleState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "available"}))
    LifeCycleState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "updating"}))
    LifeCycleState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    LifeCycleState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "deleted"}))
    LifeCycleState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    LifecyclePolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicy)
    LifecyclePolicy.add_member(:transition_to_ia, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionToIARules, location_name: 'TransitionToIA', traits: {"smithy.api#documentation" => "<p>The number of days after files were last accessed in primary storage (the\n      Standard storage class) at which to move them to Infrequent Access\n      (IA) storage. Metadata operations such as listing the contents of a directory\n      don't count as file access events.</p>"}))
    LifecyclePolicy.add_member(:transition_to_primary_storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionToPrimaryStorageClassRules, location_name: 'TransitionToPrimaryStorageClass', traits: {"smithy.api#documentation" => "<p>Whether to move files back to primary (Standard) storage after they are\n      accessed in IA or Archive storage. Metadata operations such as\n      listing the contents of a directory don't count as file access events.</p>"}))
    LifecyclePolicy.add_member(:transition_to_archive, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionToArchiveRules, location_name: 'TransitionToArchive', traits: {"smithy.api#documentation" => "<p>The number of days after files were last accessed in primary storage (the\n      Standard storage class) at which to move them to Archive\n      storage. Metadata operations such as listing the contents of a directory don't count as\n      file access events.</p>"}))
    LifecyclePolicy.type = Types::LifecyclePolicy
    ListTagsForResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Specifies the EFS resource you want to retrieve tags for. You can retrieve tags\n      for EFS file systems and access points using this API endpoint.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>(Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of the tags for the specified EFS resource.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n            <code>NextToken</code> is present if the response payload is paginated. You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModifyMountTargetSecurityGroupsRequest.add_member(:mount_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#documentation" => "<p>The ID of the mount target whose security groups you want to modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ModifyMountTargetSecurityGroupsRequest.add_member(:security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroups, location_name: 'SecurityGroups', traits: {"smithy.api#documentation" => "<p>An array of VPC security group IDs. </p>"}))
    ModifyMountTargetSecurityGroupsRequest.type = Types::ModifyMountTargetSecurityGroupsRequest
    MountTargetConflict.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    MountTargetConflict.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MountTargetConflict.type = Types::MountTargetConflict
    MountTargetDescription.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>Amazon Web Services account ID that owns the resource.</p>"}))
    MountTargetDescription.add_member(:mount_target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetId, location_name: 'MountTargetId', traits: {"smithy.api#documentation" => "<p>System-assigned mount target ID.</p>", "smithy.api#required" => {}}))
    MountTargetDescription.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system for which the mount target is intended.</p>", "smithy.api#required" => {}}))
    MountTargetDescription.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the mount target's subnet.</p>", "smithy.api#required" => {}}))
    MountTargetDescription.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>Lifecycle state of the mount target.</p>", "smithy.api#required" => {}}))
    MountTargetDescription.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>Address at which the file system can be mounted by using the mount target.</p>"}))
    MountTargetDescription.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6Address, location_name: 'Ipv6Address', traits: {"smithy.api#documentation" => "<p>The IPv6 address for the mount target.</p>"}))
    MountTargetDescription.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The ID of the network interface that Amazon EFS created when it created the mount\n      target.</p>"}))
    MountTargetDescription.add_member(:availability_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId', traits: {"smithy.api#documentation" => "<p>The unique and consistent identifier of the Availability Zone that the mount target resides in.\n      For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it\n      has the same location in every Amazon Web Services account.</p>"}))
    MountTargetDescription.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone in which the mount target is located. Availability Zones are\n      independently mapped to names for each Amazon Web Services account. For example, the\n      Availability Zone <code>us-east-1a</code> for your Amazon Web Services account might not be the\n      same location as <code>us-east-1a</code> for another Amazon Web Services account.</p>"}))
    MountTargetDescription.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) ID that the mount target is configured in.</p>"}))
    MountTargetDescription.type = Types::MountTargetDescription
    MountTargetDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetDescription)
    MountTargetNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    MountTargetNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MountTargetNotFound.type = Types::MountTargetNotFound
    NetworkInterfaceLimitExceeded.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    NetworkInterfaceLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NetworkInterfaceLimitExceeded.type = Types::NetworkInterfaceLimitExceeded
    NoFreeAddressesInSubnet.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    NoFreeAddressesInSubnet.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NoFreeAddressesInSubnet.type = Types::NoFreeAddressesInSubnet
    PerformanceMode.add_member(:general_purpose, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERAL_PURPOSE', traits: {"smithy.api#enumValue" => "generalPurpose"}))
    PerformanceMode.add_member(:max_io, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_IO', traits: {"smithy.api#enumValue" => "maxIO"}))
    PolicyNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    PolicyNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicyNotFound.type = Types::PolicyNotFound
    PosixUser.add_member(:uid, Smithy::Schema::Shapes::ShapeRef.new(shape: Uid, location_name: 'Uid', traits: {"smithy.api#documentation" => "<p>The POSIX user ID used for all file system operations using this access point.</p>", "smithy.api#required" => {}}))
    PosixUser.add_member(:gid, Smithy::Schema::Shapes::ShapeRef.new(shape: Gid, location_name: 'Gid', traits: {"smithy.api#documentation" => "<p>The POSIX group ID used for all file system operations using this access point.</p>", "smithy.api#required" => {}}))
    PosixUser.add_member(:secondary_gids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryGids, location_name: 'SecondaryGids', traits: {"smithy.api#documentation" => "<p>Secondary POSIX group IDs used for all file system operations using this access point.</p>"}))
    PosixUser.type = Types::PosixUser
    PutAccountPreferencesRequest.add_member(:resource_id_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceIdType', traits: {"smithy.api#documentation" => "<p>Specifies the EFS resource ID preference to set for the user's Amazon Web Services account, in the current Amazon Web Services Region, either <code>LONG_ID</code>\n      (17 characters), or <code>SHORT_ID</code> (8 characters).</p>\n         <note>\n            <p>Starting in October, 2021, you will receive an error when setting the account preference to\n          <code>SHORT_ID</code>. Contact Amazon Web Services support if you receive an error and must\n        use short IDs for file system and mount target resources.</p>\n         </note>", "smithy.api#required" => {}}))
    PutAccountPreferencesRequest.type = Types::PutAccountPreferencesRequest
    PutAccountPreferencesResponse.add_member(:resource_id_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdPreference, location_name: 'ResourceIdPreference'))
    PutAccountPreferencesResponse.type = Types::PutAccountPreferencesResponse
    PutBackupPolicyOutput.add_member(:backup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy', traits: {"smithy.api#documentation" => "<p>Describes the file system's backup policy, indicating whether automatic backups are\n      turned on or off.</p>"}))
    PutBackupPolicyOutput.type = Types::PutBackupPolicyOutput
    PutBackupPolicyRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies which EFS file system to update the backup policy for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutBackupPolicyRequest.add_member(:backup_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupPolicy, location_name: 'BackupPolicy', traits: {"smithy.api#documentation" => "<p>The backup policy included in the <code>PutBackupPolicy</code> request.</p>", "smithy.api#required" => {}}))
    PutBackupPolicyRequest.type = Types::PutBackupPolicyRequest
    PutFileSystemPolicyOutput.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>Specifies the EFS file system to which the <code>FileSystemPolicy</code>\n      applies.</p>"}))
    PutFileSystemPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file\n      system.</p>"}))
    PutFileSystemPolicyOutput.type = Types::PutFileSystemPolicyOutput
    PutFileSystemPolicyRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the EFS file system that you want to create or update the\n        <code>FileSystemPolicy</code> for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The <code>FileSystemPolicy</code> that you're creating. Accepts a JSON formatted\n      policy definition. EFS file system policies have a 20,000 character limit. To find\n      out more about the elements that make up a file system policy, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/security_iam_service-with-iam.html#security_iam_service-with-iam-resource-based-policies\">Resource-based policies within Amazon EFS</a>. </p>", "smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:bypass_policy_lockout_safety_check, Smithy::Schema::Shapes::ShapeRef.new(shape: BypassPolicyLockoutSafetyCheck, location_name: 'BypassPolicyLockoutSafetyCheck', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>(Optional) A boolean that specifies whether or not to bypass the <code>FileSystemPolicy</code> lockout safety check. The lockout safety check \n      determines whether the policy in the request will lock out, or prevent, the IAM principal that is making the request from making future <code>PutFileSystemPolicy</code> requests on this file system.\n      Set <code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only when you intend to prevent \n      the IAM principal that is making the request from making subsequent <code>PutFileSystemPolicy</code> requests on this file system. \n      The default value is <code>False</code>.\n    </p>"}))
    PutFileSystemPolicyRequest.type = Types::PutFileSystemPolicyRequest
    PutLifecycleConfigurationOutput.add_member(:lifecycle_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: 'LifecyclePolicies', traits: {"smithy.api#documentation" => "<p>An array of lifecycle management policies. EFS supports a maximum of one\n      policy per file system.</p>"}))
    PutLifecycleConfigurationOutput.type = Types::PutLifecycleConfigurationOutput
    PutLifecycleConfigurationRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system for which you are creating the\n        <code>LifecycleConfiguration</code> object (String).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutLifecycleConfigurationRequest.add_member(:lifecycle_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: 'LifecyclePolicies', traits: {"smithy.api#documentation" => "<p>An array of <code>LifecyclePolicy</code> objects that define the file system's\n        <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object\n      informs lifecycle management of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <b>\n                     <code>TransitionToIA</code>\n                  </b> – \n      When to move files in the file system from primary storage (Standard storage class) into the Infrequent Access \n        (IA) storage.</p>\n            </li>\n            <li>\n               <p>\n                  <b>\n                     <code>TransitionToArchive</code>\n                  </b> –\n          When to move files in the file system from their current storage class (either IA or Standard storage) into the \n         Archive storage.</p>\n               <p>File systems cannot transition into Archive storage before transitioning into IA  storage. Therefore,  \n        TransitionToArchive must either not be set or must be later than TransitionToIA.</p>\n               <note>\n                  <p>The Archive storage class is available only for file systems that use the Elastic throughput mode \nand the General Purpose performance mode. </p>\n               </note>\n            </li>\n            <li>\n               <p>\n                  <b>\n                     <code>TransitionToPrimaryStorageClass</code>\n                  </b> – Whether to move files in the file system back to primary storage (Standard storage class) after they are accessed in IA\n        or Archive storage.</p>\n            </li>\n         </ul>\n         <note>\n            <p>When using the <code>put-lifecycle-configuration</code> CLI command or the\n          <code>PutLifecycleConfiguration</code> API action, Amazon EFS requires that each\n          <code>LifecyclePolicy</code> object have only a single transition. This means that in a\n        request body, <code>LifecyclePolicies</code> must be structured as an array of\n          <code>LifecyclePolicy</code> objects, one object for each storage transition. See the example\n        requests in the following section for more information.</p>\n         </note>", "smithy.api#required" => {}}))
    PutLifecycleConfigurationRequest.type = Types::PutLifecycleConfigurationRequest
    ReplicationAlreadyExists.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ReplicationAlreadyExists.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ReplicationAlreadyExists.type = Types::ReplicationAlreadyExists
    ReplicationConfigurationDescription.add_member(:source_file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'SourceFileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the source Amazon EFS file system that is being replicated.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'SourceFileSystemRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which the source EFS file system is\n      located.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'SourceFileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the current source file system in the\n      replication configuration.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:original_source_file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'OriginalSourceFileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the original source EFS file\n      system in the replication configuration.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Describes when the replication configuration was created.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: Destinations, location_name: 'Destinations', traits: {"smithy.api#documentation" => "<p>An array of destination objects. Only one destination object is supported.</p>", "smithy.api#required" => {}}))
    ReplicationConfigurationDescription.add_member(:source_file_system_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SourceFileSystemOwnerId', traits: {"smithy.api#documentation" => "<p>ID of the Amazon Web Services account in which the source file system resides.</p>"}))
    ReplicationConfigurationDescription.type = Types::ReplicationConfigurationDescription
    ReplicationConfigurationDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfigurationDescription)
    ReplicationNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>ReplicationNotFound</p>"}))
    ReplicationNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ReplicationNotFound.type = Types::ReplicationNotFound
    ReplicationOverwriteProtection.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationOverwriteProtection.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ReplicationOverwriteProtection.add_member(:replicating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATING', traits: {"smithy.api#enumValue" => "REPLICATING"}))
    ReplicationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReplicationStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    ReplicationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicationStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ReplicationStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    ReplicationStatus.add_member(:pausing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSING', traits: {"smithy.api#enumValue" => "PAUSING"}))
    Resource.add_member(:file_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FileSystem', traits: {"smithy.api#enumValue" => "FILE_SYSTEM"}))
    Resource.add_member(:mount_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MountTarget', traits: {"smithy.api#enumValue" => "MOUNT_TARGET"}))
    ResourceIdPreference.add_member(:resource_id_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdType, location_name: 'ResourceIdType', traits: {"smithy.api#documentation" => "<p>Identifies the EFS resource ID preference, either <code>LONG_ID</code> (17\n      characters) or <code>SHORT_ID</code> (8 characters).</p>"}))
    ResourceIdPreference.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Resources, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>Identifies the Amazon EFS resources to which the ID preference setting applies, <code>FILE_SYSTEM</code> and <code>MOUNT_TARGET</code>.</p>"}))
    ResourceIdPreference.type = Types::ResourceIdPreference
    ResourceIdType.add_member(:long_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LongId', traits: {"smithy.api#enumValue" => "LONG_ID"}))
    ResourceIdType.add_member(:short_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ShortId', traits: {"smithy.api#enumValue" => "SHORT_ID"}))
    Resources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    RootDirectory.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>Specifies the path on the EFS file system to expose as the root directory to\n      NFS clients using the access point to access the EFS file system. A path can have\n      up to four subdirectories. If the specified path does not exist, you are required to provide\n      the <code>CreationInfo</code>.</p>"}))
    RootDirectory.add_member(:creation_info, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationInfo, location_name: 'CreationInfo', traits: {"smithy.api#documentation" => "<p>(Optional) Specifies the POSIX IDs and permissions to apply to the access point's\n        <code>RootDirectory</code>. If the <code>RootDirectory</code> > <code>Path</code>\n      specified does not exist, EFS creates the root directory using the\n        <code>CreationInfo</code> settings when a client connects to an access point. When\n      specifying the <code>CreationInfo</code>, you must provide values for all properties. </p>\n         <important>\n            <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> > <code>Path</code> does not exist, \n      attempts to mount the file system using the access point will fail.</p>\n         </important>"}))
    RootDirectory.type = Types::RootDirectory
    SecondaryGids.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Gid)
    SecurityGroupLimitExceeded.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    SecurityGroupLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SecurityGroupLimitExceeded.type = Types::SecurityGroupLimitExceeded
    SecurityGroupNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    SecurityGroupNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SecurityGroupNotFound.type = Types::SecurityGroupNotFound
    SecurityGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroup)
    Status.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    Status.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    Status.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    Status.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    SubnetNotFound.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    SubnetNotFound.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SubnetNotFound.type = Types::SubnetNotFound
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag key (String). The key can't start with <code>aws:</code>.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag key.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID specifying the EFS resource that you want to create a tag for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value\n      pair.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    ThroughputLimitExceeded.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    ThroughputLimitExceeded.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThroughputLimitExceeded.type = Types::ThroughputLimitExceeded
    ThroughputMode.add_member(:bursting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BURSTING', traits: {"smithy.api#enumValue" => "bursting"}))
    ThroughputMode.add_member(:provisioned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONED', traits: {"smithy.api#enumValue" => "provisioned"}))
    ThroughputMode.add_member(:elastic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC', traits: {"smithy.api#enumValue" => "elastic"}))
    TooManyRequests.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    TooManyRequests.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequests.type = Types::TooManyRequests
    TransitionToArchiveRules.add_member(:after_1_day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_1_DAY', traits: {"smithy.api#enumValue" => "AFTER_1_DAY"}))
    TransitionToArchiveRules.add_member(:after_7_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_7_DAYS', traits: {"smithy.api#enumValue" => "AFTER_7_DAYS"}))
    TransitionToArchiveRules.add_member(:after_14_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_14_DAYS', traits: {"smithy.api#enumValue" => "AFTER_14_DAYS"}))
    TransitionToArchiveRules.add_member(:after_30_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_30_DAYS', traits: {"smithy.api#enumValue" => "AFTER_30_DAYS"}))
    TransitionToArchiveRules.add_member(:after_60_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_60_DAYS', traits: {"smithy.api#enumValue" => "AFTER_60_DAYS"}))
    TransitionToArchiveRules.add_member(:after_90_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_90_DAYS', traits: {"smithy.api#enumValue" => "AFTER_90_DAYS"}))
    TransitionToArchiveRules.add_member(:after_180_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_180_DAYS', traits: {"smithy.api#enumValue" => "AFTER_180_DAYS"}))
    TransitionToArchiveRules.add_member(:after_270_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_270_DAYS', traits: {"smithy.api#enumValue" => "AFTER_270_DAYS"}))
    TransitionToArchiveRules.add_member(:after_365_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_365_DAYS', traits: {"smithy.api#enumValue" => "AFTER_365_DAYS"}))
    TransitionToIARules.add_member(:after_7_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_7_DAYS', traits: {"smithy.api#enumValue" => "AFTER_7_DAYS"}))
    TransitionToIARules.add_member(:after_14_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_14_DAYS', traits: {"smithy.api#enumValue" => "AFTER_14_DAYS"}))
    TransitionToIARules.add_member(:after_30_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_30_DAYS', traits: {"smithy.api#enumValue" => "AFTER_30_DAYS"}))
    TransitionToIARules.add_member(:after_60_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_60_DAYS', traits: {"smithy.api#enumValue" => "AFTER_60_DAYS"}))
    TransitionToIARules.add_member(:after_90_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_90_DAYS', traits: {"smithy.api#enumValue" => "AFTER_90_DAYS"}))
    TransitionToIARules.add_member(:after_1_day, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_1_DAY', traits: {"smithy.api#enumValue" => "AFTER_1_DAY"}))
    TransitionToIARules.add_member(:after_180_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_180_DAYS', traits: {"smithy.api#enumValue" => "AFTER_180_DAYS"}))
    TransitionToIARules.add_member(:after_270_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_270_DAYS', traits: {"smithy.api#enumValue" => "AFTER_270_DAYS"}))
    TransitionToIARules.add_member(:after_365_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_365_DAYS', traits: {"smithy.api#enumValue" => "AFTER_365_DAYS"}))
    TransitionToPrimaryStorageClassRules.add_member(:after_1_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_1_ACCESS', traits: {"smithy.api#enumValue" => "AFTER_1_ACCESS"}))
    UnsupportedAvailabilityZone.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    UnsupportedAvailabilityZone.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnsupportedAvailabilityZone.type = Types::UnsupportedAvailabilityZone
    UntagResourceRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>Specifies the EFS resource that you want to remove tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the key-value tag pairs that you want to remove from the specified\n      EFS resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateFileSystemOutput.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account that created the file system.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:creation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationToken, location_name: 'CreationToken', traits: {"smithy.api#documentation" => "<p>The opaque string specified in the request.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system, assigned by Amazon EFS.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemArn, location_name: 'FileSystemArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the EFS file system, in the\n      format\n          <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>\n            </code>.\n      Example with sample data:\n        <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>\n         </p>"}))
    UpdateFileSystemOutput.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time that the file system was created, in seconds (since\n      1970-01-01T00:00:00Z).</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:life_cycle_state, Smithy::Schema::Shapes::ShapeRef.new(shape: LifeCycleState, location_name: 'LifeCycleState', traits: {"smithy.api#documentation" => "<p>The lifecycle phase of the file system.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>You can add tags to a file system, including a <code>Name</code> tag. For more\n      information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns\n      the value in this field. </p>"}))
    UpdateFileSystemOutput.add_member(:number_of_mount_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetCount, location_name: 'NumberOfMountTargets', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemSize, location_name: 'SizeInBytes', traits: {"smithy.api#documentation" => "<p>The latest known metered size (in bytes) of data stored in the file system, in its\n        <code>Value</code> field, and the time at which that size was determined in its\n        <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of\n      seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent\n      the size of a consistent snapshot of the file system, but it is eventually consistent when\n      there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual\n      size only if the file system is not modified for a period longer than a couple of hours.\n      Otherwise, the value is not the exact size that the file system was at any point in time.\n    </p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceMode, location_name: 'PerformanceMode', traits: {"smithy.api#documentation" => "<p>The performance mode of the file system.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Encrypted, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>A Boolean value that, if true, indicates that the file system is encrypted.</p>"}))
    UpdateFileSystemOutput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of an KMS key used to protect the encrypted file system.</p>"}))
    UpdateFileSystemOutput.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode', traits: {"smithy.api#documentation" => "<p>Displays the file system's throughput mode. For more information, see \n      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes\">Throughput modes</a> \n      in the <i>Amazon EFS User Guide</i>.\n    </p>"}))
    UpdateFileSystemOutput.add_member(:provisioned_throughput_in_mibps, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#documentation" => "<p>The amount of provisioned throughput, measured in MiBps, for the file system. Valid for\n      file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>"}))
    UpdateFileSystemOutput.add_member(:availability_zone_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: 'AvailabilityZoneName', traits: {"smithy.api#documentation" => "<p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is\n      valid only for One Zone file systems. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html\">Using EFS storage\n        classes</a> in the <i>Amazon EFS User Guide</i>.</p>"}))
    UpdateFileSystemOutput.add_member(:availability_zone_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: 'AvailabilityZoneId', traits: {"smithy.api#documentation" => "<p>The unique and consistent identifier of the Availability Zone in which the file system is\n      located, and is valid only for One Zone file systems. For example,\n        <code>use1-az1</code> is an Availability Zone ID for the us-east-1 Amazon Web Services Region, and\n      it has the same location in every Amazon Web Services account.</p>"}))
    UpdateFileSystemOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the file system, presented as an array of <code>Tag</code>\n      objects.</p>", "smithy.api#required" => {}}))
    UpdateFileSystemOutput.add_member(:file_system_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemProtectionDescription, location_name: 'FileSystemProtection', traits: {"smithy.api#documentation" => "<p>Describes the protection on the file system. </p>"}))
    UpdateFileSystemOutput.type = Types::UpdateFileSystemOutput
    UpdateFileSystemProtectionOutput.add_member(:replication_overwrite_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationOverwriteProtection, location_name: 'ReplicationOverwriteProtection', traits: {"smithy.api#documentation" => "<p>The status of the file system's replication overwrite protection.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The file system cannot be used as the destination file\n          system in a replication configuration. The file system is writeable. Replication overwrite\n          protection is <code>ENABLED</code> by default. </p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The file system can be used as the destination file\n          system in a replication configuration. The file system is read-only and can only be\n          modified by EFS replication.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATING</code> – The file system is being used as the destination\n          file system in a replication configuration. The file system is read-only and is modified\n          only by EFS replication.</p>\n            </li>\n         </ul>\n         <p>If the replication configuration is deleted, the file system's replication overwrite\n      protection is re-enabled, the file system becomes writeable.</p>"}))
    UpdateFileSystemProtectionOutput.type = Types::UpdateFileSystemProtectionOutput
    UpdateFileSystemProtectionRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system to update. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemProtectionRequest.add_member(:replication_overwrite_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationOverwriteProtection, location_name: 'ReplicationOverwriteProtection', traits: {"smithy.api#documentation" => "<p>The status of the file system's replication overwrite protection.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – The file system cannot be used as the destination file\n          system in a replication configuration. The file system is writeable. Replication overwrite\n          protection is <code>ENABLED</code> by default. </p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – The file system can be used as the destination file\n          system in a replication configuration. The file system is read-only and can only be\n          modified by EFS replication.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATING</code> – The file system is being used as the destination file\n          system in a replication configuration. The file system is read-only and is only modified\n          only by EFS replication.</p>\n            </li>\n         </ul>\n         <p>If the replication configuration is deleted, the file system's replication overwrite\n      protection is re-enabled and the file system becomes writeable.</p>"}))
    UpdateFileSystemProtectionRequest.type = Types::UpdateFileSystemProtectionRequest
    UpdateFileSystemRequest.add_member(:file_system_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemId, location_name: 'FileSystemId', traits: {"smithy.api#documentation" => "<p>The ID of the file system that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFileSystemRequest.add_member(:throughput_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputMode, location_name: 'ThroughputMode', traits: {"smithy.api#documentation" => "<p>(Optional) Updates the file system's throughput mode. If you're not\n      updating your throughput mode, you don't need to provide this value in your\n      request. If you are changing the <code>ThroughputMode</code> to <code>provisioned</code>, \n      you must also set a value for <code>ProvisionedThroughputInMibps</code>.</p>"}))
    UpdateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: 'ProvisionedThroughputInMibps', traits: {"smithy.api#documentation" => "<p>(Optional) The throughput, measured in mebibytes per second (MiBps), that you want to\n      provision for a file system that you're creating. Required if <code>ThroughputMode</code>\n      is set to <code>provisioned</code>. Valid values are 1-3414 MiBps, with the upper limit\n      depending on Region. To increase this limit, contact Amazon Web ServicesSupport. For more information,\n      see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits\">Amazon EFS\n        quotas that you can increase</a> in the <i>Amazon EFS User\n        Guide</i>.</p>"}))
    UpdateFileSystemRequest.type = Types::UpdateFileSystemRequest
    ValidationException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    MagnolioAPIServiceV20150201 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.efs#MagnolioAPIService_v20150201"
      service.name = "MagnolioAPIServiceV20150201"
      service.version = "2015-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "EFS", "arnNamespace" => "elasticfilesystem", "cloudFormationName" => "EFS", "cloudTrailEventSource" => "elasticfilesystem.amazonaws.com", "docId" => "elasticfilesystem-2015-02-01", "endpointPrefix" => "elasticfilesystem"}, "aws.auth#sigv4" => {"name" => "elasticfilesystem"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Elastic File System"}
      service.add_operation(:create_access_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateAccessPoint"
        operation.name = "CreateAccessPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/access-points", "code" => 200}}
      end)
      service.add_operation(:create_file_system, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateFileSystem"
        operation.name = "CreateFileSystem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFileSystemRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFileSystemOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/file-systems", "code" => 201}}
      end)
      service.add_operation(:create_mount_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateMountTarget"
        operation.name = "CreateMountTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMountTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMountTargetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZonesMismatch)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetConflict)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoFreeAddressesInSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/mount-targets", "code" => 200}}
      end)
      service.add_operation(:create_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateReplicationConfiguration"
        operation.name = "CreateReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration", "code" => 200}}
      end)
      service.add_operation(:create_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#CreateTags"
        operation.name = "CreateTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use TagResource."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/create-tags/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:delete_access_point, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteAccessPoint"
        operation.name = "DeleteAccessPoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/access-points/{AccessPointId}", "code" => 204}}
      end)
      service.add_operation(:delete_file_system, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteFileSystem"
        operation.name = "DeleteFileSystem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileSystemRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:delete_file_system_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteFileSystemPolicy"
        operation.name = "DeleteFileSystemPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileSystemPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:delete_mount_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteMountTarget"
        operation.name = "DeleteMountTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMountTargetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyTimeout)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/mount-targets/{MountTargetId}", "code" => 204}}
      end)
      service.add_operation(:delete_replication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteReplicationConfiguration"
        operation.name = "DeleteReplicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration", "code" => 204}}
      end)
      service.add_operation(:delete_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use UntagResource."}, "smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/delete-tags/{FileSystemId}", "code" => 204}}
      end)
      service.add_operation(:describe_access_points, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeAccessPoints"
        operation.name = "DescribeAccessPoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessPointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccessPointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/access-points", "code" => 200}}
        operation[:paginator] = Paginators::DescribeAccessPoints.new
      end)
      service.add_operation(:describe_account_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeAccountPreferences"
        operation.name = "DescribeAccountPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountPreferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountPreferencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/account-preferences", "code" => 200}}
      end)
      service.add_operation(:describe_backup_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeBackupPolicy"
        operation.name = "DescribeBackupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/backup-policy", "code" => 200}}
      end)
      service.add_operation(:describe_file_system_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeFileSystemPolicy"
        operation.name = "DescribeFileSystemPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:describe_file_systems, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeFileSystems"
        operation.name = "DescribeFileSystems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFileSystemsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems", "code" => 200}, "smithy.test#smokeTests" => [{"id" => "DescribeFileSystemsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeFileSystems.new
      end)
      service.add_operation(:describe_lifecycle_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeLifecycleConfiguration"
        operation.name = "DescribeLifecycleConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLifecycleConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLifecycleConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration", "code" => 200}}
      end)
      service.add_operation(:describe_mount_target_security_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeMountTargetSecurityGroups"
        operation.name = "DescribeMountTargetSecurityGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetSecurityGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetSecurityGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectMountTargetState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/mount-targets/{MountTargetId}/security-groups", "code" => 200}}
      end)
      service.add_operation(:describe_mount_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeMountTargets"
        operation.name = "DescribeMountTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMountTargetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/mount-targets", "code" => 200}}
        operation[:paginator] = Paginators::DescribeMountTargets.new
      end)
      service.add_operation(:describe_replication_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeReplicationConfigurations"
        operation.name = "DescribeReplicationConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReplicationConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/file-systems/replication-configurations", "code" => 200}}
        operation[:paginator] = Paginators::DescribeReplicationConfigurations.new
      end)
      service.add_operation(:describe_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#deprecated" => {"message" => "Use ListTagsForResource."}, "smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/tags/{FileSystemId}", "code" => 200}}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:modify_mount_target_security_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#ModifyMountTargetSecurityGroups"
        operation.name = "ModifyMountTargetSecurityGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMountTargetSecurityGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectMountTargetState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MountTargetNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupNotFound)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/mount-targets/{MountTargetId}/security-groups", "code" => 204}}
      end)
      service.add_operation(:put_account_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutAccountPreferences"
        operation.name = "PutAccountPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountPreferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountPreferencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/account-preferences", "code" => 200}}
      end)
      service.add_operation(:put_backup_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutBackupPolicy"
        operation.name = "PutBackupPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutBackupPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/backup-policy", "code" => 200}}
      end)
      service.add_operation(:put_file_system_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutFileSystemPolicy"
        operation.name = "PutFileSystemPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileSystemPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileSystemPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/policy", "code" => 200}}
      end)
      service.add_operation(:put_lifecycle_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#PutLifecycleConfiguration"
        operation.name = "PutLifecycleConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecycleConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecycleConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/2015-02-01/resource-tags/{ResourceId}", "code" => 200}}
      end)
      service.add_operation(:update_file_system, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UpdateFileSystem"
        operation.name = "UpdateFileSystem"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequests)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}", "code" => 202}}
      end)
      service.add_operation(:update_file_system_protection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.efs#UpdateFileSystemProtection"
        operation.name = "UpdateFileSystemProtection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemProtectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFileSystemProtectionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequest)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemNotFound)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationAlreadyExists)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequests)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/2015-02-01/file-systems/{FileSystemId}/protection", "code" => 200}, "smithy.api#idempotent" => {}}
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
