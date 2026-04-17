# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Files
  module Types

    # The request conflicts with the current state of the resource. This can
    # occur when trying to create a resource that already exists or delete a
    # resource that is in use.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Web Services ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply to the access point for
    #   resource tagging.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The POSIX identity with uid, gid, and secondary group IDs for user
    #   enforcement when accessing the file system through this access
    #   point.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] root_directory
    #   The root directory path for the access point, with optional creation
    #   permissions for newly created directories.
    #   @return [Types::RootDirectory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateAccessPointRequest AWS API Documentation
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

    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the access point.
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   The ID of the access point.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that was provided in the request.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the S3 File System.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the access point.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the access point owner.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The POSIX identity configured for this access point.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] root_directory
    #   The root directory configuration for this access point.
    #   @return [Types::RootDirectory]
    #
    # @!attribute [rw] tags
    #   The tags associated with the access point.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] name
    #   The name of the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateAccessPointResponse AWS API Documentation
    #
    class CreateAccessPointResponse < Struct.new(
      :access_point_arn,
      :access_point_id,
      :client_token,
      :file_system_id,
      :status,
      :owner_id,
      :posix_user,
      :root_directory,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the S3 bucket that will be
    #   accessible through the file system. The bucket must exist and be in
    #   the same Amazon Web Services Region as the file system.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   An optional prefix within the S3 bucket to scope the file system
    #   access. If specified, the file system provides access only to
    #   objects with keys that begin with this prefix. If not specified, the
    #   file system provides access to the entire bucket.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure
    #   idempotent creation. Up to 64 ASCII characters are allowed. If you
    #   don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN, key ID, or alias of the KMS key to use for encryption. If
    #   not specified, the service uses a service-owned key for encryption.
    #   You can specify a KMS key using the following formats: key ID, ARN,
    #   key alias, or key alias ARN. If you use `KmsKeyId`, the file system
    #   will be encrypted.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants the S3 Files service permission
    #   to read and write data between the file system and the S3 bucket.
    #   This role must have the necessary permissions to access the
    #   specified bucket and prefix.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply as tags to the file system
    #   resource. Each tag is a user-defined key-value pair. You can use
    #   tags to categorize and manage your file systems. Each key must be
    #   unique for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] accept_bucket_warning
    #   Set to true to acknowledge and accept any warnings about the bucket
    #   configuration. If not specified, the operation may fail if there are
    #   bucket configuration warnings.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateFileSystemRequest AWS API Documentation
    #
    class CreateFileSystemRequest < Struct.new(
      :bucket,
      :prefix,
      :client_token,
      :kms_key_id,
      :role_arn,
      :tags,
      :accept_bucket_warning)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time when the file system was created, in seconds since
    #   1970-01-01T00:00:00Z (Unix epoch time).
    #   @return [Time]
    #
    # @!attribute [rw] file_system_arn
    #   The ARN for the S3 file system, in the format
    #   `arn:aws:s3files:region:account-id:file-system/file-system-id`.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system, assigned by S3 Files. This ID is used to
    #   reference the file system in subsequent API calls.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the S3 bucket associated with the
    #   file system.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix within the S3 bucket that scopes the file system access.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token used for idempotency.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN or alias of the KMS key used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle state of the file system. Valid values are:
    #   `AVAILABLE` (the file system is available for use), `CREATING` (the
    #   file system is being created), `DELETING` (the file system is being
    #   deleted), `DELETED` (the file system has been deleted), `ERROR` (the
    #   file system is in an error state), or `UPDATING` (the file system is
    #   being updated).
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the file system status. This field
    #   provides more details when the status is `ERROR`, or during state
    #   transitions.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role used for S3 access.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the file system owner.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the file system.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] name
    #   The name of the file system, derived from the `Name` tag if present.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateFileSystemResponse AWS API Documentation
    #
    class CreateFileSystemResponse < Struct.new(
      :creation_time,
      :file_system_arn,
      :file_system_id,
      :bucket,
      :prefix,
      :client_token,
      :kms_key_id,
      :status,
      :status_message,
      :role_arn,
      :owner_id,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to create
    #   the mount target for.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet where the mount target will be created. The
    #   subnet must be in the same Amazon Web Services Region as the file
    #   system. For file systems with regional availability, you can create
    #   mount targets in any subnet within the Region. The subnet determines
    #   the Availability Zone where the mount target will be located.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_address
    #   A specific IPv4 address to assign to the mount target. If not
    #   specified and the IP address type supports IPv4, an address is
    #   automatically assigned from the subnet's available IPv4 address
    #   range. The address must be within the subnet's CIDR block and not
    #   already in use.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   A specific IPv6 address to assign to the mount target. If not
    #   specified and the IP address type supports IPv6, an address is
    #   automatically assigned from the subnet's available IPv6 address
    #   range. The address must be within the subnet's IPv6 CIDR block and
    #   not already in use.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for the mount target. If not specified,
    #   `IPV4_ONLY` is used. The IP address type must match the IP
    #   configuration of the specified subnet.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   An array of VPC security group IDs to associate with the mount
    #   target's network interface. These security groups control network
    #   access to the mount target. If not specified, the default security
    #   group for the subnet's VPC is used. All security groups must belong
    #   to the same VPC as the subnet.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateMountTargetRequest AWS API Documentation
    #
    class CreateMountTargetRequest < Struct.new(
      :file_system_id,
      :subnet_id,
      :ipv4_address,
      :ipv6_address,
      :ip_address_type,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone_id
    #   The unique and consistent identifier of the Availability Zone where
    #   the mount target is located. For example, `use1-az1` is an
    #   Availability Zone ID for the `us-east-1` Amazon Web Services Region,
    #   and it has the same location in every Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the mount target owner.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target, assigned by S3 Files. This ID is used to
    #   reference the mount target in subsequent API calls.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the S3 File System associated with the mount target.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_address
    #   The IPv4 address assigned to the mount target.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The IPv6 address assigned to the mount target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface that S3 Files created when it
    #   created the mount target. This network interface is managed by the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the mount target's network
    #   interface.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The lifecycle state of the mount target. Valid values are:
    #   `AVAILABLE` (the mount target is available for use), `CREATING` (the
    #   mount target is being created), `DELETING` (the mount target is
    #   being deleted), `DELETED` (the mount target has been deleted), or
    #   `ERROR` (the mount target is in an error state), or `UPDATING` (the
    #   mount target is being updated).
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the mount target status. This field
    #   provides more details when the status is `ERROR`, or during state
    #   transitions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateMountTargetResponse AWS API Documentation
    #
    class CreateMountTargetResponse < Struct.new(
      :availability_zone_id,
      :owner_id,
      :mount_target_id,
      :file_system_id,
      :subnet_id,
      :ipv4_address,
      :ipv6_address,
      :network_interface_id,
      :vpc_id,
      :security_groups,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the permissions to set on newly created directories within
    # the file system.
    #
    # @!attribute [rw] owner_uid
    #   The POSIX user ID to assign to newly created directories.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_gid
    #   The POSIX group ID to assign to newly created directories.
    #   @return [Integer]
    #
    # @!attribute [rw] permissions
    #   The octal permissions to assign to newly created directories.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreationPermissions AWS API Documentation
    #
    class CreationPermissions < Struct.new(
      :owner_uid,
      :owner_gid,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_id
    #   The ID or Amazon Resource Name (ARN) of the access point to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteAccessPointRequest AWS API Documentation
    #
    class DeleteAccessPointRequest < Struct.new(
      :access_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System whose
    #   resource policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteFileSystemPolicyRequest AWS API Documentation
    #
    class DeleteFileSystemPolicyRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   If true, allows deletion of a file system that contains data pending
    #   export to S3. If false (the default), the deletion will fail if
    #   there is data that has not yet been exported to the S3 bucket. Use
    #   this parameter with caution as it may result in data loss.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteFileSystemRequest AWS API Documentation
    #
    class DeleteFileSystemRequest < Struct.new(
      :file_system_id,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mount_target_id
    #   The ID of the mount target to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteMountTargetRequest AWS API Documentation
    #
    class DeleteMountTargetRequest < Struct.new(
      :mount_target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a rule that controls when cached data expires from the file
    # system based on last access time.
    #
    # @!attribute [rw] days_after_last_access
    #   The number of days after last access before cached data expires from
    #   the file system.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ExpirationDataRule AWS API Documentation
    #
    class ExpirationDataRule < Struct.new(
      :days_after_last_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_id
    #   The ID or Amazon Resource Name (ARN) of the access point to retrieve
    #   information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetAccessPointRequest AWS API Documentation
    #
    class GetAccessPointRequest < Struct.new(
      :access_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_point_arn
    #   The ARN of the access point.
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   The ID of the access point.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token used for idempotency when the access point was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the S3 File System.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the access point.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the access point owner.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The POSIX identity configured for this access point.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] root_directory
    #   The root directory configuration for this access point.
    #   @return [Types::RootDirectory]
    #
    # @!attribute [rw] tags
    #   The tags associated with the access point.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] name
    #   The name of the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetAccessPointResponse AWS API Documentation
    #
    class GetAccessPointResponse < Struct.new(
      :access_point_arn,
      :access_point_id,
      :client_token,
      :file_system_id,
      :status,
      :owner_id,
      :posix_user,
      :root_directory,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System whose
    #   resource policy to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetFileSystemPolicyRequest AWS API Documentation
    #
    class GetFileSystemPolicyRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID of the file system.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource policy for the file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetFileSystemPolicyResponse AWS API Documentation
    #
    class GetFileSystemPolicyResponse < Struct.new(
      :file_system_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to
    #   retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetFileSystemRequest AWS API Documentation
    #
    class GetFileSystemRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The time when the file system was created.
    #   @return [Time]
    #
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) of the file system.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix in the S3 bucket that the file system provides access to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token used for idempotency when the file system was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services KMS key
    #   used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the file system.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the file system status.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for S3 access.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the file system owner.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the file system.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] name
    #   The name of the file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetFileSystemResponse AWS API Documentation
    #
    class GetFileSystemResponse < Struct.new(
      :creation_time,
      :file_system_arn,
      :file_system_id,
      :bucket,
      :prefix,
      :client_token,
      :kms_key_id,
      :status,
      :status_message,
      :role_arn,
      :owner_id,
      :tags,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mount_target_id
    #   The ID of the mount target to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetMountTargetRequest AWS API Documentation
    #
    class GetMountTargetRequest < Struct.new(
      :mount_target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone_id
    #   The Availability Zone ID where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the mount target owner.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_address
    #   The IPv4 address of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The IPv6 address of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface associated with the mount target.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the mount target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the mount target status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetMountTargetResponse AWS API Documentation
    #
    class GetMountTargetResponse < Struct.new(
      :availability_zone_id,
      :owner_id,
      :mount_target_id,
      :file_system_id,
      :subnet_id,
      :ipv4_address,
      :ipv6_address,
      :network_interface_id,
      :vpc_id,
      :security_groups,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to
    #   retrieve the synchronization configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetSynchronizationConfigurationRequest AWS API Documentation
    #
    class GetSynchronizationConfigurationRequest < Struct.new(
      :file_system_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] latest_version_number
    #   The version number of the synchronization configuration. Use this
    #   value with `PutSynchronizationConfiguration` to ensure optimistic
    #   concurrency control.
    #   @return [Integer]
    #
    # @!attribute [rw] import_data_rules
    #   An array of import data rules that control how data is imported from
    #   S3 into the file system.
    #   @return [Array<Types::ImportDataRule>]
    #
    # @!attribute [rw] expiration_data_rules
    #   An array of expiration data rules that control when cached data
    #   expires from the file system.
    #   @return [Array<Types::ExpirationDataRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetSynchronizationConfigurationResponse AWS API Documentation
    #
    class GetSynchronizationConfigurationResponse < Struct.new(
      :latest_version_number,
      :import_data_rules,
      :expiration_data_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a rule that controls how data is imported from S3 into the
    # file system.
    #
    # @!attribute [rw] prefix
    #   The S3 key prefix that scopes this import rule. Only objects with
    #   keys beginning with this prefix are subject to the rule.
    #   @return [String]
    #
    # @!attribute [rw] trigger
    #   The event that triggers data import. Valid values are
    #   `ON_DIRECTORY_FIRST_ACCESS` (import when a directory is first
    #   accessed) and `ON_FILE_ACCESS` (import when a file is accessed).
    #   @return [String]
    #
    # @!attribute [rw] size_less_than
    #   The upper size limit in bytes for this import rule. Only objects
    #   with a size strictly less than this value will have data imported
    #   into the file system.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ImportDataRule AWS API Documentation
    #
    class ImportDataRule < Struct.new(
      :prefix,
      :trigger,
      :size_less_than)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an S3 File System Access Point returned in
    # list operations.
    #
    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the access point.
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   The ID of the access point.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the S3 File System.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the access point.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the access point owner.
    #   @return [String]
    #
    # @!attribute [rw] posix_user
    #   The POSIX identity configured for this access point.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] root_directory
    #   The root directory configuration for this access point.
    #   @return [Types::RootDirectory]
    #
    # @!attribute [rw] name
    #   The name of the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListAccessPointsDescription AWS API Documentation
    #
    class ListAccessPointsDescription < Struct.new(
      :access_point_arn,
      :access_point_id,
      :file_system_id,
      :status,
      :owner_id,
      :posix_user,
      :root_directory,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to list
    #   access points for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of access points to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue listing
    #   access points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListAccessPointsRequest AWS API Documentation
    #
    class ListAccessPointsRequest < Struct.new(
      :file_system_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token to use in a subsequent request if more results
    #   are available.
    #   @return [String]
    #
    # @!attribute [rw] access_points
    #   An array of access point descriptions.
    #   @return [Array<Types::ListAccessPointsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListAccessPointsResponse AWS API Documentation
    #
    class ListAccessPointsResponse < Struct.new(
      :next_token,
      :access_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an S3 File System returned in list
    # operations.
    #
    # @!attribute [rw] creation_time
    #   The time when the file system was created.
    #   @return [Time]
    #
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) of the file system.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the file system.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon Resource Name (ARN) of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the file system.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the file system status.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for S3 access.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the file system owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListFileSystemsDescription AWS API Documentation
    #
    class ListFileSystemsDescription < Struct.new(
      :creation_time,
      :file_system_arn,
      :file_system_id,
      :name,
      :bucket,
      :status,
      :status_message,
      :role_arn,
      :owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bucket
    #   Optional filter to list only file systems associated with the
    #   specified S3 bucket Amazon Resource Name (ARN). If provided, only
    #   file systems that provide access to this bucket will be returned in
    #   the response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of file systems to return in a single response.
    #   If not specified, up to 100 file systems are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue listing
    #   file systems.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListFileSystemsRequest AWS API Documentation
    #
    class ListFileSystemsRequest < Struct.new(
      :bucket,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token to use in a subsequent request if more results
    #   are available.
    #   @return [String]
    #
    # @!attribute [rw] file_systems
    #   An array of file system descriptions.
    #   @return [Array<Types::ListFileSystemsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListFileSystemsResponse AWS API Documentation
    #
    class ListFileSystemsResponse < Struct.new(
      :next_token,
      :file_systems)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a mount target returned in list operations.
    #
    # @!attribute [rw] availability_zone_id
    #   The Availability Zone ID where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the S3 File System.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_address
    #   The IPv4 address of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The IPv6 address of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the mount target status.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface associated with the mount target.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the mount target owner.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the mount target is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListMountTargetsDescription AWS API Documentation
    #
    class ListMountTargetsDescription < Struct.new(
      :availability_zone_id,
      :file_system_id,
      :ipv4_address,
      :ipv6_address,
      :status,
      :status_message,
      :mount_target_id,
      :network_interface_id,
      :owner_id,
      :subnet_id,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   Optional filter to list only mount targets associated with the
    #   specified S3 File System ID or Amazon Resource Name (ARN). If
    #   provided, only mount targets for this file system will be returned
    #   in the response.
    #   @return [String]
    #
    # @!attribute [rw] access_point_id
    #   Optional filter to list only mount targets associated with the
    #   specified access point ID or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of mount targets to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue listing
    #   mount targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListMountTargetsRequest AWS API Documentation
    #
    class ListMountTargetsRequest < Struct.new(
      :file_system_id,
      :access_point_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token to use in a subsequent request if more results
    #   are available.
    #   @return [String]
    #
    # @!attribute [rw] mount_targets
    #   An array of mount target descriptions.
    #   @return [Array<Types::ListMountTargetsDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListMountTargetsResponse AWS API Documentation
    #
    class ListMountTargetsResponse < Struct.new(
      :next_token,
      :mount_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID or Amazon Resource Name (ARN) of the resource to list tags
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tags to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to continue listing
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to use in a subsequent request if more results
    #   are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the POSIX identity with uid, gid, and secondary group IDs
    # for user enforcement.
    #
    # @!attribute [rw] uid
    #   The POSIX user ID.
    #   @return [Integer]
    #
    # @!attribute [rw] gid
    #   The POSIX group ID.
    #   @return [Integer]
    #
    # @!attribute [rw] secondary_gids
    #   An array of secondary POSIX group IDs.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PosixUser AWS API Documentation
    #
    class PosixUser < Struct.new(
      :uid,
      :gid,
      :secondary_gids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to apply
    #   the resource policy to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource policy to apply to the file system. The
    #   policy defines the permissions for accessing the file system. The
    #   policy must be a valid JSON document that follows IAM policy syntax.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PutFileSystemPolicyRequest AWS API Documentation
    #
    class PutFileSystemPolicyRequest < Struct.new(
      :file_system_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PutFileSystemPolicyResponse AWS API Documentation
    #
    class PutFileSystemPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to
    #   configure synchronization for.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_number
    #   The version number of the current synchronization configuration.
    #   Omit this value when creating a synchronization configuration for
    #   the first time. For subsequent updates, provide this value for
    #   optimistic concurrency control. If the version number does not match
    #   the current configuration, the request fails with a
    #   `ConflictException`.
    #   @return [Integer]
    #
    # @!attribute [rw] import_data_rules
    #   An array of import data rules that control how data is imported from
    #   S3 into the file system.
    #   @return [Array<Types::ImportDataRule>]
    #
    # @!attribute [rw] expiration_data_rules
    #   An array of expiration data rules that control when cached data
    #   expires from the file system.
    #   @return [Array<Types::ExpirationDataRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PutSynchronizationConfigurationRequest AWS API Documentation
    #
    class PutSynchronizationConfigurationRequest < Struct.new(
      :file_system_id,
      :latest_version_number,
      :import_data_rules,
      :expiration_data_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PutSynchronizationConfigurationResponse AWS API Documentation
    #
    class PutSynchronizationConfigurationResponse < Aws::EmptyStructure; end

    # The specified resource was not found. Verify that the resource exists
    # and that you have permission to access it.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the root directory path and optional creation permissions
    # for newly created directories.
    #
    # @!attribute [rw] path
    #   The path to use as the root directory for the access point.
    #   @return [String]
    #
    # @!attribute [rw] creation_permissions
    #   The permissions to set on newly created directories.
    #   @return [Types::CreationPermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/RootDirectory AWS API Documentation
    #
    class RootDirectory < Struct.new(
      :path,
      :creation_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota. Review your service quotas
    # and either delete resources or request a quota increase.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair for resource tagging.
    #
    # @!attribute [rw] key
    #   The tag key. The key can't start with `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID or Amazon Resource Name (ARN) of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to add as tags to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled. Retry your request using exponential
    # backoff.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID or Amazon Resource Name (ARN) of the resource to remove tags
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   An array of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mount_target_id
    #   The ID of the mount target to update.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   An array of VPC security group IDs to associate with the mount
    #   target's network interface. This replaces the existing security
    #   groups. All security groups must belong to the same VPC as the mount
    #   target's subnet.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/UpdateMountTargetRequest AWS API Documentation
    #
    class UpdateMountTargetRequest < Struct.new(
      :mount_target_id,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone_id
    #   The Availability Zone ID where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the mount target owner.
    #   @return [String]
    #
    # @!attribute [rw] mount_target_id
    #   The ID of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the S3 File System.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_address
    #   The IPv4 address of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The IPv6 address of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface associated with the mount target.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the mount target is located.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the mount target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the mount target.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the mount target status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/UpdateMountTargetResponse AWS API Documentation
    #
    class UpdateMountTargetResponse < Struct.new(
      :availability_zone_id,
      :owner_id,
      :mount_target_id,
      :file_system_id,
      :subnet_id,
      :ipv4_address,
      :ipv6_address,
      :network_interface_id,
      :vpc_id,
      :security_groups,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters are not valid. Check the parameter values and try
    # again.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

