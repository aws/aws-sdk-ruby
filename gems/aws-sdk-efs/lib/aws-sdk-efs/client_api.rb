# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EFS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessPointAlreadyExists = Shapes::StructureShape.new(name: 'AccessPointAlreadyExists')
    AccessPointArn = Shapes::StringShape.new(name: 'AccessPointArn')
    AccessPointDescription = Shapes::StructureShape.new(name: 'AccessPointDescription')
    AccessPointDescriptions = Shapes::ListShape.new(name: 'AccessPointDescriptions')
    AccessPointId = Shapes::StringShape.new(name: 'AccessPointId')
    AccessPointLimitExceeded = Shapes::StructureShape.new(name: 'AccessPointLimitExceeded')
    AccessPointNotFound = Shapes::StructureShape.new(name: 'AccessPointNotFound')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    AvailabilityZoneName = Shapes::StringShape.new(name: 'AvailabilityZoneName')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BackupPolicy = Shapes::StructureShape.new(name: 'BackupPolicy')
    BackupPolicyDescription = Shapes::StructureShape.new(name: 'BackupPolicyDescription')
    BadRequest = Shapes::StructureShape.new(name: 'BadRequest')
    BypassPolicyLockoutSafetyCheck = Shapes::BooleanShape.new(name: 'BypassPolicyLockoutSafetyCheck')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CreateAccessPointRequest = Shapes::StructureShape.new(name: 'CreateAccessPointRequest')
    CreateFileSystemRequest = Shapes::StructureShape.new(name: 'CreateFileSystemRequest')
    CreateMountTargetRequest = Shapes::StructureShape.new(name: 'CreateMountTargetRequest')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    CreationInfo = Shapes::StructureShape.new(name: 'CreationInfo')
    CreationToken = Shapes::StringShape.new(name: 'CreationToken')
    DeleteAccessPointRequest = Shapes::StructureShape.new(name: 'DeleteAccessPointRequest')
    DeleteFileSystemPolicyRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemPolicyRequest')
    DeleteFileSystemRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemRequest')
    DeleteMountTargetRequest = Shapes::StructureShape.new(name: 'DeleteMountTargetRequest')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DependencyTimeout = Shapes::StructureShape.new(name: 'DependencyTimeout')
    DescribeAccessPointsRequest = Shapes::StructureShape.new(name: 'DescribeAccessPointsRequest')
    DescribeAccessPointsResponse = Shapes::StructureShape.new(name: 'DescribeAccessPointsResponse')
    DescribeBackupPolicyRequest = Shapes::StructureShape.new(name: 'DescribeBackupPolicyRequest')
    DescribeFileSystemPolicyRequest = Shapes::StructureShape.new(name: 'DescribeFileSystemPolicyRequest')
    DescribeFileSystemsRequest = Shapes::StructureShape.new(name: 'DescribeFileSystemsRequest')
    DescribeFileSystemsResponse = Shapes::StructureShape.new(name: 'DescribeFileSystemsResponse')
    DescribeLifecycleConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeLifecycleConfigurationRequest')
    DescribeMountTargetSecurityGroupsRequest = Shapes::StructureShape.new(name: 'DescribeMountTargetSecurityGroupsRequest')
    DescribeMountTargetSecurityGroupsResponse = Shapes::StructureShape.new(name: 'DescribeMountTargetSecurityGroupsResponse')
    DescribeMountTargetsRequest = Shapes::StructureShape.new(name: 'DescribeMountTargetsRequest')
    DescribeMountTargetsResponse = Shapes::StructureShape.new(name: 'DescribeMountTargetsResponse')
    DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
    DescribeTagsResponse = Shapes::StructureShape.new(name: 'DescribeTagsResponse')
    Encrypted = Shapes::BooleanShape.new(name: 'Encrypted')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileSystemAlreadyExists = Shapes::StructureShape.new(name: 'FileSystemAlreadyExists')
    FileSystemArn = Shapes::StringShape.new(name: 'FileSystemArn')
    FileSystemDescription = Shapes::StructureShape.new(name: 'FileSystemDescription')
    FileSystemDescriptions = Shapes::ListShape.new(name: 'FileSystemDescriptions')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FileSystemInUse = Shapes::StructureShape.new(name: 'FileSystemInUse')
    FileSystemLimitExceeded = Shapes::StructureShape.new(name: 'FileSystemLimitExceeded')
    FileSystemNotFound = Shapes::StructureShape.new(name: 'FileSystemNotFound')
    FileSystemNullableSizeValue = Shapes::IntegerShape.new(name: 'FileSystemNullableSizeValue')
    FileSystemPolicyDescription = Shapes::StructureShape.new(name: 'FileSystemPolicyDescription')
    FileSystemSize = Shapes::StructureShape.new(name: 'FileSystemSize')
    FileSystemSizeValue = Shapes::IntegerShape.new(name: 'FileSystemSizeValue')
    Gid = Shapes::IntegerShape.new(name: 'Gid')
    IncorrectFileSystemLifeCycleState = Shapes::StructureShape.new(name: 'IncorrectFileSystemLifeCycleState')
    IncorrectMountTargetState = Shapes::StructureShape.new(name: 'IncorrectMountTargetState')
    InsufficientThroughputCapacity = Shapes::StructureShape.new(name: 'InsufficientThroughputCapacity')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidPolicyException = Shapes::StructureShape.new(name: 'InvalidPolicyException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressInUse = Shapes::StructureShape.new(name: 'IpAddressInUse')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LifeCycleState = Shapes::StringShape.new(name: 'LifeCycleState')
    LifecycleConfigurationDescription = Shapes::StructureShape.new(name: 'LifecycleConfigurationDescription')
    LifecyclePolicies = Shapes::ListShape.new(name: 'LifecyclePolicies')
    LifecyclePolicy = Shapes::StructureShape.new(name: 'LifecyclePolicy')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModifyMountTargetSecurityGroupsRequest = Shapes::StructureShape.new(name: 'ModifyMountTargetSecurityGroupsRequest')
    MountTargetConflict = Shapes::StructureShape.new(name: 'MountTargetConflict')
    MountTargetCount = Shapes::IntegerShape.new(name: 'MountTargetCount')
    MountTargetDescription = Shapes::StructureShape.new(name: 'MountTargetDescription')
    MountTargetDescriptions = Shapes::ListShape.new(name: 'MountTargetDescriptions')
    MountTargetId = Shapes::StringShape.new(name: 'MountTargetId')
    MountTargetNotFound = Shapes::StructureShape.new(name: 'MountTargetNotFound')
    Name = Shapes::StringShape.new(name: 'Name')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaceLimitExceeded = Shapes::StructureShape.new(name: 'NetworkInterfaceLimitExceeded')
    NoFreeAddressesInSubnet = Shapes::StructureShape.new(name: 'NoFreeAddressesInSubnet')
    OwnerGid = Shapes::IntegerShape.new(name: 'OwnerGid')
    OwnerUid = Shapes::IntegerShape.new(name: 'OwnerUid')
    Path = Shapes::StringShape.new(name: 'Path')
    PerformanceMode = Shapes::StringShape.new(name: 'PerformanceMode')
    Permissions = Shapes::StringShape.new(name: 'Permissions')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyNotFound = Shapes::StructureShape.new(name: 'PolicyNotFound')
    PosixUser = Shapes::StructureShape.new(name: 'PosixUser')
    ProvisionedThroughputInMibps = Shapes::FloatShape.new(name: 'ProvisionedThroughputInMibps')
    PutBackupPolicyRequest = Shapes::StructureShape.new(name: 'PutBackupPolicyRequest')
    PutFileSystemPolicyRequest = Shapes::StructureShape.new(name: 'PutFileSystemPolicyRequest')
    PutLifecycleConfigurationRequest = Shapes::StructureShape.new(name: 'PutLifecycleConfigurationRequest')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    RootDirectory = Shapes::StructureShape.new(name: 'RootDirectory')
    SecondaryGids = Shapes::ListShape.new(name: 'SecondaryGids')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    SecurityGroupLimitExceeded = Shapes::StructureShape.new(name: 'SecurityGroupLimitExceeded')
    SecurityGroupNotFound = Shapes::StructureShape.new(name: 'SecurityGroupNotFound')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    Status = Shapes::StringShape.new(name: 'Status')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetNotFound = Shapes::StructureShape.new(name: 'SubnetNotFound')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThroughputLimitExceeded = Shapes::StructureShape.new(name: 'ThroughputLimitExceeded')
    ThroughputMode = Shapes::StringShape.new(name: 'ThroughputMode')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyRequests = Shapes::StructureShape.new(name: 'TooManyRequests')
    TransitionToIARules = Shapes::StringShape.new(name: 'TransitionToIARules')
    Uid = Shapes::IntegerShape.new(name: 'Uid')
    UnsupportedAvailabilityZone = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZone')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateFileSystemRequest = Shapes::StructureShape.new(name: 'UpdateFileSystemRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AccessPointAlreadyExists.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    AccessPointAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessPointAlreadyExists.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location_name: "AccessPointId"))
    AccessPointAlreadyExists.struct_class = Types::AccessPointAlreadyExists

    AccessPointDescription.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    AccessPointDescription.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    AccessPointDescription.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    AccessPointDescription.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, location_name: "AccessPointId"))
    AccessPointDescription.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: AccessPointArn, location_name: "AccessPointArn"))
    AccessPointDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    AccessPointDescription.add_member(:posix_user, Shapes::ShapeRef.new(shape: PosixUser, location_name: "PosixUser"))
    AccessPointDescription.add_member(:root_directory, Shapes::ShapeRef.new(shape: RootDirectory, location_name: "RootDirectory"))
    AccessPointDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "OwnerId"))
    AccessPointDescription.add_member(:life_cycle_state, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "LifeCycleState"))
    AccessPointDescription.struct_class = Types::AccessPointDescription

    AccessPointDescriptions.member = Shapes::ShapeRef.new(shape: AccessPointDescription)

    AccessPointLimitExceeded.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    AccessPointLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessPointLimitExceeded.struct_class = Types::AccessPointLimitExceeded

    AccessPointNotFound.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    AccessPointNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessPointNotFound.struct_class = Types::AccessPointNotFound

    BackupPolicy.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "Status"))
    BackupPolicy.struct_class = Types::BackupPolicy

    BackupPolicyDescription.add_member(:backup_policy, Shapes::ShapeRef.new(shape: BackupPolicy, location_name: "BackupPolicy"))
    BackupPolicyDescription.struct_class = Types::BackupPolicyDescription

    BadRequest.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    BadRequest.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadRequest.struct_class = Types::BadRequest

    CreateAccessPointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateAccessPointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAccessPointRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateAccessPointRequest.add_member(:posix_user, Shapes::ShapeRef.new(shape: PosixUser, location_name: "PosixUser"))
    CreateAccessPointRequest.add_member(:root_directory, Shapes::ShapeRef.new(shape: RootDirectory, location_name: "RootDirectory"))
    CreateAccessPointRequest.struct_class = Types::CreateAccessPointRequest

    CreateFileSystemRequest.add_member(:creation_token, Shapes::ShapeRef.new(shape: CreationToken, required: true, location_name: "CreationToken", metadata: {"idempotencyToken"=>true}))
    CreateFileSystemRequest.add_member(:performance_mode, Shapes::ShapeRef.new(shape: PerformanceMode, location_name: "PerformanceMode"))
    CreateFileSystemRequest.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "Encrypted"))
    CreateFileSystemRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFileSystemRequest.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, location_name: "ThroughputMode"))
    CreateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: "ProvisionedThroughputInMibps"))
    CreateFileSystemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateFileSystemRequest.struct_class = Types::CreateFileSystemRequest

    CreateMountTargetRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateMountTargetRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    CreateMountTargetRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    CreateMountTargetRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateMountTargetRequest.struct_class = Types::CreateMountTargetRequest

    CreateTagsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    CreationInfo.add_member(:owner_uid, Shapes::ShapeRef.new(shape: OwnerUid, required: true, location_name: "OwnerUid"))
    CreationInfo.add_member(:owner_gid, Shapes::ShapeRef.new(shape: OwnerGid, required: true, location_name: "OwnerGid"))
    CreationInfo.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, required: true, location_name: "Permissions"))
    CreationInfo.struct_class = Types::CreationInfo

    DeleteAccessPointRequest.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location: "uri", location_name: "AccessPointId"))
    DeleteAccessPointRequest.struct_class = Types::DeleteAccessPointRequest

    DeleteFileSystemPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DeleteFileSystemPolicyRequest.struct_class = Types::DeleteFileSystemPolicyRequest

    DeleteFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DeleteFileSystemRequest.struct_class = Types::DeleteFileSystemRequest

    DeleteMountTargetRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "MountTargetId"))
    DeleteMountTargetRequest.struct_class = Types::DeleteMountTargetRequest

    DeleteTagsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DeleteTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DependencyTimeout.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    DependencyTimeout.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DependencyTimeout.struct_class = Types::DependencyTimeout

    DescribeAccessPointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    DescribeAccessPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    DescribeAccessPointsRequest.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, location: "querystring", location_name: "AccessPointId"))
    DescribeAccessPointsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location: "querystring", location_name: "FileSystemId"))
    DescribeAccessPointsRequest.struct_class = Types::DescribeAccessPointsRequest

    DescribeAccessPointsResponse.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPointDescriptions, location_name: "AccessPoints"))
    DescribeAccessPointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeAccessPointsResponse.struct_class = Types::DescribeAccessPointsResponse

    DescribeBackupPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DescribeBackupPolicyRequest.struct_class = Types::DescribeBackupPolicyRequest

    DescribeFileSystemPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DescribeFileSystemPolicyRequest.struct_class = Types::DescribeFileSystemPolicyRequest

    DescribeFileSystemsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "MaxItems"))
    DescribeFileSystemsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "Marker"))
    DescribeFileSystemsRequest.add_member(:creation_token, Shapes::ShapeRef.new(shape: CreationToken, location: "querystring", location_name: "CreationToken"))
    DescribeFileSystemsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location: "querystring", location_name: "FileSystemId"))
    DescribeFileSystemsRequest.struct_class = Types::DescribeFileSystemsRequest

    DescribeFileSystemsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeFileSystemsResponse.add_member(:file_systems, Shapes::ShapeRef.new(shape: FileSystemDescriptions, location_name: "FileSystems"))
    DescribeFileSystemsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeFileSystemsResponse.struct_class = Types::DescribeFileSystemsResponse

    DescribeLifecycleConfigurationRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DescribeLifecycleConfigurationRequest.struct_class = Types::DescribeLifecycleConfigurationRequest

    DescribeMountTargetSecurityGroupsRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "MountTargetId"))
    DescribeMountTargetSecurityGroupsRequest.struct_class = Types::DescribeMountTargetSecurityGroupsRequest

    DescribeMountTargetSecurityGroupsResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "SecurityGroups"))
    DescribeMountTargetSecurityGroupsResponse.struct_class = Types::DescribeMountTargetSecurityGroupsResponse

    DescribeMountTargetsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "MaxItems"))
    DescribeMountTargetsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "Marker"))
    DescribeMountTargetsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location: "querystring", location_name: "FileSystemId"))
    DescribeMountTargetsRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, location: "querystring", location_name: "MountTargetId"))
    DescribeMountTargetsRequest.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, location: "querystring", location_name: "AccessPointId"))
    DescribeMountTargetsRequest.struct_class = Types::DescribeMountTargetsRequest

    DescribeMountTargetsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeMountTargetsResponse.add_member(:mount_targets, Shapes::ShapeRef.new(shape: MountTargetDescriptions, location_name: "MountTargets"))
    DescribeMountTargetsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeMountTargetsResponse.struct_class = Types::DescribeMountTargetsResponse

    DescribeTagsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "MaxItems"))
    DescribeTagsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "Marker"))
    DescribeTagsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DescribeTagsRequest.struct_class = Types::DescribeTagsRequest

    DescribeTagsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    DescribeTagsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeTagsResponse.struct_class = Types::DescribeTagsResponse

    FileSystemAlreadyExists.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    FileSystemAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileSystemAlreadyExists.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    FileSystemAlreadyExists.struct_class = Types::FileSystemAlreadyExists

    FileSystemDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "OwnerId"))
    FileSystemDescription.add_member(:creation_token, Shapes::ShapeRef.new(shape: CreationToken, required: true, location_name: "CreationToken"))
    FileSystemDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    FileSystemDescription.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: FileSystemArn, location_name: "FileSystemArn"))
    FileSystemDescription.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    FileSystemDescription.add_member(:life_cycle_state, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "LifeCycleState"))
    FileSystemDescription.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "Name"))
    FileSystemDescription.add_member(:number_of_mount_targets, Shapes::ShapeRef.new(shape: MountTargetCount, required: true, location_name: "NumberOfMountTargets"))
    FileSystemDescription.add_member(:size_in_bytes, Shapes::ShapeRef.new(shape: FileSystemSize, required: true, location_name: "SizeInBytes"))
    FileSystemDescription.add_member(:performance_mode, Shapes::ShapeRef.new(shape: PerformanceMode, required: true, location_name: "PerformanceMode"))
    FileSystemDescription.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "Encrypted"))
    FileSystemDescription.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    FileSystemDescription.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, location_name: "ThroughputMode"))
    FileSystemDescription.add_member(:provisioned_throughput_in_mibps, Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: "ProvisionedThroughputInMibps"))
    FileSystemDescription.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    FileSystemDescription.struct_class = Types::FileSystemDescription

    FileSystemDescriptions.member = Shapes::ShapeRef.new(shape: FileSystemDescription)

    FileSystemInUse.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    FileSystemInUse.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileSystemInUse.struct_class = Types::FileSystemInUse

    FileSystemLimitExceeded.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    FileSystemLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileSystemLimitExceeded.struct_class = Types::FileSystemLimitExceeded

    FileSystemNotFound.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    FileSystemNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    FileSystemNotFound.struct_class = Types::FileSystemNotFound

    FileSystemPolicyDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "FileSystemId"))
    FileSystemPolicyDescription.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    FileSystemPolicyDescription.struct_class = Types::FileSystemPolicyDescription

    FileSystemSize.add_member(:value, Shapes::ShapeRef.new(shape: FileSystemSizeValue, required: true, location_name: "Value"))
    FileSystemSize.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    FileSystemSize.add_member(:value_in_ia, Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: "ValueInIA"))
    FileSystemSize.add_member(:value_in_standard, Shapes::ShapeRef.new(shape: FileSystemNullableSizeValue, location_name: "ValueInStandard"))
    FileSystemSize.struct_class = Types::FileSystemSize

    IncorrectFileSystemLifeCycleState.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    IncorrectFileSystemLifeCycleState.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncorrectFileSystemLifeCycleState.struct_class = Types::IncorrectFileSystemLifeCycleState

    IncorrectMountTargetState.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    IncorrectMountTargetState.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncorrectMountTargetState.struct_class = Types::IncorrectMountTargetState

    InsufficientThroughputCapacity.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    InsufficientThroughputCapacity.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InsufficientThroughputCapacity.struct_class = Types::InsufficientThroughputCapacity

    InternalServerError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidPolicyException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    InvalidPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidPolicyException.struct_class = Types::InvalidPolicyException

    IpAddressInUse.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    IpAddressInUse.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IpAddressInUse.struct_class = Types::IpAddressInUse

    LifecycleConfigurationDescription.add_member(:lifecycle_policies, Shapes::ShapeRef.new(shape: LifecyclePolicies, location_name: "LifecyclePolicies"))
    LifecycleConfigurationDescription.struct_class = Types::LifecycleConfigurationDescription

    LifecyclePolicies.member = Shapes::ShapeRef.new(shape: LifecyclePolicy)

    LifecyclePolicy.add_member(:transition_to_ia, Shapes::ShapeRef.new(shape: TransitionToIARules, location_name: "TransitionToIA"))
    LifecyclePolicy.struct_class = Types::LifecyclePolicy

    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ResourceId"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ModifyMountTargetSecurityGroupsRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "MountTargetId"))
    ModifyMountTargetSecurityGroupsRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    ModifyMountTargetSecurityGroupsRequest.struct_class = Types::ModifyMountTargetSecurityGroupsRequest

    MountTargetConflict.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    MountTargetConflict.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MountTargetConflict.struct_class = Types::MountTargetConflict

    MountTargetDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "OwnerId"))
    MountTargetDescription.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location_name: "MountTargetId"))
    MountTargetDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    MountTargetDescription.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    MountTargetDescription.add_member(:life_cycle_state, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "LifeCycleState"))
    MountTargetDescription.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    MountTargetDescription.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    MountTargetDescription.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "AvailabilityZoneId"))
    MountTargetDescription.add_member(:availability_zone_name, Shapes::ShapeRef.new(shape: AvailabilityZoneName, location_name: "AvailabilityZoneName"))
    MountTargetDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    MountTargetDescription.struct_class = Types::MountTargetDescription

    MountTargetDescriptions.member = Shapes::ShapeRef.new(shape: MountTargetDescription)

    MountTargetNotFound.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    MountTargetNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MountTargetNotFound.struct_class = Types::MountTargetNotFound

    NetworkInterfaceLimitExceeded.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    NetworkInterfaceLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NetworkInterfaceLimitExceeded.struct_class = Types::NetworkInterfaceLimitExceeded

    NoFreeAddressesInSubnet.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    NoFreeAddressesInSubnet.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NoFreeAddressesInSubnet.struct_class = Types::NoFreeAddressesInSubnet

    PolicyNotFound.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PolicyNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    PolicyNotFound.struct_class = Types::PolicyNotFound

    PosixUser.add_member(:uid, Shapes::ShapeRef.new(shape: Uid, required: true, location_name: "Uid"))
    PosixUser.add_member(:gid, Shapes::ShapeRef.new(shape: Gid, required: true, location_name: "Gid"))
    PosixUser.add_member(:secondary_gids, Shapes::ShapeRef.new(shape: SecondaryGids, location_name: "SecondaryGids"))
    PosixUser.struct_class = Types::PosixUser

    PutBackupPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    PutBackupPolicyRequest.add_member(:backup_policy, Shapes::ShapeRef.new(shape: BackupPolicy, required: true, location_name: "BackupPolicy"))
    PutBackupPolicyRequest.struct_class = Types::PutBackupPolicyRequest

    PutFileSystemPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    PutFileSystemPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutFileSystemPolicyRequest.add_member(:bypass_policy_lockout_safety_check, Shapes::ShapeRef.new(shape: BypassPolicyLockoutSafetyCheck, location_name: "BypassPolicyLockoutSafetyCheck"))
    PutFileSystemPolicyRequest.struct_class = Types::PutFileSystemPolicyRequest

    PutLifecycleConfigurationRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    PutLifecycleConfigurationRequest.add_member(:lifecycle_policies, Shapes::ShapeRef.new(shape: LifecyclePolicies, required: true, location_name: "LifecyclePolicies"))
    PutLifecycleConfigurationRequest.struct_class = Types::PutLifecycleConfigurationRequest

    RootDirectory.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "Path"))
    RootDirectory.add_member(:creation_info, Shapes::ShapeRef.new(shape: CreationInfo, location_name: "CreationInfo"))
    RootDirectory.struct_class = Types::RootDirectory

    SecondaryGids.member = Shapes::ShapeRef.new(shape: Gid)

    SecurityGroupLimitExceeded.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    SecurityGroupLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SecurityGroupLimitExceeded.struct_class = Types::SecurityGroupLimitExceeded

    SecurityGroupNotFound.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    SecurityGroupNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SecurityGroupNotFound.struct_class = Types::SecurityGroupNotFound

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    SubnetNotFound.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    SubnetNotFound.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SubnetNotFound.struct_class = Types::SubnetNotFound

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ResourceId"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    ThroughputLimitExceeded.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    ThroughputLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThroughputLimitExceeded.struct_class = Types::ThroughputLimitExceeded

    TooManyRequests.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    TooManyRequests.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequests.struct_class = Types::TooManyRequests

    UnsupportedAvailabilityZone.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    UnsupportedAvailabilityZone.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedAvailabilityZone.struct_class = Types::UnsupportedAvailabilityZone

    UntagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "ResourceId"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    UpdateFileSystemRequest.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, location_name: "ThroughputMode"))
    UpdateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: "ProvisionedThroughputInMibps"))
    UpdateFileSystemRequest.struct_class = Types::UpdateFileSystemRequest

    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-02-01"

      api.metadata = {
        "apiVersion" => "2015-02-01",
        "endpointPrefix" => "elasticfilesystem",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "EFS",
        "serviceFullName" => "Amazon Elastic File System",
        "serviceId" => "EFS",
        "signatureVersion" => "v4",
        "uid" => "elasticfilesystem-2015-02-01",
      }

      api.add_operation(:create_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPoint"
        o.http_method = "POST"
        o.http_request_uri = "/2015-02-01/access-points"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: AccessPointDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointLimitExceeded)
      end)

      api.add_operation(:create_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFileSystem"
        o.http_method = "POST"
        o.http_request_uri = "/2015-02-01/file-systems"
        o.input = Shapes::ShapeRef.new(shape: CreateFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: FileSystemDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        o.errors << Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
      end)

      api.add_operation(:create_mount_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMountTarget"
        o.http_method = "POST"
        o.http_request_uri = "/2015-02-01/mount-targets"
        o.input = Shapes::ShapeRef.new(shape: CreateMountTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: MountTargetDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        o.errors << Shapes::ShapeRef.new(shape: MountTargetConflict)
        o.errors << Shapes::ShapeRef.new(shape: SubnetNotFound)
        o.errors << Shapes::ShapeRef.new(shape: NoFreeAddressesInSubnet)
        o.errors << Shapes::ShapeRef.new(shape: IpAddressInUse)
        o.errors << Shapes::ShapeRef.new(shape: NetworkInterfaceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: SecurityGroupLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: SecurityGroupNotFound)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZone)
      end)

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/2015-02-01/create-tags/{FileSystemId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: CreateTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
      end)

      api.add_operation(:delete_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-02-01/access-points/{AccessPointId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFound)
      end)

      api.add_operation(:delete_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileSystem"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemInUse)
      end)

      api.add_operation(:delete_file_system_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileSystemPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileSystemPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
      end)

      api.add_operation(:delete_mount_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMountTarget"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-02-01/mount-targets/{MountTargetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMountTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DependencyTimeout)
        o.errors << Shapes::ShapeRef.new(shape: MountTargetNotFound)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/2015-02-01/delete-tags/{FileSystemId}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
      end)

      api.add_operation(:describe_access_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccessPoints"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/access-points"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessPointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_backup_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackupPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/backup-policy"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: BackupPolicyDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_file_system_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFileSystemPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/policy"
        o.input = Shapes::ShapeRef.new(shape: DescribeFileSystemPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: FileSystemPolicyDescription)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFound)
      end)

      api.add_operation(:describe_file_systems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFileSystems"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/file-systems"
        o.input = Shapes::ShapeRef.new(shape: DescribeFileSystemsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFileSystemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_lifecycle_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLifecycleConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration"
        o.input = Shapes::ShapeRef.new(shape: DescribeLifecycleConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: LifecycleConfigurationDescription)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
      end)

      api.add_operation(:describe_mount_target_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMountTargetSecurityGroups"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/mount-targets/{MountTargetId}/security-groups"
        o.input = Shapes::ShapeRef.new(shape: DescribeMountTargetSecurityGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMountTargetSecurityGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MountTargetNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectMountTargetState)
      end)

      api.add_operation(:describe_mount_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMountTargets"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/mount-targets"
        o.input = Shapes::ShapeRef.new(shape: DescribeMountTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMountTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: MountTargetNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFound)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/tags/{FileSystemId}/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_marker" => "marker"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/resource-tags/{ResourceId}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:modify_mount_target_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyMountTargetSecurityGroups"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-02-01/mount-targets/{MountTargetId}/security-groups"
        o.input = Shapes::ShapeRef.new(shape: ModifyMountTargetSecurityGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: MountTargetNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectMountTargetState)
        o.errors << Shapes::ShapeRef.new(shape: SecurityGroupLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: SecurityGroupNotFound)
      end)

      api.add_operation(:put_backup_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBackupPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/backup-policy"
        o.input = Shapes::ShapeRef.new(shape: PutBackupPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: BackupPolicyDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_file_system_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFileSystemPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutFileSystemPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: FileSystemPolicyDescription)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
      end)

      api.add_operation(:put_lifecycle_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLifecycleConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutLifecycleConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: LifecycleConfigurationDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/2015-02-01/resource-tags/{ResourceId}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFound)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-02-01/resource-tags/{ResourceId}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: AccessPointNotFound)
      end)

      api.add_operation(:update_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFileSystem"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-02-01/file-systems/{FileSystemId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: FileSystemDescription)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectFileSystemLifeCycleState)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientThroughputCapacity)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThroughputLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequests)
      end)
    end

  end
end
