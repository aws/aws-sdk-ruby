# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EFS
  module Types

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
    #       }
    #
    # @!attribute [rw] creation_token
    #   String of up to 64 ASCII characters. Amazon EFS uses this to ensure
    #   idempotent creation.
    #   @return [String]
    #
    # @!attribute [rw] performance_mode
    #   The `PerformanceMode` of the file system. We recommend
    #   `generalPurpose` performance mode for most file systems. File
    #   systems using the `maxIO` performance mode can scale to higher
    #   levels of aggregate throughput and operations per second with a
    #   tradeoff of slightly higher latencies for most file operations. This
    #   can't be changed after the file system has been created.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   A Boolean value that, if true, creates an encrypted file system.
    #   When creating an encrypted file system, you have the option of
    #   specifying a CreateFileSystemRequest$KmsKeyId for an existing AWS
    #   Key Management Service (AWS KMS) customer master key (CMK). If you
    #   don't specify a CMK, then the default CMK for Amazon EFS,
    #   `/aws/elasticfilesystem`, is used to protect the encrypted file
    #   system.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the AWS KMS CMK to be used to protect the encrypted file
    #   system. This parameter is only required if you want to use a
    #   non-default CMK. If this parameter is not specified, the default CMK
    #   for Amazon EFS is used. This ID can be in one of the following
    #   formats:
    #
    #   * Key ID - A unique identifier of the key, for example,
    #     `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * ARN - An Amazon Resource Name (ARN) for the key, for example,
    #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   * Key alias - A previously created display name for a key. For
    #     example, `alias/projectKey1`.
    #
    #   * Key alias ARN - An ARN for a key alias, for example,
    #     `arn:aws:kms:us-west-2:444455556666:alias/projectKey1`.
    #
    #   If KmsKeyId is specified, the CreateFileSystemRequest$Encrypted
    #   parameter must be set to true.
    #   @return [String]
    #
    # @!attribute [rw] throughput_mode
    #   The throughput mode for the file system to be created. There are two
    #   throughput modes to choose from for your file system: bursting and
    #   provisioned. You can decrease your file system's throughput in
    #   Provisioned Throughput mode or change between the throughput modes
    #   as long as it’s been more than 24 hours since the last decrease or
    #   throughput mode change.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_in_mibps
    #   The throughput, measured in MiB/s, that you want to provision for a
    #   file system that you're creating. The limit on throughput is 1024
    #   MiB/s. You can get these limits increased by contacting AWS Support.
    #   For more information, see [Amazon EFS Limits That You Can
    #   Increase][1] in the *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateFileSystemRequest AWS API Documentation
    #
    class CreateFileSystemRequest < Struct.new(
      :creation_token,
      :performance_mode,
      :encrypted,
      :kms_key_id,
      :throughput_mode,
      :provisioned_throughput_in_mibps)
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
    #   ID of the file system for which to create the mount target.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   ID of the subnet to add the mount target in.
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
    #   ID of the file system whose tags you want to modify (String). This
    #   operation modifies the tags only, not the file system.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of `Tag` objects to add. Each `Tag` object is a key-value
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
    #   ID of the file system you want to delete.
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
    #   ID of the mount target to delete (String).
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
    #   ID of the file system whose tags you want to delete (String).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :file_system_id,
      :tag_keys)
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
    #   the response (integer). This parameter value must be greater than 0.
    #   The number of items that Amazon EFS returns is the minimum of the
    #   `MaxItems` parameter specified in the request and the service's
    #   internal maximum number of items per page.
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
    #   Array of file system descriptions.
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

    # @note When making an API call, you may pass DescribeMountTargetSecurityGroupsRequest
    #   data as a hash:
    #
    #       {
    #         mount_target_id: "MountTargetId", # required
    #       }
    #
    # @!attribute [rw] mount_target_id
    #   ID of the mount target whose security groups you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetSecurityGroupsRequest AWS API Documentation
    #
    class DescribeMountTargetSecurityGroupsRequest < Struct.new(
      :mount_target_id)
      include Aws::Structure
    end

    # @!attribute [rw] security_groups
    #   Array of security groups.
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
    #   response. It must be an integer with a value greater than zero.
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
    #   (Optional) Maximum number of file system tags to return in the
    #   response. It must be an integer with a value greater than zero.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeTags` operation (String). If present, it specifies to
    #   continue the list from where the previous call left off.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   ID of the file system whose tag set you want to retrieve.
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

    # Description of the file system.
    #
    # @!attribute [rw] owner_id
    #   AWS account that created the file system. If the file system was
    #   created by an IAM user, the parent account to which the user belongs
    #   is the owner.
    #   @return [String]
    #
    # @!attribute [rw] creation_token
    #   Opaque string specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   ID of the file system, assigned by Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time that the file system was created, in seconds (since
    #   1970-01-01T00:00:00Z).
    #   @return [Time]
    #
    # @!attribute [rw] life_cycle_state
    #   Lifecycle phase of the file system.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   You can add tags to a file system, including a `Name` tag. For more
    #   information, see CreateTags. If the file system has a `Name` tag,
    #   Amazon EFS returns the value in this field.
    #   @return [String]
    #
    # @!attribute [rw] number_of_mount_targets
    #   Current number of mount targets that the file system has. For more
    #   information, see CreateMountTarget.
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_bytes
    #   Latest known metered size (in bytes) of data stored in the file
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
    #   The `PerformanceMode` of the file system.
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
    #   modes to choose from for your file system: bursting and provisioned.
    #   You can decrease your file system's throughput in Provisioned
    #   Throughput mode or change between the throughput modes as long as
    #   it’s been more than 24 hours since the last decrease or throughput
    #   mode change.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_in_mibps
    #   The throughput, measured in MiB/s, that you want to provision for a
    #   file system. The limit on throughput is 1024 MiB/s. You can get
    #   these limits increased by contacting AWS Support. For more
    #   information, see [Amazon EFS Limits That You Can Increase][1] in the
    #   *Amazon EFS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits
    #   @return [Float]
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
      :provisioned_throughput_in_mibps)
      include Aws::Structure
    end

    # Latest known metered size (in bytes) of data stored in the file
    # system, in its `Value` field, and the time at which that size was
    # determined in its `Timestamp` field. Note that the value does not
    # represent the size of a consistent snapshot of the file system, but it
    # is eventually consistent when there are no writes to the file system.
    # That is, the value will represent the actual size only if the file
    # system is not modified for a period longer than a couple of hours.
    # Otherwise, the value is not necessarily the exact size the file system
    # was at any instant in time.
    #
    # @!attribute [rw] value
    #   Latest known metered size (in bytes) of data stored in the file
    #   system.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp
    #   Time at which the size of data, returned in the `Value` field, was
    #   determined. The value is the integer number of seconds since
    #   1970-01-01T00:00:00Z.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemSize AWS API Documentation
    #
    class FileSystemSize < Struct.new(
      :value,
      :timestamp)
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
    #   ID of the mount target whose security groups you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Array of up to five VPC security group IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ModifyMountTargetSecurityGroupsRequest AWS API Documentation
    #
    class ModifyMountTargetSecurityGroupsRequest < Struct.new(
      :mount_target_id,
      :security_groups)
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
    #   ID of the file system for which the mount target is intended.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   ID of the mount target's subnet.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle_state
    #   Lifecycle state of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Address at which the file system may be mounted via the mount
    #   target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   ID of the network interface that Amazon EFS created when it created
    #   the mount target.
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

    # A tag is a key-value pair. Allowed characters: letters, whitespace,
    # and numbers, representable in UTF-8, and the following characters:` +
    # - = . _ : /`
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
    #   Tag key (String). The key can't start with `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
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
    #   to provide this value in your request.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_in_mibps
    #   (Optional) The amount of throughput, in MiB/s, that you want to
    #   provision for your file system. If you're not updating the amount
    #   of provisioned throughput for your file system, you don't need to
    #   provide this value in your request.
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
