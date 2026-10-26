# frozen_string_literal: true

# This is generated code!

module Aws::S3Files
  # This module contains the types returned by client operations.
  module Types

    # <p>The request conflicts with the current state of the resource. This can occur when trying to create a resource that already exists or delete a resource that is in use.</p>
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that caused the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that caused the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :error_code,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Web Services ignores the request, but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to the access point for resource tagging.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The POSIX identity with uid, gid, and secondary group IDs for user enforcement when accessing the file system through this access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>The root directory path for the access point, with optional creation permissions for newly created directories.</p>
    #   @return [Types::RootDirectory]
    class CreateAccessPointRequest < Struct.new(
      nil,
      :client_token,
      :tags,
      :file_system_id,
      :posix_user,
      :root_directory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the access point.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   <p>The ID of the access point.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that was provided in the request.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the S3 File System.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the access point.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the access point owner.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The POSIX identity configured for this access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>The root directory configuration for this access point.</p>
    #   @return [Types::RootDirectory]
    # @!attribute tags
    #   <p>The tags associated with the access point.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute name
    #   <p>The name of the access point.</p>
    #   @return [String]
    class CreateAccessPointResponse < Struct.new(
      nil,
      :access_point_arn,
      :access_point_id,
      :client_token,
      :file_system_id,
      :status,
      :owner_id,
      :posix_user,
      :root_directory,
      :tags,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket that will be accessible through the file system. The bucket must exist and be in the same Amazon Web Services Region as the file system.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>An optional prefix within the S3 bucket to scope the file system access. If specified, the file system provides access only to objects with keys that begin with this prefix. If not specified, the file system provides access to the entire bucket.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure idempotent creation. Up to 64 ASCII characters are allowed. If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key to use for encryption. If not specified, the service uses a service-owned key for encryption. You can specify a KMS key using the following formats: key ID, ARN, key alias, or key alias ARN. If you use <code>KmsKeyId</code>, the file system will be encrypted.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants the S3 Files service permission to read and write data between the file system and the S3 bucket. This role must have the necessary permissions to access the specified bucket and prefix.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply as tags to the file system resource. Each tag is a user-defined key-value pair. You can use tags to categorize and manage your file systems. Each key must be unique for the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute accept_bucket_warning
    #   <p>Set to true to acknowledge and accept any warnings about the bucket configuration. If not specified, the operation may fail if there are bucket configuration warnings.</p>
    #   @return [Boolean]
    class CreateFileSystemRequest < Struct.new(
      nil,
      :bucket,
      :prefix,
      :client_token,
      :kms_key_id,
      :role_arn,
      :tags,
      :accept_bucket_warning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time when the file system was created, in seconds since 1970-01-01T00:00:00Z (Unix epoch time).</p>
    #   @return [Time]
    # @!attribute file_system_arn
    #   <p>The ARN for the S3 file system, in the format <code>arn:aws:s3files:region:account-id:file-system/file-system-id</code>.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system, assigned by S3 Files. This ID is used to reference the file system in subsequent API calls.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket associated with the file system.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix within the S3 bucket that scopes the file system access.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token used for idempotency.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ARN or alias of the KMS key used for encryption.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle state of the file system. Valid values are: <code>AVAILABLE</code> (the file system is available for use), <code>CREATING</code> (the file system is being created), <code>DELETING</code> (the file system is being deleted), <code>DELETED</code> (the file system has been deleted), <code>ERROR</code> (the file system is in an error state), or <code>UPDATING</code> (the file system is being updated).</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the file system status. This field provides more details when the status is <code>ERROR</code>, or during state transitions.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role used for S3 access.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the file system owner.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the file system.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute name
    #   <p>The name of the file system, derived from the <code>Name</code> tag if present.</p>
    #   @return [String]
    class CreateFileSystemResponse < Struct.new(
      nil,
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
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:prefix] = '' unless options.key?(:prefix)
        super
      end
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to create the mount target for.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet where the mount target will be created. The subnet must be in the same Amazon Web Services Region as the file system. For file systems with regional availability, you can create mount targets in any subnet within the Region. The subnet determines the Availability Zone where the mount target will be located.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>A specific IPv4 address to assign to the mount target. If not specified and the IP address type supports IPv4, an address is automatically assigned from the subnet's available IPv4 address range. The address must be within the subnet's CIDR block and not already in use.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>A specific IPv6 address to assign to the mount target. If not specified and the IP address type supports IPv6, an address is automatically assigned from the subnet's available IPv6 address range. The address must be within the subnet's IPv6 CIDR block and not already in use.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for the mount target. If not specified, <code>IPV4_ONLY</code> is used. The IP address type must match the IP configuration of the specified subnet.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>An array of VPC security group IDs to associate with the mount target's network interface. These security groups control network access to the mount target. If not specified, the default security group for the subnet's VPC is used. All security groups must belong to the same VPC as the subnet.</p>
    #   @return [Array<String>]
    class CreateMountTargetRequest < Struct.new(
      nil,
      :file_system_id,
      :subnet_id,
      :ipv4_address,
      :ipv6_address,
      :ip_address_type,
      :security_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute availability_zone_id
    #   <p>The unique and consistent identifier of the Availability Zone where the mount target is located. For example, <code>use1-az1</code> is an Availability Zone ID for the <code>us-east-1</code> Amazon Web Services Region, and it has the same location in every Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the mount target owner.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>The ID of the mount target, assigned by S3 Files. This ID is used to reference the mount target in subsequent API calls.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the S3 File System associated with the mount target.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet where the mount target is located.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>The IPv4 address assigned to the mount target.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address assigned to the mount target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface that S3 Files created when it created the mount target. This network interface is managed by the service.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC where the mount target is located.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The security groups associated with the mount target's network interface.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The lifecycle state of the mount target. Valid values are: <code>AVAILABLE</code> (the mount target is available for use), <code>CREATING</code> (the mount target is being created), <code>DELETING</code> (the mount target is being deleted), <code>DELETED</code> (the mount target has been deleted), or <code>ERROR</code> (the mount target is in an error state), or <code>UPDATING</code> (the mount target is being updated).</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the mount target status. This field provides more details when the status is <code>ERROR</code>, or during state transitions.</p>
    #   @return [String]
    class CreateMountTargetResponse < Struct.new(
      nil,
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
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the permissions to set on newly created directories within the file system.</p>
    # @!attribute owner_uid
    #   <p>The POSIX user ID to assign to newly created directories.</p>
    #   @return [Integer]
    # @!attribute owner_gid
    #   <p>The POSIX group ID to assign to newly created directories.</p>
    #   @return [Integer]
    # @!attribute permissions
    #   <p>The octal permissions to assign to newly created directories.</p>
    #   @return [String]
    class CreationPermissions < Struct.new(
      nil,
      :owner_uid,
      :owner_gid,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_id
    #   <p>The ID or Amazon Resource Name (ARN) of the access point to delete.</p>
    #   @return [String]
    class DeleteAccessPointRequest < Struct.new(
      nil,
      :access_point_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System whose resource policy to delete.</p>
    #   @return [String]
    class DeleteFileSystemPolicyRequest < Struct.new(
      nil,
      :file_system_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to delete.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>If true, allows deletion of a file system that contains data pending export to S3. If false (the default), the deletion will fail if there is data that has not yet been exported to the S3 bucket. Use this parameter with caution as it may result in data loss.</p>
    #   @return [Boolean]
    class DeleteFileSystemRequest < Struct.new(
      nil,
      :file_system_id,
      :force_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mount_target_id
    #   <p>The ID of the mount target to delete.</p>
    #   @return [String]
    class DeleteMountTargetRequest < Struct.new(
      nil,
      :mount_target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a rule that controls when cached data expires from the file system based on last access time.</p>
    # @!attribute days_after_last_access
    #   <p>The number of days after last access before cached data expires from the file system.</p>
    #   @return [Integer]
    class ExpirationDataRule < Struct.new(
      nil,
      :days_after_last_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_id
    #   <p>The ID or Amazon Resource Name (ARN) of the access point to retrieve information for.</p>
    #   @return [String]
    class GetAccessPointRequest < Struct.new(
      nil,
      :access_point_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_arn
    #   <p>The ARN of the access point.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   <p>The ID of the access point.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token used for idempotency when the access point was created.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the S3 File System.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the access point.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the access point owner.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The POSIX identity configured for this access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>The root directory configuration for this access point.</p>
    #   @return [Types::RootDirectory]
    # @!attribute tags
    #   <p>The tags associated with the access point.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute name
    #   <p>The name of the access point.</p>
    #   @return [String]
    class GetAccessPointResponse < Struct.new(
      nil,
      :access_point_arn,
      :access_point_id,
      :client_token,
      :file_system_id,
      :status,
      :owner_id,
      :posix_user,
      :root_directory,
      :tags,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System whose resource policy to retrieve.</p>
    #   @return [String]
    class GetFileSystemPolicyRequest < Struct.new(
      nil,
      :file_system_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID of the file system.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON-formatted resource policy for the file system.</p>
    #   @return [String]
    class GetFileSystemPolicyResponse < Struct.new(
      nil,
      :file_system_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to retrieve information for.</p>
    #   @return [String]
    class GetFileSystemRequest < Struct.new(
      nil,
      :file_system_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The time when the file system was created.</p>
    #   @return [Time]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the file system.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix in the S3 bucket that the file system provides access to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token used for idempotency when the file system was created.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key used for encryption.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the file system.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the file system status.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for S3 access.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the file system owner.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the file system.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute name
    #   <p>The name of the file system.</p>
    #   @return [String]
    class GetFileSystemResponse < Struct.new(
      nil,
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
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:prefix] = '' unless options.key?(:prefix)
        super
      end
    end

    # @!attribute mount_target_id
    #   <p>The ID of the mount target to retrieve information for.</p>
    #   @return [String]
    class GetMountTargetRequest < Struct.new(
      nil,
      :mount_target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute availability_zone_id
    #   <p>The Availability Zone ID where the mount target is located.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the mount target owner.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>The ID of the mount target.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet where the mount target is located.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>The IPv4 address of the mount target.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address of the mount target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface associated with the mount target.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC where the mount target is located.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The security groups associated with the mount target.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the mount target.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the mount target status.</p>
    #   @return [String]
    class GetMountTargetResponse < Struct.new(
      nil,
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
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to retrieve the synchronization configuration for.</p>
    #   @return [String]
    class GetSynchronizationConfigurationRequest < Struct.new(
      nil,
      :file_system_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute latest_version_number
    #   <p>The version number of the synchronization configuration. Use this value with <code>PutSynchronizationConfiguration</code> to ensure optimistic concurrency control.</p>
    #   @return [Integer]
    # @!attribute import_data_rules
    #   <p>An array of import data rules that control how data is imported from S3 into the file system.</p>
    #   @return [Array<Types::ImportDataRule>]
    # @!attribute expiration_data_rules
    #   <p>An array of expiration data rules that control when cached data expires from the file system.</p>
    #   @return [Array<Types::ExpirationDataRule>]
    class GetSynchronizationConfigurationResponse < Struct.new(
      nil,
      :latest_version_number,
      :import_data_rules,
      :expiration_data_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a rule that controls how data is imported from S3 into the file system.</p>
    # @!attribute prefix
    #   <p>The S3 key prefix that scopes this import rule. Only objects with keys beginning with this prefix are subject to the rule.</p>
    #   @return [String]
    # @!attribute trigger
    #   <p>The event that triggers data import. Valid values are <code>ON_DIRECTORY_FIRST_ACCESS</code> (import when a directory is first accessed) and <code>ON_FILE_ACCESS</code> (import when a file is accessed).</p>
    #   @return [String]
    # @!attribute size_less_than
    #   <p>The upper size limit in bytes for this import rule. Only objects with a size strictly less than this value will have data imported into the file system.</p>
    #   @return [Integer]
    class ImportDataRule < Struct.new(
      nil,
      :prefix,
      :trigger,
      :size_less_than,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an S3 File System Access Point returned in list operations.</p>
    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the access point.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   <p>The ID of the access point.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the S3 File System.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the access point.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the access point owner.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The POSIX identity configured for this access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>The root directory configuration for this access point.</p>
    #   @return [Types::RootDirectory]
    # @!attribute name
    #   <p>The name of the access point.</p>
    #   @return [String]
    class ListAccessPointsDescription < Struct.new(
      nil,
      :access_point_arn,
      :access_point_id,
      :file_system_id,
      :status,
      :owner_id,
      :posix_user,
      :root_directory,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to list access points for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of access points to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to continue listing access points.</p>
    #   @return [String]
    class ListAccessPointsRequest < Struct.new(
      nil,
      :file_system_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to use in a subsequent request if more results are available.</p>
    #   @return [String]
    # @!attribute access_points
    #   <p>An array of access point descriptions.</p>
    #   @return [Array<Types::ListAccessPointsDescription>]
    class ListAccessPointsResponse < Struct.new(
      nil,
      :next_token,
      :access_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an S3 File System returned in list operations.</p>
    # @!attribute creation_time
    #   <p>The time when the file system was created.</p>
    #   @return [Time]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the file system.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the file system.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the file system.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the file system status.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for S3 access.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the file system owner.</p>
    #   @return [String]
    class ListFileSystemsDescription < Struct.new(
      nil,
      :creation_time,
      :file_system_arn,
      :file_system_id,
      :name,
      :bucket,
      :status,
      :status_message,
      :role_arn,
      :owner_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Optional filter to list only file systems associated with the specified S3 bucket Amazon Resource Name (ARN). If provided, only file systems that provide access to this bucket will be returned in the response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of file systems to return in a single response. If not specified, up to 100 file systems are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to continue listing file systems.</p>
    #   @return [String]
    class ListFileSystemsRequest < Struct.new(
      nil,
      :bucket,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to use in a subsequent request if more results are available.</p>
    #   @return [String]
    # @!attribute file_systems
    #   <p>An array of file system descriptions.</p>
    #   @return [Array<Types::ListFileSystemsDescription>]
    class ListFileSystemsResponse < Struct.new(
      nil,
      :next_token,
      :file_systems,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a mount target returned in list operations.</p>
    # @!attribute availability_zone_id
    #   <p>The Availability Zone ID where the mount target is located.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the S3 File System.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>The IPv4 address of the mount target.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address of the mount target.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the mount target.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the mount target status.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>The ID of the mount target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface associated with the mount target.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the mount target owner.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet where the mount target is located.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC where the mount target is located.</p>
    #   @return [String]
    class ListMountTargetsDescription < Struct.new(
      nil,
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
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Optional filter to list only mount targets associated with the specified S3 File System ID or Amazon Resource Name (ARN). If provided, only mount targets for this file system will be returned in the response.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   <p>Optional filter to list only mount targets associated with the specified access point ID or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of mount targets to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to continue listing mount targets.</p>
    #   @return [String]
    class ListMountTargetsRequest < Struct.new(
      nil,
      :file_system_id,
      :access_point_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to use in a subsequent request if more results are available.</p>
    #   @return [String]
    # @!attribute mount_targets
    #   <p>An array of mount target descriptions.</p>
    #   @return [Array<Types::ListMountTargetsDescription>]
    class ListMountTargetsResponse < Struct.new(
      nil,
      :next_token,
      :mount_targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID or Amazon Resource Name (ARN) of the resource to list tags for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tags to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to continue listing tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>A pagination token to use in a subsequent request if more results are available.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the POSIX identity with uid, gid, and secondary group IDs for user enforcement.</p>
    # @!attribute uid
    #   <p>The POSIX user ID.</p>
    #   @return [Integer]
    # @!attribute gid
    #   <p>The POSIX group ID.</p>
    #   @return [Integer]
    # @!attribute secondary_gids
    #   <p>An array of secondary POSIX group IDs.</p>
    #   @return [Array<Integer>]
    class PosixUser < Struct.new(
      nil,
      :uid,
      :gid,
      :secondary_gids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to apply the resource policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON-formatted resource policy to apply to the file system. The policy defines the permissions for accessing the file system. The policy must be a valid JSON document that follows IAM policy syntax.</p>
    #   @return [String]
    class PutFileSystemPolicyRequest < Struct.new(
      nil,
      :file_system_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutFileSystemPolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID or Amazon Resource Name (ARN) of the S3 File System to configure synchronization for.</p>
    #   @return [String]
    # @!attribute latest_version_number
    #   <p>The version number of the current synchronization configuration. Omit this value when creating a synchronization configuration for the first time. For subsequent updates, provide this value for optimistic concurrency control. If the version number does not match the current configuration, the request fails with a <code>ConflictException</code>.</p>
    #   @return [Integer]
    # @!attribute import_data_rules
    #   <p>An array of import data rules that control how data is imported from S3 into the file system.</p>
    #   @return [Array<Types::ImportDataRule>]
    # @!attribute expiration_data_rules
    #   <p>An array of expiration data rules that control when cached data expires from the file system.</p>
    #   @return [Array<Types::ExpirationDataRule>]
    class PutSynchronizationConfigurationRequest < Struct.new(
      nil,
      :file_system_id,
      :latest_version_number,
      :import_data_rules,
      :expiration_data_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutSynchronizationConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found. Verify that the resource exists and that you have permission to access it.</p>
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the root directory path and optional creation permissions for newly created directories.</p>
    # @!attribute path
    #   <p>The path to use as the root directory for the access point.</p>
    #   @return [String]
    # @!attribute creation_permissions
    #   <p>The permissions to set on newly created directories.</p>
    #   @return [Types::CreationPermissions]
    class RootDirectory < Struct.new(
      nil,
      :path,
      :creation_permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota. Review your service quotas and either delete resources or request a quota increase.</p>
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair for resource tagging.</p>
    # @!attribute key
    #   <p>The tag key. The key can't start with <code>aws:</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID or Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs to add as tags to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled. Retry your request using exponential backoff.</p>
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID or Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>An array of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_id,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mount_target_id
    #   <p>The ID of the mount target to update.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>An array of VPC security group IDs to associate with the mount target's network interface. This replaces the existing security groups. All security groups must belong to the same VPC as the mount target's subnet.</p>
    #   @return [Array<String>]
    class UpdateMountTargetRequest < Struct.new(
      nil,
      :mount_target_id,
      :security_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute availability_zone_id
    #   <p>The Availability Zone ID where the mount target is located.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the mount target owner.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>The ID of the mount target.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the S3 File System.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet where the mount target is located.</p>
    #   @return [String]
    # @!attribute ipv4_address
    #   <p>The IPv4 address of the mount target.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address of the mount target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface associated with the mount target.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC where the mount target is located.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The security groups associated with the mount target.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the mount target.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the mount target status.</p>
    #   @return [String]
    class UpdateMountTargetResponse < Struct.new(
      nil,
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
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters are not valid. Check the parameter values and try again.</p>
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
