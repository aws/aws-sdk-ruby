# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EFS
  module Types

    # Returned if the access point you are trying to create already exists,
    # with the creation token you provided in the request.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/AccessPointAlreadyExists AWS API Documentation
    #
    class AccessPointAlreadyExists < Struct.new(
      :error_code,
      :message,
      :access_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a description of an EFS file system access point.
    #
    # @!attribute [rw] client_token
    #   The opaque string specified in the request to ensure idempotent
    #   creation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access point. This is the value of the `Name` tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the access point, presented as an array of
    #   Tag objects.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] access_point_id
    #   The ID of the access point, assigned by Amazon EFS.
    #   @return [String]
    #
    # @!attribute [rw] access_point_arn
    #   The unique Amazon Resource Name (ARN) associated with the access
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the EFS file system that the access point applies to.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The full POSIX identity, including the user ID, group ID, and
    #   secondary group IDs on the access point that is used for all file
    #   operations by NFS clients using the access point.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] root_directory
    #   The directory on the Amazon EFS file system that the access point
    #   exposes as the root directory to NFS clients using the access point.
    #   @return [Types::RootDirectory]
    #
    # @!attribute [rw] owner_id
    #   Identified the AWS account that owns the access point resource.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle_state
    #   Identifies the lifecycle phase of the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/AccessPointDescription AWS API Documentation
    #
    class AccessPointDescription < Struct.new(
      :client_token,
      :name,
      :tags,
      :access_point_id,
      :access_point_arn,
      :file_system_id,
      :posix_user,
      :root_directory,
      :owner_id,
      :life_cycle_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the AWS account has already created the maximum number of
    # access points allowed per file system.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/AccessPointLimitExceeded AWS API Documentation
    #
    class AccessPointLimitExceeded < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the specified `AccessPointId` value doesn't exist in the
    # requester's AWS account.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/AccessPointNotFound AWS API Documentation
    #
    class AccessPointNotFound < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The backup policy for the file system, showing the curent status. If
    # `ENABLED`, the file system is being backed up.
    #
    # @note When making an API call, you may pass BackupPolicy
    #   data as a hash:
    #
    #       {
    #         status: "ENABLED", # required, accepts ENABLED, ENABLING, DISABLED, DISABLING
    #       }
    #
    # @!attribute [rw] status
    #   Describes the status of the file system's backup policy.
    #
    #   * <i> <code>ENABLED</code> - EFS is automatically backing up the
    #     file system.</i>
    #
    #   * <i> <code>ENABLING</code> - EFS is turning on automatic backups
    #     for the file system.</i>
    #
    #   * <i> <code>DISABLED</code> - automatic back ups are turned off for
    #     the file system.</i>
    #
    #   * <i> <code>DISABLED</code> - EFS is turning off automatic backups
    #     for the file system.</i>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/BackupPolicy AWS API Documentation
    #
    class BackupPolicy < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_policy
    #   Describes the file system's backup policy, indicating whether
    #   automatic backups are turned on or off..
    #   @return [Types::BackupPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/BackupPolicyDescription AWS API Documentation
    #
    class BackupPolicyDescription < Struct.new(
      :backup_policy)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccessPointRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         file_system_id: "FileSystemId", # required
    #         posix_user: {
    #           uid: 1, # required
    #           gid: 1, # required
    #           secondary_gids: [1],
    #         },
    #         root_directory: {
    #           path: "Path",
    #           creation_info: {
    #             owner_uid: 1, # required
    #             owner_gid: 1, # required
    #             permissions: "Permissions", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   A string of up to 64 ASCII characters that Amazon EFS uses to ensure
    #   idempotent creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Creates tags associated with the access point. Each tag is a
    #   key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the EFS file system that the access point provides access
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The operating system user and group applied to all file system
    #   requests made using the access point.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] root_directory
    #   Specifies the directory on the Amazon EFS file system that the
    #   access point exposes as the root directory of your file system to
    #   NFS clients using the access point. The clients using the access
    #   point can only access the root directory and below. If the
    #   `RootDirectory` &gt; `Path` specified does not exist, EFS creates it
    #   and applies the `CreationInfo` settings when a client connects to an
    #   access point. When specifying a `RootDirectory`, you need to provide
    #   the `Path`, and the `CreationInfo` is optional.
    #   @return [Types::RootDirectory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreateAccessPointRequest AWS API Documentation
    #
    class CreateAccessPointRequest < Struct.new(
      :client_token,
      :tags,
      :file_system_id,
      :posix_user,
      :root_directory)
      SENSITIVE = []
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    #
    #   EFS accepts only symmetric CMKs. You cannot use asymmetric CMKs with
    #   EFS file systems.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Required if the `RootDirectory` &gt; `Path` specified does not exist.
    # Specifies the POSIX IDs and permissions to apply to the access
    # point's `RootDirectory` &gt; `Path`. If the access point root
    # directory does not exist, EFS creates it with these settings when a
    # client connects to the access point. When specifying `CreationInfo`,
    # you must include values for all properties.
    #
    # If you do not provide `CreationInfo` and the specified `RootDirectory`
    # does not exist, attempts to mount the file system using the access
    # point will fail.
    #
    # @note When making an API call, you may pass CreationInfo
    #   data as a hash:
    #
    #       {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       }
    #
    # @!attribute [rw] owner_uid
    #   Specifies the POSIX user ID to apply to the `RootDirectory`. Accepts
    #   values from 0 to 2^32 (4294967295).
    #   @return [Integer]
    #
    # @!attribute [rw] owner_gid
    #   Specifies the POSIX group ID to apply to the `RootDirectory`.
    #   Accepts values from 0 to 2^32 (4294967295).
    #   @return [Integer]
    #
    # @!attribute [rw] permissions
    #   Specifies the POSIX permissions to apply to the `RootDirectory`, in
    #   the format of an octal number representing the file's mode bits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/CreationInfo AWS API Documentation
    #
    class CreationInfo < Struct.new(
      :owner_uid,
      :owner_gid,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessPointRequest
    #   data as a hash:
    #
    #       {
    #         access_point_id: "AccessPointId", # required
    #       }
    #
    # @!attribute [rw] access_point_id
    #   The ID of the access point that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteAccessPointRequest AWS API Documentation
    #
    class DeleteAccessPointRequest < Struct.new(
      :access_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFileSystemPolicyRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   Specifies the EFS file system for which to delete the
    #   `FileSystemPolicy`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DeleteFileSystemPolicyRequest AWS API Documentation
    #
    class DeleteFileSystemPolicyRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAccessPointsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #         access_point_id: "AccessPointId",
    #         file_system_id: "FileSystemId",
    #       }
    #
    # @!attribute [rw] max_results
    #   (Optional) When retrieving all access points for a file system, you
    #   can optionally specify the `MaxItems` parameter to limit the number
    #   of objects returned in a response. The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   `NextToken` is present if the response is paginated. You can use
    #   `NextMarker` in the subsequent request to fetch the next page of
    #   access point descriptions.
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   (Optional) Specifies an EFS access point to describe in the
    #   response; mutually exclusive with `FileSystemId`.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   (Optional) If you provide a `FileSystemId`, EFS returns all access
    #   points for that file system; mutually exclusive with
    #   `AccessPointId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeAccessPointsRequest AWS API Documentation
    #
    class DescribeAccessPointsRequest < Struct.new(
      :max_results,
      :next_token,
      :access_point_id,
      :file_system_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_points
    #   An array of access point descriptions.
    #   @return [Array<Types::AccessPointDescription>]
    #
    # @!attribute [rw] next_token
    #   Present if there are more access points than returned in the
    #   response. You can use the NextMarker in the subsequent request to
    #   fetch the additional descriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeAccessPointsResponse AWS API Documentation
    #
    class DescribeAccessPointsResponse < Struct.new(
      :access_points,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBackupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   Specifies which EFS file system to retrieve the `BackupPolicy` for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeBackupPolicyRequest AWS API Documentation
    #
    class DescribeBackupPolicyRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFileSystemPolicyRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #       }
    #
    # @!attribute [rw] file_system_id
    #   Specifies which EFS file system to retrieve the `FileSystemPolicy`
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeFileSystemPolicyRequest AWS API Documentation
    #
    class DescribeFileSystemPolicyRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
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
    #   the response (integer). This number is automatically set to 100. The
    #   response is paginated at 100 per page if you have more than 100 file
    #   systems.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         access_point_id: "AccessPointId",
    #       }
    #
    # @!attribute [rw] max_items
    #   (Optional) Maximum number of mount targets to return in the
    #   response. Currently, this number is automatically set to 10, and
    #   other values are ignored. The response is paginated at 100 per page
    #   if you have more than 100 mount targets.
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
    #   list (String). It must be included in your request if an
    #   `AccessPointId` or `MountTargetId` is not included. Accepts either a
    #   file system ID or ARN as input.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   (Optional) ID of the mount target that you want to have described
    #   (String). It must be included in your request if `FileSystemId` is
    #   not included. Accepts either a mount target ID or ARN as input.
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   (Optional) The ID of the access point whose mount targets that you
    #   want to list. It must be included in your request if a
    #   `FileSystemId` or `MountTargetId` is not included in your request.
    #   Accepts either an access point ID or ARN as input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/DescribeMountTargetsRequest AWS API Documentation
    #
    class DescribeMountTargetsRequest < Struct.new(
      :max_items,
      :marker,
      :file_system_id,
      :mount_target_id,
      :access_point_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   response. Currently, this number is automatically set to 100, and
    #   other values are ignored. The response is paginated at 100 per page
    #   if you have more than 100 tags.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) for the EFS file system, in the
    #   format
    #   `arn:aws:elasticfilesystem:region:account-id:file-system/file-system-id
    #   `. Example with sample data:
    #   `arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567`
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
      :file_system_arn,
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   Specifies the EFS file system to which the `FileSystemPolicy`
    #   applies.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON formatted `FileSystemPolicy` for the EFS file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/FileSystemPolicyDescription AWS API Documentation
    #
    class FileSystemPolicyDescription < Struct.new(
      :file_system_id,
      :policy)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the `FileSystemPolicy` is is malformed or contains an
    # error such as an invalid parameter value or a missing required
    # parameter. Returned in the case of a policy lockout safety check
    # error.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/InvalidPolicyException AWS API Documentation
    #
    class InvalidPolicyException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a policy used by EFS lifecycle management to transition
    # files to the Infrequent Access (IA) storage class.
    #
    # @note When making an API call, you may pass LifecyclePolicy
    #   data as a hash:
    #
    #       {
    #         transition_to_ia: "AFTER_7_DAYS", # accepts AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, AFTER_90_DAYS
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] resource_id
    #   Specifies the EFS resource you want to retrieve tags for. You can
    #   retrieve tags for EFS file systems and access points using this API
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Specifies the maximum number of tag objects to return in
    #   the response. The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   You can use `NextToken` in a subsequent request to fetch the next
    #   page of access point descriptions if the response payload was
    #   paginated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of the tags for the specified EFS resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   `NextToken` is present if the response payload is paginated. You can
    #   use `NextToken` in a subsequent request to fetch the next page of
    #   access point descriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] availability_zone_id
    #   The unique and consistent identifier of the Availability Zone (AZ)
    #   that the mount target resides in. For example, `use1-az1` is an AZ
    #   ID for the us-east-1 Region and it has the same location in every
    #   AWS account.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_name
    #   The name of the Availability Zone (AZ) that the mount target resides
    #   in. AZs are independently mapped to names for each AWS account. For
    #   example, the Availability Zone `us-east-1a` for your AWS account
    #   might not be the same location as `us-east-1a` for another AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Virtual Private Cloud (VPC) ID that the mount target is
    #   configured in.
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
      :network_interface_id,
      :availability_zone_id,
      :availability_zone_name,
      :vpc_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the default file system policy is in effect for the EFS
    # file system specified.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PolicyNotFound AWS API Documentation
    #
    class PolicyNotFound < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full POSIX identity, including the user ID, group ID, and any
    # secondary group IDs, on the access point that is used for all file
    # system operations performed by NFS clients using the access point.
    #
    # @note When making an API call, you may pass PosixUser
    #   data as a hash:
    #
    #       {
    #         uid: 1, # required
    #         gid: 1, # required
    #         secondary_gids: [1],
    #       }
    #
    # @!attribute [rw] uid
    #   The POSIX user ID used for all file system operations using this
    #   access point.
    #   @return [Integer]
    #
    # @!attribute [rw] gid
    #   The POSIX group ID used for all file system operations using this
    #   access point.
    #   @return [Integer]
    #
    # @!attribute [rw] secondary_gids
    #   Secondary POSIX group IDs used for all file system operations using
    #   this access point.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PosixUser AWS API Documentation
    #
    class PosixUser < Struct.new(
      :uid,
      :gid,
      :secondary_gids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBackupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         backup_policy: { # required
    #           status: "ENABLED", # required, accepts ENABLED, ENABLING, DISABLED, DISABLING
    #         },
    #       }
    #
    # @!attribute [rw] file_system_id
    #   Specifies which EFS file system to update the backup policy for.
    #   @return [String]
    #
    # @!attribute [rw] backup_policy
    #   The backup policy included in the `PutBackupPolicy` request.
    #   @return [Types::BackupPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutBackupPolicyRequest AWS API Documentation
    #
    class PutBackupPolicyRequest < Struct.new(
      :file_system_id,
      :backup_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFileSystemPolicyRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         policy: "Policy", # required
    #         bypass_policy_lockout_safety_check: false,
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the EFS file system that you want to create or update the
    #   `FileSystemPolicy` for.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The `FileSystemPolicy` that you're creating. Accepts a JSON
    #   formatted policy definition. To find out more about the elements
    #   that make up a file system policy, see [EFS Resource-based
    #   Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies
    #   @return [String]
    #
    # @!attribute [rw] bypass_policy_lockout_safety_check
    #   (Optional) A flag to indicate whether to bypass the
    #   `FileSystemPolicy` lockout safety check. The policy lockout safety
    #   check determines whether the policy in the request will prevent the
    #   principal making the request will be locked out from making future
    #   `PutFileSystemPolicy` requests on the file system. Set
    #   `BypassPolicyLockoutSafetyCheck` to `True` only when you intend to
    #   prevent the principal that is making the request from making a
    #   subsequent `PutFileSystemPolicy` request on the file system. The
    #   default value is False.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/PutFileSystemPolicyRequest AWS API Documentation
    #
    class PutFileSystemPolicyRequest < Struct.new(
      :file_system_id,
      :policy,
      :bypass_policy_lockout_safety_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLifecycleConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         lifecycle_policies: [ # required
    #           {
    #             transition_to_ia: "AFTER_7_DAYS", # accepts AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, AFTER_90_DAYS
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the directory on the Amazon EFS file system that the access
    # point provides access to. The access point exposes the specified file
    # system path as the root directory of your file system to applications
    # using the access point. NFS clients using the access point can only
    # access data in the access point's `RootDirectory` and it's
    # subdirectories.
    #
    # @note When making an API call, you may pass RootDirectory
    #   data as a hash:
    #
    #       {
    #         path: "Path",
    #         creation_info: {
    #           owner_uid: 1, # required
    #           owner_gid: 1, # required
    #           permissions: "Permissions", # required
    #         },
    #       }
    #
    # @!attribute [rw] path
    #   Specifies the path on the EFS file system to expose as the root
    #   directory to NFS clients using the access point to access the EFS
    #   file system. A path can have up to four subdirectories. If the
    #   specified path does not exist, you are required to provide the
    #   `CreationInfo`.
    #   @return [String]
    #
    # @!attribute [rw] creation_info
    #   (Optional) Specifies the POSIX IDs and permissions to apply to the
    #   access point's `RootDirectory`. If the `RootDirectory` &gt; `Path`
    #   specified does not exist, EFS creates the root directory using the
    #   `CreationInfo` settings when a client connects to an access point.
    #   When specifying the `CreationInfo`, you must provide values for all
    #   properties.
    #
    #   If you do not provide `CreationInfo` and the specified
    #   `RootDirectory` &gt; `Path` does not exist, attempts to mount the
    #   file system using the access point will fail.
    #   @return [Types::CreationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/RootDirectory AWS API Documentation
    #
    class RootDirectory < Struct.new(
      :path,
      :creation_info)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   The ID specifying the EFS resource that you want to create a tag
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   Specifies the EFS resource that you want to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key:value tag pairs that you want to remove from the
    #   specified EFS resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned if the AWS Backup service is not available in the region that
    # the request was made.
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
