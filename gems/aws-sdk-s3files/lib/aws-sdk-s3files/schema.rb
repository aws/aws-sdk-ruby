# frozen_string_literal: true

# This is generated code!

module Aws::S3Files
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#AccessPointArn", name: "AccessPointArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$"})
    AccessPointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#AccessPointId", name: "AccessPointId", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}|fsap-[0-9a-f]{17,40})$"})
    AccessPoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#AccessPoints", name: "AccessPoints")
    AvailabilityZoneId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#AvailabilityZoneId", name: "AvailabilityZoneId")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"max" => 12}, "smithy.api#pattern" => "^(\\d{12})|(\\d{4}-{4}-\\d{4})$"})
    BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#BucketArn", name: "BucketArn", traits: {"smithy.api#pattern" => "^(arn:aws[a-zA-Z0-9-]*:s3:::.+)$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(.+)$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreateAccessPointRequest", name: "CreateAccessPointRequest")
    CreateAccessPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreateAccessPointResponse", name: "CreateAccessPointResponse")
    CreateFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreateFileSystemRequest", name: "CreateFileSystemRequest")
    CreateFileSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreateFileSystemResponse", name: "CreateFileSystemResponse")
    CreateMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreateMountTargetRequest", name: "CreateMountTargetRequest")
    CreateMountTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreateMountTargetResponse", name: "CreateMountTargetResponse")
    CreationPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#CreationPermissions", name: "CreationPermissions")
    CreationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#CreationToken", name: "CreationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(.+)$"})
    DeleteAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#DeleteAccessPointRequest", name: "DeleteAccessPointRequest")
    DeleteFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#DeleteFileSystemPolicyRequest", name: "DeleteFileSystemPolicyRequest")
    DeleteFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#DeleteFileSystemRequest", name: "DeleteFileSystemRequest")
    DeleteMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#DeleteMountTargetRequest", name: "DeleteMountTargetRequest")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1}})
    ExpirationDataRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ExpirationDataRule", name: "ExpirationDataRule")
    ExpirationDataRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#ExpirationDataRuleList", name: "ExpirationDataRuleList")
    FileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#FileSystemArn", name: "FileSystemArn", traits: {"smithy.api#pattern" => "^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40})$"})
    FileSystemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#FileSystemId", name: "FileSystemId", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}|fs-[0-9a-f]{17,40})$"})
    FileSystems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#FileSystems", name: "FileSystems")
    GetAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetAccessPointRequest", name: "GetAccessPointRequest")
    GetAccessPointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetAccessPointResponse", name: "GetAccessPointResponse")
    GetFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetFileSystemPolicyRequest", name: "GetFileSystemPolicyRequest")
    GetFileSystemPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetFileSystemPolicyResponse", name: "GetFileSystemPolicyResponse")
    GetFileSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetFileSystemRequest", name: "GetFileSystemRequest")
    GetFileSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetFileSystemResponse", name: "GetFileSystemResponse")
    GetMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetMountTargetRequest", name: "GetMountTargetRequest")
    GetMountTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetMountTargetResponse", name: "GetMountTargetResponse")
    GetSynchronizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetSynchronizationConfigurationRequest", name: "GetSynchronizationConfigurationRequest")
    GetSynchronizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#GetSynchronizationConfigurationResponse", name: "GetSynchronizationConfigurationResponse")
    Gid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3files#Gid", name: "Gid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    ImportDataRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ImportDataRule", name: "ImportDataRule")
    ImportDataRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#ImportDataRuleList", name: "ImportDataRuleList")
    ImportTrigger = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3files#ImportTrigger", name: "ImportTrigger")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3files#IpAddressType", name: "IpAddressType")
    Ipv4Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#Ipv4Address", name: "Ipv4Address", traits: {"smithy.api#length" => {"min" => 7, "max" => 15}, "smithy.api#pattern" => "^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$"})
    Ipv6Address = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#Ipv6Address", name: "Ipv6Address", traits: {"smithy.api#length" => {"min" => 3, "max" => 39}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|mrk-[0-9a-f]{32}|alias/[a-zA-Z0-9/_-]+|(arn:aws[-a-z]*:kms:[a-z0-9-]+:\\d{12}:((key/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(key/mrk-[0-9a-f]{32})|(alias/[a-zA-Z0-9/_-]+))))$"})
    LifeCycleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3files#LifeCycleState", name: "LifeCycleState")
    ListAccessPointsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListAccessPointsDescription", name: "ListAccessPointsDescription")
    ListAccessPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListAccessPointsRequest", name: "ListAccessPointsRequest")
    ListAccessPointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListAccessPointsResponse", name: "ListAccessPointsResponse")
    ListFileSystemsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListFileSystemsDescription", name: "ListFileSystemsDescription")
    ListFileSystemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListFileSystemsRequest", name: "ListFileSystemsRequest")
    ListFileSystemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListFileSystemsResponse", name: "ListFileSystemsResponse")
    ListMountTargetsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListMountTargetsDescription", name: "ListMountTargetsDescription")
    ListMountTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListMountTargetsRequest", name: "ListMountTargetsRequest")
    ListMountTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListMountTargetsResponse", name: "ListMountTargetsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MountTargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#MountTargetId", name: "MountTargetId", traits: {"smithy.api#length" => {"min" => 22, "max" => 45}, "smithy.api#pattern" => "^fsmt-[0-9a-f]{17,40}$"})
    MountTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#MountTargets", name: "MountTargets")
    NetworkInterfaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#NetworkInterfaceId", name: "NetworkInterfaceId")
    OwnerGid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3files#OwnerGid", name: "OwnerGid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    OwnerUid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3files#OwnerUid", name: "OwnerUid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#Path", name: "Path", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(\\/|(\\/(?!\\.)+[^$#<>;;`|&?{}^*/\\n]+){1,4})$"})
    Permissions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#Permissions", name: "Permissions", traits: {"smithy.api#length" => {"min" => 3, "max" => 4}, "smithy.api#pattern" => "^[0-7]{3,4}$"})
    PosixUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#PosixUser", name: "PosixUser")
    PutFileSystemPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#PutFileSystemPolicyRequest", name: "PutFileSystemPolicyRequest")
    PutFileSystemPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#PutFileSystemPolicyResponse", name: "PutFileSystemPolicyResponse")
    PutSynchronizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#PutSynchronizationConfigurationRequest", name: "PutSynchronizationConfigurationRequest")
    PutSynchronizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#PutSynchronizationConfigurationResponse", name: "PutSynchronizationConfigurationResponse")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}(/access-point/fsap-[0-9a-f]{17,40})?|fs(ap)?-[0-9a-f]{17,40})$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RootDirectory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#RootDirectory", name: "RootDirectory")
    SecondaryGids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#SecondaryGids", name: "SecondaryGids")
    SecurityGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#SecurityGroup", name: "SecurityGroup", traits: {"smithy.api#length" => {"min" => 11, "max" => 43}, "smithy.api#pattern" => "^(sg-[0-9a-f]{8,40})$"})
    SecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#SecurityGroups", name: "SecurityGroups", traits: {"smithy.api#length" => {"max" => 100}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#StatusMessage", name: "StatusMessage")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 47}, "smithy.api#pattern" => "^subnet-[0-9a-f]{8,40}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3files#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Uid = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3files#Uid", name: "Uid", traits: {"smithy.api#range" => {"min" => 0, "max" => 4294967295}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateMountTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#UpdateMountTargetRequest", name: "UpdateMountTargetRequest")
    UpdateMountTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#UpdateMountTargetResponse", name: "UpdateMountTargetResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3files#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3files#VpcId", name: "VpcId")

    AccessPoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessPointsDescription, name: "member"))
    ConflictException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateAccessPointRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    CreateAccessPointRequest.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "posixUser"))
    CreateAccessPointRequest.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "rootDirectory"))
    CreateAccessPointRequest.type = Types::CreateAccessPointRequest
    CreateAccessPointResponse.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "accessPointArn", traits: {"smithy.api#required" => {}}))
    CreateAccessPointResponse.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "accessPointId", traits: {"smithy.api#required" => {}}))
    CreateAccessPointResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    CreateAccessPointResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    CreateAccessPointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status", traits: {"smithy.api#required" => {}}))
    CreateAccessPointResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    CreateAccessPointResponse.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "posixUser"))
    CreateAccessPointResponse.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "rootDirectory"))
    CreateAccessPointResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateAccessPointResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "name"))
    CreateAccessPointResponse.type = Types::CreateAccessPointResponse
    CreateFileSystemRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucket", traits: {"smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(|.*/)$"}))
    CreateFileSystemRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFileSystemRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateFileSystemRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateFileSystemRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateFileSystemRequest.add_member(:accept_bucket_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "acceptBucketWarning"))
    CreateFileSystemRequest.type = Types::CreateFileSystemRequest
    CreateFileSystemResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    CreateFileSystemResponse.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "fileSystemArn"))
    CreateFileSystemResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId"))
    CreateFileSystemResponse.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucket"))
    CreateFileSystemResponse.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    CreateFileSystemResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateFileSystemResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateFileSystemResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status"))
    CreateFileSystemResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    CreateFileSystemResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    CreateFileSystemResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId"))
    CreateFileSystemResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateFileSystemResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "name"))
    CreateFileSystemResponse.type = Types::CreateFileSystemResponse
    CreateMountTargetRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "subnetId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetRequest.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "ipv4Address"))
    CreateMountTargetRequest.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "ipv6Address"))
    CreateMountTargetRequest.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    CreateMountTargetRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "securityGroups"))
    CreateMountTargetRequest.type = Types::CreateMountTargetRequest
    CreateMountTargetResponse.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "availabilityZoneId"))
    CreateMountTargetResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetResponse.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId"))
    CreateMountTargetResponse.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "subnetId", traits: {"smithy.api#required" => {}}))
    CreateMountTargetResponse.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "ipv4Address"))
    CreateMountTargetResponse.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "ipv6Address"))
    CreateMountTargetResponse.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "networkInterfaceId"))
    CreateMountTargetResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    CreateMountTargetResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "securityGroups"))
    CreateMountTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status"))
    CreateMountTargetResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    CreateMountTargetResponse.type = Types::CreateMountTargetResponse
    CreationPermissions.add_member(:owner_uid, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerUid, name: "ownerUid", traits: {"smithy.api#required" => {}}))
    CreationPermissions.add_member(:owner_gid, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerGid, name: "ownerGid", traits: {"smithy.api#required" => {}}))
    CreationPermissions.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: Permissions, name: "permissions", traits: {"smithy.api#required" => {}}))
    CreationPermissions.type = Types::CreationPermissions
    DeleteAccessPointRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "accessPointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointRequest.type = Types::DeleteAccessPointRequest
    DeleteFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemPolicyRequest.type = Types::DeleteFileSystemPolicyRequest
    DeleteFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFileSystemRequest.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forceDelete", traits: {"smithy.api#httpQuery" => "forceDelete"}))
    DeleteFileSystemRequest.type = Types::DeleteFileSystemRequest
    DeleteMountTargetRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMountTargetRequest.type = Types::DeleteMountTargetRequest
    ExpirationDataRule.add_member(:days_after_last_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "daysAfterLastAccess", traits: {"smithy.api#jsonName" => "daysAfterLastAccess", "smithy.api#range" => {"min" => 1, "max" => 365}, "smithy.api#required" => {}}))
    ExpirationDataRule.type = Types::ExpirationDataRule
    ExpirationDataRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDataRule, name: "member"))
    FileSystems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListFileSystemsDescription, name: "member"))
    GetAccessPointRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "accessPointId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointRequest.type = Types::GetAccessPointRequest
    GetAccessPointResponse.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "accessPointArn", traits: {"smithy.api#required" => {}}))
    GetAccessPointResponse.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "accessPointId", traits: {"smithy.api#required" => {}}))
    GetAccessPointResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    GetAccessPointResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    GetAccessPointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status", traits: {"smithy.api#required" => {}}))
    GetAccessPointResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    GetAccessPointResponse.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "posixUser"))
    GetAccessPointResponse.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "rootDirectory"))
    GetAccessPointResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    GetAccessPointResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "name"))
    GetAccessPointResponse.type = Types::GetAccessPointResponse
    GetFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFileSystemPolicyRequest.type = Types::GetFileSystemPolicyRequest
    GetFileSystemPolicyResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    GetFileSystemPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#jsonName" => "policy", "smithy.api#required" => {}}))
    GetFileSystemPolicyResponse.type = Types::GetFileSystemPolicyResponse
    GetFileSystemRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFileSystemRequest.type = Types::GetFileSystemRequest
    GetFileSystemResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime"))
    GetFileSystemResponse.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "fileSystemArn"))
    GetFileSystemResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId"))
    GetFileSystemResponse.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucket"))
    GetFileSystemResponse.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    GetFileSystemResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    GetFileSystemResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    GetFileSystemResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status"))
    GetFileSystemResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    GetFileSystemResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    GetFileSystemResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId"))
    GetFileSystemResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    GetFileSystemResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "name"))
    GetFileSystemResponse.type = Types::GetFileSystemResponse
    GetMountTargetRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMountTargetRequest.type = Types::GetMountTargetRequest
    GetMountTargetResponse.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "availabilityZoneId"))
    GetMountTargetResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    GetMountTargetResponse.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#required" => {}}))
    GetMountTargetResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId"))
    GetMountTargetResponse.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "subnetId", traits: {"smithy.api#required" => {}}))
    GetMountTargetResponse.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "ipv4Address"))
    GetMountTargetResponse.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "ipv6Address"))
    GetMountTargetResponse.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "networkInterfaceId"))
    GetMountTargetResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    GetMountTargetResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "securityGroups"))
    GetMountTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status"))
    GetMountTargetResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    GetMountTargetResponse.type = Types::GetMountTargetResponse
    GetSynchronizationConfigurationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSynchronizationConfigurationRequest.type = Types::GetSynchronizationConfigurationRequest
    GetSynchronizationConfigurationResponse.add_member(:latest_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "latestVersionNumber", traits: {"smithy.api#jsonName" => "latestVersionNumber"}))
    GetSynchronizationConfigurationResponse.add_member(:import_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataRuleList, name: "importDataRules", traits: {"smithy.api#jsonName" => "importDataRules", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    GetSynchronizationConfigurationResponse.add_member(:expiration_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDataRuleList, name: "expirationDataRules", traits: {"smithy.api#jsonName" => "expirationDataRules", "smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    GetSynchronizationConfigurationResponse.type = Types::GetSynchronizationConfigurationResponse
    ImportDataRule.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#jsonName" => "prefix", "smithy.api#pattern" => "^(|.*/)$", "smithy.api#required" => {}}))
    ImportDataRule.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTrigger, name: "trigger", traits: {"smithy.api#jsonName" => "trigger", "smithy.api#required" => {}}))
    ImportDataRule.add_member(:size_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "sizeLessThan", traits: {"smithy.api#jsonName" => "sizeLessThan", "smithy.api#range" => {"min" => 0, "max" => 52673613135872}, "smithy.api#required" => {}}))
    ImportDataRule.type = Types::ImportDataRule
    ImportDataRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataRule, name: "member"))
    ImportTrigger.add_member(:on_directory_first_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DIRECTORY_FIRST_ACCESS", traits: {"smithy.api#enumValue" => "ON_DIRECTORY_FIRST_ACCESS"}))
    ImportTrigger.add_member(:on_file_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_FILE_ACCESS", traits: {"smithy.api#enumValue" => "ON_FILE_ACCESS"}))
    InternalServerException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    IpAddressType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4_ONLY", traits: {"smithy.api#enumValue" => "IPV4_ONLY"}))
    IpAddressType.add_member(:ipv6_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6_ONLY", traits: {"smithy.api#enumValue" => "IPV6_ONLY"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    LifeCycleState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "available", traits: {"smithy.api#enumValue" => "available", "smithy.api#suppress" => ["EnumShape"]}))
    LifeCycleState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "creating", traits: {"smithy.api#enumValue" => "creating", "smithy.api#suppress" => ["EnumShape"]}))
    LifeCycleState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleting", traits: {"smithy.api#enumValue" => "deleting", "smithy.api#suppress" => ["EnumShape"]}))
    LifeCycleState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "deleted", traits: {"smithy.api#enumValue" => "deleted", "smithy.api#suppress" => ["EnumShape"]}))
    LifeCycleState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "error", traits: {"smithy.api#enumValue" => "error", "smithy.api#suppress" => ["EnumShape"]}))
    LifeCycleState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "updating", traits: {"smithy.api#enumValue" => "updating", "smithy.api#suppress" => ["EnumShape"]}))
    ListAccessPointsDescription.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "accessPointArn", traits: {"smithy.api#required" => {}}))
    ListAccessPointsDescription.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "accessPointId", traits: {"smithy.api#required" => {}}))
    ListAccessPointsDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    ListAccessPointsDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status", traits: {"smithy.api#required" => {}}))
    ListAccessPointsDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    ListAccessPointsDescription.add_member(:posix_user, ::Smithy::Schema::Shapes::MemberShape.new(target: PosixUser, name: "posixUser"))
    ListAccessPointsDescription.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: RootDirectory, name: "rootDirectory"))
    ListAccessPointsDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "name"))
    ListAccessPointsDescription.type = Types::ListAccessPointsDescription
    ListAccessPointsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpQuery" => "fileSystemId", "smithy.api#required" => {}}))
    ListAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsRequest.type = Types::ListAccessPointsRequest
    ListAccessPointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListAccessPointsResponse.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPoints, name: "accessPoints", traits: {"smithy.api#required" => {}}))
    ListAccessPointsResponse.type = Types::ListAccessPointsResponse
    ListFileSystemsDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemArn, name: "fileSystemArn", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "name"))
    ListFileSystemsDescription.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucket", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    ListFileSystemsDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    ListFileSystemsDescription.type = Types::ListFileSystemsDescription
    ListFileSystemsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketArn, name: "bucket", traits: {"smithy.api#httpQuery" => "bucket"}))
    ListFileSystemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListFileSystemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFileSystemsRequest.type = Types::ListFileSystemsRequest
    ListFileSystemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListFileSystemsResponse.add_member(:file_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystems, name: "fileSystems", traits: {"smithy.api#required" => {}}))
    ListFileSystemsResponse.type = Types::ListFileSystemsResponse
    ListMountTargetsDescription.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "availabilityZoneId"))
    ListMountTargetsDescription.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId"))
    ListMountTargetsDescription.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "ipv4Address"))
    ListMountTargetsDescription.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "ipv6Address"))
    ListMountTargetsDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status"))
    ListMountTargetsDescription.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    ListMountTargetsDescription.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#required" => {}}))
    ListMountTargetsDescription.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "networkInterfaceId"))
    ListMountTargetsDescription.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    ListMountTargetsDescription.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "subnetId", traits: {"smithy.api#required" => {}}))
    ListMountTargetsDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    ListMountTargetsDescription.type = Types::ListMountTargetsDescription
    ListMountTargetsRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpQuery" => "fileSystemId"}))
    ListMountTargetsRequest.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointId, name: "accessPointId", traits: {"smithy.api#httpQuery" => "accessPointId"}))
    ListMountTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMountTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMountTargetsRequest.type = Types::ListMountTargetsRequest
    ListMountTargetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListMountTargetsResponse.add_member(:mount_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargets, name: "mountTargets", traits: {"smithy.api#required" => {}}))
    ListMountTargetsResponse.type = Types::ListMountTargetsResponse
    ListTagsForResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "MaxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MountTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMountTargetsDescription, name: "member"))
    PosixUser.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: Uid, name: "uid", traits: {"smithy.api#required" => {}}))
    PosixUser.add_member(:gid, ::Smithy::Schema::Shapes::MemberShape.new(target: Gid, name: "gid", traits: {"smithy.api#required" => {}}))
    PosixUser.add_member(:secondary_gids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryGids, name: "secondaryGids"))
    PosixUser.type = Types::PosixUser
    PutFileSystemPolicyRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#jsonName" => "policy", "smithy.api#required" => {}}))
    PutFileSystemPolicyRequest.type = Types::PutFileSystemPolicyRequest
    PutFileSystemPolicyResponse.type = Types::PutFileSystemPolicyResponse
    PutSynchronizationConfigurationRequest.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSynchronizationConfigurationRequest.add_member(:latest_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "latestVersionNumber", traits: {"smithy.api#jsonName" => "latestVersionNumber"}))
    PutSynchronizationConfigurationRequest.add_member(:import_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataRuleList, name: "importDataRules", traits: {"smithy.api#jsonName" => "importDataRules", "smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    PutSynchronizationConfigurationRequest.add_member(:expiration_data_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationDataRuleList, name: "expirationDataRules", traits: {"smithy.api#jsonName" => "expirationDataRules", "smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    PutSynchronizationConfigurationRequest.type = Types::PutSynchronizationConfigurationRequest
    PutSynchronizationConfigurationResponse.type = Types::PutSynchronizationConfigurationResponse
    ResourceNotFoundException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RootDirectory.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "path"))
    RootDirectory.add_member(:creation_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationPermissions, name: "creationPermissions"))
    RootDirectory.type = Types::RootDirectory
    SecondaryGids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Gid, name: "member"))
    SecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroup, name: "member"))
    ServiceQuotaExceededException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    ThrottlingException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateMountTargetRequest.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMountTargetRequest.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "securityGroups", traits: {"smithy.api#required" => {}}))
    UpdateMountTargetRequest.type = Types::UpdateMountTargetRequest
    UpdateMountTargetResponse.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneId, name: "availabilityZoneId"))
    UpdateMountTargetResponse.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "ownerId", traits: {"smithy.api#required" => {}}))
    UpdateMountTargetResponse.add_member(:mount_target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MountTargetId, name: "mountTargetId", traits: {"smithy.api#required" => {}}))
    UpdateMountTargetResponse.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "fileSystemId"))
    UpdateMountTargetResponse.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "subnetId", traits: {"smithy.api#required" => {}}))
    UpdateMountTargetResponse.add_member(:ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4Address, name: "ipv4Address"))
    UpdateMountTargetResponse.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv6Address, name: "ipv6Address"))
    UpdateMountTargetResponse.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceId, name: "networkInterfaceId"))
    UpdateMountTargetResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    UpdateMountTargetResponse.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroups, name: "securityGroups"))
    UpdateMountTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleState, name: "status"))
    UpdateMountTargetResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    UpdateMountTargetResponse.type = Types::UpdateMountTargetResponse
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    S3Files = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3files#S3Files"
      service.name = "S3Files"
      service.version = "2025-05-05"
      service.traits = {"aws.api#service" => {"sdkId" => "S3Files", "endpointPrefix" => "s3files", "arnNamespace" => "s3files"}, "aws.auth#sigv4" => {"name" => "s3files"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon S3 Files", "smithy.api#xmlNamespace" => {"uri" => "s3files"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://s3files-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://s3files.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#CreateAccessPoint"
        operation.name = "CreateAccessPoint"
        operation.input = CreateAccessPointRequest
        operation.output = CreateAccessPointResponse
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/access-points"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#CreateFileSystem"
        operation.name = "CreateFileSystem"
        operation.input = CreateFileSystemRequest
        operation.output = CreateFileSystemResponse
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/file-systems"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#CreateMountTarget"
        operation.name = "CreateMountTarget"
        operation.input = CreateMountTargetRequest
        operation.output = CreateMountTargetResponse
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/mount-targets"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#DeleteAccessPoint"
        operation.name = "DeleteAccessPoint"
        operation.input = DeleteAccessPointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/access-points/{accessPointId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#DeleteFileSystem"
        operation.name = "DeleteFileSystem"
        operation.input = DeleteFileSystemRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/file-systems/{fileSystemId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#DeleteFileSystemPolicy"
        operation.name = "DeleteFileSystemPolicy"
        operation.input = DeleteFileSystemPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/file-systems/{fileSystemId}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#DeleteMountTarget"
        operation.name = "DeleteMountTarget"
        operation.input = DeleteMountTargetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/mount-targets/{mountTargetId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#GetAccessPoint"
        operation.name = "GetAccessPoint"
        operation.input = GetAccessPointRequest
        operation.output = GetAccessPointResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/access-points/{accessPointId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_file_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#GetFileSystem"
        operation.name = "GetFileSystem"
        operation.input = GetFileSystemRequest
        operation.output = GetFileSystemResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/file-systems/{fileSystemId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetFileSystemFailure", "params" => {"fileSystemId" => "fs-00000000000000000"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.s3files#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#GetFileSystemPolicy"
        operation.name = "GetFileSystemPolicy"
        operation.input = GetFileSystemPolicyRequest
        operation.output = GetFileSystemPolicyResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/file-systems/{fileSystemId}/policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#GetMountTarget"
        operation.name = "GetMountTarget"
        operation.input = GetMountTargetRequest
        operation.output = GetMountTargetResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/mount-targets/{mountTargetId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_synchronization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#GetSynchronizationConfiguration"
        operation.name = "GetSynchronizationConfiguration"
        operation.input = GetSynchronizationConfigurationRequest
        operation.output = GetSynchronizationConfigurationResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/file-systems/{fileSystemId}/synchronization-configuration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#ListAccessPoints"
        operation.name = "ListAccessPoints"
        operation.input = ListAccessPointsRequest
        operation.output = ListAccessPointsResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/access-points"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessPoints.new
      end)
      service.add_operation(:list_file_systems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#ListFileSystems"
        operation.name = "ListFileSystems"
        operation.input = ListFileSystemsRequest
        operation.output = ListFileSystemsResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/file-systems"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListFileSystemsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListFileSystems.new
      end)
      service.add_operation(:list_mount_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#ListMountTargets"
        operation.name = "ListMountTargets"
        operation.input = ListMountTargetsRequest
        operation.output = ListMountTargetsResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/mount-targets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMountTargets.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/resource-tags/{resourceId}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_file_system_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#PutFileSystemPolicy"
        operation.name = "PutFileSystemPolicy"
        operation.input = PutFileSystemPolicyRequest
        operation.output = PutFileSystemPolicyResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/file-systems/{fileSystemId}/policy"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_synchronization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#PutSynchronizationConfiguration"
        operation.name = "PutSynchronizationConfiguration"
        operation.input = PutSynchronizationConfigurationRequest
        operation.output = PutSynchronizationConfigurationResponse
        operation.errors << ThrottlingException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/file-systems/{fileSystemId}/synchronization-configuration"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/resource-tags/{resourceId}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/resource-tags/{resourceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_mount_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3files#UpdateMountTarget"
        operation.name = "UpdateMountTarget"
        operation.input = UpdateMountTargetRequest
        operation.output = UpdateMountTargetResponse
        operation.errors << ThrottlingException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/mount-targets/{mountTargetId}"}, "smithy.api#idempotent" => {}}
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
