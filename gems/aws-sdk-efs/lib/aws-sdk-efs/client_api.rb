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

    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BadRequest = Shapes::StructureShape.new(name: 'BadRequest')
    CreateFileSystemRequest = Shapes::StructureShape.new(name: 'CreateFileSystemRequest')
    CreateMountTargetRequest = Shapes::StructureShape.new(name: 'CreateMountTargetRequest')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    CreationToken = Shapes::StringShape.new(name: 'CreationToken')
    DeleteFileSystemRequest = Shapes::StructureShape.new(name: 'DeleteFileSystemRequest')
    DeleteMountTargetRequest = Shapes::StructureShape.new(name: 'DeleteMountTargetRequest')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DependencyTimeout = Shapes::StructureShape.new(name: 'DependencyTimeout')
    DescribeFileSystemsRequest = Shapes::StructureShape.new(name: 'DescribeFileSystemsRequest')
    DescribeFileSystemsResponse = Shapes::StructureShape.new(name: 'DescribeFileSystemsResponse')
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
    FileSystemDescription = Shapes::StructureShape.new(name: 'FileSystemDescription')
    FileSystemDescriptions = Shapes::ListShape.new(name: 'FileSystemDescriptions')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FileSystemInUse = Shapes::StructureShape.new(name: 'FileSystemInUse')
    FileSystemLimitExceeded = Shapes::StructureShape.new(name: 'FileSystemLimitExceeded')
    FileSystemNotFound = Shapes::StructureShape.new(name: 'FileSystemNotFound')
    FileSystemSize = Shapes::StructureShape.new(name: 'FileSystemSize')
    FileSystemSizeValue = Shapes::IntegerShape.new(name: 'FileSystemSizeValue')
    IncorrectFileSystemLifeCycleState = Shapes::StructureShape.new(name: 'IncorrectFileSystemLifeCycleState')
    IncorrectMountTargetState = Shapes::StructureShape.new(name: 'IncorrectMountTargetState')
    InsufficientThroughputCapacity = Shapes::StructureShape.new(name: 'InsufficientThroughputCapacity')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressInUse = Shapes::StructureShape.new(name: 'IpAddressInUse')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LifeCycleState = Shapes::StringShape.new(name: 'LifeCycleState')
    Marker = Shapes::StringShape.new(name: 'Marker')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    ModifyMountTargetSecurityGroupsRequest = Shapes::StructureShape.new(name: 'ModifyMountTargetSecurityGroupsRequest')
    MountTargetConflict = Shapes::StructureShape.new(name: 'MountTargetConflict')
    MountTargetCount = Shapes::IntegerShape.new(name: 'MountTargetCount')
    MountTargetDescription = Shapes::StructureShape.new(name: 'MountTargetDescription')
    MountTargetDescriptions = Shapes::ListShape.new(name: 'MountTargetDescriptions')
    MountTargetId = Shapes::StringShape.new(name: 'MountTargetId')
    MountTargetNotFound = Shapes::StructureShape.new(name: 'MountTargetNotFound')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaceLimitExceeded = Shapes::StructureShape.new(name: 'NetworkInterfaceLimitExceeded')
    NoFreeAddressesInSubnet = Shapes::StructureShape.new(name: 'NoFreeAddressesInSubnet')
    PerformanceMode = Shapes::StringShape.new(name: 'PerformanceMode')
    ProvisionedThroughputInMibps = Shapes::FloatShape.new(name: 'ProvisionedThroughputInMibps')
    SecurityGroup = Shapes::StringShape.new(name: 'SecurityGroup')
    SecurityGroupLimitExceeded = Shapes::StructureShape.new(name: 'SecurityGroupLimitExceeded')
    SecurityGroupNotFound = Shapes::StructureShape.new(name: 'SecurityGroupNotFound')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetNotFound = Shapes::StructureShape.new(name: 'SubnetNotFound')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThroughputLimitExceeded = Shapes::StructureShape.new(name: 'ThroughputLimitExceeded')
    ThroughputMode = Shapes::StringShape.new(name: 'ThroughputMode')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequests = Shapes::StructureShape.new(name: 'TooManyRequests')
    UnsupportedAvailabilityZone = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZone')
    UpdateFileSystemRequest = Shapes::StructureShape.new(name: 'UpdateFileSystemRequest')

    CreateFileSystemRequest.add_member(:creation_token, Shapes::ShapeRef.new(shape: CreationToken, required: true, location_name: "CreationToken"))
    CreateFileSystemRequest.add_member(:performance_mode, Shapes::ShapeRef.new(shape: PerformanceMode, location_name: "PerformanceMode"))
    CreateFileSystemRequest.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, location_name: "Encrypted"))
    CreateFileSystemRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    CreateFileSystemRequest.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, location_name: "ThroughputMode"))
    CreateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: "ProvisionedThroughputInMibps"))
    CreateFileSystemRequest.struct_class = Types::CreateFileSystemRequest

    CreateMountTargetRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    CreateMountTargetRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    CreateMountTargetRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    CreateMountTargetRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateMountTargetRequest.struct_class = Types::CreateMountTargetRequest

    CreateTagsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    DeleteFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DeleteFileSystemRequest.struct_class = Types::DeleteFileSystemRequest

    DeleteMountTargetRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "MountTargetId"))
    DeleteMountTargetRequest.struct_class = Types::DeleteMountTargetRequest

    DeleteTagsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    DeleteTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DescribeFileSystemsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "MaxItems"))
    DescribeFileSystemsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "Marker"))
    DescribeFileSystemsRequest.add_member(:creation_token, Shapes::ShapeRef.new(shape: CreationToken, location: "querystring", location_name: "CreationToken"))
    DescribeFileSystemsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location: "querystring", location_name: "FileSystemId"))
    DescribeFileSystemsRequest.struct_class = Types::DescribeFileSystemsRequest

    DescribeFileSystemsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location_name: "Marker"))
    DescribeFileSystemsResponse.add_member(:file_systems, Shapes::ShapeRef.new(shape: FileSystemDescriptions, location_name: "FileSystems"))
    DescribeFileSystemsResponse.add_member(:next_marker, Shapes::ShapeRef.new(shape: Marker, location_name: "NextMarker"))
    DescribeFileSystemsResponse.struct_class = Types::DescribeFileSystemsResponse

    DescribeMountTargetSecurityGroupsRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "MountTargetId"))
    DescribeMountTargetSecurityGroupsRequest.struct_class = Types::DescribeMountTargetSecurityGroupsRequest

    DescribeMountTargetSecurityGroupsResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, required: true, location_name: "SecurityGroups"))
    DescribeMountTargetSecurityGroupsResponse.struct_class = Types::DescribeMountTargetSecurityGroupsResponse

    DescribeMountTargetsRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "MaxItems"))
    DescribeMountTargetsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: Marker, location: "querystring", location_name: "Marker"))
    DescribeMountTargetsRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, location: "querystring", location_name: "FileSystemId"))
    DescribeMountTargetsRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, location: "querystring", location_name: "MountTargetId"))
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

    FileSystemDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "OwnerId"))
    FileSystemDescription.add_member(:creation_token, Shapes::ShapeRef.new(shape: CreationToken, required: true, location_name: "CreationToken"))
    FileSystemDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
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
    FileSystemDescription.struct_class = Types::FileSystemDescription

    FileSystemDescriptions.member = Shapes::ShapeRef.new(shape: FileSystemDescription)

    FileSystemSize.add_member(:value, Shapes::ShapeRef.new(shape: FileSystemSizeValue, required: true, location_name: "Value"))
    FileSystemSize.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    FileSystemSize.struct_class = Types::FileSystemSize

    ModifyMountTargetSecurityGroupsRequest.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location: "uri", location_name: "MountTargetId"))
    ModifyMountTargetSecurityGroupsRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    ModifyMountTargetSecurityGroupsRequest.struct_class = Types::ModifyMountTargetSecurityGroupsRequest

    MountTargetDescription.add_member(:owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "OwnerId"))
    MountTargetDescription.add_member(:mount_target_id, Shapes::ShapeRef.new(shape: MountTargetId, required: true, location_name: "MountTargetId"))
    MountTargetDescription.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    MountTargetDescription.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, required: true, location_name: "SubnetId"))
    MountTargetDescription.add_member(:life_cycle_state, Shapes::ShapeRef.new(shape: LifeCycleState, required: true, location_name: "LifeCycleState"))
    MountTargetDescription.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    MountTargetDescription.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    MountTargetDescription.struct_class = Types::MountTargetDescription

    MountTargetDescriptions.member = Shapes::ShapeRef.new(shape: MountTargetDescription)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: SecurityGroup)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    UpdateFileSystemRequest.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location: "uri", location_name: "FileSystemId"))
    UpdateFileSystemRequest.add_member(:throughput_mode, Shapes::ShapeRef.new(shape: ThroughputMode, location_name: "ThroughputMode"))
    UpdateFileSystemRequest.add_member(:provisioned_throughput_in_mibps, Shapes::ShapeRef.new(shape: ProvisionedThroughputInMibps, location_name: "ProvisionedThroughputInMibps"))
    UpdateFileSystemRequest.struct_class = Types::UpdateFileSystemRequest


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
        o.input = Shapes::ShapeRef.new(shape: CreateTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
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
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
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
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "GET"
        o.http_request_uri = "/2015-02-01/tags/{FileSystemId}/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequest)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: FileSystemNotFound)
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
