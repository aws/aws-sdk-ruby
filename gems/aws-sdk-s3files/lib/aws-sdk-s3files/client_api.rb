# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3Files
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessPointArn = Shapes::StringShape.new(name: 'AccessPointArn')
    AccessPointId = Shapes::StringShape.new(name: 'AccessPointId')
    AccessPoints = Shapes::ListShape.new(name: 'AccessPoints')
    AvailabilityZoneId = Shapes::StringShape.new(name: 'AvailabilityZoneId')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketArn = Shapes::StringShape.new(name: 'BucketArn')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccessPointRequest = Shapes::StructureShape.new(name: 'CreateAccessPointRequest')
    CreateAccessPointResponse = Shapes::StructureShape.new(name: 'CreateAccessPointResponse')
    CreateFileSystemRequest = Shapes::StructureShape.new(name: 'CreateFileSystemRequest')
    CreateFileSystemRequestPrefixString = Shapes::StringShape.new(name: 'CreateFileSystemRequestPrefixString')
    CreateFileSystemResponse = Shapes::StructureShape.new(name: 'CreateFileSystemResponse')
    CreateMountTargetRequest = Shapes::StructureShape.new(name: 'CreateMountTargetRequest')
    CreateMountTargetResponse = Shapes::StructureShape.new(name: 'CreateMountTargetResponse')
    CreationPermissions = Shapes::StructureShape.new(name: 'CreationPermissions')
    CreationToken = Shapes::StringShape.new(name: 'CreationToken')
    DeleteAccessPointRequest = Shapes::StructureShape.new(name: 'DeleteAccessPointRequest')
    DeleteFileSystemPolicyRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemPolicyRequest')
    DeleteFileSystemRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemRequest')
    DeleteMountTargetRequest = Shapes::StructureShape.new(name: 'DeleteMountTargetRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExpirationDataRule = Shapes::StructureShape.new(name: 'ExpirationDataRule')
    ExpirationDataRuleDaysAfterLastAccessInteger = Shapes::IntegerShape.new(name: 'ExpirationDataRuleDaysAfterLastAccessInteger')
    FileSystemArn = Shapes::StringShape.new(name: 'FileSystemArn')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FileSystems = Shapes::ListShape.new(name: 'FileSystems')
    GetAccessPointRequest = Shapes::StructureShape.new(name: 'GetAccessPointRequest')
    GetAccessPointResponse = Shapes::StructureShape.new(name: 'GetAccessPointResponse')
    GetFileSystemPolicyRequest = Shapes::StructureShape.new(name: 'GetFileSystemPolicyRequest')
    GetFileSystemPolicyResponse = Shapes::StructureShape.new(name: 'GetFileSystemPolicyResponse')
    GetFileSystemRequest = Shapes::StructureShape.new(name: 'GetFileSystemRequest')
    GetFileSystemResponse = Shapes::StructureShape.new(name: 'GetFileSystemResponse')
    GetMountTargetRequest = Shapes::StructureShape.new(name: 'GetMountTargetRequest')
    GetMountTargetResponse = Shapes::StructureShape.new(name: 'GetMountTargetResponse')
    GetSynchronizationConfigurationRequest = Shapes::StructureShape.new(name: 'GetSynchronizationConfigurationRequest')
    GetSynchronizationConfigurationResponse = Shapes::StructureShape.new(name: 'GetSynchronizationConfigurationResponse')
    GetSynchronizationConfigurationResponseExpirationDataRulesList = Shapes::ListShape.new(name: 'GetSynchronizationConfigurationResponseExpirationDataRulesList')
    GetSynchronizationConfigurationResponseImportDataRulesList = Shapes::ListShape.new(name: 'GetSynchronizationConfigurationResponseImportDataRulesList')
    Gid = Shapes::IntegerShape.new(name: 'Gid')
    ImportDataRule = Shapes::StructureShape.new(name: 'ImportDataRule')
    ImportDataRulePrefixString = Shapes::StringShape.new(name: 'ImportDataRulePrefixString')
    ImportDataRuleSizeLessThanLong = Shapes::IntegerShape.new(name: 'ImportDataRuleSizeLessThanLong')
    ImportTrigger = Shapes::StringShape.new(name: 'ImportTrigger')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    Ipv4Address = Shapes::StringShape.new(name: 'Ipv4Address')
    Ipv6Address = Shapes::StringShape.new(name: 'Ipv6Address')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LifeCycleState = Shapes::StringShape.new(name: 'LifeCycleState')
    ListAccessPointsDescription = Shapes::StructureShape.new(name: 'ListAccessPointsDescription')
    ListAccessPointsRequest = Shapes::StructureShape.new(name: 'ListAccessPointsRequest')
    ListAccessPointsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAccessPointsRequestMaxResultsInteger')
    ListAccessPointsResponse = Shapes::StructureShape.new(name: 'ListAccessPointsResponse')
    ListFileSystemsDescription = Shapes::StructureShape.new(name: 'ListFileSystemsDescription')
    ListFileSystemsRequest = Shapes::StructureShape.new(name: 'ListFileSystemsRequest')
    ListFileSystemsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListFileSystemsRequestMaxResultsInteger')
    ListFileSystemsResponse = Shapes::StructureShape.new(name: 'ListFileSystemsResponse')
    ListMountTargetsDescription = Shapes::StructureShape.new(name: 'ListMountTargetsDescription')
    ListMountTargetsRequest = Shapes::StructureShape.new(name: 'ListMountTargetsRequest')
    ListMountTargetsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMountTargetsRequestMaxResultsInteger')
    ListMountTargetsResponse = Shapes::StructureShape.new(name: 'ListMountTargetsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTagsForResourceRequestMaxResultsInteger')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MountTargetId = Shapes::StringShape.new(name: 'MountTargetId')
    MountTargets = Shapes::ListShape.new(name: 'MountTargets')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    OwnerGid = Shapes::IntegerShape.new(name: 'OwnerGid')
    OwnerUid = Shapes::IntegerShape.new(name: 'OwnerUid')
    Path = Shapes::StringShape.new(name: 'Path')
    Permissions = Shapes::StringShape.new(name: 'Permissions')
    PosixUser = Shapes::StructureShape.new(name: 'PosixUser')
    PutFileSystemPolicyRequest = Shapes::StructureShape.new(name: 'PutFileSystemPolicyRequest')
    PutFileSystemPolicyResponse = Shapes::StructureShape.new(name: 'PutFileSystemPolicyResponse')
    PutSynchronizationConfigurationRequest = Shapes::StructureShape.new(name: 'PutSynchronizationConfigurationRequest')
    PutSynchronizationConfigurationRequestExpirationDataRulesList = Shapes::ListShape.new(name: 'PutSynchronizationConfigurationRequestExpirationDataRulesList')
    PutSynchronizationConfigurationRequestImportDataRulesList = Shapes::ListShape.new(name: 'PutSynchronizationConfigurationRequestImportDataRulesList')
    PutSynchronizationConfigurationResponse = Shapes::StructureShape.new(name: 'PutSynchronizationConfigurationResponse')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RootDirectory = Shapes::StructureShape.new(name: 'RootDirectory')
    SecondaryGids = Shapes::ListShape.new(name: 'SecondaryGids')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Uid = Shapes::IntegerShape.new(name: 'Uid')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateMountTargetRequest = Shapes::StructureShape.new(name: 'UpdateMountTargetRequest')
    UpdateMountTargetResponse = Shapes::StructureShape.new(name: 'UpdateMountTargetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AccessPoints.member = Shapes::ShapeRef.new(shape: ListAccessPointsDescription)

    ConflictException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccessPointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessPointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAccessPointRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    CreateAccessPointRequest.add_member(:posix_user, Shapes::ShapeRef.new(shape: PosixUser, location_name: "posixUser"))
    CreateAccessPointRequest.add_member(:root_directory, Shapes::ShapeRef.new(shape: RootDirectory, location_name: "rootDirectory"))
    CreateAccessPointRequest.struct_class = Types::CreateAccessPointRequest

    CreateAccessPointResponse.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: AccessPointArn, required: true, location_name: "accessPointArn"))
    CreateAccessPointResponse.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location_name: "accessPointId"))
    CreateAccessPointResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    CreateAccessPointResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    CreateAccessPointResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "status"))
    CreateAccessPointResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    CreateAccessPointResponse.add_member(:posix_user, Shapes::ShapeRef.new(shape: PosixUser, location_name: "posixUser"))
    CreateAccessPointResponse.add_member(:root_directory, Shapes::ShapeRef.new(shape: RootDirectory, location_name: "rootDirectory"))
    CreateAccessPointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAccessPointResponse.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "name"))
    CreateAccessPointResponse.struct_class = Types::CreateAccessPointResponse

    CreateFileSystemRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketArn, required: true, location_name: "bucket"))
    CreateFileSystemRequest.add_member(:prefix, Shapes::ShapeRef.new(shape: CreateFileSystemRequestPrefixString, location_name: "prefix"))
    CreateFileSystemRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreationToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateFileSystemRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateFileSystemRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateFileSystemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateFileSystemRequest.add_member(:accept_bucket_warning, Shapes::ShapeRef.new(shape: Boolean, location_name: "acceptBucketWarning"))
    CreateFileSystemRequest.struct_class = Types::CreateFileSystemRequest

    CreateFileSystemResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    CreateFileSystemResponse.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: FileSystemArn, location_name: "fileSystemArn"))
    CreateFileSystemResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "fileSystemId"))
    CreateFileSystemResponse.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketArn, location_name: "bucket"))
    CreateFileSystemResponse.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    CreateFileSystemResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateFileSystemResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateFileSystemResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "status"))
    CreateFileSystemResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    CreateFileSystemResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateFileSystemResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ownerId"))
    CreateFileSystemResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateFileSystemResponse.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "name"))
    CreateFileSystemResponse.struct_class = Types::CreateFileSystemResponse

    CreateMountTargetRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    CreateMountTargetRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    CreateMountTargetRequest.add_member(:ipv4_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "ipv4Address"))
    CreateMountTargetRequest.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "ipv6Address"))
    CreateMountTargetRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateMountTargetRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    CreateMountTargetRequest.struct_class = Types::CreateMountTargetRequest

    CreateMountTargetResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    CreateMountTargetResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    CreateMountTargetResponse.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location_name: "mountTargetId"))
    CreateMountTargetResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "fileSystemId"))
    CreateMountTargetResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    CreateMountTargetResponse.add_member(:ipv4_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "ipv4Address"))
    CreateMountTargetResponse.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "ipv6Address"))
    CreateMountTargetResponse.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "networkInterfaceId"))
    CreateMountTargetResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    CreateMountTargetResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    CreateMountTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "status"))
    CreateMountTargetResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    CreateMountTargetResponse.struct_class = Types::CreateMountTargetResponse

    CreationPermissions.add_member(:owner_uid, Shapes::ShapeRef.new(shape: OwnerUid, required: true, location_name: "ownerUid"))
    CreationPermissions.add_member(:owner_gid, Shapes::ShapeRef.new(shape: OwnerGid, required: true, location_name: "ownerGid"))
    CreationPermissions.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, required: true, location_name: "permissions"))
    CreationPermissions.struct_class = Types::CreationPermissions

    DeleteAccessPointRequest.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location: "uri", location_name: "accessPointId"))
    DeleteAccessPointRequest.struct_class = Types::DeleteAccessPointRequest

    DeleteFileSystemPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    DeleteFileSystemPolicyRequest.struct_class = Types::DeleteFileSystemPolicyRequest

    DeleteFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    DeleteFileSystemRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "forceDelete"))
    DeleteFileSystemRequest.struct_class = Types::DeleteFileSystemRequest

    DeleteMountTargetRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "mountTargetId"))
    DeleteMountTargetRequest.struct_class = Types::DeleteMountTargetRequest

    ExpirationDataRule.add_member(:days_after_last_access, Shapes::ShapeRef.new(shape: ExpirationDataRuleDaysAfterLastAccessInteger, required: true, location_name: "daysAfterLastAccess"))
    ExpirationDataRule.struct_class = Types::ExpirationDataRule

    FileSystems.member = Shapes::ShapeRef.new(shape: ListFileSystemsDescription)

    GetAccessPointRequest.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location: "uri", location_name: "accessPointId"))
    GetAccessPointRequest.struct_class = Types::GetAccessPointRequest

    GetAccessPointResponse.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: AccessPointArn, required: true, location_name: "accessPointArn"))
    GetAccessPointResponse.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location_name: "accessPointId"))
    GetAccessPointResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken"))
    GetAccessPointResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    GetAccessPointResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "status"))
    GetAccessPointResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    GetAccessPointResponse.add_member(:posix_user, Shapes::ShapeRef.new(shape: PosixUser, location_name: "posixUser"))
    GetAccessPointResponse.add_member(:root_directory, Shapes::ShapeRef.new(shape: RootDirectory, location_name: "rootDirectory"))
    GetAccessPointResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    GetAccessPointResponse.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "name"))
    GetAccessPointResponse.struct_class = Types::GetAccessPointResponse

    GetFileSystemPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    GetFileSystemPolicyRequest.struct_class = Types::GetFileSystemPolicyRequest

    GetFileSystemPolicyResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    GetFileSystemPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    GetFileSystemPolicyResponse.struct_class = Types::GetFileSystemPolicyResponse

    GetFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    GetFileSystemRequest.struct_class = Types::GetFileSystemRequest

    GetFileSystemResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetFileSystemResponse.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: FileSystemArn, location_name: "fileSystemArn"))
    GetFileSystemResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "fileSystemId"))
    GetFileSystemResponse.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketArn, location_name: "bucket"))
    GetFileSystemResponse.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    GetFileSystemResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    GetFileSystemResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    GetFileSystemResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "status"))
    GetFileSystemResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    GetFileSystemResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetFileSystemResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "ownerId"))
    GetFileSystemResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    GetFileSystemResponse.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "name"))
    GetFileSystemResponse.struct_class = Types::GetFileSystemResponse

    GetMountTargetRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "mountTargetId"))
    GetMountTargetRequest.struct_class = Types::GetMountTargetRequest

    GetMountTargetResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    GetMountTargetResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    GetMountTargetResponse.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location_name: "mountTargetId"))
    GetMountTargetResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "fileSystemId"))
    GetMountTargetResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    GetMountTargetResponse.add_member(:ipv4_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "ipv4Address"))
    GetMountTargetResponse.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "ipv6Address"))
    GetMountTargetResponse.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "networkInterfaceId"))
    GetMountTargetResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    GetMountTargetResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    GetMountTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "status"))
    GetMountTargetResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    GetMountTargetResponse.struct_class = Types::GetMountTargetResponse

    GetSynchronizationConfigurationRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    GetSynchronizationConfigurationRequest.struct_class = Types::GetSynchronizationConfigurationRequest

    GetSynchronizationConfigurationResponse.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "latestVersionNumber"))
    GetSynchronizationConfigurationResponse.add_member(:import_data_rules, Shapes::ShapeRef.new(shape: GetSynchronizationConfigurationResponseImportDataRulesList, required: true, location_name: "importDataRules"))
    GetSynchronizationConfigurationResponse.add_member(:expiration_data_rules, Shapes::ShapeRef.new(shape: GetSynchronizationConfigurationResponseExpirationDataRulesList, required: true, location_name: "expirationDataRules"))
    GetSynchronizationConfigurationResponse.struct_class = Types::GetSynchronizationConfigurationResponse

    GetSynchronizationConfigurationResponseExpirationDataRulesList.member = Shapes::ShapeRef.new(shape: ExpirationDataRule)

    GetSynchronizationConfigurationResponseImportDataRulesList.member = Shapes::ShapeRef.new(shape: ImportDataRule)

    ImportDataRule.add_member(:prefix, Shapes::ShapeRef.new(shape: ImportDataRulePrefixString, required: true, location_name: "prefix"))
    ImportDataRule.add_member(:trigger, Shapes::ShapeRef.new(shape: ImportTrigger, required: true, location_name: "trigger"))
    ImportDataRule.add_member(:size_less_than, Shapes::ShapeRef.new(shape: ImportDataRuleSizeLessThanLong, required: true, location_name: "sizeLessThan"))
    ImportDataRule.struct_class = Types::ImportDataRule

    InternalServerException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAccessPointsDescription.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: AccessPointArn, required: true, location_name: "accessPointArn"))
    ListAccessPointsDescription.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, required: true, location_name: "accessPointId"))
    ListAccessPointsDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    ListAccessPointsDescription.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "status"))
    ListAccessPointsDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    ListAccessPointsDescription.add_member(:posix_user, Shapes::ShapeRef.new(shape: PosixUser, location_name: "posixUser"))
    ListAccessPointsDescription.add_member(:root_directory, Shapes::ShapeRef.new(shape: RootDirectory, location_name: "rootDirectory"))
    ListAccessPointsDescription.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "name"))
    ListAccessPointsDescription.struct_class = Types::ListAccessPointsDescription

    ListAccessPointsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "querystring", location_name: "fileSystemId"))
    ListAccessPointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessPointsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAccessPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListAccessPointsRequest.struct_class = Types::ListAccessPointsRequest

    ListAccessPointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessPointsResponse.add_member(:access_points, Shapes::ShapeRef.new(shape: AccessPoints, required: true, location_name: "accessPoints"))
    ListAccessPointsResponse.struct_class = Types::ListAccessPointsResponse

    ListFileSystemsDescription.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ListFileSystemsDescription.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: FileSystemArn, required: true, location_name: "fileSystemArn"))
    ListFileSystemsDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "fileSystemId"))
    ListFileSystemsDescription.add_member(:name, Shapes::ShapeRef.new(shape: TagValue, location_name: "name"))
    ListFileSystemsDescription.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketArn, required: true, location_name: "bucket"))
    ListFileSystemsDescription.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "status"))
    ListFileSystemsDescription.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ListFileSystemsDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ListFileSystemsDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    ListFileSystemsDescription.struct_class = Types::ListFileSystemsDescription

    ListFileSystemsRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketArn, location: "querystring", location_name: "bucket"))
    ListFileSystemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFileSystemsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListFileSystemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFileSystemsRequest.struct_class = Types::ListFileSystemsRequest

    ListFileSystemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFileSystemsResponse.add_member(:file_systems, Shapes::ShapeRef.new(shape: FileSystems, required: true, location_name: "fileSystems"))
    ListFileSystemsResponse.struct_class = Types::ListFileSystemsResponse

    ListMountTargetsDescription.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    ListMountTargetsDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "fileSystemId"))
    ListMountTargetsDescription.add_member(:ipv4_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "ipv4Address"))
    ListMountTargetsDescription.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "ipv6Address"))
    ListMountTargetsDescription.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "status"))
    ListMountTargetsDescription.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ListMountTargetsDescription.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location_name: "mountTargetId"))
    ListMountTargetsDescription.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "networkInterfaceId"))
    ListMountTargetsDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    ListMountTargetsDescription.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    ListMountTargetsDescription.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    ListMountTargetsDescription.struct_class = Types::ListMountTargetsDescription

    ListMountTargetsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location: "querystring", location_name: "fileSystemId"))
    ListMountTargetsRequest.add_member(:access_point_id, Shapes::ShapeRef.new(shape: AccessPointId, location: "querystring", location_name: "accessPointId"))
    ListMountTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMountTargetsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMountTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMountTargetsRequest.struct_class = Types::ListMountTargetsRequest

    ListMountTargetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMountTargetsResponse.add_member(:mount_targets, Shapes::ShapeRef.new(shape: MountTargets, required: true, location_name: "mountTargets"))
    ListMountTargetsResponse.struct_class = Types::ListMountTargetsResponse

    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "resourceId"))
    ListTagsForResourceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTagsForResourceRequestMaxResultsInteger, location: "querystring", location_name: "MaxResults"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MountTargets.member = Shapes::ShapeRef.new(shape: ListMountTargetsDescription)

    PosixUser.add_member(:uid, Shapes::ShapeRef.new(shape: Uid, required: true, location_name: "uid"))
    PosixUser.add_member(:gid, Shapes::ShapeRef.new(shape: Gid, required: true, location_name: "gid"))
    PosixUser.add_member(:secondary_gids, Shapes::ShapeRef.new(shape: SecondaryGids, location_name: "secondaryGids"))
    PosixUser.struct_class = Types::PosixUser

    PutFileSystemPolicyRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    PutFileSystemPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    PutFileSystemPolicyRequest.struct_class = Types::PutFileSystemPolicyRequest

    PutFileSystemPolicyResponse.struct_class = Types::PutFileSystemPolicyResponse

    PutSynchronizationConfigurationRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "fileSystemId"))
    PutSynchronizationConfigurationRequest.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "latestVersionNumber"))
    PutSynchronizationConfigurationRequest.add_member(:import_data_rules, Shapes::ShapeRef.new(shape: PutSynchronizationConfigurationRequestImportDataRulesList, required: true, location_name: "importDataRules"))
    PutSynchronizationConfigurationRequest.add_member(:expiration_data_rules, Shapes::ShapeRef.new(shape: PutSynchronizationConfigurationRequestExpirationDataRulesList, required: true, location_name: "expirationDataRules"))
    PutSynchronizationConfigurationRequest.struct_class = Types::PutSynchronizationConfigurationRequest

    PutSynchronizationConfigurationRequestExpirationDataRulesList.member = Shapes::ShapeRef.new(shape: ExpirationDataRule)

    PutSynchronizationConfigurationRequestImportDataRulesList.member = Shapes::ShapeRef.new(shape: ImportDataRule)

    PutSynchronizationConfigurationResponse.struct_class = Types::PutSynchronizationConfigurationResponse

    ResourceNotFoundException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RootDirectory.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "path"))
    RootDirectory.add_member(:creation_permissions, Shapes::ShapeRef.new(shape: CreationPermissions, location_name: "creationPermissions"))
    RootDirectory.struct_class = Types::RootDirectory

    SecondaryGids.member = Shapes::ShapeRef.new(shape: Gid)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    ServiceQuotaExceededException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "resourceId"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    ThrottlingException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "resourceId"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateMountTargetRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "mountTargetId"))
    UpdateMountTargetRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "securityGroups"))
    UpdateMountTargetRequest.struct_class = Types::UpdateMountTargetRequest

    UpdateMountTargetResponse.add_member(:availability_zone_id, Shapes::ShapeRef.new(shape: AvailabilityZoneId, location_name: "availabilityZoneId"))
    UpdateMountTargetResponse.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ownerId"))
    UpdateMountTargetResponse.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location_name: "mountTargetId"))
    UpdateMountTargetResponse.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location_name: "fileSystemId"))
    UpdateMountTargetResponse.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "subnetId"))
    UpdateMountTargetResponse.add_member(:ipv4_address, Shapes::ShapeRef.new(shape: Ipv4Address, location_name: "ipv4Address"))
    UpdateMountTargetResponse.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "ipv6Address"))
    UpdateMountTargetResponse.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "networkInterfaceId"))
    UpdateMountTargetResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "vpcId"))
    UpdateMountTargetResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "securityGroups"))
    UpdateMountTargetResponse.add_member(:status, Shapes::ShapeRef.new(shape: LifeCycleState, location_name: "status"))
    UpdateMountTargetResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    UpdateMountTargetResponse.struct_class = Types::UpdateMountTargetResponse

    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "errorCode"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-05-05"

      api.metadata = {
        "apiVersion" => "2025-05-05",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "s3files",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon S3 Files",
        "serviceId" => "S3Files",
        "signatureVersion" => "v4",
        "signingName" => "s3files",
        "uid" => "s3files-2025-05-05",
      }

      api.add_operation(:create_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPoint"
        o.http_method = "PUT"
        o.http_request_uri = "/access-points"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFileSystem"
        o.http_method = "PUT"
        o.http_request_uri = "/file-systems"
        o.input = Shapes::ShapeRef.new(shape: CreateFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFileSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_mount_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMountTarget"
        o.http_method = "PUT"
        o.http_request_uri = "/mount-targets"
        o.input = Shapes::ShapeRef.new(shape: CreateMountTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMountTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/access-points/{accessPointId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileSystem"
        o.http_method = "DELETE"
        o.http_request_uri = "/file-systems/{fileSystemId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_file_system_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFileSystemPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/file-systems/{fileSystemId}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileSystemPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_mount_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMountTarget"
        o.http_method = "DELETE"
        o.http_request_uri = "/mount-targets/{mountTargetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMountTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPoint"
        o.http_method = "GET"
        o.http_request_uri = "/access-points/{accessPointId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_file_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFileSystem"
        o.http_method = "GET"
        o.http_request_uri = "/file-systems/{fileSystemId}"
        o.input = Shapes::ShapeRef.new(shape: GetFileSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFileSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_file_system_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFileSystemPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/file-systems/{fileSystemId}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetFileSystemPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFileSystemPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_mount_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMountTarget"
        o.http_method = "GET"
        o.http_request_uri = "/mount-targets/{mountTargetId}"
        o.input = Shapes::ShapeRef.new(shape: GetMountTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMountTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_synchronization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSynchronizationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/file-systems/{fileSystemId}/synchronization-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetSynchronizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSynchronizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_access_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPoints"
        o.http_method = "GET"
        o.http_request_uri = "/access-points"
        o.input = Shapes::ShapeRef.new(shape: ListAccessPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_file_systems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFileSystems"
        o.http_method = "GET"
        o.http_request_uri = "/file-systems"
        o.input = Shapes::ShapeRef.new(shape: ListFileSystemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFileSystemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_mount_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMountTargets"
        o.http_method = "GET"
        o.http_request_uri = "/mount-targets"
        o.input = Shapes::ShapeRef.new(shape: ListMountTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMountTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/resource-tags/{resourceId}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_file_system_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFileSystemPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/file-systems/{fileSystemId}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutFileSystemPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFileSystemPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_synchronization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSynchronizationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/file-systems/{fileSystemId}/synchronization-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutSynchronizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSynchronizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/resource-tags/{resourceId}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/resource-tags/{resourceId}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_mount_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMountTarget"
        o.http_method = "PUT"
        o.http_request_uri = "/mount-targets/{mountTargetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMountTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMountTargetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
