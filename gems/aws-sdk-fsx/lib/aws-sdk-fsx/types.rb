# frozen_string_literal: true

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a specific Amazon FSx Administrative Action for the current
    # Windows file system.
    #
    # @!attribute [rw] administrative_action_type
    #   Describes the type of administrative action, as follows:
    #
    #   * `FILE_SYSTEM_UPDATE` - A file system update administrative action
    #     initiated by the user from the Amazon FSx console, API
    #     (UpdateFileSystem), or CLI (update-file-system). A
    #
    #   * `STORAGE_OPTIMIZATION` - Once the `FILE_SYSTEM_UPDATE` task to
    #     increase a file system's storage capacity completes successfully,
    #     a `STORAGE_OPTIMIZATION` task starts. Storage optimization is the
    #     process of migrating the file system data to the new, larger
    #     disks. You can track the storage migration progress using the
    #     `ProgressPercent` property. When `STORAGE_OPTIMIZATION` completes
    #     successfully, the parent `FILE_SYSTEM_UPDATE` action status
    #     changes to `COMPLETED`. For more information, see [Managing
    #     Storage Capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   @return [String]
    #
    # @!attribute [rw] progress_percent
    #   Provides the percent complete of a `STORAGE_OPTIMIZATION`
    #   administrative action.
    #   @return [Integer]
    #
    # @!attribute [rw] request_time
    #   Time that the administrative action request was received.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Describes the status of the administrative action, as follows:
    #
    #   * `FAILED` - Amazon FSx failed to process the administrative action
    #     successfully.
    #
    #   * `IN_PROGRESS` - Amazon FSx is processing the administrative
    #     action.
    #
    #   * `PENDING` - Amazon FSx is waiting to process the administrative
    #     action.
    #
    #   * `COMPLETED` - Amazon FSx has finished processing the
    #     administrative task.
    #
    #   * `UPDATED_OPTIMIZING` - For a storage capacity increase update,
    #     Amazon FSx has updated the file system with the new storage
    #     capacity, and is now performing the storage optimization process.
    #     For more information, see [Managing Storage Capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   @return [String]
    #
    # @!attribute [rw] target_file_system_values
    #   Describes the target `StorageCapacity` or `ThroughputCapacity` value
    #   provided in the `UpdateFileSystem` operation. Returned for
    #   `FILE_SYSTEM_UPDATE` administrative actions.
    #   @return [Types::FileSystem]
    #
    # @!attribute [rw] failure_details
    #   Provides information about a failed administrative action.
    #   @return [Types::AdministrativeActionFailureDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AdministrativeAction AWS API Documentation
    #
    class AdministrativeAction < Struct.new(
      :administrative_action_type,
      :progress_percent,
      :request_time,
      :status,
      :target_file_system_values,
      :failure_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a failed administrative action.
    #
    # @!attribute [rw] message
    #   Error message providing details about the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AdministrativeActionFailureDetails AWS API Documentation
    #
    class AdministrativeActionFailureDetails < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A backup of an Amazon FSx for file system.
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle status of the backup.
    #
    #   * `AVAILABLE` - The backup is fully available.
    #
    #   * `CREATING` - FSx is creating the backup.
    #
    #   * `TRANSFERRING` - For Lustre file systems only; FSx is transferring
    #     the backup to S3.
    #
    #   * `DELETED` - The backup was deleted is no longer available.
    #
    #   * `FAILED` - Amazon FSx could not complete the backup.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Details explaining any failures that occur when creating a backup.
    #   @return [Types::BackupFailureDetails]
    #
    # @!attribute [rw] type
    #   The type of the file system backup.
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
    #   encrypt the backup of the Amazon FSx file system's data at rest.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Cancels a data repository task.
    #
    # @note When making an API call, you may pass CancelDataRepositoryTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "TaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   Specifies the data repository task to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CancelDataRepositoryTaskRequest AWS API Documentation
    #
    class CancelDataRepositoryTaskRequest < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle
    #   The lifecycle status of the data repository task, as follows:
    #
    #   * `PENDING` - Amazon FSx has not started the task.
    #
    #   * `EXECUTING` - Amazon FSx is processing the task.
    #
    #   * `FAILED` - Amazon FSx was not able to complete the task. For
    #     example, there may be files the task failed to process. The
    #     DataRepositoryTaskFailureDetails property provides more
    #     information about task failures.
    #
    #   * `SUCCEEDED` - FSx completed the task successfully.
    #
    #   * `CANCELED` - Amazon FSx canceled the task and it did not complete.
    #
    #   * `CANCELING` - FSx is in process of canceling the task.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the task being canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CancelDataRepositoryTaskResponse AWS API Documentation
    #
    class CancelDataRepositoryTaskResponse < Struct.new(
      :lifecycle,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a report detailing the data repository task results of the
    # files processed that match the criteria specified in the report
    # `Scope` parameter. FSx delivers the report to the file system's
    # linked data repository in Amazon S3, using the path specified in the
    # report `Path` parameter. You can specify whether or not a report gets
    # generated for a task using the `Enabled` parameter.
    #
    # @note When making an API call, you may pass CompletionReport
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         path: "ArchivePath",
    #         format: "REPORT_CSV_20191124", # accepts REPORT_CSV_20191124
    #         scope: "FAILED_FILES_ONLY", # accepts FAILED_FILES_ONLY
    #       }
    #
    # @!attribute [rw] enabled
    #   Set `Enabled` to `True` to generate a `CompletionReport` when the
    #   task completes. If set to `true`, then you need to provide a report
    #   `Scope`, `Path`, and `Format`. Set `Enabled` to `False` if you do
    #   not want a `CompletionReport` generated when the task completes.
    #   @return [Boolean]
    #
    # @!attribute [rw] path
    #   Required if `Enabled` is set to `true`. Specifies the location of
    #   the report on the file system's linked S3 data repository. An
    #   absolute path that defines where the completion report will be
    #   stored in the destination location. The `Path` you provide must be
    #   located within the file system’s ExportPath. An example `Path` value
    #   is "s3://myBucket/myExportPath/optionalPrefix". The report
    #   provides the following information for each file in the report:
    #   FilePath, FileStatus, and ErrorCode. To learn more about a file
    #   system's `ExportPath`, see .
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Required if `Enabled` is set to `true`. Specifies the format of the
    #   `CompletionReport`. `REPORT_CSV_20191124` is the only format
    #   currently supported. When `Format` is set to `REPORT_CSV_20191124`,
    #   the `CompletionReport` is provided in CSV format, and is delivered
    #   to `\{path\}/task-\{id\}/failures.csv`.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Required if `Enabled` is set to `true`. Specifies the scope of the
    #   `CompletionReport`; `FAILED_FILES_ONLY` is the only scope currently
    #   supported. When `Scope` is set to `FAILED_FILES_ONLY`, the
    #   `CompletionReport` only contains information about files that the
    #   data repository task failed to process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CompletionReport AWS API Documentation
    #
    class CompletionReport < Struct.new(
      :enabled,
      :path,
      :format,
      :scope)
      SENSITIVE = []
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
    #             key: "TagKey", # required
    #             value: "TagValue", # required
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
    #   (Optional) The tags to apply to the backup at backup creation. The
    #   key value of the `Name` tag appears in the console as the backup
    #   name. If you have set `CopyTagsToBackups` to true, and you specify
    #   one or more tags using the `CreateBackup` action, no existing file
    #   system tags are copied from the file system to the backup.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateBackupRequest AWS API Documentation
    #
    class CreateBackupRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDataRepositoryTaskRequest
    #   data as a hash:
    #
    #       {
    #         type: "EXPORT_TO_REPOSITORY", # required, accepts EXPORT_TO_REPOSITORY
    #         paths: ["DataRepositoryTaskPath"],
    #         file_system_id: "FileSystemId", # required
    #         report: { # required
    #           enabled: false, # required
    #           path: "ArchivePath",
    #           format: "REPORT_CSV_20191124", # accepts REPORT_CSV_20191124
    #           scope: "FAILED_FILES_ONLY", # accepts FAILED_FILES_ONLY
    #         },
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type
    #   Specifies the type of data repository task to create.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   (Optional) The path or paths on the Amazon FSx file system to use
    #   when the data repository task is processed. The default path is the
    #   file system root directory. The paths you provide need to be
    #   relative to the mount point of the file system. If the mount point
    #   is `/mnt/fsx` and `/mnt/fsx/path1` is a directory or file on the
    #   file system you want to export, then the path to provide is `path1`.
    #   If a path that you provide isn't valid, the task fails.
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #   @return [String]
    #
    # @!attribute [rw] report
    #   Defines whether or not Amazon FSx provides a CompletionReport once
    #   the task has completed. A CompletionReport provides a detailed
    #   report on the files that Amazon FSx processed that meet the criteria
    #   specified by the `Scope` parameter. For more information, see
    #   [Working with Task Completion Reports][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html
    #   @return [Types::CompletionReport]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the AWS Command Line Interface (AWS CLI) or
    #   an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateDataRepositoryTaskRequest AWS API Documentation
    #
    class CreateDataRepositoryTaskRequest < Struct.new(
      :type,
      :paths,
      :file_system_id,
      :report,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_repository_task
    #   The description of the data repository task that you just created.
    #   @return [Types::DataRepositoryTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateDataRepositoryTaskResponse AWS API Documentation
    #
    class CreateDataRepositoryTaskResponse < Struct.new(
      :data_repository_task)
      SENSITIVE = []
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
    #             key: "TagKey", # required
    #             value: "TagValue", # required
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
    #           deployment_type: "MULTI_AZ_1", # accepts MULTI_AZ_1, SINGLE_AZ_1, SINGLE_AZ_2
    #           preferred_subnet_id: "SubnetId",
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
    #           deployment_type: "SCRATCH_1", # accepts SCRATCH_1, SCRATCH_2, PERSISTENT_1
    #           auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED
    #           per_unit_storage_throughput: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           drive_cache_type: "NONE", # accepts NONE, READ
    #         },
    #         storage_type: "SSD", # accepts SSD, HDD
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup. Specifies the backup to use if you're
    #   creating a file system from an existing backup.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent creation. This string is automatically filled on your
    #   behalf when you use the AWS Command Line Interface (AWS CLI) or an
    #   AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the IDs of the subnets that the file system will be
    #   accessible from. For Windows `MULTI_AZ_1` file system deployment
    #   types, provide exactly two subnet IDs, one for the preferred file
    #   server and one for the standby file server. You specify one of these
    #   subnets as the preferred subnet using the `WindowsConfiguration >
    #   PreferredSubnetID` property.
    #
    #   For Windows `SINGLE_AZ_1` and `SINGLE_AZ_2` deployment types and
    #   Lustre file systems, provide exactly one subnet ID. The file server
    #   is launched in that subnet's Availability Zone.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of IDs for the security groups that apply to the specified
    #   network interfaces created for file system access. These security
    #   groups apply to all network interfaces. This value isn't returned
    #   in later DescribeFileSystem requests.
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
    # @!attribute [rw] lustre_configuration
    #   The Lustre configuration for the file system being created.
    #   @return [Types::CreateFileSystemLustreConfiguration]
    #
    # @!attribute [rw] storage_type
    #   Sets the storage type for the Windows file system you're creating
    #   from a backup. Valid values are `SSD` and `HDD`.
    #
    #   * Set to `SSD` to use solid state drive storage. Supported on all
    #     Windows deployment types.
    #
    #   * Set to `HDD` to use hard disk drive storage. Supported on
    #     `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment
    #     types.
    #
    #   Default value is `SSD`.
    #
    #   <note markdown="1"> HDD and SSD storage types have different minimum storage capacity
    #   requirements. A restored file system's storage capacity is tied to
    #   the file system that was backed up. You can create a file system
    #   that uses HDD storage from a backup of a file system that used SSD
    #   storage only if the original SSD file system had a storage capacity
    #   of at least 2000 GiB.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemFromBackupRequest AWS API Documentation
    #
    class CreateFileSystemFromBackupRequest < Struct.new(
      :backup_id,
      :client_request_token,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :windows_configuration,
      :lustre_configuration,
      :storage_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lustre configuration for the file system being created.
    #
    # @note When making an API call, you may pass CreateFileSystemLustreConfiguration
    #   data as a hash:
    #
    #       {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         import_path: "ArchivePath",
    #         export_path: "ArchivePath",
    #         imported_file_chunk_size: 1,
    #         deployment_type: "SCRATCH_1", # accepts SCRATCH_1, SCRATCH_2, PERSISTENT_1
    #         auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED
    #         per_unit_storage_throughput: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         copy_tags_to_backups: false,
    #         drive_cache_type: "NONE", # accepts NONE, READ
    #       }
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   (Optional) The preferred start time to perform weekly maintenance,
    #   formatted d:HH:MM in the UTC time zone, where d is the weekday
    #   number, from 1 through 7, beginning with Monday and ending with
    #   Sunday.
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
    #   The default chunk size is 1,024 MiB (1 GiB) and can go as high as
    #   512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5
    #   TB.
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_type
    #   Choose `SCRATCH_1` and `SCRATCH_2` deployment types when you need
    #   temporary storage and shorter-term processing of data. The
    #   `SCRATCH_2` deployment type provides in-transit encryption of data
    #   and higher burst throughput capacity than `SCRATCH_1`.
    #
    #   Choose `PERSISTENT_1` deployment type for longer-term storage and
    #   workloads and encryption of data in transit. To learn more about
    #   deployment types, see [ FSx for Lustre Deployment Options][1].
    #
    #   Encryption of data in-transit is automatically enabled when you
    #   access a `SCRATCH_2` or `PERSISTENT_1` file system from Amazon EC2
    #   instances that [support this feature][2]. (Default = `SCRATCH_1`)
    #
    #   Encryption of data in-transit for `SCRATCH_2` and `PERSISTENT_1`
    #   deployment types is supported when accessed from supported instance
    #   types in supported AWS Regions. To learn more, [Encrypting Data in
    #   Transit][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/data- protection.html
    #   [3]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/encryption-in-transit-fsxl.html
    #   @return [String]
    #
    # @!attribute [rw] auto_import_policy
    #   (Optional) When you create your file system, your existing S3
    #   objects appear as file and directory listings. Use this property to
    #   choose how Amazon FSx keeps your file and directory listings up to
    #   date as you add or modify objects in your linked S3 bucket.
    #   `AutoImportPolicy` can have the following values:
    #
    #   * `NONE` - (Default) AutoImport is off. Amazon FSx only updates file
    #     and directory listings from the linked S3 bucket when the file
    #     system is created. FSx does not update file and directory listings
    #     for any new or changed objects after choosing this option.
    #
    #   * `NEW` - AutoImport is on. Amazon FSx automatically imports
    #     directory listings of any new objects added to the linked S3
    #     bucket that do not currently exist in the FSx file system.
    #
    #   * `NEW_CHANGED` - AutoImport is on. Amazon FSx automatically imports
    #     file and directory listings of any new objects added to the S3
    #     bucket and any existing objects that are changed in the S3 bucket
    #     after you choose this option.
    #
    #   For more information, see [Automatically import updates from your S3
    #   bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html
    #   @return [String]
    #
    # @!attribute [rw] per_unit_storage_throughput
    #   Required for the `PERSISTENT_1` deployment type, describes the
    #   amount of read and write throughput for each 1 tebibyte of storage,
    #   in MB/s/TiB. File system throughput capacity is calculated by
    #   multiplying ﬁle system storage capacity (TiB) by the
    #   PerUnitStorageThroughput (MB/s/TiB). For a 2.4 TiB ﬁle system,
    #   provisioning 50 MB/s/TiB of PerUnitStorageThroughput yields 120 MB/s
    #   of ﬁle system throughput. You pay for the amount of throughput that
    #   you provision.
    #
    #   Valid values for SSD storage: 50, 100, 200. Valid values for HDD
    #   storage: 12, 40.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   A recurring daily time, in the format `HH:MM`. `HH` is the
    #   zero-padded hour of the day (0-23), and `MM` is the zero-padded
    #   minute of the hour. For example, `05:00` specifies 5 AM daily.
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 90 days. The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_tags_to_backups
    #   (Optional) Not available to use with file systems that are linked to
    #   a data repository. A boolean flag indicating whether tags for the
    #   file system should be copied to backups. The default value is false.
    #   If it's set to true, all file system tags are copied to all
    #   automatic and user-initiated backups when the user doesn't specify
    #   any backup-specific tags. If this value is true, and you specify one
    #   or more backup tags, only the specified tags are copied to backups.
    #   If you specify one or more tags when creating a user-initiated
    #   backup, no tags are copied from the file system, regardless of this
    #   value.
    #
    #   For more information, see [Working with backups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html
    #   @return [Boolean]
    #
    # @!attribute [rw] drive_cache_type
    #   The type of drive cache used by PERSISTENT\_1 file systems that are
    #   provisioned with HDD storage devices. This parameter is required
    #   when storage type is HDD. Set to `READ`, improve the performance for
    #   frequently accessed files and allows 20% of the total storage
    #   capacity of the file system to be cached.
    #
    #   This parameter is required when `StorageType` is set to HDD.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemLustreConfiguration AWS API Documentation
    #
    class CreateFileSystemLustreConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :import_path,
      :export_path,
      :imported_file_chunk_size,
      :deployment_type,
      :auto_import_policy,
      :per_unit_storage_throughput,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups,
      :drive_cache_type)
      SENSITIVE = []
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
    #         storage_type: "SSD", # accepts SSD, HDD
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
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
    #           deployment_type: "MULTI_AZ_1", # accepts MULTI_AZ_1, SINGLE_AZ_1, SINGLE_AZ_2
    #           preferred_subnet_id: "SubnetId",
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
    #           deployment_type: "SCRATCH_1", # accepts SCRATCH_1, SCRATCH_2, PERSISTENT_1
    #           auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED
    #           per_unit_storage_throughput: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           copy_tags_to_backups: false,
    #           drive_cache_type: "NONE", # accepts NONE, READ
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent creation. This string is automatically filled on your
    #   behalf when you use the AWS Command Line Interface (AWS CLI) or an
    #   AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   The type of Amazon FSx file system to create, either `WINDOWS` or
    #   `LUSTRE`.
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   Sets the storage capacity of the file system that you're creating.
    #
    #   For Lustre file systems:
    #
    #   * For `SCRATCH_2` and `PERSISTENT_1 SSD` deployment types, valid
    #     values are 1200 GiB, 2400 GiB, and increments of 2400 GiB.
    #
    #   * For `PERSISTENT HDD` file systems, valid values are increments of
    #     6000 GiB for 12 MB/s/TiB file systems and increments of 1800 GiB
    #     for 40 MB/s/TiB file systems.
    #
    #   * For `SCRATCH_1` deployment type, valid values are 1200 GiB, 2400
    #     GiB, and increments of 3600 GiB.
    #
    #   For Windows file systems:
    #
    #   * If `StorageType=SSD`, valid values are 32 GiB - 65,536 GiB (64
    #     TiB).
    #
    #   * If `StorageType=HDD`, valid values are 2000 GiB - 65,536 GiB (64
    #     TiB).
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   Sets the storage type for the file system you're creating. Valid
    #   values are `SSD` and `HDD`.
    #
    #   * Set to `SSD` to use solid state drive storage. SSD is supported on
    #     all Windows and Lustre deployment types.
    #
    #   * Set to `HDD` to use hard disk drive storage. HDD is supported on
    #     `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment
    #     types, and on `PERSISTENT` Lustre file system deployment types.
    #
    #   Default value is `SSD`. For more information, see [ Storage Type
    #   Options][1] in the *Amazon FSx for Windows User Guide* and [Multiple
    #   Storage Options][2] in the *Amazon FSx for Lustre User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options
    #   [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the IDs of the subnets that the file system will be
    #   accessible from. For Windows `MULTI_AZ_1` file system deployment
    #   types, provide exactly two subnet IDs, one for the preferred file
    #   server and one for the standby file server. You specify one of these
    #   subnets as the preferred subnet using the `WindowsConfiguration >
    #   PreferredSubnetID` property.
    #
    #   For Windows `SINGLE_AZ_1` and `SINGLE_AZ_2` file system deployment
    #   types and Lustre file systems, provide exactly one subnet ID. The
    #   file server is launched in that subnet's Availability Zone.
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
    #   The ID of the AWS Key Management Service (AWS KMS) key used to
    #   encrypt the file system's data for Amazon FSx for Windows File
    #   Server file systems and Amazon FSx for Lustre `PERSISTENT_1` file
    #   systems at rest. In either case, if not specified, the Amazon FSx
    #   managed key is used. The Amazon FSx for Lustre `SCRATCH_1` and
    #   `SCRATCH_2` file systems are always encrypted at rest using Amazon
    #   FSx managed keys. For more information, see [Encrypt][1] in the *AWS
    #   Key Management Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #   @return [String]
    #
    # @!attribute [rw] windows_configuration
    #   The Microsoft Windows configuration for the file system being
    #   created.
    #   @return [Types::CreateFileSystemWindowsConfiguration]
    #
    # @!attribute [rw] lustre_configuration
    #   The Lustre configuration for the file system being created.
    #   @return [Types::CreateFileSystemLustreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemRequest AWS API Documentation
    #
    class CreateFileSystemRequest < Struct.new(
      :client_request_token,
      :file_system_type,
      :storage_capacity,
      :storage_type,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :kms_key_id,
      :windows_configuration,
      :lustre_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         deployment_type: "MULTI_AZ_1", # accepts MULTI_AZ_1, SINGLE_AZ_1, SINGLE_AZ_2
    #         preferred_subnet_id: "SubnetId",
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
    # @!attribute [rw] deployment_type
    #   Specifies the file system deployment type, valid values are the
    #   following:
    #
    #   * `MULTI_AZ_1` - Deploys a high availability file system that is
    #     configured for Multi-AZ redundancy to tolerate temporary
    #     Availability Zone (AZ) unavailability. You can only deploy a
    #     Multi-AZ file system in AWS Regions that have a minimum of three
    #     Availability Zones. Also supports HDD storage type
    #
    #   * `SINGLE_AZ_1` - (Default) Choose to deploy a file system that is
    #     configured for single AZ redundancy.
    #
    #   * `SINGLE_AZ_2` - The latest generation Single AZ file system.
    #     Specifies a file system that is configured for single AZ
    #     redundancy and supports HDD storage type.
    #
    #   For more information, see [ Availability and Durability: Single-AZ
    #   and Multi-AZ File Systems][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html
    #   @return [String]
    #
    # @!attribute [rw] preferred_subnet_id
    #   Required when `DeploymentType` is set to `MULTI_AZ_1`. This
    #   specifies the subnet in which you want the preferred file server to
    #   be located. For in-AWS applications, we recommend that you launch
    #   your clients in the same Availability Zone (AZ) as your preferred
    #   file server to reduce cross-AZ data transfer costs and minimize
    #   latency.
    #   @return [String]
    #
    # @!attribute [rw] throughput_capacity
    #   The throughput of an Amazon FSx file system, measured in megabytes
    #   per second, in 2 to the *n*th increments, between 2^3 (8) and 2^11
    #   (2048).
    #   @return [Integer]
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred start time to perform weekly maintenance, formatted
    #   d:HH:MM in the UTC time zone, where d is the weekday number, from 1
    #   through 7, beginning with Monday and ending with Sunday.
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
    #   backups is 90 days.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_tags_to_backups
    #   A boolean flag indicating whether tags for the file system should be
    #   copied to backups. This value defaults to false. If it's set to
    #   true, all tags for the file system are copied to all automatic and
    #   user-initiated backups where the user doesn't specify tags. If this
    #   value is true, and you specify one or more tags, only the specified
    #   tags are copied to backups. If you specify one or more tags when
    #   creating a user-initiated backup, no tags are copied from the file
    #   system, regardless of this value.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemWindowsConfiguration AWS API Documentation
    #
    class CreateFileSystemWindowsConfiguration < Struct.new(
      :active_directory_id,
      :self_managed_active_directory_configuration,
      :deployment_type,
      :preferred_subnet_id,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data repository configuration object for Lustre file systems
    # returned in the response of the `CreateFileSystem` operation.
    #
    # @!attribute [rw] lifecycle
    #   Describes the state of the file system's S3 durable data
    #   repository, if it is configured with an S3 repository. The lifecycle
    #   can have the following values:
    #
    #   * `CREATING` - The data repository configuration between the FSx
    #     file system and the linked S3 data repository is being created.
    #     The data repository is unavailable.
    #
    #   * `AVAILABLE` - The data repository is available for use.
    #
    #   * `MISCONFIGURED` - Amazon FSx cannot automatically import updates
    #     from the S3 bucket until the data repository configuration is
    #     corrected. For more information, see [Troubleshooting a
    #     Misconfigured linked S3 bucket][1].
    #
    #   * `UPDATING` - The data repository is undergoing a customer
    #     initiated update and availability may be impacted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/troubleshooting.html#troubleshooting-misconfigured-data-repository
    #   @return [String]
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
    # @!attribute [rw] auto_import_policy
    #   Describes the file system's linked S3 data repository's
    #   `AutoImportPolicy`. The AutoImportPolicy configures how Amazon FSx
    #   keeps your file and directory listings up to date as you add or
    #   modify objects in your linked S3 bucket. `AutoImportPolicy` can have
    #   the following values:
    #
    #   * `NONE` - (Default) AutoImport is off. Amazon FSx only updates file
    #     and directory listings from the linked S3 bucket when the file
    #     system is created. FSx does not update file and directory listings
    #     for any new or changed objects after choosing this option.
    #
    #   * `NEW` - AutoImport is on. Amazon FSx automatically imports
    #     directory listings of any new objects added to the linked S3
    #     bucket that do not currently exist in the FSx file system.
    #
    #   * `NEW_CHANGED` - AutoImport is on. Amazon FSx automatically imports
    #     file and directory listings of any new objects added to the S3
    #     bucket and any existing objects that are changed in the S3 bucket
    #     after you choose this option.
    #
    #   For more information, see [Automatically import updates from your S3
    #   bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Provides detailed information about the data respository if its
    #   `Lifecycle` is set to `MISCONFIGURED`.
    #   @return [Types::DataRepositoryFailureDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryConfiguration AWS API Documentation
    #
    class DataRepositoryConfiguration < Struct.new(
      :lifecycle,
      :import_path,
      :export_path,
      :imported_file_chunk_size,
      :auto_import_policy,
      :failure_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed information about the data respository if its
    # `Lifecycle` is set to `MISCONFIGURED`.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryFailureDetails AWS API Documentation
    #
    class DataRepositoryFailureDetails < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the data repository task. You use data repository
    # tasks to perform bulk transfer operations between your Amazon FSx file
    # system and its linked data repository.
    #
    # @!attribute [rw] task_id
    #   The system-generated, unique 17-digit ID of the data repository
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle status of the data repository task, as follows:
    #
    #   * `PENDING` - Amazon FSx has not started the task.
    #
    #   * `EXECUTING` - Amazon FSx is processing the task.
    #
    #   * `FAILED` - Amazon FSx was not able to complete the task. For
    #     example, there may be files the task failed to process. The
    #     DataRepositoryTaskFailureDetails property provides more
    #     information about task failures.
    #
    #   * `SUCCEEDED` - FSx completed the task successfully.
    #
    #   * `CANCELED` - Amazon FSx canceled the task and it did not complete.
    #
    #   * `CANCELING` - FSx is in process of canceling the task.
    #
    #   <note markdown="1"> You cannot delete an FSx for Lustre file system if there are data
    #   repository tasks for the file system in the `PENDING` or `EXECUTING`
    #   states. Please retry when the data repository task is finished (with
    #   a status of `CANCELED`, `SUCCEEDED`, or `FAILED`). You can use the
    #   DescribeDataRepositoryTask action to monitor the task status.
    #   Contact the FSx team if you need to delete your file system
    #   immediately.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of data repository task; EXPORT\_TO\_REPOSITORY is the only
    #   type currently supported.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the resource was created, in seconds (since
    #   1970-01-01T00:00:00Z), also known as Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time that Amazon FSx began processing the task.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that Amazon FSx completed processing the task, populated
    #   after the task is complete.
    #   @return [Time]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a given resource. ARNs uniquely
    #   identify AWS resources. We require an ARN when you need to specify a
    #   resource unambiguously across all of AWS. For more information, see
    #   [Amazon Resource Names (ARNs) and AWS Service Namespaces][1] in the
    #   *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #   @return [String]
    #
    # @!attribute [rw] paths
    #   An array of paths on the Amazon FSx for Lustre file system that
    #   specify the data for the data repository task to process. For
    #   example, in an EXPORT\_TO\_REPOSITORY task, the paths specify which
    #   data to export to the linked data repository.
    #
    #   (Default) If `Paths` is not specified, Amazon FSx uses the file
    #   system root directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_details
    #   Failure message describing why the task failed, it is populated only
    #   when `Lifecycle` is set to `FAILED`.
    #   @return [Types::DataRepositoryTaskFailureDetails]
    #
    # @!attribute [rw] status
    #   Provides the status of the number of files that the task has
    #   processed successfully and failed to process.
    #   @return [Types::DataRepositoryTaskStatus]
    #
    # @!attribute [rw] report
    #   Provides a report detailing the data repository task results of the
    #   files processed that match the criteria specified in the report
    #   `Scope` parameter. FSx delivers the report to the file system's
    #   linked data repository in Amazon S3, using the path specified in the
    #   report `Path` parameter. You can specify whether or not a report
    #   gets generated for a task using the `Enabled` parameter.
    #   @return [Types::CompletionReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTask AWS API Documentation
    #
    class DataRepositoryTask < Struct.new(
      :task_id,
      :lifecycle,
      :type,
      :creation_time,
      :start_time,
      :end_time,
      :resource_arn,
      :tags,
      :file_system_id,
      :paths,
      :failure_details,
      :status,
      :report)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data repository task could not be canceled because the task has
    # already ended.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTaskEnded AWS API Documentation
    #
    class DataRepositoryTaskEnded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An existing data repository task is currently executing on the file
    # system. Wait until the existing task has completed, then create the
    # new task.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTaskExecuting AWS API Documentation
    #
    class DataRepositoryTaskExecuting < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about why a data repository task failed. Only
    # populated when the task `Lifecycle` is set to `FAILED`.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTaskFailureDetails AWS API Documentation
    #
    class DataRepositoryTaskFailureDetails < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # (Optional) An array of filter objects you can use to filter the
    # response of data repository tasks you will see in the the response.
    # You can filter the tasks returned in the response by one or more file
    # system IDs, task lifecycles, and by task type. A filter object
    # consists of a filter `Name`, and one or more `Values` for the filter.
    #
    # @note When making an API call, you may pass DataRepositoryTaskFilter
    #   data as a hash:
    #
    #       {
    #         name: "file-system-id", # accepts file-system-id, task-lifecycle
    #         values: ["DataRepositoryTaskFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   Name of the task property to use in filtering the tasks returned in
    #   the response.
    #
    #   * Use `file-system-id` to retrieve data repository tasks for
    #     specific file systems.
    #
    #   * Use `task-lifecycle` to retrieve data repository tasks with one or
    #     more specific lifecycle states, as follows: CANCELED, EXECUTING,
    #     FAILED, PENDING, and SUCCEEDED.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Use Values to include the specific file system IDs and task
    #   lifecycle states for the filters you are using.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTaskFilter AWS API Documentation
    #
    class DataRepositoryTaskFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data repository task or tasks you specified could not be found.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTaskNotFound AWS API Documentation
    #
    class DataRepositoryTaskNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the task status showing a running total of the total number
    # of files to be processed, the number successfully processed, and the
    # number of files the task failed to process.
    #
    # @!attribute [rw] total_count
    #   The total number of files that the task will process. While a task
    #   is executing, the sum of `SucceededCount` plus `FailedCount` may not
    #   equal `TotalCount`. When the task is complete, `TotalCount` equals
    #   the sum of `SucceededCount` plus `FailedCount`.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded_count
    #   A running total of the number of files that the task has
    #   successfully processed.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_count
    #   A running total of the number of files that the task failed to
    #   process.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_time
    #   The time at which the task status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DataRepositoryTaskStatus AWS API Documentation
    #
    class DataRepositoryTaskStatus < Struct.new(
      :total_count,
      :succeeded_count,
      :failed_count,
      :last_updated_time)
      SENSITIVE = []
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
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent deletion. This is automatically filled on your behalf
    #   when using the AWS CLI or SDK.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration object for the Amazon FSx for Lustre file system
    # being deleted in the `DeleteFileSystem` operation.
    #
    # @note When making an API call, you may pass DeleteFileSystemLustreConfiguration
    #   data as a hash:
    #
    #       {
    #         skip_final_backup: false,
    #         final_backup_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] skip_final_backup
    #   Set `SkipFinalBackup` to false if you want to take a final backup of
    #   the file system you are deleting. By default, Amazon FSx will not
    #   take a final backup on your behalf when the `DeleteFileSystem`
    #   operation is invoked. (Default = true)
    #   @return [Boolean]
    #
    # @!attribute [rw] final_backup_tags
    #   Use if `SkipFinalBackup` is set to `false`, and you want to apply an
    #   array of tags to the final backup. If you have set the file system
    #   property `CopyTagsToBackups` to true, and you specify one or more
    #   `FinalBackupTags` when deleting a file system, Amazon FSx will not
    #   copy any existing file system tags to the backup.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemLustreConfiguration AWS API Documentation
    #
    class DeleteFileSystemLustreConfiguration < Struct.new(
      :skip_final_backup,
      :final_backup_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for the Amazon FSx for Lustre file system being
    # deleted in the `DeleteFileSystem` operation.
    #
    # @!attribute [rw] final_backup_id
    #   The ID of the final backup for this file system.
    #   @return [String]
    #
    # @!attribute [rw] final_backup_tags
    #   The set of tags applied to the final backup.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemLustreResponse AWS API Documentation
    #
    class DeleteFileSystemLustreResponse < Struct.new(
      :final_backup_id,
      :final_backup_tags)
      SENSITIVE = []
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
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #         lustre_configuration: {
    #           skip_final_backup: false,
    #           final_backup_tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
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
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent deletion. This is automatically filled on your behalf
    #   when using the AWS CLI or SDK.
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
    # @!attribute [rw] lustre_configuration
    #   The configuration object for the Amazon FSx for Lustre file system
    #   being deleted in the `DeleteFileSystem` operation.
    #   @return [Types::DeleteFileSystemLustreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemRequest AWS API Documentation
    #
    class DeleteFileSystemRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :windows_configuration,
      :lustre_configuration)
      SENSITIVE = []
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
    # @!attribute [rw] lustre_response
    #   The response object for the Amazon FSx for Lustre file system being
    #   deleted in the `DeleteFileSystem` operation.
    #   @return [Types::DeleteFileSystemLustreResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteFileSystemResponse AWS API Documentation
    #
    class DeleteFileSystemResponse < Struct.new(
      :file_system_id,
      :lifecycle,
      :windows_response,
      :lustre_response)
      SENSITIVE = []
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
    #             key: "TagKey", # required
    #             value: "TagValue", # required
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #             name: "file-system-id", # accepts file-system-id, backup-type, file-system-type
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] backup_ids
    #   IDs of the backups you want to retrieve (String). This overrides any
    #   filters. If any IDs are not found, BackupNotFound will be thrown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters structure. Supported names are file-system-id and
    #   backup-type.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of backups to return in the response (integer). This
    #   parameter value must be greater than 0. The number of items that
    #   Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number
    #   of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned from a previous `DescribeBackups`
    #   operation (String). If a token present, the action continues the
    #   list from where the returning call left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeBackupsRequest AWS API Documentation
    #
    class DescribeBackupsRequest < Struct.new(
      :backup_ids,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDataRepositoryTasksRequest
    #   data as a hash:
    #
    #       {
    #         task_ids: ["TaskId"],
    #         filters: [
    #           {
    #             name: "file-system-id", # accepts file-system-id, task-lifecycle
    #             values: ["DataRepositoryTaskFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] task_ids
    #   (Optional) IDs of the tasks whose descriptions you want to retrieve
    #   (String).
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   (Optional) You can use filters to narrow the
    #   `DescribeDataRepositoryTasks` response to include just tasks for
    #   specific file systems, or tasks in a specific lifecycle state.
    #   @return [Array<Types::DataRepositoryTaskFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resources to return in the response. This
    #   value must be an integer greater than zero.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   operation (String). If present, this token indicates from what point
    #   you can continue processing the request, where the previous
    #   `NextToken` value left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeDataRepositoryTasksRequest AWS API Documentation
    #
    class DescribeDataRepositoryTasksRequest < Struct.new(
      :task_ids,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_repository_tasks
    #   The collection of data repository task descriptions returned.
    #   @return [Array<Types::DataRepositoryTask>]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   operation (String). If present, this token indicates from what point
    #   you can continue processing the request, where the previous
    #   `NextToken` value left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeDataRepositoryTasksResponse AWS API Documentation
    #
    class DescribeDataRepositoryTasksResponse < Struct.new(
      :data_repository_tasks,
      :next_token)
      SENSITIVE = []
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
    #   IDs of the file systems whose descriptions you want to retrieve
    #   (String).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of file systems to return in the response (integer).
    #   This parameter value must be greater than 0. The number of items
    #   that Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number
    #   of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned from a previous
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The lifecycle status of the file system, following are the possible
    #   values and what they mean:
    #
    #   * `AVAILABLE` - The file system is in a healthy state, and is
    #     reachable and available for use.
    #
    #   * `CREATING` - Amazon FSx is creating the new file system.
    #
    #   * `DELETING` - Amazon FSx is deleting an existing file system.
    #
    #   * `FAILED` - An existing file system has experienced an
    #     unrecoverable failure. When creating a new file system, Amazon FSx
    #     was unable to create the file system.
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
    # @!attribute [rw] storage_type
    #   The storage type of the file system. Valid values are `SSD` and
    #   `HDD`. If set to `SSD`, the file system uses solid state drive
    #   storage. If set to `HDD`, the file system uses hard disk drive
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the primary VPC for the file system.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Specifies the IDs of the subnets that the file system is accessible
    #   from. For Windows `MULTI_AZ_1` file system deployment type, there
    #   are two subnet IDs, one for the preferred file server and one for
    #   the standby file server. The preferred file server subnet identified
    #   in the `PreferredSubnetID` property. All other file systems have
    #   only one subnet ID.
    #
    #   For Lustre file systems, and Single-AZ Windows file systems, this is
    #   the ID of the subnet that contains the endpoint for the file system.
    #   For `MULTI_AZ_1` Windows file systems, the endpoint for the file
    #   system is available in the `PreferredSubnetID`.
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
    #   encrypt the file system's data for Amazon FSx for Windows File
    #   Server file systems and persistent Amazon FSx for Lustre file
    #   systems at rest. In either case, if not specified, the Amazon FSx
    #   managed key is used. The scratch Amazon FSx for Lustre file systems
    #   are always encrypted at rest using Amazon FSx managed keys. For more
    #   information, see [Encrypt][1] in the *AWS Key Management Service API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
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
    # @!attribute [rw] administrative_actions
    #   A list of administrative actions for the file system that are in
    #   process or waiting to be processed. Administrative actions describe
    #   changes to the Windows file system that you have initiated using the
    #   `UpdateFileSystem` action.
    #   @return [Array<Types::AdministrativeAction>]
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
      :storage_type,
      :vpc_id,
      :subnet_ids,
      :network_interface_ids,
      :dns_name,
      :kms_key_id,
      :resource_arn,
      :tags,
      :windows_configuration,
      :lustre_configuration,
      :administrative_actions)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         name: "file-system-id", # accepts file-system-id, backup-type, file-system-type
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalid value for `PerUnitStorageThroughput` was provided. Please
    # create your file system again, using a valid value.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidPerUnitStorageThroughput AWS API Documentation
    #
    class InvalidPerUnitStorageThroughput < Struct.new(
      :message)
      SENSITIVE = []
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
    #   Maximum number of tags to return in the response (integer). This
    #   parameter value must be greater than 0. The number of items that
    #   Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number
    #   of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned from a previous
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the Amazon FSx for Lustre file system.
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred start time to perform weekly maintenance, formatted
    #   d:HH:MM in the UTC time zone. d is the weekday number, from 1
    #   through 7, beginning with Monday and ending with Sunday.
    #   @return [String]
    #
    # @!attribute [rw] data_repository_configuration
    #   The data repository configuration object for Lustre file systems
    #   returned in the response of the `CreateFileSystem` operation.
    #   @return [Types::DataRepositoryConfiguration]
    #
    # @!attribute [rw] deployment_type
    #   The deployment type of the FSX for Lustre file system. *Scratch
    #   deployment type* is designed for temporary storage and shorter-term
    #   processing of data.
    #
    #   `SCRATCH_1` and `SCRATCH_2` deployment types are best suited for
    #   when you need temporary storage and shorter-term processing of data.
    #   The `SCRATCH_2` deployment type provides in-transit encryption of
    #   data and higher burst throughput capacity than `SCRATCH_1`.
    #
    #   The `PERSISTENT_1` deployment type is used for longer-term storage
    #   and workloads and encryption of data in transit. To learn more about
    #   deployment types, see [ FSx for Lustre Deployment Options][1].
    #   (Default = `SCRATCH_1`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html
    #   @return [String]
    #
    # @!attribute [rw] per_unit_storage_throughput
    #   Per unit storage throughput represents the megabytes per second of
    #   read or write throughput per 1 tebibyte of storage provisioned. File
    #   system throughput capacity is equal to Storage capacity (TiB) *
    #   PerUnitStorageThroughput (MB/s/TiB). This option is only valid for
    #   `PERSISTENT_1` deployment types.
    #
    #   Valid values for SSD storage: 50, 100, 200. Valid values for HDD
    #   storage: 12, 40.
    #   @return [Integer]
    #
    # @!attribute [rw] mount_name
    #   You use the `MountName` value when mounting the file system.
    #
    #   For the `SCRATCH_1` deployment type, this value is always "`fsx`".
    #   For `SCRATCH_2` and `PERSISTENT_1` deployment types, this value is a
    #   string that is unique within an AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   A recurring daily time, in the format `HH:MM`. `HH` is the
    #   zero-padded hour of the day (0-23), and `MM` is the zero-padded
    #   minute of the hour. For example, `05:00` specifies 5 AM daily.
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 90 days. The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_tags_to_backups
    #   A boolean flag indicating whether tags on the file system should be
    #   copied to backups. If it's set to true, all tags on the file system
    #   are copied to all automatic backups and any user-initiated backups
    #   where the user doesn't specify any tags. If this value is true, and
    #   you specify one or more tags, only the specified tags are copied to
    #   backups. If you specify one or more tags when creating a
    #   user-initiated backup, no tags are copied from the file system,
    #   regardless of this value. (Default = false)
    #   @return [Boolean]
    #
    # @!attribute [rw] drive_cache_type
    #   The type of drive cache used by PERSISTENT\_1 file systems that are
    #   provisioned with HDD storage devices. This parameter is required
    #   when storage type is HDD. Set to `READ`, improve the performance for
    #   frequently accessed files and allows 20% of the total storage
    #   capacity of the file system to be cached.
    #
    #   This parameter is required when `StorageType` is set to HDD.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/LustreFileSystemConfiguration AWS API Documentation
    #
    class LustreFileSystemConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :data_repository_configuration,
      :deployment_type,
      :per_unit_storage_throughput,
      :mount_name,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups,
      :drive_cache_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A file system configuration is required for this operation.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/MissingFileSystemConfiguration AWS API Documentation
    #
    class MissingFileSystemConfiguration < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   privileges include taking ownership of files and folders, setting
    #   audit controls (audit ACLs) on files and folders, and administering
    #   the file system remotely by using the FSx Remote PowerShell. The
    #   group that you specify must already exist in your domain. If you
    #   don't provide one, your AD domain's Domain Admins group is used.
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
    #   version 4 (IPv4) address ranges, as specified in [RFC 1918][1]\:
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
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # The configuration that Amazon FSx uses to join the Windows File Server
    # instance to a self-managed Microsoft Active Directory (AD) directory.
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
      SENSITIVE = [:password]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a key-value pair for a resource tag.
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
      SENSITIVE = []
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
    #             key: "TagKey", # required
    #             value: "TagValue", # required
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for the `TagResource` operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The requested operation is not supported for this resource or API.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UnsupportedOperation AWS API Documentation
    #
    class UnsupportedOperation < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED
    #       }
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   (Optional) The preferred start time to perform weekly maintenance,
    #   formatted d:HH:MM in the UTC time zone. d is the weekday number,
    #   from 1 through 7, beginning with Monday and ending with Sunday.
    #   @return [String]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   A recurring daily time, in the format `HH:MM`. `HH` is the
    #   zero-padded hour of the day (0-23), and `MM` is the zero-padded
    #   minute of the hour. For example, `05:00` specifies 5 AM daily.
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 90 days. The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_import_policy
    #   (Optional) When you create your file system, your existing S3
    #   objects appear as file and directory listings. Use this property to
    #   choose how Amazon FSx keeps your file and directory listing up to
    #   date as you add or modify objects in your linked S3 bucket.
    #   `AutoImportPolicy` can have the following values:
    #
    #   * `NONE` - (Default) AutoImport is off. Amazon FSx only updates file
    #     and directory listings from the linked S3 bucket when the file
    #     system is created. FSx does not update the file and directory
    #     listing for any new or changed objects after choosing this option.
    #
    #   * `NEW` - AutoImport is on. Amazon FSx automatically imports
    #     directory listings of any new objects added to the linked S3
    #     bucket that do not currently exist in the FSx file system.
    #
    #   * `NEW_CHANGED` - AutoImport is on. Amazon FSx automatically imports
    #     file and directory listings of any new objects added to the S3
    #     bucket and any existing objects that are changed in the S3 bucket
    #     after you choose this option.
    #
    #   For more information, see [Automatically import updates from your S3
    #   bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemLustreConfiguration AWS API Documentation
    #
    class UpdateFileSystemLustreConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :auto_import_policy)
      SENSITIVE = []
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
    #         storage_capacity: 1,
    #         windows_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           throughput_capacity: 1,
    #           self_managed_active_directory_configuration: {
    #             user_name: "DirectoryUserName",
    #             password: "DirectoryPassword",
    #             dns_ips: ["IpAddress"],
    #           },
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED
    #         },
    #       }
    #
    # @!attribute [rw] file_system_id
    #   Identifies the file system that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent updates. This string is automatically filled on your
    #   behalf when you use the AWS Command Line Interface (AWS CLI) or an
    #   AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   Use this parameter to increase the storage capacity of an Amazon FSx
    #   for Windows File Server file system. Specifies the storage capacity
    #   target value, GiB, for the file system you're updating. The storage
    #   capacity target value must be at least 10 percent (%) greater than
    #   the current storage capacity value. In order to increase storage
    #   capacity, the file system needs to have at least 16 MB/s of
    #   throughput capacity. You cannot make a storage capacity increase
    #   request if there is an existing storage capacity increase request in
    #   progress. For more information, see [Managing Storage Capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   @return [Integer]
    #
    # @!attribute [rw] windows_configuration
    #   The configuration updates for an Amazon FSx for Windows File Server
    #   file system.
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
      :storage_capacity,
      :windows_configuration,
      :lustre_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the configuration for an existing Amazon FSx for Windows File
    # Server file system. Amazon FSx only overwrites existing properties
    # with non-null values provided in the request.
    #
    # @note When making an API call, you may pass UpdateFileSystemWindowsConfiguration
    #   data as a hash:
    #
    #       {
    #         weekly_maintenance_start_time: "WeeklyTime",
    #         daily_automatic_backup_start_time: "DailyTime",
    #         automatic_backup_retention_days: 1,
    #         throughput_capacity: 1,
    #         self_managed_active_directory_configuration: {
    #           user_name: "DirectoryUserName",
    #           password: "DirectoryPassword",
    #           dns_ips: ["IpAddress"],
    #         },
    #       }
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   The preferred start time to perform weekly maintenance, formatted
    #   d:HH:MM in the UTC time zone. Where d is the weekday number, from 1
    #   through 7, with 1 = Monday and 7 = Sunday.
    #   @return [String]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   The preferred time to start the daily automatic backup, in the UTC
    #   time zone, for example, `02:00`
    #   @return [String]
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic daily backups. Setting this
    #   to zero (0) disables automatic daily backups. You can retain
    #   automatic daily backups for a maximum of 90 days. For more
    #   information, see [Working with Automatic Daily Backups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#automatic-backups
    #   @return [Integer]
    #
    # @!attribute [rw] throughput_capacity
    #   Sets the target value for a file system's throughput capacity, in
    #   MB/s, that you are updating the file system to. Valid values are 8,
    #   16, 32, 64, 128, 256, 512, 1024, 2048. You cannot make a throughput
    #   capacity update request if there is an existing throughput capacity
    #   update request in progress. For more information, see [Managing
    #   Throughput Capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-throughput-capacity.html
    #   @return [Integer]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration Amazon FSx uses to join the Windows File Server
    #   instance to the self-managed Microsoft AD directory. You cannot make
    #   a self-managed Microsoft AD update request if there is an existing
    #   self-managed Microsoft AD update request in progress.
    #   @return [Types::SelfManagedActiveDirectoryConfigurationUpdates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemWindowsConfiguration AWS API Documentation
    #
    class UpdateFileSystemWindowsConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :throughput_capacity,
      :self_managed_active_directory_configuration)
      SENSITIVE = []
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
    # @!attribute [rw] deployment_type
    #   Specifies the file system deployment type, valid values are the
    #   following:
    #
    #   * `MULTI_AZ_1` - Specifies a high availability file system that is
    #     configured for Multi-AZ redundancy to tolerate temporary
    #     Availability Zone (AZ) unavailability, and supports SSD and HDD
    #     storage.
    #
    #   * `SINGLE_AZ_1` - (Default) Specifies a file system that is
    #     configured for single AZ redundancy, only supports SSD storage.
    #
    #   * `SINGLE_AZ_2` - Latest generation Single AZ file system. Specifies
    #     a file system that is configured for single AZ redundancy and
    #     supports SSD and HDD storage.
    #
    #   For more information, see [Single-AZ and Multi-AZ File Systems][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html
    #   @return [String]
    #
    # @!attribute [rw] remote_administration_endpoint
    #   For `MULTI_AZ_1` deployment types, use this endpoint when performing
    #   administrative tasks on the file system using Amazon FSx Remote
    #   PowerShell.
    #
    #   For `SINGLE_AZ_1` and `SINGLE_AZ_2` deployment types, this is the
    #   DNS name of the file system.
    #
    #   This endpoint is temporarily unavailable when the file system is
    #   undergoing maintenance.
    #   @return [String]
    #
    # @!attribute [rw] preferred_subnet_id
    #   For `MULTI_AZ_1` deployment types, it specifies the ID of the subnet
    #   where the preferred file server is located. Must be one of the two
    #   subnet IDs specified in `SubnetIds` property. Amazon FSx serves
    #   traffic from this subnet except in the event of a failover to the
    #   secondary file server.
    #
    #   For `SINGLE_AZ_1` and `SINGLE_AZ_2` deployment types, this value is
    #   the same as that for `SubnetIDs`. For more information, see
    #   [Availability and Durability: Single-AZ and Multi-AZ File
    #   Systems][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html#single-multi-az-resources
    #   @return [String]
    #
    # @!attribute [rw] preferred_file_server_ip
    #   For `MULTI_AZ_1` deployment types, the IP address of the primary, or
    #   preferred, file server.
    #
    #   Use this IP address when mounting the file system on Linux SMB
    #   clients or Windows SMB clients that are not joined to a Microsoft
    #   Active Directory. Applicable for all Windows file system deployment
    #   types. This IP address is temporarily unavailable when the file
    #   system is undergoing maintenance. For Linux and Windows SMB clients
    #   that are joined to an Active Directory, use the file system's
    #   DNSName instead. For more information on mapping and mounting file
    #   shares, see [Accessing File Shares][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/accessing-file-shares.html
    #   @return [String]
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
    #   The preferred start time to perform weekly maintenance, formatted
    #   d:HH:MM in the UTC time zone. d is the weekday number, from 1
    #   through 7, beginning with Monday and ending with Sunday.
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
    #   maximum of 90 days.
    #   @return [Integer]
    #
    # @!attribute [rw] copy_tags_to_backups
    #   A boolean flag indicating whether tags on the file system should be
    #   copied to backups. This value defaults to false. If it's set to
    #   true, all tags on the file system are copied to all automatic
    #   backups and any user-initiated backups where the user doesn't
    #   specify any tags. If this value is true, and you specify one or more
    #   tags, only the specified tags are copied to backups. If you specify
    #   one or more tags when creating a user-initiated backup, no tags are
    #   copied from the file system, regardless of this value.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/WindowsFileSystemConfiguration AWS API Documentation
    #
    class WindowsFileSystemConfiguration < Struct.new(
      :active_directory_id,
      :self_managed_active_directory_configuration,
      :deployment_type,
      :remote_administration_endpoint,
      :preferred_subnet_id,
      :preferred_file_server_ip,
      :throughput_capacity,
      :maintenance_operations_in_progress,
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
