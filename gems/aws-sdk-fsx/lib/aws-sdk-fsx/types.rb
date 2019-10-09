# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FSx
  module Types

    # The Microsoft AD attributes of the Amazon FSx for Windows File Server
    # file system.
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name of the self-managed AD directory.
    #   @return [String]
    #
    # @!attribute [rw] active_directory_id
    #   The ID of the AWS Managed Microsoft Active Directory instance to
    #   which the file system is joined.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ActiveDirectoryBackupAttributes AWS API Documentation
    #
    class ActiveDirectoryBackupAttributes < Struct.new(
      :domain_name,
      :active_directory_id)
      include Aws::Structure
    end

    # An Active Directory error.
    #
    # @!attribute [rw] active_directory_id
    #   The directory ID of the directory that an error pertains to.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of Active Directory error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ActiveDirectoryError AWS API Documentation
    #
    class ActiveDirectoryError < Struct.new(
      :active_directory_id,
      :type,
      :message)
      include Aws::Structure
    end

    # A backup of an Amazon FSx for Windows File Server file system. You can
    # create a new file system from a backup to protect against data loss.
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle status of the backup.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Details explaining any failures that occur when creating a backup.
    #   @return [Types::BackupFailureDetails]
    #
    # @!attribute [rw] type
    #   The type of the backup.
    #   @return [String]
    #
    # @!attribute [rw] progress_percent
    #   The current percent of progress of an asynchronous task.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time when a particular backup was created.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the AWS Key Management Service (AWS KMS) key used to
    #   encrypt this backup's data.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the backup resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with a particular file system.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_system
    #   Metadata of the file system associated with the backup. This
    #   metadata is persisted even if the file system is deleted.
    #   @return [Types::FileSystem]
    #
    # @!attribute [rw] directory_information
    #   The configuration of the self-managed Microsoft Active Directory
    #   (AD) to which the Windows File Server instance is joined.
    #   @return [Types::ActiveDirectoryBackupAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/Backup AWS API Documentation
    #
    class Backup < Struct.new(
      :backup_id,
      :lifecycle,
      :failure_details,
      :type,
      :progress_percent,
      :creation_time,
      :kms_key_id,
      :resource_arn,
      :tags,
      :file_system,
      :directory_information)
      include Aws::Structure
    end

    # If backup creation fails, this structure contains the details of that
    # failure.
    #
    # @!attribute [rw] message
    #   A message describing the backup creation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/BackupFailureDetails AWS API Documentation
    #
    class BackupFailureDetails < Struct.new(
      :message)
      include Aws::Structure
    end

    # Another backup is already under way. Wait for completion before
    # initiating additional backups of this file system.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/BackupInProgress AWS API Documentation
    #
    class BackupInProgress < Struct.new(
      :message)
      include Aws::Structure
    end

    # No Amazon FSx backups were found based upon the supplied parameters.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/BackupNotFound AWS API Documentation
    #
    class BackupNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # You can't delete a backup while it's being used to restore a file
    # system.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of a file system being restored from the backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/BackupRestoring AWS API Documentation
    #
    class BackupRestoring < Struct.new(
      :message,
      :file_system_id)
      include Aws::Structure
    end

    # A generic error indicating a failure with a client request.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/BadRequest AWS API Documentation
    #
    class BadRequest < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request object for the `CreateBackup` operation.
    #
    # @note When making an API call, you may pass CreateBackupRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system to back up.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent creation. This string is automatically
    #   filled on your behalf when you use the AWS Command Line Interface
    #   (AWS CLI) or an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the backup at backup creation. The key value of
    #   the `Name` tag appears in the console as the backup name.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateBackupRequest AWS API Documentation
    #
    class CreateBackupRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :tags)
      include Aws::Structure
    end

    # The response object for the `CreateBackup` operation.
    #
    # @!attribute [rw] backup
    #   A description of the backup.
    #   @return [Types::Backup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateBackupResponse AWS API Documentation
    #
    class CreateBackupResponse < Struct.new(
      :backup)
      include Aws::Structure
    end

    # The request object for the `CreateFileSystemFromBackup` operation.
    #
    # @note When making an API call, you may pass CreateFileSystemFromBackupRequest
    #   data as a hash:
    #
    #       {
    #         backup_id: "BackupId", # required
    #         client_request_token: "ClientRequestToken",
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         windows_configuration: {
    #           active_directory_id: "DirectoryId",
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName", # required
    #             password: "DirectoryPassword", # required
    #             dns_ips: ["IpAddress"], # required
    #           },
    #           throughput_capacity: 1, # required
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #         },
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup. Specifies the backup to use if you're
    #   creating a file system from an existing backup.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent creation. This string is automatically
    #   filled on your behalf when you use the AWS Command Line Interface
    #   (AWS CLI) or an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of IDs for the subnets that the file system will be
    #   accessible from. Currently, you can specify only one subnet. The
    #   file server is also launched in that subnet's Availability Zone.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of IDs for the security groups that apply to the specified
    #   network interfaces created for file system access. These security
    #   groups apply to all network interfaces. This value isn't returned
    #   in later describe requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be applied to the file system at file system creation.
    #   The key value of the `Name` tag appears in the console as the file
    #   system name.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] windows_configuration
    #   The configuration for this Microsoft Windows file system.
    #   @return [Types::CreateFileSystemWindowsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemFromBackupRequest AWS API Documentation
    #
    class CreateFileSystemFromBackupRequest < Struct.new(
      :backup_id,
      :client_request_token,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :windows_configuration)
      include Aws::Structure
    end

    # The response object for the `CreateFileSystemFromBackup` operation.
    #
    # @!attribute [rw] file_system
    #   A description of the file system.
    #   @return [Types::FileSystem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemFromBackupResponse AWS API Documentation
    #
    class CreateFileSystemFromBackupResponse < Struct.new(
      :file_system)
      include Aws::Structure
    end

    # The Lustre configuration for the file system being created. This value
    # is required if `FileSystemType` is set to `LUSTRE`.
    #
    # @note When making an API call, you may pass CreateFileSystemLustreConfiguration
    #   data as a hash:
    #
    #       {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         import_path: "ArchivePath",
    #         export_path: "ArchivePath",
    #         imported_file_chunk_size: 1,
    #       }
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred time to perform weekly maintenance, in the UTC time
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] import_path
    #   (Optional) The path to the Amazon S3 bucket (including the optional
    #   prefix) that you're using as the data repository for your Amazon
    #   FSx for Lustre file system. The root of your FSx for Lustre file
    #   system will be mapped to the root of the Amazon S3 bucket you
    #   select. An example is `s3://import-bucket/optional-prefix`. If you
    #   specify a prefix after the Amazon S3 bucket name, only object keys
    #   with that prefix are loaded into the file system.
    #   @return [String]
    #
    # @!attribute [rw] export_path
    #   (Optional) The path in Amazon S3 where the root of your Amazon FSx
    #   file system is exported. The path must use the same Amazon S3 bucket
    #   as specified in ImportPath. You can provide an optional prefix to
    #   which new and changed data is to be exported from your Amazon FSx
    #   for Lustre file system. If an `ExportPath` value is not provided,
    #   Amazon FSx sets a default export path,
    #   `s3://import-bucket/FSxLustre[creation-timestamp]`. The timestamp is
    #   in UTC format, for example
    #   `s3://import-bucket/FSxLustre20181105T222312Z`.
    #
    #   The Amazon S3 export bucket must be the same as the import bucket
    #   specified by `ImportPath`. If you only specify a bucket name, such
    #   as `s3://import-bucket`, you get a 1:1 mapping of file system
    #   objects to S3 bucket objects. This mapping means that the input data
    #   in S3 is overwritten on export. If you provide a custom prefix in
    #   the export path, such as
    #   `s3://import-bucket/[custom-optional-prefix]`, Amazon FSx exports
    #   the contents of your file system to that export prefix in the Amazon
    #   S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] imported_file_chunk_size
    #   (Optional) For files imported from a data repository, this value
    #   determines the stripe count and maximum amount of data per file (in
    #   MiB) stored on a single physical disk. The maximum number of disks
    #   that a single file can be striped across is limited by the total
    #   number of disks that make up the file system.
    #
    #   The chunk size default is 1,024 MiB (1 GiB) and can go as high as
    #   512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5
    #   TB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemLustreConfiguration AWS API Documentation
    #
    class CreateFileSystemLustreConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :import_path,
      :export_path,
      :imported_file_chunk_size)
      include Aws::Structure
    end

    # The request object used to create a new Amazon FSx file system.
    #
    # @note When making an API call, you may pass CreateFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         file_system_type: "WINDOWS", # required, accepts WINDOWS, LUSTRE
    #         storage_capacity: 1, # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         kms_key_id: "KmsKeyId",
    #         windows_configuration: {
    #           active_directory_id: "DirectoryId",
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName", # required
    #             password: "DirectoryPassword", # required
    #             dns_ips: ["IpAddress"], # required
    #           },
    #           throughput_capacity: 1, # required
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           import_path: "ArchivePath",
    #           export_path: "ArchivePath",
    #           imported_file_chunk_size: 1,
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent creation. This string is automatically
    #   filled on your behalf when you use the AWS Command Line Interface
    #   (AWS CLI) or an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   The type of Amazon FSx file system to create.
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   The storage capacity of the file system being created.
    #
    #   For Windows file systems, the storage capacity has a minimum of 300
    #   GiB, and a maximum of 65,536 GiB.
    #
    #   For Lustre file systems, the storage capacity has a minimum of 3,600
    #   GiB. Storage capacity is provisioned in increments of 3,600 GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets that the file system will be accessible from.
    #   File systems support only one subnet. The file server is also
    #   launched in that subnet's Availability Zone.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of IDs specifying the security groups to apply to all network
    #   interfaces created for file system access. This list isn't returned
    #   in later requests to describe the file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the file system being created. The key value of
    #   the `Name` tag appears in the console as the file system name.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of your AWS Key Management Service (AWS KMS) key. This ID is
    #   used to encrypt the data in your file system at rest. For more
    #   information, see [Encrypt][1] in the *AWS Key Management Service API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #   @return [String]
    #
    # @!attribute [rw] windows_configuration
    #   The Microsoft Windows configuration for the file system being
    #   created. This value is required if `FileSystemType` is set to
    #   `WINDOWS`.
    #   @return [Types::CreateFileSystemWindowsConfiguration]
    #
    # @!attribute [rw] lustre_configuration
    #   The Lustre configuration for the file system being created. This
    #   value is required if `FileSystemType` is set to `LUSTRE`.
    #   @return [Types::CreateFileSystemLustreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemRequest AWS API Documentation
    #
    class CreateFileSystemRequest < Struct.new(
      :client_request_token,
      :file_system_type,
      :storage_capacity,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :kms_key_id,
      :windows_configuration,
      :lustre_configuration)
      include Aws::Structure
    end

    # The response object returned after the file system is created.
    #
    # @!attribute [rw] file_system
    #   The configuration of the file system that was created.
    #   @return [Types::FileSystem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemResponse AWS API Documentation
    #
    class CreateFileSystemResponse < Struct.new(
      :file_system)
      include Aws::Structure
    end

    # The configuration object for the Microsoft Windows file system used in
    # `CreateFileSystem` and `CreateFileSystemFromBackup` operations.
    #
    # @note When making an API call, you may pass CreateFileSystemWindowsConfiguration
    #   data as a hash:
    #
    #       {
    #         active_directory_id: "DirectoryId",
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName", # required
    #           password: "DirectoryPassword", # required
    #           dns_ips: ["IpAddress"], # required
    #         },
    #         throughput_capacity: 1, # required
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #       }
    #
    # @!attribute [rw] active_directory_id
    #   The ID for an existing AWS Managed Microsoft Active Directory (AD)
    #   instance that the file system should join when it's created.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration that Amazon FSx uses to join the Windows File
    #   Server instance to your self-managed (including on-premises)
    #   Microsoft Active Directory (AD) directory.
    #   @return [Types::SelfManagedActiveDirectoryConfiguration]
    #
    # @!attribute [rw] throughput_capacity
    #   The throughput of an Amazon FSx file system, measured in megabytes
    #   per second, in 2 to the *n*th increments, between 2^3 (8) and 2^11
    #   (2048).
    #   @return [Integer]
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred start time to perform weekly maintenance, formatted
    #   d:HH:MM in the UTC time zone.
    #   @return [String]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   The preferred time to take daily automatic backups, formatted HH:MM
    #   in the UTC time zone.
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. The default is to
    #   retain backups for 7 days. Setting this value to 0 disables the
    #   creation of automatic backups. The maximum retention period for
    #   backups is 35 days.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_tags_to_backups
    #   A boolean flag indicating whether tags for the file system should be
    #   copied to backups. This value defaults to false. If it's set to
    #   true, all tags for the file system are copied to all automatic and
    #   user-initiated backups where the user doesn't specify tags. If this
    #   value is true, and you specify one or more tags, only the specified
    #   tags are copied to backups.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemWindowsConfiguration AWS API Documentation
    #
    class CreateFileSystemWindowsConfiguration < Struct.new(
      :active_directory_id,
      :self_managed_active_directory_configuration,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups)
      include Aws::Structure
    end

    # The data repository configuration object for Lustre file systems
    # returned in the response of the `CreateFileSystem` operation.
    #
    # @!attribute [rw] import_path
    #   The import path to the Amazon S3 bucket (and optional prefix) that
    #   you're using as the data repository for your FSx for Lustre file
    #   system, for example `s3://import-bucket/optional-prefix`. If a
    #   prefix is specified after the Amazon S3 bucket name, only object
    #   keys with that prefix are loaded into the file system.
    #   @return [String]
    #
    # @!attribute [rw] export_path
    #   The export path to the Amazon S3 bucket (and prefix) that you are
    #   using to store new and changed Lustre file system files in S3.
    #   @return [String]
    #
    # @!attribute [rw] imported_file_chunk_size
    #   For files imported from a data repository, this value determines the
    #   stripe count and maximum amount of data per file (in MiB) stored on
    #   a single physical disk. The maximum number of disks that a single
    #   file can be striped across is limited by the total number of disks
    #   that make up the file system.
    #
    #   The default chunk size is 1,024 MiB (1 GiB) and can go as high as
    #   512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5
    #   TB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryConfiguration AWS API Documentation
    #
    class DataRepositoryConfiguration < Struct.new(
      :import_path,
      :export_path,
      :imported_file_chunk_size)
      include Aws::Structure
    end

    # The request object for `DeleteBackup` operation.
    #
    # @note When making an API call, you may pass DeleteBackupRequest
    #   data as a hash:
    #
    #       {
    #         backup_id: "BackupId", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent deletion. This is automatically filled on
    #   your behalf when using the AWS CLI or SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteBackupRequest AWS API Documentation
    #
    class DeleteBackupRequest < Struct.new(
      :backup_id,
      :client_request_token)
      include Aws::Structure
    end

    # The response object for `DeleteBackup` operation.
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup deleted.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle of the backup. Should be `DELETED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteBackupResponse AWS API Documentation
    #
    class DeleteBackupResponse < Struct.new(
      :backup_id,
      :lifecycle)
      include Aws::Structure
    end

    # The request object for `DeleteFileSystem` operation.
    #
    # @note When making an API call, you may pass DeleteFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         client_request_token: "ClientRequestToken",
    #         windows_configuration: {
    #           skip_final_backup: false,
    #           final_backup_tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent deletion. This is automatically filled on
    #   your behalf when using the AWS CLI or SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] windows_configuration
    #   The configuration object for the Microsoft Windows file system used
    #   in the `DeleteFileSystem` operation.
    #   @return [Types::DeleteFileSystemWindowsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemRequest AWS API Documentation
    #
    class DeleteFileSystemRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :windows_configuration)
      include Aws::Structure
    end

    # The response object for the `DeleteFileSystem` operation.
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system being deleted.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The file system lifecycle for the deletion request. Should be
    #   `DELETING`.
    #   @return [String]
    #
    # @!attribute [rw] windows_response
    #   The response object for the Microsoft Windows file system used in
    #   the `DeleteFileSystem` operation.
    #   @return [Types::DeleteFileSystemWindowsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemResponse AWS API Documentation
    #
    class DeleteFileSystemResponse < Struct.new(
      :file_system_id,
      :lifecycle,
      :windows_response)
      include Aws::Structure
    end

    # The configuration object for the Microsoft Windows file system used in
    # the `DeleteFileSystem` operation.
    #
    # @note When making an API call, you may pass DeleteFileSystemWindowsConfiguration
    #   data as a hash:
    #
    #       {
    #         skip_final_backup: false,
    #         final_backup_tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] skip_final_backup
    #   By default, Amazon FSx for Windows takes a final backup on your
    #   behalf when the `DeleteFileSystem` operation is invoked. Doing this
    #   helps protect you from data loss, and we highly recommend taking the
    #   final backup. If you want to skip this backup, use this flag to do
    #   so.
    #   @return [Boolean]
    #
    # @!attribute [rw] final_backup_tags
    #   A set of tags for your final backup.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemWindowsConfiguration AWS API Documentation
    #
    class DeleteFileSystemWindowsConfiguration < Struct.new(
      :skip_final_backup,
      :final_backup_tags)
      include Aws::Structure
    end

    # The response object for the Microsoft Windows file system used in the
    # `DeleteFileSystem` operation.
    #
    # @!attribute [rw] final_backup_id
    #   The ID of the final backup for this file system.
    #   @return [String]
    #
    # @!attribute [rw] final_backup_tags
    #   The set of tags applied to the final backup.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemWindowsResponse AWS API Documentation
    #
    class DeleteFileSystemWindowsResponse < Struct.new(
      :final_backup_id,
      :final_backup_tags)
      include Aws::Structure
    end

    # The request object for `DescribeBackups` operation.
    #
    # @note When making an API call, you may pass DescribeBackupsRequest
    #   data as a hash:
    #
    #       {
    #         backup_ids: ["BackupId"],
    #         filters: [
    #           {
    #             name: "file-system-id", # accepts file-system-id, backup-type
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] backup_ids
    #   (Optional) IDs of the backups you want to retrieve (String). This
    #   overrides any filters. If any IDs are not found, BackupNotFound will
    #   be thrown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   (Optional) Filters structure. Supported names are file-system-id and
    #   backup-type.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   (Optional) Maximum number of backups to return in the response
    #   (integer). This parameter value must be greater than 0. The number
    #   of items that Amazon FSx returns is the minimum of the `MaxResults`
    #   parameter specified in the request and the service's internal
    #   maximum number of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeBackups` operation (String). If a token present, the action
    #   continues the list from where the returning call left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeBackupsRequest AWS API Documentation
    #
    class DescribeBackupsRequest < Struct.new(
      :backup_ids,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Response object for `DescribeBackups` operation.
    #
    # @!attribute [rw] backups
    #   Any array of backups.
    #   @return [Array<Types::Backup>]
    #
    # @!attribute [rw] next_token
    #   This is present if there are more backups than returned in the
    #   response (String). You can use the `NextToken` value in the later
    #   request to fetch the backups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeBackupsResponse AWS API Documentation
    #
    class DescribeBackupsResponse < Struct.new(
      :backups,
      :next_token)
      include Aws::Structure
    end

    # The request object for `DescribeFileSystems` operation.
    #
    # @note When making an API call, you may pass DescribeFileSystemsRequest
    #   data as a hash:
    #
    #       {
    #         file_system_ids: ["FileSystemId"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] file_system_ids
    #   (Optional) IDs of the file systems whose descriptions you want to
    #   retrieve (String).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   (Optional) Maximum number of file systems to return in the response
    #   (integer). This parameter value must be greater than 0. The number
    #   of items that Amazon FSx returns is the minimum of the `MaxResults`
    #   parameter specified in the request and the service's internal
    #   maximum number of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   `DescribeFileSystems` operation (String). If a token present, the
    #   action continues the list from where the returning call left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystemsRequest AWS API Documentation
    #
    class DescribeFileSystemsRequest < Struct.new(
      :file_system_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # The response object for `DescribeFileSystems` operation.
    #
    # @!attribute [rw] file_systems
    #   An array of file system descriptions.
    #   @return [Array<Types::FileSystem>]
    #
    # @!attribute [rw] next_token
    #   Present if there are more file systems than returned in the response
    #   (String). You can use the `NextToken` value in the later request to
    #   fetch the descriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystemsResponse AWS API Documentation
    #
    class DescribeFileSystemsResponse < Struct.new(
      :file_systems,
      :next_token)
      include Aws::Structure
    end

    # A description of a specific Amazon FSx file system.
    #
    # @!attribute [rw] owner_id
    #   The AWS account that created the file system. If the file system was
    #   created by an AWS Identity and Access Management (IAM) user, the AWS
    #   account to which the IAM user belongs is the owner.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the file system was created, in seconds (since
    #   1970-01-01T00:00:00Z), also known as Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] file_system_id
    #   The system-generated, unique 17-digit ID of the file system.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   The type of Amazon FSx file system, either `LUSTRE` or `WINDOWS`.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle status of the file system:
    #
    #   * `AVAILABLE` indicates that the file system is reachable and
    #     available for use.
    #
    #   * `CREATING` indicates that Amazon FSx is in the process of creating
    #     the new file system.
    #
    #   * `DELETING` indicates that Amazon FSx is in the process of deleting
    #     the file system.
    #
    #   * `FAILED` indicates that Amazon FSx was not able to create the file
    #     system.
    #
    #   * `MISCONFIGURED` indicates that the file system is in a failed but
    #     recoverable state.
    #
    #   * `UPDATING` indicates that the file system is undergoing a customer
    #     initiated update.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   A structure providing details of any failures that occur when
    #   creating the file system has failed.
    #   @return [Types::FileSystemFailureDetails]
    #
    # @!attribute [rw] storage_capacity
    #   The storage capacity of the file system in gigabytes (GB).
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the primary VPC for the file system.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The ID of the subnet to contain the endpoint for the file system.
    #   One and only one is supported. The file system is launched in the
    #   Availability Zone associated with this subnet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_ids
    #   The IDs of the elastic network interface from which a specific file
    #   system is accessible. The elastic network interface is automatically
    #   created in the same VPC that the Amazon FSx file system was created
    #   in. For more information, see [Elastic Network Interfaces][1] in the
    #   *Amazon EC2 User Guide.*
    #
    #   For an Amazon FSx for Windows File Server file system, you can have
    #   one network interface ID. For an Amazon FSx for Lustre file system,
    #   you can have more than one.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_name
    #   The DNS name for the file system.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the AWS Key Management Service (AWS KMS) key used to
    #   encrypt the file system's data for an Amazon FSx for Windows File
    #   Server file system.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the file system resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the file system. For more information,
    #   see [Tagging Your Amazon EC2 Resources][1] in the *Amazon EC2 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] windows_configuration
    #   The configuration for this Microsoft Windows file system.
    #   @return [Types::WindowsFileSystemConfiguration]
    #
    # @!attribute [rw] lustre_configuration
    #   The configuration for the Amazon FSx for Lustre file system.
    #   @return [Types::LustreFileSystemConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/FileSystem AWS API Documentation
    #
    class FileSystem < Struct.new(
      :owner_id,
      :creation_time,
      :file_system_id,
      :file_system_type,
      :lifecycle,
      :failure_details,
      :storage_capacity,
      :vpc_id,
      :subnet_ids,
      :network_interface_ids,
      :dns_name,
      :kms_key_id,
      :resource_arn,
      :tags,
      :windows_configuration,
      :lustre_configuration)
      include Aws::Structure
    end

    # A structure providing details of any failures that occur when creating
    # the file system has failed.
    #
    # @!attribute [rw] message
    #   A message describing any failures that occurred during file system
    #   creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/FileSystemFailureDetails AWS API Documentation
    #
    class FileSystemFailureDetails < Struct.new(
      :message)
      include Aws::Structure
    end

    # No Amazon FSx file systems were found based upon supplied parameters.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/FileSystemNotFound AWS API Documentation
    #
    class FileSystemNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # A filter used to restrict the results of describe calls. You can use
    # multiple filters to return results that meet all applied filter
    # requirements.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "file-system-id", # accepts file-system-id, backup-type
    #         values: ["FilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name for this filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the filter. These are all the values for any of the
    #   applied filters.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # The error returned when a second request is received with the same
    # client request token but different parameters settings. A client
    # request token should always uniquely identify a single request.
    #
    # @!attribute [rw] parameter
    #   A parameter that is incompatible with the earlier request.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/IncompatibleParameterError AWS API Documentation
    #
    class IncompatibleParameterError < Struct.new(
      :parameter,
      :message)
      include Aws::Structure
    end

    # A generic error indicating a server-side failure.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      include Aws::Structure
    end

    # The path provided for data repository export isn't valid.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidExportPath AWS API Documentation
    #
    class InvalidExportPath < Struct.new(
      :message)
      include Aws::Structure
    end

    # The path provided for data repository import isn't valid.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidImportPath AWS API Documentation
    #
    class InvalidImportPath < Struct.new(
      :message)
      include Aws::Structure
    end

    # One or more network settings specified in the request are invalid.
    # `InvalidVpcId` means that the ID passed for the virtual private cloud
    # (VPC) is invalid. `InvalidSubnetIds` returns the list of IDs for
    # subnets that are either invalid or not part of the VPC specified.
    # `InvalidSecurityGroupIds` returns the list of IDs for security groups
    # that are either invalid or not part of the VPC specified.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @!attribute [rw] invalid_subnet_id
    #   The ID for a subnet. A *subnet* is a range of IP addresses in your
    #   virtual private cloud (VPC). For more information, see [VPC and
    #   Subnets][1] in the *Amazon VPC User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html
    #   @return [String]
    #
    # @!attribute [rw] invalid_security_group_id
    #   The ID of your Amazon EC2 security group. This ID is used to control
    #   network access to the endpoint that Amazon FSx creates on your
    #   behalf in each subnet. For more information, see [Amazon EC2
    #   Security Groups for Linux Instances][1] in the *Amazon EC2 User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidNetworkSettings AWS API Documentation
    #
    class InvalidNetworkSettings < Struct.new(
      :message,
      :invalid_subnet_id,
      :invalid_security_group_id)
      include Aws::Structure
    end

    # The request object for `ListTagsForResource` operation.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Amazon FSx resource that will have its tags listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) Maximum number of tags to return in the response
    #   (integer). This parameter value must be greater than 0. The number
    #   of items that Amazon FSx returns is the minimum of the `MaxResults`
    #   parameter specified in the request and the service's internal
    #   maximum number of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   `ListTagsForResource` operation (String). If a token present, the
    #   action continues the list from where the returning call left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # The response object for `ListTagsForResource` operation.
    #
    # @!attribute [rw] tags
    #   A list of tags on the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   This is present if there are more tags than returned in the response
    #   (String). You can use the `NextToken` value in the later request to
    #   fetch the tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # The configuration for the Amazon FSx for Lustre file system.
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The UTC time that you want to begin your weekly maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] data_repository_configuration
    #   The data repository configuration object for Lustre file systems
    #   returned in the response of the `CreateFileSystem` operation.
    #   @return [Types::DataRepositoryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/LustreFileSystemConfiguration AWS API Documentation
    #
    class LustreFileSystemConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :data_repository_configuration)
      include Aws::Structure
    end

    # File system configuration is required for this operation.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/MissingFileSystemConfiguration AWS API Documentation
    #
    class MissingFileSystemConfiguration < Struct.new(
      :message)
      include Aws::Structure
    end

    # The resource specified for the tagging operation is not a resource
    # type owned by Amazon FSx. Use the API of the relevant service to
    # perform the operation.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the non-Amazon FSx resource.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/NotServiceResourceError AWS API Documentation
    #
    class NotServiceResourceError < Struct.new(
      :resource_arn,
      :message)
      include Aws::Structure
    end

    # The resource specified does not support tagging.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that doesn't support
    #   tagging.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ResourceDoesNotSupportTagging AWS API Documentation
    #
    class ResourceDoesNotSupportTagging < Struct.new(
      :resource_arn,
      :message)
      include Aws::Structure
    end

    # The resource specified by the Amazon Resource Name (ARN) can't be
    # found.
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN of the resource that can't be found.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ResourceNotFound AWS API Documentation
    #
    class ResourceNotFound < Struct.new(
      :resource_arn,
      :message)
      include Aws::Structure
    end

    # The configuration of the self-managed Microsoft Active Directory (AD)
    # directory to which the Windows File Server instance is joined.
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name of the self-managed AD directory.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The fully qualified distinguished name of the organizational unit
    #   within the self-managed AD directory to which the Windows File
    #   Server instance is joined.
    #   @return [String]
    #
    # @!attribute [rw] file_system_administrators_group
    #   The name of the domain group whose members have administrative
    #   privileges for the FSx file system.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name for the service account on your self-managed AD domain
    #   that FSx uses to join to your AD domain.
    #   @return [String]
    #
    # @!attribute [rw] dns_ips
    #   A list of up to two IP addresses of DNS servers or domain
    #   controllers in the self-managed AD directory.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SelfManagedActiveDirectoryAttributes AWS API Documentation
    #
    class SelfManagedActiveDirectoryAttributes < Struct.new(
      :domain_name,
      :organizational_unit_distinguished_name,
      :file_system_administrators_group,
      :user_name,
      :dns_ips)
      include Aws::Structure
    end

    # The configuration that Amazon FSx uses to join the Windows File Server
    # instance to your self-managed (including on-premises) Microsoft Active
    # Directory (AD) directory.
    #
    # @note When making an API call, you may pass SelfManagedActiveDirectoryConfiguration
    #   data as a hash:
    #
    #       {
    #         domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #         user_name: "DirectoryUserName", # required
    #         password: "DirectoryPassword", # required
    #         dns_ips: ["IpAddress"], # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name of the self-managed AD directory,
    #   such as `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   (Optional) The fully qualified distinguished name of the
    #   organizational unit within your self-managed AD directory that the
    #   Windows File Server instance will join. Amazon FSx only accepts OU
    #   as the direct parent of the file system. An example is
    #   `OU=FSx,DC=yourdomain,DC=corp,DC=com`. To learn more, see [RFC
    #   2253][1]. If none is provided, the FSx file system is created in the
    #   default location of your self-managed AD directory.
    #
    #   Only Organizational Unit (OU) objects can be the direct parent of
    #   the file system that you're creating.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc2253
    #   @return [String]
    #
    # @!attribute [rw] file_system_administrators_group
    #   (Optional) The name of the domain group whose members are granted
    #   administrative privileges for the file system. Administrative
    #   privileges include taking ownership of files and folders, and
    #   setting audit controls (audit ACLs) on files and folders. The group
    #   that you specify must already exist in your domain. If you don't
    #   provide one, your AD domain's Domain Admins group is used.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name for the service account on your self-managed AD domain
    #   that Amazon FSx will use to join to your AD domain. This account
    #   must have the permission to join computers to the domain in the
    #   organizational unit provided in
    #   `OrganizationalUnitDistinguishedName`, or in the default location of
    #   your AD domain.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the service account on your self-managed AD domain
    #   that Amazon FSx will use to join to your AD domain.
    #   @return [String]
    #
    # @!attribute [rw] dns_ips
    #   A list of up to two IP addresses of DNS servers or domain
    #   controllers in the self-managed AD directory. The IP addresses need
    #   to be either in the same VPC CIDR range as the one in which your
    #   Amazon FSx file system is being created, or in the private IP
    #   version 4 (Iv4) address ranges, as specified in [RFC 1918][1]\:
    #
    #   * 10\.0.0.0 - 10.255.255.255 (10/8 prefix)
    #
    #   * 172\.16.0.0 - 172.31.255.255 (172.16/12 prefix)
    #
    #   * 192\.168.0.0 - 192.168.255.255 (192.168/16 prefix)
    #
    #
    #
    #   [1]: http://www.faqs.org/rfcs/rfc1918.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SelfManagedActiveDirectoryConfiguration AWS API Documentation
    #
    class SelfManagedActiveDirectoryConfiguration < Struct.new(
      :domain_name,
      :organizational_unit_distinguished_name,
      :file_system_administrators_group,
      :user_name,
      :password,
      :dns_ips)
      include Aws::Structure
    end

    # The configuration that Amazon FSx uses to join the Windows File Server
    # instance to the self-managed Microsoft Active Directory (AD)
    # directory.
    #
    # @note When making an API call, you may pass SelfManagedActiveDirectoryConfigurationUpdates
    #   data as a hash:
    #
    #       {
    #         user_name: "DirectoryUserName",
    #         password: "DirectoryPassword",
    #         dns_ips: ["IpAddress"],
    #       }
    #
    # @!attribute [rw] user_name
    #   The user name for the service account on your self-managed AD domain
    #   that Amazon FSx will use to join to your AD domain. This account
    #   must have the permission to join computers to the domain in the
    #   organizational unit provided in
    #   `OrganizationalUnitDistinguishedName`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the service account on your self-managed AD domain
    #   that Amazon FSx will use to join to your AD domain.
    #   @return [String]
    #
    # @!attribute [rw] dns_ips
    #   A list of up to two IP addresses of DNS servers or domain
    #   controllers in the self-managed AD directory.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SelfManagedActiveDirectoryConfigurationUpdates AWS API Documentation
    #
    class SelfManagedActiveDirectoryConfigurationUpdates < Struct.new(
      :user_name,
      :password,
      :dns_ips)
      include Aws::Structure
    end

    # An error indicating that a particular service limit was exceeded. You
    # can increase some service limits by contacting AWS Support.
    #
    # @!attribute [rw] limit
    #   Enumeration of the service limit that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ServiceLimitExceeded AWS API Documentation
    #
    class ServiceLimitExceeded < Struct.new(
      :limit,
      :message)
      include Aws::Structure
    end

    # Specifies a key-value pair for a resource tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   A value that specifies the `TagKey`, the name of the tag. Tag keys
    #   must be unique for the resource to which they are attached.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value that specifies the `TagValue`, the value assigned to the
    #   corresponding tag key. Tag values can be null and don't have to be
    #   unique in a tag set. For example, you can have a key-value pair in a
    #   tag set of `finances : April` and also of `payroll : April`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The request object for the `TagResource` operation.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon FSx resource that you
    #   want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags for the resource. If a tag with a given key already
    #   exists, the value is replaced by the one specified in this
    #   parameter.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # The response object for the `TagResource` operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # An error occured.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UnsupportedOperation AWS API Documentation
    #
    class UnsupportedOperation < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request object for `UntagResource` action.
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Amazon FSx resource to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys of tags on the resource to untag. In case the tag key
    #   doesn't exist, the call will still succeed to be idempotent.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # The response object for `UntagResource` action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The configuration object for Amazon FSx for Lustre file systems used
    # in the `UpdateFileSystem` operation.
    #
    # @note When making an API call, you may pass UpdateFileSystemLustreConfiguration
    #   data as a hash:
    #
    #       {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #       }
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred time to perform weekly maintenance, in the UTC time
    #   zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemLustreConfiguration AWS API Documentation
    #
    class UpdateFileSystemLustreConfiguration < Struct.new(
      :weekly_maintenance_start_time)
      include Aws::Structure
    end

    # The request object for the `UpdateFileSystem` operation.
    #
    # @note When making an API call, you may pass UpdateFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId", # required
    #         client_request_token: "ClientRequestToken",
    #         windows_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           self_managed_active_directory_configuration: {
    #             user_name: "DirectoryUserName",
    #             password: "DirectoryPassword",
    #             dns_ips: ["IpAddress"],
    #           },
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #         },
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent updates. This string is automatically
    #   filled on your behalf when you use the AWS Command Line Interface
    #   (AWS CLI) or an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] windows_configuration
    #   The configuration update for this Microsoft Windows file system. The
    #   only supported options are for backup and maintenance and for
    #   self-managed Active Directory configuration.
    #   @return [Types::UpdateFileSystemWindowsConfiguration]
    #
    # @!attribute [rw] lustre_configuration
    #   The configuration object for Amazon FSx for Lustre file systems used
    #   in the `UpdateFileSystem` operation.
    #   @return [Types::UpdateFileSystemLustreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemRequest AWS API Documentation
    #
    class UpdateFileSystemRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :windows_configuration,
      :lustre_configuration)
      include Aws::Structure
    end

    # The response object for the `UpdateFileSystem` operation.
    #
    # @!attribute [rw] file_system
    #   A description of the file system that was updated.
    #   @return [Types::FileSystem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemResponse AWS API Documentation
    #
    class UpdateFileSystemResponse < Struct.new(
      :file_system)
      include Aws::Structure
    end

    # Updates the Microsoft Windows configuration for an existing Amazon FSx
    # for Windows File Server file system. Amazon FSx overwrites existing
    # properties with non-null values provided in the request. If you don't
    # specify a non-null value for a property, that property is not updated.
    #
    # @note When making an API call, you may pass UpdateFileSystemWindowsConfiguration
    #   data as a hash:
    #
    #       {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         self_managed_active_directory_configuration: {
    #           user_name: "DirectoryUserName",
    #           password: "DirectoryPassword",
    #           dns_ips: ["IpAddress"],
    #         },
    #       }
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred time to perform weekly maintenance, in the UTC time
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   The preferred time to take daily automatic backups, in the UTC time
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 35 days.
    #   @return [Integer]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration Amazon FSx uses to join the Windows File Server
    #   instance to the self-managed Microsoft AD directory.
    #   @return [Types::SelfManagedActiveDirectoryConfigurationUpdates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemWindowsConfiguration AWS API Documentation
    #
    class UpdateFileSystemWindowsConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :self_managed_active_directory_configuration)
      include Aws::Structure
    end

    # The configuration for this Microsoft Windows file system.
    #
    # @!attribute [rw] active_directory_id
    #   The ID for an existing Microsoft Active Directory instance that the
    #   file system should join when it's created.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration of the self-managed Microsoft Active Directory
    #   (AD) directory to which the Windows File Server instance is joined.
    #   @return [Types::SelfManagedActiveDirectoryAttributes]
    #
    # @!attribute [rw] throughput_capacity
    #   The throughput of an Amazon FSx file system, measured in megabytes
    #   per second.
    #   @return [Integer]
    #
    # @!attribute [rw] maintenance_operations_in_progress
    #   The list of maintenance operations in progress for this file system.
    #   @return [Array<String>]
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred time to perform weekly maintenance, in the UTC time
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   The preferred time to take daily automatic backups, in the UTC time
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 35 days.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_tags_to_backups
    #   A boolean flag indicating whether tags on the file system should be
    #   copied to backups. This value defaults to false. If it's set to
    #   true, all tags on the file system are copied to all automatic
    #   backups and any user-initiated backups where the user doesn't
    #   specify any tags. If this value is true, and you specify one or more
    #   tags, only the specified tags are copied to backups.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/WindowsFileSystemConfiguration AWS API Documentation
    #
    class WindowsFileSystemConfiguration < Struct.new(
      :active_directory_id,
      :self_managed_active_directory_configuration,
      :throughput_capacity,
      :maintenance_operations_in_progress,
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups)
      include Aws::Structure
    end

  end
end
