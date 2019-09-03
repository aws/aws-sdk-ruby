# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EFS
  module Types

    # Returned if the request is malformed or contains an error such as an
    # invalid parameter value or a missing required parameter.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/BadRequest AWS API Documentation
    #
    class BadRequest < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         creation_token: "CreationToken", # required
    #         performance_mode: "generalPurpose", # accepts generalPurpose, maxIO
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId",
    #         throughput_mode: "bursting", # accepts bursting, provisioned
    #         provisioned_throughput_in_mibps: 1.0,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] creation_token
    #   A string of up to 64 ASCII characters. Amazon EFS uses this to
    #   ensure idempotent creation.
    #   @return [String]
    #
    # @!attribute [rw] performance_mode
    #   The performance mode of the file system. We recommend
    #   `generalPurpose` performance mode for most file systems. File
    #   systems using the `maxIO` performance mode can scale to higher
    #   levels of aggregate throughput and operations per second with a
    #   tradeoff of slightly higher latencies for most file operations. The
    #   performance mode can't be changed after the file system has been
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   A Boolean value that, if true, creates an encrypted file system.
    #   When creating an encrypted file system, you have the option of
    #   specifying CreateFileSystemRequest$KmsKeyId for an existing AWS Key
    #   Management Service (AWS KMS) customer master key (CMK). If you
    #   don't specify a CMK, then the default CMK for Amazon EFS,
    #   `/aws/elasticfilesystem`, is used to protect the encrypted file
    #   system.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the AWS KMS CMK to be used to protect the encrypted file
    #   system. This parameter is only required if you want to use a
    #   nondefault CMK. If this parameter is not specified, the default CMK
    #   for Amazon EFS is used. This ID can be in one of the following
    #   formats:
    #
    #   * Key ID - A unique identifier of the key, for example
    #     `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * ARN - An Amazon Resource Name (ARN) for the key, for example
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * Key alias - A previously created display name for a key, for
    #     example `alias/projectKey1`.
    #
    #   * Key alias ARN - An ARN for a key alias, for example
    #     `arn:aws:kms:us-west-2:444455556666:alias/projectKey1`.
    #
    #   If `KmsKeyId` is specified, the CreateFileSystemRequest$Encrypted
    #   parameter must be set to true.
    #   @return [String]
    #
    # @!attribute [rw] throughput_mode
    #   The throughput mode for the file system to be created. There are two
    #   throughput modes to choose from for your file system: `bursting` and
    #   `provisioned`. If you set `ThroughputMode` to `provisioned`, you
    #   must also set a value for `ProvisionedThroughPutInMibps`. You can
    #   decrease your file system's throughput in Provisioned Throughput
    #   mode or change between the throughput modes as long as it’s been
    #   more than 24 hours since the last decrease or throughput mode
    #   change. For more, see [Specifying Throughput with Provisioned
    #   Mode][1] in the *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_in_mibps
    #   The throughput, measured in MiB/s, that you want to provision for a
    #   file system that you're creating. Valid values are 1-1024. Required
    #   if `ThroughputMode` is set to `provisioned`. The upper limit for
    #   throughput is 1024 MiB/s. You can get this limit increased by
    #   contacting AWS Support. For more information, see [Amazon EFS Limits
    #   That You Can Increase][1] in the *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits
    #   @return [Float]
    #
    # @!attribute [rw] tags
    #   A value that specifies to create one or more tags associated with
    #   the file system. Each tag is a user-defined key-value pair. Name
    #   your file system on creation by including a
    #   `"Key":"Name","Value":"\{value\}"` key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateFileSystemRequest AWS API Documentation
    #
    class CreateFileSystemRequest < Struct.new(
      :creation_token,
      :performance_mode,
      :encrypted,
      :kms_key_id,
      :throughput_mode,
      :provisioned_throughput_in_mibps,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMountTargetRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         subnet_id: "SubnetId", # required
    #         ip_address: "IpAddress",
    #         security_groups: ["SecurityGroup"],
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system for which to create the mount target.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet to add the mount target in.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Valid IPv4 address within the address range of the specified subnet.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Up to five VPC security group IDs, of the form `sg-xxxxxxxx`. These
    #   must be for the same VPC as subnet specified.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateMountTargetRequest AWS API Documentation
    #
    class CreateMountTargetRequest < Struct.new(
      :file_system_id,
      :subnet_id,
      :ip_address,
      :security_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTagsRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system whose tags you want to modify (String).
    #   This operation modifies the tags only, not the file system.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of `Tag` objects to add. Each `Tag` object is a key-value
    #   pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :file_system_id,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteFileSystemRequest AWS API Documentation
    #
    class DeleteFileSystemRequest < Struct.new(
      :file_system_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMountTargetRequest
    #   data as a hash:
    #
    #       {
    #         mount_target_id: "MountTargetId", # required
    #       }
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target to delete (String).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteMountTargetRequest AWS API Documentation
    #
    class DeleteMountTargetRequest < Struct.new(
      :mount_target_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTagsRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system whose tags you want to delete (String).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :file_system_id,
      :tag_keys)
      include Aws::Structure
    end

    # The service timed out trying to fulfill the request, and the client
    # should try the call again.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DependencyTimeout AWS API Documentation
    #
    class DependencyTimeout < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFileSystemsRequest
    #   data as a hash:
    #
    #       {
    #         max_items: 1,
    #         marker: "Marker",
    #         creation_token: "CreationToken",
    #         file_system_id: "FileSystemId",
    #       }
    #
    # @!attribute [rw] max_items
    #   (Optional) Specifies the maximum number of file systems to return in
    #   the response (integer). Currently, this number is automatically set
    #   to 10, and other values are ignored. The response is paginated at 10
    #   per page if you have more than 10 file systems.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeFileSystems` operation (String). If present, specifies to
    #   continue the list from where the returning call had left off.
    #   @return [String]
    #
    # @!attribute [rw] creation_token
    #   (Optional) Restricts the list to the file system with this creation
    #   token (String). You specify a creation token when you create an
    #   Amazon EFS file system.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   (Optional) ID of the file system whose description you want to
    #   retrieve (String).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystemsRequest AWS API Documentation
    #
    class DescribeFileSystemsRequest < Struct.new(
      :max_items,
      :marker,
      :creation_token,
      :file_system_id)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Present if provided by caller in the request (String).
    #   @return [String]
    #
    # @!attribute [rw] file_systems
    #   An array of file system descriptions.
    #   @return [Array<Types::FileSystemDescription>]
    #
    # @!attribute [rw] next_marker
    #   Present if there are more file systems than returned in the response
    #   (String). You can use the `NextMarker` in the subsequent request to
    #   fetch the descriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystemsResponse AWS API Documentation
    #
    class DescribeFileSystemsResponse < Struct.new(
      :marker,
      :file_systems,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLifecycleConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system whose `LifecycleConfiguration` object you
    #   want to retrieve (String).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeLifecycleConfigurationRequest AWS API Documentation
    #
    class DescribeLifecycleConfigurationRequest < Struct.new(
      :file_system_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMountTargetSecurityGroupsRequest
    #   data as a hash:
    #
    #       {
    #         mount_target_id: "MountTargetId", # required
    #       }
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target whose security groups you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetSecurityGroupsRequest AWS API Documentation
    #
    class DescribeMountTargetSecurityGroupsRequest < Struct.new(
      :mount_target_id)
      include Aws::Structure
    end

    # @!attribute [rw] security_groups
    #   An array of security groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetSecurityGroupsResponse AWS API Documentation
    #
    class DescribeMountTargetSecurityGroupsResponse < Struct.new(
      :security_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMountTargetsRequest
    #   data as a hash:
    #
    #       {
    #         max_items: 1,
    #         marker: "Marker",
    #         file_system_id: "FileSystemId",
    #         mount_target_id: "MountTargetId",
    #       }
    #
    # @!attribute [rw] max_items
    #   (Optional) Maximum number of mount targets to return in the
    #   response. Currently, this number is automatically set to 10, and
    #   other values are ignored. The response is paginated at 10 per page
    #   if you have more than 10 mount targets.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeMountTargets` operation (String). If present, it specifies
    #   to continue the list from where the previous returning call left
    #   off.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   (Optional) ID of the file system whose mount targets you want to
    #   list (String). It must be included in your request if
    #   `MountTargetId` is not included.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   (Optional) ID of the mount target that you want to have described
    #   (String). It must be included in your request if `FileSystemId` is
    #   not included.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetsRequest AWS API Documentation
    #
    class DescribeMountTargetsRequest < Struct.new(
      :max_items,
      :marker,
      :file_system_id,
      :mount_target_id)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   If the request included the `Marker`, the response returns that
    #   value in this field.
    #   @return [String]
    #
    # @!attribute [rw] mount_targets
    #   Returns the file system's mount targets as an array of
    #   `MountTargetDescription` objects.
    #   @return [Array<Types::MountTargetDescription>]
    #
    # @!attribute [rw] next_marker
    #   If a value is present, there are more mount targets to return. In a
    #   subsequent request, you can provide `Marker` in your request with
    #   this value to retrieve the next set of mount targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetsResponse AWS API Documentation
    #
    class DescribeMountTargetsResponse < Struct.new(
      :marker,
      :mount_targets,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         max_items: 1,
    #         marker: "Marker",
    #         file_system_id: "FileSystemId", # required
    #       }
    #
    # @!attribute [rw] max_items
    #   (Optional) The maximum number of file system tags to return in the
    #   response. Currently, this number is automatically set to 10, and
    #   other values are ignored. The response is paginated at 10 per page
    #   if you have more than 10 tags.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   (Optional) An opaque pagination token returned from a previous
    #   `DescribeTags` operation (String). If present, it specifies to
    #   continue the list from where the previous call left off.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system whose tag set you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :max_items,
      :marker,
      :file_system_id)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   If the request included a `Marker`, the response returns that value
    #   in this field.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Returns tags associated with the file system as an array of `Tag`
    #   objects.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_marker
    #   If a value is present, there are more tags to return. In a
    #   subsequent request, you can provide the value of `NextMarker` as the
    #   value of the `Marker` parameter in your next request to retrieve the
    #   next set of tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeTagsResponse AWS API Documentation
    #
    class DescribeTagsResponse < Struct.new(
      :marker,
      :tags,
      :next_marker)
      include Aws::Structure
    end

    # Returned if the file system you are trying to create already exists,
    # with the creation token you provided.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemAlreadyExists AWS API Documentation
    #
    class FileSystemAlreadyExists < Struct.new(
      :error_code,
      :message,
      :file_system_id)
      include Aws::Structure
    end

    # A description of the file system.
    #
    # @!attribute [rw] owner_id
    #   The AWS account that created the file system. If the file system was
    #   created by an IAM user, the parent account to which the user belongs
    #   is the owner.
    #   @return [String]
    #
    # @!attribute [rw] creation_token
    #   The opaque string specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system, assigned by Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the file system was created, in seconds (since
    #   1970-01-01T00:00:00Z).
    #   @return [Time]
    #
    # @!attribute [rw] life_cycle_state
    #   The lifecycle phase of the file system.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   You can add tags to a file system, including a `Name` tag. For more
    #   information, see CreateFileSystem. If the file system has a `Name`
    #   tag, Amazon EFS returns the value in this field.
    #   @return [String]
    #
    # @!attribute [rw] number_of_mount_targets
    #   The current number of mount targets that the file system has. For
    #   more information, see CreateMountTarget.
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes
    #   The latest known metered size (in bytes) of data stored in the file
    #   system, in its `Value` field, and the time at which that size was
    #   determined in its `Timestamp` field. The `Timestamp` value is the
    #   integer number of seconds since 1970-01-01T00:00:00Z. The
    #   `SizeInBytes` value doesn't represent the size of a consistent
    #   snapshot of the file system, but it is eventually consistent when
    #   there are no writes to the file system. That is, `SizeInBytes`
    #   represents actual size only if the file system is not modified for a
    #   period longer than a couple of hours. Otherwise, the value is not
    #   the exact size that the file system was at any point in time.
    #   @return [Types::FileSystemSize]
    #
    # @!attribute [rw] performance_mode
    #   The performance mode of the file system.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   A Boolean value that, if true, indicates that the file system is
    #   encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of an AWS Key Management Service (AWS KMS) customer master
    #   key (CMK) that was used to protect the encrypted file system.
    #   @return [String]
    #
    # @!attribute [rw] throughput_mode
    #   The throughput mode for a file system. There are two throughput
    #   modes to choose from for your file system: `bursting` and
    #   `provisioned`. If you set `ThroughputMode` to `provisioned`, you
    #   must also set a value for `ProvisionedThroughPutInMibps`. You can
    #   decrease your file system's throughput in Provisioned Throughput
    #   mode or change between the throughput modes as long as it’s been
    #   more than 24 hours since the last decrease or throughput mode
    #   change.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_in_mibps
    #   The throughput, measured in MiB/s, that you want to provision for a
    #   file system. Valid values are 1-1024. Required if `ThroughputMode`
    #   is set to `provisioned`. The limit on throughput is 1024 MiB/s. You
    #   can get these limits increased by contacting AWS Support. For more
    #   information, see [Amazon EFS Limits That You Can Increase][1] in the
    #   *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits
    #   @return [Float]
    #
    # @!attribute [rw] tags
    #   The tags associated with the file system, presented as an array of
    #   `Tag` objects.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemDescription AWS API Documentation
    #
    class FileSystemDescription < Struct.new(
      :owner_id,
      :creation_token,
      :file_system_id,
      :creation_time,
      :life_cycle_state,
      :name,
      :number_of_mount_targets,
      :size_in_bytes,
      :performance_mode,
      :encrypted,
      :kms_key_id,
      :throughput_mode,
      :provisioned_throughput_in_mibps,
      :tags)
      include Aws::Structure
    end

    # Returned if a file system has mount targets.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemInUse AWS API Documentation
    #
    class FileSystemInUse < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if the AWS account has already created the maximum number of
    # file systems allowed per account.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemLimitExceeded AWS API Documentation
    #
    class FileSystemLimitExceeded < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if the specified `FileSystemId` value doesn't exist in the
    # requester's AWS account.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemNotFound AWS API Documentation
    #
    class FileSystemNotFound < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # The latest known metered size (in bytes) of data stored in the file
    # system, in its `Value` field, and the time at which that size was
    # determined in its `Timestamp` field. The value doesn't represent the
    # size of a consistent snapshot of the file system, but it is eventually
    # consistent when there are no writes to the file system. That is, the
    # value represents the actual size only if the file system is not
    # modified for a period longer than a couple of hours. Otherwise, the
    # value is not necessarily the exact size the file system was at any
    # instant in time.
    #
    # @!attribute [rw] value
    #   The latest known metered size (in bytes) of data stored in the file
    #   system.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp
    #   The time at which the size of data, returned in the `Value` field,
    #   was determined. The value is the integer number of seconds since
    #   1970-01-01T00:00:00Z.
    #   @return [Time]
    #
    # @!attribute [rw] value_in_ia
    #   The latest known metered size (in bytes) of data stored in the
    #   Infrequent Access storage class.
    #   @return [Integer]
    #
    # @!attribute [rw] value_in_standard
    #   The latest known metered size (in bytes) of data stored in the
    #   Standard storage class.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemSize AWS API Documentation
    #
    class FileSystemSize < Struct.new(
      :value,
      :timestamp,
      :value_in_ia,
      :value_in_standard)
      include Aws::Structure
    end

    # Returned if the file system's lifecycle state is not "available".
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/IncorrectFileSystemLifeCycleState AWS API Documentation
    #
    class IncorrectFileSystemLifeCycleState < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if the mount target is not in the correct state for the
    # operation.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/IncorrectMountTargetState AWS API Documentation
    #
    class IncorrectMountTargetState < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if there's not enough capacity to provision additional
    # throughput. This value might be returned when you try to create a file
    # system in provisioned throughput mode, when you attempt to increase
    # the provisioned throughput of an existing file system, or when you
    # attempt to change an existing file system from bursting to provisioned
    # throughput mode.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/InsufficientThroughputCapacity AWS API Documentation
    #
    class InsufficientThroughputCapacity < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if an error occurred on the server side.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if the request specified an `IpAddress` that is already in
    # use in the subnet.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/IpAddressInUse AWS API Documentation
    #
    class IpAddressInUse < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policies
    #   An array of lifecycle management policies. Currently, EFS supports a
    #   maximum of one policy per file system.
    #   @return [Array<Types::LifecyclePolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/LifecycleConfigurationDescription AWS API Documentation
    #
    class LifecycleConfigurationDescription < Struct.new(
      :lifecycle_policies)
      include Aws::Structure
    end

    # Describes a policy used by EFS lifecycle management to transition
    # files to the Infrequent Access (IA) storage class.
    #
    # @note When making an API call, you may pass LifecyclePolicy
    #   data as a hash:
    #
    #       {
    #         transition_to_ia: "AFTER_14_DAYS", # accepts AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, AFTER_90_DAYS
    #       }
    #
    # @!attribute [rw] transition_to_ia
    #   A value that describes the period of time that a file is not
    #   accessed, after which it transitions to the IA storage class.
    #   Metadata operations such as listing the contents of a directory
    #   don't count as file access events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/LifecyclePolicy AWS API Documentation
    #
    class LifecyclePolicy < Struct.new(
      :transition_to_ia)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyMountTargetSecurityGroupsRequest
    #   data as a hash:
    #
    #       {
    #         mount_target_id: "MountTargetId", # required
    #         security_groups: ["SecurityGroup"],
    #       }
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target whose security groups you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   An array of up to five VPC security group IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ModifyMountTargetSecurityGroupsRequest AWS API Documentation
    #
    class ModifyMountTargetSecurityGroupsRequest < Struct.new(
      :mount_target_id,
      :security_groups)
      include Aws::Structure
    end

    # Returned if the mount target would violate one of the specified
    # restrictions based on the file system's existing mount targets.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/MountTargetConflict AWS API Documentation
    #
    class MountTargetConflict < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Provides a description of a mount target.
    #
    # @!attribute [rw] owner_id
    #   AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   System-assigned mount target ID.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system for which the mount target is intended.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the mount target's subnet.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle_state
    #   Lifecycle state of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Address at which the file system can be mounted by using the mount
    #   target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface that Amazon EFS created when it
    #   created the mount target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/MountTargetDescription AWS API Documentation
    #
    class MountTargetDescription < Struct.new(
      :owner_id,
      :mount_target_id,
      :file_system_id,
      :subnet_id,
      :life_cycle_state,
      :ip_address,
      :network_interface_id)
      include Aws::Structure
    end

    # Returned if there is no mount target with the specified ID found in
    # the caller's account.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/MountTargetNotFound AWS API Documentation
    #
    class MountTargetNotFound < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # The calling account has reached the limit for elastic network
    # interfaces for the specific AWS Region. The client should try to
    # delete some elastic network interfaces or get the account limit
    # raised. For more information, see [Amazon VPC Limits][1] in the
    # <i>Amazon VPC User Guide </i> (see the Network interfaces per VPC
    # entry in the table).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/NetworkInterfaceLimitExceeded AWS API Documentation
    #
    class NetworkInterfaceLimitExceeded < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if `IpAddress` was not specified in the request and there are
    # no free IP addresses in the subnet.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/NoFreeAddressesInSubnet AWS API Documentation
    #
    class NoFreeAddressesInSubnet < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLifecycleConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         lifecycle_policies: [ # required
    #           {
    #             transition_to_ia: "AFTER_14_DAYS", # accepts AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, AFTER_90_DAYS
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system for which you are creating the
    #   `LifecycleConfiguration` object (String).
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policies
    #   An array of `LifecyclePolicy` objects that define the file system's
    #   `LifecycleConfiguration` object. A `LifecycleConfiguration` object
    #   tells lifecycle management when to transition files from the
    #   Standard storage class to the Infrequent Access storage class.
    #   @return [Array<Types::LifecyclePolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutLifecycleConfigurationRequest AWS API Documentation
    #
    class PutLifecycleConfigurationRequest < Struct.new(
      :file_system_id,
      :lifecycle_policies)
      include Aws::Structure
    end

    # Returned if the size of `SecurityGroups` specified in the request is
    # greater than five.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/SecurityGroupLimitExceeded AWS API Documentation
    #
    class SecurityGroupLimitExceeded < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if one of the specified security groups doesn't exist in the
    # subnet's VPC.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/SecurityGroupNotFound AWS API Documentation
    #
    class SecurityGroupNotFound < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if there is no subnet with ID `SubnetId` provided in the
    # request.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/SubnetNotFound AWS API Documentation
    #
    class SubnetNotFound < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # A tag is a key-value pair. Allowed characters are letters, white
    # space, and numbers that can be represented in UTF-8, and the following
    # characters:` + - = . _ : /`
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag key (String). The key can't start with `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Returned if the throughput mode or amount of provisioned throughput
    # can't be changed because the throughput limit of 1024 MiB/s has been
    # reached.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ThroughputLimitExceeded AWS API Documentation
    #
    class ThroughputLimitExceeded < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # Returned if you don’t wait at least 24 hours before changing the
    # throughput mode, or decreasing the Provisioned Throughput value.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/TooManyRequests AWS API Documentation
    #
    class TooManyRequests < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UnsupportedAvailabilityZone AWS API Documentation
    #
    class UnsupportedAvailabilityZone < Struct.new(
      :error_code,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         throughput_mode: "bursting", # accepts bursting, provisioned
    #         provisioned_throughput_in_mibps: 1.0,
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] throughput_mode
    #   (Optional) The throughput mode that you want your file system to
    #   use. If you're not updating your throughput mode, you don't need
    #   to provide this value in your request. If you are changing the
    #   `ThroughputMode` to `provisioned`, you must also set a value for
    #   `ProvisionedThroughputInMibps`.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_in_mibps
    #   (Optional) The amount of throughput, in MiB/s, that you want to
    #   provision for your file system. Valid values are 1-1024. Required if
    #   `ThroughputMode` is changed to `provisioned` on update. If you're
    #   not updating the amount of provisioned throughput for your file
    #   system, you don't need to provide this value in your request.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UpdateFileSystemRequest AWS API Documentation
    #
    class UpdateFileSystemRequest < Struct.new(
      :file_system_id,
      :throughput_mode,
      :provisioned_throughput_in_mibps)
      include Aws::Structure
    end

  end
end
