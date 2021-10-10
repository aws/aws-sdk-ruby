# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    #   The ID of the Amazon Web Services Managed Microsoft Active Directory
    #   instance to which the file system is joined.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a given resource. ARNs uniquely
    #   identify Amazon Web Services resources. We require an ARN when you
    #   need to specify a resource unambiguously across all of Amazon Web
    #   Services. For more information, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/ActiveDirectoryBackupAttributes AWS API Documentation
    #
    class ActiveDirectoryBackupAttributes < Struct.new(
      :domain_name,
      :active_directory_id,
      :resource_arn)
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

    # Describes a specific Amazon FSx administrative action for the current
    # Windows or Lustre file system.
    #
    # @!attribute [rw] administrative_action_type
    #   Describes the type of administrative action, as follows:
    #
    #   * `FILE_SYSTEM_UPDATE` - A file system update administrative action
    #     initiated by the user from the Amazon FSx console, API
    #     (UpdateFileSystem), or CLI (update-file-system).
    #
    #   * `STORAGE_OPTIMIZATION` - Once the `FILE_SYSTEM_UPDATE` task to
    #     increase a file system's storage capacity completes successfully,
    #     a `STORAGE_OPTIMIZATION` task starts.
    #
    #     * For Windows, storage optimization is the process of migrating
    #       the file system data to the new, larger disks.
    #
    #     * For Lustre, storage optimization consists of rebalancing the
    #       data across the existing and newly added file servers.
    #
    #     You can track the storage optimization progress using the
    #     `ProgressPercent` property. When `STORAGE_OPTIMIZATION` completes
    #     successfully, the parent `FILE_SYSTEM_UPDATE` action status
    #     changes to `COMPLETED`. For more information, see [Managing
    #     storage capacity][1] in the *Amazon FSx for Windows File Server
    #     User Guide* and [Managing storage and throughput capacity][2] in
    #     the *Amazon FSx for Lustre User Guide*.
    #
    #   * `FILE_SYSTEM_ALIAS_ASSOCIATION` - A file system update to
    #     associate a new DNS alias with the file system. For more
    #     information, see .
    #
    #   * `FILE_SYSTEM_ALIAS_DISASSOCIATION` - A file system update to
    #     disassociate a DNS alias from the file system. For more
    #     information, see .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html
    #   @return [String]
    #
    # @!attribute [rw] progress_percent
    #   Provides the percent complete of a `STORAGE_OPTIMIZATION`
    #   administrative action. Does not apply to any other administrative
    #   action type.
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
    #     For more information, see [Managing storage capacity][1] in the
    #     *Amazon FSx for Windows File Server User Guide* and [Managing
    #     storage and throughput capacity][2] in the *Amazon FSx for Lustre
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html
    #   @return [String]
    #
    # @!attribute [rw] target_file_system_values
    #   Describes the target value for the administration action, provided
    #   in the `UpdateFileSystem` operation. Returned for
    #   `FILE_SYSTEM_UPDATE` administrative actions.
    #   @return [Types::FileSystem]
    #
    # @!attribute [rw] failure_details
    #   Provides information about a failed administrative action.
    #   @return [Types::AdministrativeActionFailureDetails]
    #
    # @!attribute [rw] target_volume_values
    #   Describes an Amazon FSx for NetApp ONTAP volume.
    #   @return [Types::Volume]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AdministrativeAction AWS API Documentation
    #
    class AdministrativeAction < Struct.new(
      :administrative_action_type,
      :progress_percent,
      :request_time,
      :status,
      :target_file_system_values,
      :failure_details,
      :target_volume_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a failed administrative action.
    #
    # @!attribute [rw] message
    #   Error message providing details about the failed administrative
    #   action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AdministrativeActionFailureDetails AWS API Documentation
    #
    class AdministrativeActionFailureDetails < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A DNS alias that is associated with the file system. You can use a DNS
    # alias to access a file system using user-defined DNS names, in
    # addition to the default DNS name that Amazon FSx assigns to the file
    # system. For more information, see [DNS aliases][1] in the *FSx for
    # Windows File Server User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html
    #
    # @!attribute [rw] name
    #   The name of the DNS alias. The alias name has to meet the following
    #   requirements:
    #
    #   * Formatted as a fully-qualified domain name (FQDN),
    #     `hostname.domain`, for example, `accounting.example.com`.
    #
    #   * Can contain alphanumeric characters, the underscore (\_), and the
    #     hyphen (-).
    #
    #   * Cannot start or end with a hyphen.
    #
    #   * Can start with a numeric.
    #
    #   For DNS names, Amazon FSx stores alphabetic characters as lowercase
    #   letters (a-z), regardless of how you specify them: as uppercase
    #   letters, lowercase letters, or the corresponding letters in escape
    #   codes.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Describes the state of the DNS alias.
    #
    #   * AVAILABLE - The DNS alias is associated with an Amazon FSx file
    #     system.
    #
    #   * CREATING - Amazon FSx is creating the DNS alias and associating it
    #     with the file system.
    #
    #   * CREATE\_FAILED - Amazon FSx was unable to associate the DNS alias
    #     with the file system.
    #
    #   * DELETING - Amazon FSx is disassociating the DNS alias from the
    #     file system and deleting it.
    #
    #   * DELETE\_FAILED - Amazon FSx was unable to disassociate the DNS
    #     alias from the file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/Alias AWS API Documentation
    #
    class Alias < Struct.new(
      :name,
      :lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object specifying one or more DNS alias names to associate
    # with an Amazon FSx for Windows File Server file system.
    #
    # @note When making an API call, you may pass AssociateFileSystemAliasesRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         file_system_id: "FileSystemId", # required
    #         aliases: ["AlternateDNSName"], # required
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   Specifies the file system with which you want to associate one or
    #   more DNS aliases.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   An array of one or more DNS alias names to associate with the file
    #   system. The alias name has to comply with the following formatting
    #   requirements:
    #
    #   * Formatted as a fully-qualified domain name (FQDN), <i>
    #     <code>hostname.domain</code> </i>, for example,
    #     `accounting.corp.example.com`.
    #
    #   * Can contain alphanumeric characters and the hyphen (-).
    #
    #   * Cannot start or end with a hyphen.
    #
    #   * Can start with a numeric.
    #
    #   For DNS alias names, Amazon FSx stores alphabetic characters as
    #   lowercase letters (a-z), regardless of how you specify them: as
    #   uppercase letters, lowercase letters, or the corresponding letters
    #   in escape codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AssociateFileSystemAliasesRequest AWS API Documentation
    #
    class AssociateFileSystemAliasesRequest < Struct.new(
      :client_request_token,
      :file_system_id,
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # The system generated response showing the DNS aliases that Amazon FSx
    # is attempting to associate with the file system. Use the API operation
    # to monitor the status of the aliases Amazon FSx is associating with
    # the file system. It can take up to 2.5 minutes for the alias status to
    # change from `CREATING` to `AVAILABLE`.
    #
    # @!attribute [rw] aliases
    #   An array of the DNS aliases that Amazon FSx is associating with the
    #   file system.
    #   @return [Array<Types::Alias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/AssociateFileSystemAliasesResponse AWS API Documentation
    #
    class AssociateFileSystemAliasesResponse < Struct.new(
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # A backup of an Amazon FSx for Windows File Server or Amazon FSx for
    # Lustre file system, or of an Amazon FSx for NetApp ONTAP volume.
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
    #   * `PENDING` - For user-initiated backups on Lustre file systems
    #     only; Amazon FSx has not started creating the backup.
    #
    #   * `CREATING` - Amazon FSx is creating the backup.
    #
    #   * `TRANSFERRING` - For user-initiated backups on Lustre file systems
    #     only; Amazon FSx is transferring the backup to S3.
    #
    #   * `COPYING` - Amazon FSx is copying the backup.
    #
    #   * `DELETED` - Amazon FSx deleted the backup and it is no longer
    #     available.
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
    #   The ID of the Key Management Service (KMS) key used to encrypt the
    #   backup of the Amazon FSx file system's data at rest.
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
    # @!attribute [rw] owner_id
    #   An Amazon Web Services account ID. This ID is a 12-digit number that
    #   you use to construct Amazon Resource Names (ARNs) for resources.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_id
    #   The ID of the source backup. Specifies the backup you are copying.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_region
    #   The source Region of the backup. Specifies the Region from where
    #   this backup is copied.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies the resource type that is backed up.
    #   @return [String]
    #
    # @!attribute [rw] volume
    #   Describes an Amazon FSx for NetApp ONTAP volume.
    #   @return [Types::Volume]
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
      :directory_information,
      :owner_id,
      :source_backup_id,
      :source_backup_region,
      :resource_type,
      :volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't delete a backup while it's being copied.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @!attribute [rw] backup_id
    #   The ID of the source backup. Specifies the backup you are copying.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/BackupBeingCopied AWS API Documentation
    #
    class BackupBeingCopied < Struct.new(
      :message,
      :backup_id)
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

    # @note When making an API call, you may pass CopyBackupRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         source_backup_id: "SourceBackupId", # required
    #         source_region: "Region",
    #         kms_key_id: "KmsKeyId",
    #         copy_tags: false,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] source_backup_id
    #   The ID of the source backup. Specifies the ID of the backup that is
    #   being copied.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source Amazon Web Services Region of the backup. Specifies the
    #   Amazon Web Services Region from which the backup is being copied.
    #   The source and destination Regions must be in the same Amazon Web
    #   Services partition. If you don't specify a Region, it defaults to
    #   the Region where the request is sent from (in-Region copy).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt the
    #   file system's data for Amazon FSx for Windows File Server file
    #   systems, Amazon FSx for NetApp ONTAP file systems, and Amazon FSx
    #   for Lustre `PERSISTENT_1` file systems at rest. If not specified,
    #   the Amazon FSx managed key is used. The Amazon FSx for Lustre
    #   `SCRATCH_1` and `SCRATCH_2` file systems are always encrypted at
    #   rest using Amazon FSx managed keys. For more information, see
    #   [Encrypt][1] in the *Key Management Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   A boolean flag indicating whether tags from the source backup should
    #   be copied to the backup copy. This value defaults to false.
    #
    #   If you set `CopyTags` to true and the source backup has existing
    #   tags, you can use the `Tags` parameter to create new tags, provided
    #   that the sum of the source backup tags and the new tags doesn't
    #   exceed 50. Both sets of tags are merged. If there are tag conflicts
    #   (for example, two tags with the same key but different values), the
    #   tags created with the `Tags` parameter take precedence.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CopyBackupRequest AWS API Documentation
    #
    class CopyBackupRequest < Struct.new(
      :client_request_token,
      :source_backup_id,
      :source_region,
      :kms_key_id,
      :copy_tags,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup
    #   A backup of an Amazon FSx for Windows File Server or Amazon FSx for
    #   Lustre file system, or of an Amazon FSx for NetApp ONTAP volume.
    #   @return [Types::Backup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CopyBackupResponse AWS API Documentation
    #
    class CopyBackupResponse < Struct.new(
      :backup)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for the `CreateBackup` operation.
    #
    # @note When making an API call, you may pass CreateBackupRequest
    #   data as a hash:
    #
    #       {
    #         file_system_id: "FileSystemId",
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         volume_id: "VolumeId",
    #       }
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system to back up.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) A string of up to 64 ASCII characters that Amazon FSx
    #   uses to ensure idempotent creation. This string is automatically
    #   filled on your behalf when you use the Command Line Interface (CLI)
    #   or an Amazon Web Services SDK.
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
    # @!attribute [rw] volume_id
    #   The ID of he FSx for NetApp ONTAP volume to back up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateBackupRequest AWS API Documentation
    #
    class CreateBackupRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :tags,
      :volume_id)
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
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
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
    #           aliases: ["AlternateDNSName"],
    #           audit_log_configuration: {
    #             file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #             file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #             audit_log_destination: "GeneralARN",
    #           },
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
    #           data_compression_type: "NONE", # accepts NONE, LZ4
    #         },
    #         storage_type: "SSD", # accepts SSD, HDD
    #         kms_key_id: "KmsKeyId",
    #         file_system_type_version: "FileSystemTypeVersion",
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the source backup. Specifies the backup you are copying.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent creation. This string is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon
    #   Web Services SDK.
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
    # @!attribute [rw] kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt the
    #   file system's data for Amazon FSx for Windows File Server file
    #   systems, Amazon FSx for NetApp ONTAP file systems, and Amazon FSx
    #   for Lustre `PERSISTENT_1` file systems at rest. If not specified,
    #   the Amazon FSx managed key is used. The Amazon FSx for Lustre
    #   `SCRATCH_1` and `SCRATCH_2` file systems are always encrypted at
    #   rest using Amazon FSx managed keys. For more information, see
    #   [Encrypt][1] in the *Key Management Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html
    #   @return [String]
    #
    # @!attribute [rw] file_system_type_version
    #   Sets the version for the Amazon FSx for Lustre file system you're
    #   creating from a backup. Valid values are `2.10` and `2.12`.
    #
    #   You don't need to specify `FileSystemTypeVersion` because it will
    #   be applied using the backup's `FileSystemTypeVersion` setting. If
    #   you choose to specify `FileSystemTypeVersion` when creating from
    #   backup, the value must match the backup's `FileSystemTypeVersion`
    #   setting.
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
      :storage_type,
      :kms_key_id,
      :file_system_type_version)
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
    #         data_compression_type: "NONE", # accepts NONE, LZ4
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
    #   types in supported Amazon Web Services Regions. To learn more,
    #   [Encrypting Data in Transit][3].
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
    # @!attribute [rw] data_compression_type
    #   Sets the data compression configuration for the file system.
    #   `DataCompressionType` can have the following values:
    #
    #   * `NONE` - (Default) Data compression is turned off when the file
    #     system is created.
    #
    #   * `LZ4` - Data compression is turned on with the LZ4 algorithm.
    #
    #   For more information, see [Lustre data compression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html
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
      :drive_cache_type,
      :data_compression_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ONTAP configuration properties of the FSx for NetApp ONTAP file
    # system that you are creating.
    #
    # @note When making an API call, you may pass CreateFileSystemOntapConfiguration
    #   data as a hash:
    #
    #       {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         deployment_type: "MULTI_AZ_1", # required, accepts MULTI_AZ_1
    #         endpoint_ip_address_range: "IpAddressRange",
    #         fsx_admin_password: "AdminPassword",
    #         disk_iops_configuration: {
    #           mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #           iops: 1,
    #         },
    #         preferred_subnet_id: "SubnetId",
    #         route_table_ids: ["RouteTableId"],
    #         throughput_capacity: 1, # required
    #         weekly_maintenance_start_time: "WeeklyTime",
    #       }
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 90 days. The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   A recurring daily time, in the format `HH:MM`. `HH` is the
    #   zero-padded hour of the day (0-23), and `MM` is the zero-padded
    #   minute of the hour. For example, `05:00` specifies 5 AM daily.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   Specifies the ONTAP file system deployment type to use in creating
    #   the file system.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_ip_address_range
    #   Specifies the IP address range in which the endpoints to access your
    #   file system will be created. By default, Amazon FSx selects an
    #   unused IP address range for you from the 198.19.* range.
    #   @return [String]
    #
    # @!attribute [rw] fsx_admin_password
    #   The ONTAP administrative password for the `fsxadmin` user that you
    #   can use to administer your file system using the ONTAP CLI and REST
    #   API.
    #   @return [String]
    #
    # @!attribute [rw] disk_iops_configuration
    #   The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file
    #   system.
    #   @return [Types::DiskIopsConfiguration]
    #
    # @!attribute [rw] preferred_subnet_id
    #   The ID for a subnet. A *subnet* is a range of IP addresses in your
    #   virtual private cloud (VPC). For more information, see [VPC and
    #   Subnets][1] in the *Amazon VPC User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html
    #   @return [String]
    #
    # @!attribute [rw] route_table_ids
    #   Specifies the VPC route tables in which your file system's
    #   endpoints will be created. You should specify all VPC route tables
    #   associated with the subnets in which your clients are located. By
    #   default, Amazon FSx selects your VPC's default route table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] throughput_capacity
    #   Sustained throughput of an Amazon FSx file system in MBps.
    #   @return [Integer]
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   A recurring weekly time, in the format `D:HH:MM`.
    #
    #   `D` is the day of the week, for which 1 represents Monday and 7
    #   represents Sunday. For further details, see [the ISO-8601 spec as
    #   described on Wikipedia][1].
    #
    #   `HH` is the zero-padded hour of the day (0-23), and `MM` is the
    #   zero-padded minute of the hour.
    #
    #   For example, `1:05:00` specifies maintenance at 5 AM Monday.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_week_date
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateFileSystemOntapConfiguration AWS API Documentation
    #
    class CreateFileSystemOntapConfiguration < Struct.new(
      :automatic_backup_retention_days,
      :daily_automatic_backup_start_time,
      :deployment_type,
      :endpoint_ip_address_range,
      :fsx_admin_password,
      :disk_iops_configuration,
      :preferred_subnet_id,
      :route_table_ids,
      :throughput_capacity,
      :weekly_maintenance_start_time)
      SENSITIVE = [:fsx_admin_password]
      include Aws::Structure
    end

    # The request object used to create a new Amazon FSx file system.
    #
    # @note When making an API call, you may pass CreateFileSystemRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         file_system_type: "WINDOWS", # required, accepts WINDOWS, LUSTRE, ONTAP
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
    #           aliases: ["AlternateDNSName"],
    #           audit_log_configuration: {
    #             file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #             file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #             audit_log_destination: "GeneralARN",
    #           },
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
    #           data_compression_type: "NONE", # accepts NONE, LZ4
    #         },
    #         ontap_configuration: {
    #           automatic_backup_retention_days: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           deployment_type: "MULTI_AZ_1", # required, accepts MULTI_AZ_1
    #           endpoint_ip_address_range: "IpAddressRange",
    #           fsx_admin_password: "AdminPassword",
    #           disk_iops_configuration: {
    #             mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #             iops: 1,
    #           },
    #           preferred_subnet_id: "SubnetId",
    #           route_table_ids: ["RouteTableId"],
    #           throughput_capacity: 1, # required
    #           weekly_maintenance_start_time: "WeeklyTime",
    #         },
    #         file_system_type_version: "FileSystemTypeVersion",
    #       }
    #
    # @!attribute [rw] client_request_token
    #   A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #   idempotent creation. This string is automatically filled on your
    #   behalf when you use the Command Line Interface (CLI) or an Amazon
    #   Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   The type of Amazon FSx file system to create. Valid values are
    #   `WINDOWS`, `LUSTRE`, and `ONTAP`.
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
    #
    #   For ONTAP file systems:
    #
    #   * Valid values are 1024 GiB - 196,608 GiB (192 TiB).
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   Sets the storage type for the file system you're creating. Valid
    #   values are `SSD` and `HDD`.
    #
    #   * Set to `SSD` to use solid state drive storage. SSD is supported on
    #     all Windows, Lustre, and ONTAP deployment types.
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
    #   accessible from. For Windows and ONTAP `MULTI_AZ_1` file system
    #   deployment types, provide exactly two subnet IDs, one for the
    #   preferred file server and one for the standby file server. You
    #   specify one of these subnets as the preferred subnet using the
    #   `WindowsConfiguration > PreferredSubnetID` or `OntapConfiguration >
    #   PreferredSubnetID` properties. For more information, see [
    #   Availability and durability: Single-AZ and Multi-AZ file systems][1]
    #   in the *Amazon FSx for Windows User Guide* and [ Availability and
    #   durability][2] in the *Amazon FSx for ONTAP User Guide*.
    #
    #   For Windows `SINGLE_AZ_1` and `SINGLE_AZ_2` file system deployment
    #   types and Lustre file systems, provide exactly one subnet ID. The
    #   file server is launched in that subnet's Availability Zone.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html
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
    #   The ID of the Key Management Service (KMS) key used to encrypt the
    #   file system's data for Amazon FSx for Windows File Server file
    #   systems, Amazon FSx for NetApp ONTAP file systems, and Amazon FSx
    #   for Lustre `PERSISTENT_1` file systems at rest. If not specified,
    #   the Amazon FSx managed key is used. The Amazon FSx for Lustre
    #   `SCRATCH_1` and `SCRATCH_2` file systems are always encrypted at
    #   rest using Amazon FSx managed keys. For more information, see
    #   [Encrypt][1] in the *Key Management Service API Reference*.
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
    # @!attribute [rw] ontap_configuration
    #   The ONTAP configuration properties of the FSx for NetApp ONTAP file
    #   system that you are creating.
    #   @return [Types::CreateFileSystemOntapConfiguration]
    #
    # @!attribute [rw] file_system_type_version
    #   Sets the version of the Amazon FSx for Lustre file system you're
    #   creating. Valid values are `2.10` and `2.12`.
    #
    #   * Set the value to `2.10` to create a Lustre 2.10 file system.
    #
    #   * Set the value to `2.12` to create a Lustre 2.12 file system.
    #
    #   Default value is `2.10`.
    #   @return [String]
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
      :lustre_configuration,
      :ontap_configuration,
      :file_system_type_version)
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
    #         aliases: ["AlternateDNSName"],
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #           file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #           audit_log_destination: "GeneralARN",
    #         },
    #       }
    #
    # @!attribute [rw] active_directory_id
    #   The ID for an existing Amazon Web Services Managed Microsoft Active
    #   Directory (AD) instance that the file system should join when it's
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration that Amazon FSx uses to join a FSx for Windows
    #   File Server file system or an ONTAP storage virtual machine (SVM) to
    #   a self-managed (including on-premises) Microsoft Active Directory
    #   (AD) directory. For more information, see [ Using Amazon FSx with
    #   your self-managed Microsoft Active Directory][1] or [Managing
    #   SVMs][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html
    #   @return [Types::SelfManagedActiveDirectoryConfiguration]
    #
    # @!attribute [rw] deployment_type
    #   Specifies the file system deployment type, valid values are the
    #   following:
    #
    #   * `MULTI_AZ_1` - Deploys a high availability file system that is
    #     configured for Multi-AZ redundancy to tolerate temporary
    #     Availability Zone (AZ) unavailability. You can only deploy a
    #     Multi-AZ file system in Amazon Web Services Regions that have a
    #     minimum of three Availability Zones. Also supports HDD storage
    #     type
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
    #   be located. For in-Amazon Web Services applications, we recommend
    #   that you launch your clients in the same Availability Zone (AZ) as
    #   your preferred file server to reduce cross-AZ data transfer costs
    #   and minimize latency.
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
    # @!attribute [rw] aliases
    #   An array of one or more DNS alias names that you want to associate
    #   with the Amazon FSx file system. Aliases allow you to use existing
    #   DNS names to access the data in your Amazon FSx file system. You can
    #   associate up to 50 aliases with a file system at any time. You can
    #   associate additional DNS aliases after you create the file system
    #   using the AssociateFileSystemAliases operation. You can remove DNS
    #   aliases from the file system after it is created using the
    #   DisassociateFileSystemAliases operation. You only need to specify
    #   the alias name in the request payload.
    #
    #   For more information, see [Working with DNS Aliases][1] and
    #   [Walkthrough 5: Using DNS aliases to access your file system][2],
    #   including additional steps you must take to be able to access your
    #   file system using a DNS alias.
    #
    #   An alias name has to meet the following requirements:
    #
    #   * Formatted as a fully-qualified domain name (FQDN),
    #     `hostname.domain`, for example, `accounting.example.com`.
    #
    #   * Can contain alphanumeric characters, the underscore (\_), and the
    #     hyphen (-).
    #
    #   * Cannot start or end with a hyphen.
    #
    #   * Can start with a numeric.
    #
    #   For DNS alias names, Amazon FSx stores alphabetic characters as
    #   lowercase letters (a-z), regardless of how you specify them: as
    #   uppercase letters, lowercase letters, or the corresponding letters
    #   in escape codes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] audit_log_configuration
    #   The configuration that Amazon FSx for Windows File Server uses to
    #   audit and log user accesses of files, folders, and file shares on
    #   the Amazon FSx for Windows File Server file system.
    #   @return [Types::WindowsAuditLogCreateConfiguration]
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
      :copy_tags_to_backups,
      :aliases,
      :audit_log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of the ONTAP volume that you are creating.
    #
    # @note When making an API call, you may pass CreateOntapVolumeConfiguration
    #   data as a hash:
    #
    #       {
    #         junction_path: "JunctionPath", # required
    #         security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #         size_in_megabytes: 1, # required
    #         storage_efficiency_enabled: false, # required
    #         storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #         tiering_policy: {
    #           cooling_period: 1,
    #           name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #         },
    #       }
    #
    # @!attribute [rw] junction_path
    #   Specifies the location in the SVM's namespace where the volume is
    #   mounted. The `JunctionPath` must have a leading forward slash, such
    #   as `/vol3`.
    #   @return [String]
    #
    # @!attribute [rw] security_style
    #   The security style for the volume. Specify one of the following
    #   values:
    #
    #   * `UNIX` if the file system is managed by a UNIX administrator, the
    #     majority of users are NFS clients, and an application accessing
    #     the data uses a UNIX user as the service account. `UNIX` is the
    #     default.
    #
    #   * `NTFS` if the file system is managed by a Windows administrator,
    #     the majority of users are SMB clients, and an application
    #     accessing the data uses a Windows user as the service account.
    #
    #   * `MIXED` if the file system is managed by both UNIX and Windows
    #     administrators and users consist of both NFS and SMB clients.
    #   @return [String]
    #
    # @!attribute [rw] size_in_megabytes
    #   Specifies the size of the volume, in megabytes (MB), that you are
    #   creating.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_efficiency_enabled
    #   Set to true to enable deduplication, compression, and compaction
    #   storage efficiency features on the volume.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_virtual_machine_id
    #   Specifies the ONTAP SVM in which to create the volume.
    #   @return [String]
    #
    # @!attribute [rw] tiering_policy
    #   Describes the data tiering policy for an ONTAP volume. When enabled,
    #   Amazon FSx for ONTAP's intelligent tiering automatically
    #   transitions a volume's data between the file system's primary
    #   storage and capacity pool storage based on your access patterns.
    #   @return [Types::TieringPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateOntapVolumeConfiguration AWS API Documentation
    #
    class CreateOntapVolumeConfiguration < Struct.new(
      :junction_path,
      :security_style,
      :size_in_megabytes,
      :storage_efficiency_enabled,
      :storage_virtual_machine_id,
      :tiering_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStorageVirtualMachineRequest
    #   data as a hash:
    #
    #       {
    #         active_directory_configuration: {
    #           net_bios_name: "NetBiosAlias", # required
    #           self_managed_active_directory_configuration: {
    #             domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #             organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #             file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #             user_name: "DirectoryUserName", # required
    #             password: "DirectoryPassword", # required
    #             dns_ips: ["IpAddress"], # required
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         file_system_id: "FileSystemId", # required
    #         name: "StorageVirtualMachineName", # required
    #         svm_admin_password: "AdminPassword",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         root_volume_security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #       }
    #
    # @!attribute [rw] active_directory_configuration
    #   Describes the self-managed Microsoft Active Directory to which you
    #   want to join the SVM. Joining an Active Directory provides user
    #   authentication and access control for SMB clients, including
    #   Microsoft Windows and macOS client accessing the file system.
    #   @return [Types::CreateSvmActiveDirectoryConfiguration]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the SVM.
    #   @return [String]
    #
    # @!attribute [rw] svm_admin_password
    #   The password to use when managing the SVM using the NetApp ONTAP CLI
    #   or REST API. If you do not specify a password, you can still use the
    #   file system's `fsxadmin` user to manage the SVM.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] root_volume_security_style
    #   The security style of the root volume of the SVM. Specify one of the
    #   following values:
    #
    #   * `UNIX` if the file system is managed by a UNIX administrator, the
    #     majority of users are NFS clients, and an application accessing
    #     the data uses a UNIX user as the service account.
    #
    #   * `NTFS` if the file system is managed by a Windows administrator,
    #     the majority of users are SMB clients, and an application
    #     accessing the data uses a Windows user as the service account.
    #
    #   * `MIXED` if the file system is managed by both UNIX and Windows
    #     administrators and users consist of both NFS and SMB clients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateStorageVirtualMachineRequest AWS API Documentation
    #
    class CreateStorageVirtualMachineRequest < Struct.new(
      :active_directory_configuration,
      :client_request_token,
      :file_system_id,
      :name,
      :svm_admin_password,
      :tags,
      :root_volume_security_style)
      SENSITIVE = [:svm_admin_password]
      include Aws::Structure
    end

    # @!attribute [rw] storage_virtual_machine
    #   Returned after a successful `CreateStorageVirtualMachine` operation;
    #   describes the SVM just created.
    #   @return [Types::StorageVirtualMachine]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateStorageVirtualMachineResponse AWS API Documentation
    #
    class CreateStorageVirtualMachineResponse < Struct.new(
      :storage_virtual_machine)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that Amazon FSx uses to join the ONTAP storage
    # virtual machine (SVM) to your self-managed (including on-premises)
    # Microsoft Active Directory (AD) directory.
    #
    # @note When making an API call, you may pass CreateSvmActiveDirectoryConfiguration
    #   data as a hash:
    #
    #       {
    #         net_bios_name: "NetBiosAlias", # required
    #         self_managed_active_directory_configuration: {
    #           domain_name: "ActiveDirectoryFullyQualifiedName", # required
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #           file_system_administrators_group: "FileSystemAdministratorsGroupName",
    #           user_name: "DirectoryUserName", # required
    #           password: "DirectoryPassword", # required
    #           dns_ips: ["IpAddress"], # required
    #         },
    #       }
    #
    # @!attribute [rw] net_bios_name
    #   The NetBIOS name of the Active Directory computer object that will
    #   be created for your SVM.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration that Amazon FSx uses to join a FSx for Windows
    #   File Server file system or an ONTAP storage virtual machine (SVM) to
    #   a self-managed (including on-premises) Microsoft Active Directory
    #   (AD) directory. For more information, see [ Using Amazon FSx with
    #   your self-managed Microsoft Active Directory][1] or [Managing
    #   SVMs][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html
    #   @return [Types::SelfManagedActiveDirectoryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateSvmActiveDirectoryConfiguration AWS API Documentation
    #
    class CreateSvmActiveDirectoryConfiguration < Struct.new(
      :net_bios_name,
      :self_managed_active_directory_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVolumeFromBackupRequest
    #   data as a hash:
    #
    #       {
    #         backup_id: "BackupId", # required
    #         client_request_token: "ClientRequestToken",
    #         name: "VolumeName", # required
    #         ontap_configuration: {
    #           junction_path: "JunctionPath", # required
    #           security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #           size_in_megabytes: 1, # required
    #           storage_efficiency_enabled: false, # required
    #           storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #           tiering_policy: {
    #             cooling_period: 1,
    #             name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the source backup. Specifies the backup you are copying.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new volume you're creating.
    #   @return [String]
    #
    # @!attribute [rw] ontap_configuration
    #   Specifies the configuration of the ONTAP volume that you are
    #   creating.
    #   @return [Types::CreateOntapVolumeConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateVolumeFromBackupRequest AWS API Documentation
    #
    class CreateVolumeFromBackupRequest < Struct.new(
      :backup_id,
      :client_request_token,
      :name,
      :ontap_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume
    #   Returned after a successful `CreateVolumeFromBackup` API operation,
    #   describing the volume just created.
    #   @return [Types::Volume]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateVolumeFromBackupResponse AWS API Documentation
    #
    class CreateVolumeFromBackupResponse < Struct.new(
      :volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVolumeRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         volume_type: "ONTAP", # required, accepts ONTAP
    #         name: "VolumeName", # required
    #         ontap_configuration: {
    #           junction_path: "JunctionPath", # required
    #           security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #           size_in_megabytes: 1, # required
    #           storage_efficiency_enabled: false, # required
    #           storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #           tiering_policy: {
    #             cooling_period: 1,
    #             name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   Specifies the type of volume to create; `ONTAP` is the only valid
    #   volume type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the name of the volume you're creating.
    #   @return [String]
    #
    # @!attribute [rw] ontap_configuration
    #   Specifies the `ONTAP` configuration to use in creating the volume.
    #   @return [Types::CreateOntapVolumeConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateVolumeRequest AWS API Documentation
    #
    class CreateVolumeRequest < Struct.new(
      :client_request_token,
      :volume_type,
      :name,
      :ontap_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume
    #   Returned after a successful `CreateVolume` API operation, describing
    #   the volume just created.
    #   @return [Types::Volume]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/CreateVolumeResponse AWS API Documentation
    #
    class CreateVolumeResponse < Struct.new(
      :volume)
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
    #   identify Amazon Web Services resources. We require an ARN when you
    #   need to specify a resource unambiguously across all of Amazon Web
    #   Services. For more information, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
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
    #   when using the CLI or SDK.
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
    #   when using the Command Line Interface (CLI) or an Amazon Web
    #   Services SDK.
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

    # @note When making an API call, you may pass DeleteStorageVirtualMachineRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] storage_virtual_machine_id
    #   The ID of the SVM that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteStorageVirtualMachineRequest AWS API Documentation
    #
    class DeleteStorageVirtualMachineRequest < Struct.new(
      :client_request_token,
      :storage_virtual_machine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_virtual_machine_id
    #   The ID of the SVM Amazon FSx is deleting.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Describes the lifecycle state of the SVM being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteStorageVirtualMachineResponse AWS API Documentation
    #
    class DeleteStorageVirtualMachineResponse < Struct.new(
      :storage_virtual_machine_id,
      :lifecycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use to specify skipping a final backup, or to add tags to a final
    # backup.
    #
    # @note When making an API call, you may pass DeleteVolumeOntapConfiguration
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
    #   Set to true if you want to skip taking a final backup of the volume
    #   you are deleting.
    #   @return [Boolean]
    #
    # @!attribute [rw] final_backup_tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteVolumeOntapConfiguration AWS API Documentation
    #
    class DeleteVolumeOntapConfiguration < Struct.new(
      :skip_final_backup,
      :final_backup_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for the Amazon FSx for NetApp ONTAP volume being
    # deleted in the `DeleteVolume` operation.
    #
    # @!attribute [rw] final_backup_id
    #   The ID of the source backup. Specifies the backup you are copying.
    #   @return [String]
    #
    # @!attribute [rw] final_backup_tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteVolumeOntapResponse AWS API Documentation
    #
    class DeleteVolumeOntapResponse < Struct.new(
      :final_backup_id,
      :final_backup_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVolumeRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         volume_id: "VolumeId", # required
    #         ontap_configuration: {
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
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume you are deleting.
    #   @return [String]
    #
    # @!attribute [rw] ontap_configuration
    #   For Amazon FSx for ONTAP volumes, specify whether to take a final
    #   backup of the volume, and apply tags to the backup.
    #   @return [Types::DeleteVolumeOntapConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteVolumeRequest AWS API Documentation
    #
    class DeleteVolumeRequest < Struct.new(
      :client_request_token,
      :volume_id,
      :ontap_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_id
    #   The ID of the volume being deleted.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Describes the lifecycle state of the volume being deleted.
    #   @return [String]
    #
    # @!attribute [rw] ontap_response
    #   Returned after a `DeleteVolume request, showing the status of the
    #   delete request.`
    #   @return [Types::DeleteVolumeOntapResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DeleteVolumeResponse AWS API Documentation
    #
    class DeleteVolumeResponse < Struct.new(
      :volume_id,
      :lifecycle,
      :ontap_response)
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
    #             name: "file-system-id", # accepts file-system-id, backup-type, file-system-type, volume-id
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
    #   Filters structure. Supported names are `file-system-id`,
    #   `backup-type`, `file-system-type`, and `volume-id`.
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
    #   An array of backups.
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

    # The request object for `DescribeFileSystemAliases` operation.
    #
    # @note When making an API call, you may pass DescribeFileSystemAliasesRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         file_system_id: "FileSystemId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The ID of the file system to return the associated DNS aliases for
    #   (String).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of DNS aliases to return in the response (integer).
    #   This parameter value must be greater than 0. The number of items
    #   that Amazon FSx returns is the minimum of the `MaxResults` parameter
    #   specified in the request and the service's internal maximum number
    #   of items per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Opaque pagination token returned from a previous
    #   `DescribeFileSystemAliases` operation (String). If a token is
    #   included in the request, the action continues the list from where
    #   the previous returning call left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystemAliasesRequest AWS API Documentation
    #
    class DescribeFileSystemAliasesRequest < Struct.new(
      :client_request_token,
      :file_system_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for `DescribeFileSystemAliases` operation.
    #
    # @!attribute [rw] aliases
    #   An array of one or more DNS aliases currently associated with the
    #   specified file system.
    #   @return [Array<Types::Alias>]
    #
    # @!attribute [rw] next_token
    #   Present if there are more DNS aliases than returned in the response
    #   (String). You can use the `NextToken` value in a later request to
    #   fetch additional descriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeFileSystemAliasesResponse AWS API Documentation
    #
    class DescribeFileSystemAliasesResponse < Struct.new(
      :aliases,
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

    # @note When making an API call, you may pass DescribeStorageVirtualMachinesRequest
    #   data as a hash:
    #
    #       {
    #         storage_virtual_machine_ids: ["StorageVirtualMachineId"],
    #         filters: [
    #           {
    #             name: "file-system-id", # accepts file-system-id
    #             values: ["StorageVirtualMachineFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] storage_virtual_machine_ids
    #   Enter the ID of one or more SVMs that you want to view.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Enter a filter name:value pair to view a select set of SVMs.
    #   @return [Array<Types::StorageVirtualMachineFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeStorageVirtualMachinesRequest AWS API Documentation
    #
    class DescribeStorageVirtualMachinesRequest < Struct.new(
      :storage_virtual_machine_ids,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_virtual_machines
    #   Returned after a successful `DescribeStorageVirtualMachines`
    #   operation, describing each SVM.
    #   @return [Array<Types::StorageVirtualMachine>]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   operation (String). If present, this token indicates from what point
    #   you can continue processing the request, where the previous
    #   `NextToken` value left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeStorageVirtualMachinesResponse AWS API Documentation
    #
    class DescribeStorageVirtualMachinesResponse < Struct.new(
      :storage_virtual_machines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVolumesRequest
    #   data as a hash:
    #
    #       {
    #         volume_ids: ["VolumeId"],
    #         filters: [
    #           {
    #             name: "file-system-id", # accepts file-system-id, storage-virtual-machine-id
    #             values: ["VolumeFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] volume_ids
    #   IDs of the volumes whose descriptions you want to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Enter a filter name:value pair to view a select set of volumes.
    #   @return [Array<Types::VolumeFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeVolumesRequest AWS API Documentation
    #
    class DescribeVolumesRequest < Struct.new(
      :volume_ids,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volumes
    #   Returned after a successful `DescribeVolumes` operation, describing
    #   each volume.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] next_token
    #   (Optional) Opaque pagination token returned from a previous
    #   operation (String). If present, this token indicates from what point
    #   you can continue processing the request, where the previous
    #   `NextToken` value left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DescribeVolumesResponse AWS API Documentation
    #
    class DescribeVolumesResponse < Struct.new(
      :volumes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object of DNS aliases to disassociate from an Amazon FSx
    # for Windows File Server file system.
    #
    # @note When making an API call, you may pass DisassociateFileSystemAliasesRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         file_system_id: "FileSystemId", # required
    #         aliases: ["AlternateDNSName"], # required
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   Specifies the file system from which to disassociate the DNS
    #   aliases.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   An array of one or more DNS alias names to disassociate, or remove,
    #   from the file system.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DisassociateFileSystemAliasesRequest AWS API Documentation
    #
    class DisassociateFileSystemAliasesRequest < Struct.new(
      :client_request_token,
      :file_system_id,
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # The system generated response showing the DNS aliases that Amazon FSx
    # is attempting to disassociate from the file system. Use the API
    # operation to monitor the status of the aliases Amazon FSx is removing
    # from the file system.
    #
    # @!attribute [rw] aliases
    #   An array of one or more DNS aliases that Amazon FSx is attempting to
    #   disassociate from the file system.
    #   @return [Array<Types::Alias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DisassociateFileSystemAliasesResponse AWS API Documentation
    #
    class DisassociateFileSystemAliasesResponse < Struct.new(
      :aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SSD IOPS (input/output operations per second) configuration for an
    # Amazon FSx for NetApp ONTAP file system. The default is 3 IOPS per GB
    # of storage capacity, but you can provision additional IOPS per GB of
    # storage. The configuration consists of the total number of provisioned
    # SSD IOPS and how the amount was provisioned (by the customer or by the
    # system).
    #
    # @note When making an API call, you may pass DiskIopsConfiguration
    #   data as a hash:
    #
    #       {
    #         mode: "AUTOMATIC", # accepts AUTOMATIC, USER_PROVISIONED
    #         iops: 1,
    #       }
    #
    # @!attribute [rw] mode
    #   Specifies whether the number of IOPS for the file system is using
    #   the system default (`AUTOMATIC`) or was provisioned by the customer
    #   (`USER_PROVISIONED`).
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The total number of SSD IOPS provisioned for the file system.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/DiskIopsConfiguration AWS API Documentation
    #
    class DiskIopsConfiguration < Struct.new(
      :mode,
      :iops)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of a specific Amazon FSx file system.
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account that created the file system. If the
    #   file system was created by an Identity and Access Management (IAM)
    #   user, the Amazon Web Services account to which the IAM user belongs
    #   is the owner.
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
    #   The type of Amazon FSx file system, which can be `LUSTRE`,
    #   `WINDOWS`, or `ONTAP`.
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
    #   The storage capacity of the file system in gibibytes (GiB).
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
    #   from. For Windows and ONTAP `MULTI_AZ_1` file system deployment
    #   type, there are two subnet IDs, one for the preferred file server
    #   and one for the standby file server. The preferred file server
    #   subnet identified in the `PreferredSubnetID` property. All other
    #   file systems have only one subnet ID.
    #
    #   For Lustre file systems, and Single-AZ Windows file systems, this is
    #   the ID of the subnet that contains the endpoint for the file system.
    #   For `MULTI_AZ_1` Windows and ONTAP file systems, the endpoint for
    #   the file system is available in the `PreferredSubnetID`.
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
    #   The ID of the Key Management Service (KMS) key used to encrypt the
    #   file system's data for Amazon FSx for Windows File Server file
    #   systems, Amazon FSx for NetApp ONTAP file systems, and persistent
    #   Amazon FSx for Lustre file systems at rest. If not specified, the
    #   Amazon FSx managed key is used. The scratch Amazon FSx for Lustre
    #   file systems are always encrypted at rest using Amazon FSx managed
    #   keys. For more information, see [Encrypt][1] in the *Key Management
    #   Service API Reference*.
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
    #   changes to the Amazon FSx file system that you have initiated using
    #   the `UpdateFileSystem` action.
    #   @return [Array<Types::AdministrativeAction>]
    #
    # @!attribute [rw] ontap_configuration
    #   The configuration for this FSx for NetApp ONTAP file system.
    #   @return [Types::OntapFileSystemConfiguration]
    #
    # @!attribute [rw] file_system_type_version
    #   The version of your Amazon FSx for Lustre file system, either `2.10`
    #   or `2.12`.
    #   @return [String]
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
      :administrative_actions,
      :ontap_configuration,
      :file_system_type_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon FSx for NetApp ONTAP file system has two endpoints that are
    # used to access data or to manage the file system using the NetApp
    # ONTAP CLI, REST API, or NetApp SnapMirror. They are the `Management`
    # and `Intercluster` endpoints.
    #
    # @!attribute [rw] dns_name
    #   The Domain Name Service (DNS) name for the file system. You can
    #   mount your file system using its DNS name.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   IP addresses of the file system endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/FileSystemEndpoint AWS API Documentation
    #
    class FileSystemEndpoint < Struct.new(
      :dns_name,
      :ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon FSx for NetApp ONTAP file system has the following endpoints
    # that are used to access data or to manage the file system using the
    # NetApp ONTAP CLI, REST API, or NetApp SnapMirror.
    #
    # @!attribute [rw] intercluster
    #   An endpoint for managing your file system by setting up NetApp
    #   SnapMirror with other ONTAP systems.
    #   @return [Types::FileSystemEndpoint]
    #
    # @!attribute [rw] management
    #   An endpoint for managing your file system using the NetApp ONTAP CLI
    #   and NetApp ONTAP API.
    #   @return [Types::FileSystemEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/FileSystemEndpoints AWS API Documentation
    #
    class FileSystemEndpoints < Struct.new(
      :intercluster,
      :management)
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
    #         name: "file-system-id", # accepts file-system-id, backup-type, file-system-type, volume-id
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

    # Amazon FSx doesn't support Multi-AZ Windows File Server copy backup
    # in the destination Region, so the copied backup can't be restored.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/IncompatibleRegionForMultiAZ AWS API Documentation
    #
    class IncompatibleRegionForMultiAZ < Struct.new(
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

    # The Key Management Service (KMS) key of the destination backup is
    # invalid.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidDestinationKmsKey AWS API Documentation
    #
    class InvalidDestinationKmsKey < Struct.new(
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
    #
    # @!attribute [rw] message
    #   Error message explaining what's wrong with network settings.
    #   @return [String]
    #
    # @!attribute [rw] invalid_subnet_id
    #   The subnet ID that is either invalid or not part of the VPC
    #   specified.
    #   @return [String]
    #
    # @!attribute [rw] invalid_security_group_id
    #   The security group ID is either invalid or not part of the VPC
    #   specified.
    #   @return [String]
    #
    # @!attribute [rw] invalid_route_table_id
    #   The route table ID is either invalid or not part of the VPC
    #   specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidNetworkSettings AWS API Documentation
    #
    class InvalidNetworkSettings < Struct.new(
      :message,
      :invalid_subnet_id,
      :invalid_security_group_id,
      :invalid_route_table_id)
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

    # The Region provided for `Source Region` is invalid or is in a
    # different Amazon Web Services partition.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidRegion AWS API Documentation
    #
    class InvalidRegion < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Key Management Service (KMS) key of the source backup is invalid.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/InvalidSourceKmsKey AWS API Documentation
    #
    class InvalidSourceKmsKey < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes why a resource lifecycle state changed.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/LifecycleTransitionReason AWS API Documentation
    #
    class LifecycleTransitionReason < Struct.new(
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
    #   string that is unique within an Amazon Web Services Region.
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
    # @!attribute [rw] data_compression_type
    #   The data compression configuration for the file system.
    #   `DataCompressionType` can have the following values:
    #
    #   * `NONE` - Data compression is turned off for the file system.
    #
    #   * `LZ4` - Data compression is turned on with the LZ4 algorithm.
    #
    #   For more information, see [Lustre data compression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html
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
      :drive_cache_type,
      :data_compression_type)
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

    # A volume configuration is required for this operation.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/MissingVolumeConfiguration AWS API Documentation
    #
    class MissingVolumeConfiguration < Struct.new(
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

    # Configuration for the FSx for NetApp ONTAP file system.
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 90 days. The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   A recurring daily time, in the format `HH:MM`. `HH` is the
    #   zero-padded hour of the day (0-23), and `MM` is the zero-padded
    #   minute of the hour. For example, `05:00` specifies 5 AM daily.
    #   @return [String]
    #
    # @!attribute [rw] deployment_type
    #   The ONTAP file system deployment type.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_ip_address_range
    #   The IP address range in which the endpoints to access your file
    #   system are created.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The `Management` and `Intercluster` endpoints that are used to
    #   access data or to manage the file system using the NetApp ONTAP CLI,
    #   REST API, or NetApp SnapMirror.
    #   @return [Types::FileSystemEndpoints]
    #
    # @!attribute [rw] disk_iops_configuration
    #   The SSD IOPS configuration for the ONTAP file system, specifying the
    #   number of provisioned IOPS and the provision mode.
    #   @return [Types::DiskIopsConfiguration]
    #
    # @!attribute [rw] preferred_subnet_id
    #   The ID for a subnet. A *subnet* is a range of IP addresses in your
    #   virtual private cloud (VPC). For more information, see [VPC and
    #   Subnets][1] in the *Amazon VPC User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html
    #   @return [String]
    #
    # @!attribute [rw] route_table_ids
    #   The VPC route tables in which your file system's endpoints are
    #   created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] throughput_capacity
    #   Sustained throughput of an Amazon FSx file system in MBps.
    #   @return [Integer]
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   A recurring weekly time, in the format `D:HH:MM`.
    #
    #   `D` is the day of the week, for which 1 represents Monday and 7
    #   represents Sunday. For further details, see [the ISO-8601 spec as
    #   described on Wikipedia][1].
    #
    #   `HH` is the zero-padded hour of the day (0-23), and `MM` is the
    #   zero-padded minute of the hour.
    #
    #   For example, `1:05:00` specifies maintenance at 5 AM Monday.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_week_date
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/OntapFileSystemConfiguration AWS API Documentation
    #
    class OntapFileSystemConfiguration < Struct.new(
      :automatic_backup_retention_days,
      :daily_automatic_backup_start_time,
      :deployment_type,
      :endpoint_ip_address_range,
      :endpoints,
      :disk_iops_configuration,
      :preferred_subnet_id,
      :route_table_ids,
      :throughput_capacity,
      :weekly_maintenance_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of an Amazon FSx for NetApp ONTAP volume
    #
    # @!attribute [rw] flex_cache_endpoint_type
    #   Specifies the FlexCache endpoint type of the volume. Valid values
    #   are the following:
    #
    #   * `NONE` specifies that the volume doesn't have a FlexCache
    #     configuration. `NONE` is the default.
    #
    #   * `ORIGIN` specifies that the volume is the origin volume for a
    #     FlexCache volume.
    #
    #   * `CACHE` specifies that the volume is a FlexCache volume.
    #   @return [String]
    #
    # @!attribute [rw] junction_path
    #   Specifies the directory that NAS clients use to mount the volume,
    #   along with the SVM DNS name or IP address. You can create a
    #   `JunctionPath` directly below a parent volume junction or on a
    #   directory within a volume. A `JunctionPath` for a volume named vol3
    #   might be /vol1/vol2/vol3, or /vol1/dir2/vol3, or even
    #   /dir1/dir2/vol3..
    #   @return [String]
    #
    # @!attribute [rw] security_style
    #   The security style for the volume, which can be `UNIX`, `NTFS`, or
    #   `MIXED`.
    #   @return [String]
    #
    # @!attribute [rw] size_in_megabytes
    #   The configured size of the volume, in megabytes (MBs).
    #   @return [Integer]
    #
    # @!attribute [rw] storage_efficiency_enabled
    #   The volume's storage efficiency setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_virtual_machine_id
    #   The ID of the volume's storage virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] storage_virtual_machine_root
    #   A boolean flag indicating whether this volume is the root volume for
    #   its storage virtual machine (SVM). Only one volume on an SVM can be
    #   the root volume. This value defaults to false. If this value is
    #   true, then this is the SVM root volume.
    #
    #   This flag is useful when you're deleting an SVM, because you must
    #   first delete all non-root volumes. This flag, when set to false,
    #   helps you identify which volumes to delete before you can delete the
    #   SVM.
    #   @return [Boolean]
    #
    # @!attribute [rw] tiering_policy
    #   The volume's `TieringPolicy` setting.
    #   @return [Types::TieringPolicy]
    #
    # @!attribute [rw] uuid
    #   The volume's UUID (universally unique identifier).
    #   @return [String]
    #
    # @!attribute [rw] ontap_volume_type
    #   Specifies the type of volume. Valid values are the following:
    #
    #   * `RW` specifies a read-write volume. `RW` is the default.
    #
    #   * `DP` specifies a data protection volume. You can protect data by
    #     replicating it to data protection mirror copies and use data
    #     protection mirror copies to recover data when a disaster occurs.
    #
    #   * `LS` specifies a load-sharing mirror volume. A load-sharing mirror
    #     reduces the network traffic to a FlexVol volume by providing
    #     additional read-only access to clients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/OntapVolumeConfiguration AWS API Documentation
    #
    class OntapVolumeConfiguration < Struct.new(
      :flex_cache_endpoint_type,
      :junction_path,
      :security_style,
      :size_in_megabytes,
      :storage_efficiency_enabled,
      :storage_virtual_machine_id,
      :storage_virtual_machine_root,
      :tiering_policy,
      :uuid,
      :ontap_volume_type)
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
    # directory to which the Windows File Server or ONTAP storage virtual
    # machine (SVM) instance is joined.
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name of the self-managed AD directory.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The fully qualified distinguished name of the organizational unit
    #   within the self-managed AD directory to which the Windows File
    #   Server or ONTAP storage virtual machine (SVM) instance is joined.
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
    #   A list of up to three IP addresses of DNS servers or domain
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

    # The configuration that Amazon FSx uses to join a FSx for Windows File
    # Server file system or an ONTAP storage virtual machine (SVM) to a
    # self-managed (including on-premises) Microsoft Active Directory (AD)
    # directory. For more information, see [ Using Amazon FSx with your
    # self-managed Microsoft Active Directory][1] or [Managing SVMs][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html
    # [2]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html
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
    #   organizational unit within your self-managed AD directory. Amazon
    #   FSx only accepts OU as the direct parent of the file system. An
    #   example is `OU=FSx,DC=yourdomain,DC=corp,DC=com`. To learn more, see
    #   [RFC 2253][1]. If none is provided, the FSx file system is created
    #   in the default location of your self-managed AD directory.
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
    #   A list of up to three IP addresses of DNS servers or domain
    #   controllers in the self-managed AD directory.
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
    #   A list of up to three IP addresses of DNS servers or domain
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
    # can increase some service limits by contacting Amazon Web Services
    # Support.
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

    # The request was rejected because the lifecycle status of the source
    # backup is not `AVAILABLE`.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @!attribute [rw] backup_id
    #   The ID of the source backup. Specifies the backup you are copying.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SourceBackupUnavailable AWS API Documentation
    #
    class SourceBackupUnavailable < Struct.new(
      :message,
      :backup_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon FSx for NetApp ONTAP storage virtual machine
    # (SVM) configuraton.
    #
    # @!attribute [rw] active_directory_configuration
    #   Describes the Microsoft Active Directory configuration to which the
    #   SVM is joined, if applicable.
    #   @return [Types::SvmActiveDirectoryConfiguration]
    #
    # @!attribute [rw] creation_time
    #   The time that the resource was created, in seconds (since
    #   1970-01-01T00:00:00Z), also known as Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] endpoints
    #   The endpoints that are used to access data or to manage the SVM
    #   using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They
    #   are the `Iscsi`, `Management`, `Nfs`, and `Smb` endpoints.
    #   @return [Types::SvmEndpoints]
    #
    # @!attribute [rw] file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   Describes the SVM's lifecycle status.
    #
    #   * `CREATED` - The SVM is fully available for use.
    #
    #   * `CREATING` - Amazon FSx is creating the new SVM.
    #
    #   * `DELETING` - Amazon FSx is deleting an existing SVM.
    #
    #   * `FAILED` - Amazon FSx was unable to create the SVM.
    #
    #   * `MISCONFIGURED` - The SVM is in a failed but recoverable state.
    #
    #   * `PENDING` - Amazon FSx has not started creating the SVM.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the SVM, if provisioned.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a given resource. ARNs uniquely
    #   identify Amazon Web Services resources. We require an ARN when you
    #   need to specify a resource unambiguously across all of Amazon Web
    #   Services. For more information, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] storage_virtual_machine_id
    #   The SVM's system generated unique ID.
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   Describes the SVM's subtype.
    #   @return [String]
    #
    # @!attribute [rw] uuid
    #   The SVM's UUID (universally unique identifier).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of `Tag` values, with a maximum of 50 elements.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] lifecycle_transition_reason
    #   Describes why the SVM lifecycle state changed.
    #   @return [Types::LifecycleTransitionReason]
    #
    # @!attribute [rw] root_volume_security_style
    #   The security style of the root volume of the SVM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/StorageVirtualMachine AWS API Documentation
    #
    class StorageVirtualMachine < Struct.new(
      :active_directory_configuration,
      :creation_time,
      :endpoints,
      :file_system_id,
      :lifecycle,
      :name,
      :resource_arn,
      :storage_virtual_machine_id,
      :subtype,
      :uuid,
      :tags,
      :lifecycle_transition_reason,
      :root_volume_security_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to restrict the results of describe calls for Amazon FSx
    # for NetApp ONTAP storage virtual machines (SVMs). You can use multiple
    # filters to return results that meet all applied filter requirements.
    #
    # @note When making an API call, you may pass StorageVirtualMachineFilter
    #   data as a hash:
    #
    #       {
    #         name: "file-system-id", # accepts file-system-id
    #         values: ["StorageVirtualMachineFilterValue"],
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/StorageVirtualMachineFilter AWS API Documentation
    #
    class StorageVirtualMachineFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # No Amazon FSx for NetApp ONTAP SVMs were found based upon the supplied
    # parameters.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/StorageVirtualMachineNotFound AWS API Documentation
    #
    class StorageVirtualMachineNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of the Microsoft Active Directory (AD)
    # directory to which the Amazon FSx for ONTAP storage virtual machine
    # (SVM) is joined. Pleae note, account credentials are not returned in
    # the response payload.
    #
    # @!attribute [rw] net_bios_name
    #   The NetBIOS name of the Active Directory computer object that is
    #   joined to your SVM.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration of the self-managed Microsoft Active Directory
    #   (AD) directory to which the Windows File Server or ONTAP storage
    #   virtual machine (SVM) instance is joined.
    #   @return [Types::SelfManagedActiveDirectoryAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SvmActiveDirectoryConfiguration AWS API Documentation
    #
    class SvmActiveDirectoryConfiguration < Struct.new(
      :net_bios_name,
      :self_managed_active_directory_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon FSx for NetApp ONTAP storage virtual machine (SVM) has four
    # endpoints that are used to access data or to manage the SVM using the
    # NetApp ONTAP CLI, REST API, or NetApp CloudManager. They are the
    # `Iscsi`, `Management`, `Nfs`, and `Smb` endpoints.
    #
    # @!attribute [rw] dns_name
    #   The Domain Name Service (DNS) name for the file system. You can
    #   mount your file system using its DNS name.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   The SVM endpoint's IP addresses.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SvmEndpoint AWS API Documentation
    #
    class SvmEndpoint < Struct.new(
      :dns_name,
      :ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon FSx for NetApp ONTAP storage virtual machine (SVM) has the
    # following endpoints that are used to access data or to manage the SVM
    # using the NetApp ONTAP CLI, REST API, or NetApp CloudManager.
    #
    # @!attribute [rw] iscsi
    #   An endpoint for connecting using the Internet Small Computer Systems
    #   Interface (iSCSI) protocol.
    #   @return [Types::SvmEndpoint]
    #
    # @!attribute [rw] management
    #   An endpoint for managing SVMs using the NetApp ONTAP CLI, NetApp
    #   ONTAP API, or NetApp CloudManager.
    #   @return [Types::SvmEndpoint]
    #
    # @!attribute [rw] nfs
    #   An endpoint for connecting using the Network File System (NFS)
    #   protocol.
    #   @return [Types::SvmEndpoint]
    #
    # @!attribute [rw] smb
    #   An endpoint for connecting using the Server Message Block (SMB)
    #   protocol.
    #   @return [Types::SvmEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/SvmEndpoints AWS API Documentation
    #
    class SvmEndpoints < Struct.new(
      :iscsi,
      :management,
      :nfs,
      :smb)
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

    # Describes the data tiering policy for an ONTAP volume. When enabled,
    # Amazon FSx for ONTAP's intelligent tiering automatically transitions
    # a volume's data between the file system's primary storage and
    # capacity pool storage based on your access patterns.
    #
    # @note When making an API call, you may pass TieringPolicy
    #   data as a hash:
    #
    #       {
    #         cooling_period: 1,
    #         name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #       }
    #
    # @!attribute [rw] cooling_period
    #   Specifies the number of days that user data in a volume must remain
    #   inactive before it is considered "cold" and moved to the capacity
    #   pool. Used with the `AUTO` and `SNAPSHOT_ONLY` tiering policies.
    #   Enter a whole number between 2 and 183. Default values are 31 days
    #   for `AUTO` and 2 days for `SNAPSHOT_ONLY`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   Specifies the tiering policy used to transition data. Default value
    #   is `SNAPSHOT_ONLY`.
    #
    #   * `SNAPSHOT_ONLY` - moves cold snapshots to the capacity pool
    #     storage tier.
    #
    #   * `AUTO` - moves cold user data and snapshots to the capacity pool
    #     storage tier based on your access patterns.
    #
    #   * `ALL` - moves all user data blocks in both the active file system
    #     and Snapshot copies to the storage pool tier.
    #
    #   * `NONE` - keeps a volume's data in the primary storage tier,
    #     preventing it from being moved to the capacity pool tier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/TieringPolicy AWS API Documentation
    #
    class TieringPolicy < Struct.new(
      :cooling_period,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #         data_compression_type: "NONE", # accepts NONE, LZ4
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
    # @!attribute [rw] data_compression_type
    #   Sets the data compression configuration for the file system.
    #   `DataCompressionType` can have the following values:
    #
    #   * `NONE` - Data compression is turned off for the file system.
    #
    #   * `LZ4` - Data compression is turned on with the LZ4 algorithm.
    #
    #   If you don't use `DataCompressionType`, the file system retains its
    #   current data compression configuration.
    #
    #   For more information, see [Lustre data compression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemLustreConfiguration AWS API Documentation
    #
    class UpdateFileSystemLustreConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :auto_import_policy,
      :data_compression_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration updates for an Amazon FSx for NetApp ONTAP file
    # system.
    #
    # @note When making an API call, you may pass UpdateFileSystemOntapConfiguration
    #   data as a hash:
    #
    #       {
    #         automatic_backup_retention_days: 1,
    #         daily_automatic_backup_start_time: "DailyTime",
    #         fsx_admin_password: "AdminPassword",
    #         weekly_maintenance_start_time: "WeeklyTime",
    #       }
    #
    # @!attribute [rw] automatic_backup_retention_days
    #   The number of days to retain automatic backups. Setting this to 0
    #   disables automatic backups. You can retain automatic backups for a
    #   maximum of 90 days. The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_automatic_backup_start_time
    #   A recurring daily time, in the format `HH:MM`. `HH` is the
    #   zero-padded hour of the day (0-23), and `MM` is the zero-padded
    #   minute of the hour. For example, `05:00` specifies 5 AM daily.
    #   @return [String]
    #
    # @!attribute [rw] fsx_admin_password
    #   The ONTAP administrative password for the `fsxadmin` user.
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_start_time
    #   A recurring weekly time, in the format `D:HH:MM`.
    #
    #   `D` is the day of the week, for which 1 represents Monday and 7
    #   represents Sunday. For further details, see [the ISO-8601 spec as
    #   described on Wikipedia][1].
    #
    #   `HH` is the zero-padded hour of the day (0-23), and `MM` is the
    #   zero-padded minute of the hour.
    #
    #   For example, `1:05:00` specifies maintenance at 5 AM Monday.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_week_date
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemOntapConfiguration AWS API Documentation
    #
    class UpdateFileSystemOntapConfiguration < Struct.new(
      :automatic_backup_retention_days,
      :daily_automatic_backup_start_time,
      :fsx_admin_password,
      :weekly_maintenance_start_time)
      SENSITIVE = [:fsx_admin_password]
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
    #           audit_log_configuration: {
    #             file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #             file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #             audit_log_destination: "GeneralARN",
    #           },
    #         },
    #         lustre_configuration: {
    #           weekly_maintenance_start_time: "WeeklyTime",
    #           daily_automatic_backup_start_time: "DailyTime",
    #           automatic_backup_retention_days: 1,
    #           auto_import_policy: "NONE", # accepts NONE, NEW, NEW_CHANGED
    #           data_compression_type: "NONE", # accepts NONE, LZ4
    #         },
    #         ontap_configuration: {
    #           automatic_backup_retention_days: 1,
    #           daily_automatic_backup_start_time: "DailyTime",
    #           fsx_admin_password: "AdminPassword",
    #           weekly_maintenance_start_time: "WeeklyTime",
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
    #   behalf when you use the Command Line Interface (CLI) or an Amazon
    #   Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] storage_capacity
    #   Use this parameter to increase the storage capacity of an Amazon FSx
    #   for Windows File Server or Amazon FSx for Lustre file system.
    #   Specifies the storage capacity target value, GiB, to increase the
    #   storage capacity for the file system that you're updating. You
    #   cannot make a storage capacity increase request if there is an
    #   existing storage capacity increase request in progress.
    #
    #   For Windows file systems, the storage capacity target value must be
    #   at least 10 percent (%) greater than the current storage capacity
    #   value. In order to increase storage capacity, the file system must
    #   have at least 16 MB/s of throughput capacity.
    #
    #   For Lustre file systems, the storage capacity target value can be
    #   the following:
    #
    #   * For `SCRATCH_2` and `PERSISTENT_1 SSD` deployment types, valid
    #     values are in multiples of 2400 GiB. The value must be greater
    #     than the current storage capacity.
    #
    #   * For `PERSISTENT HDD` file systems, valid values are multiples of
    #     6000 GiB for 12 MB/s/TiB file systems and multiples of 1800 GiB
    #     for 40 MB/s/TiB file systems. The values must be greater than the
    #     current storage capacity.
    #
    #   * For `SCRATCH_1` file systems, you cannot increase the storage
    #     capacity.
    #
    #   For more information, see [Managing storage capacity][1] in the
    #   *Amazon FSx for Windows File Server User Guide* and [Managing
    #   storage and throughput capacity][2] in the *Amazon FSx for Lustre
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html
    #   [2]: https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html
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
    # @!attribute [rw] ontap_configuration
    #   The configuration updates for an Amazon FSx for NetApp ONTAP file
    #   system.
    #   @return [Types::UpdateFileSystemOntapConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemRequest AWS API Documentation
    #
    class UpdateFileSystemRequest < Struct.new(
      :file_system_id,
      :client_request_token,
      :storage_capacity,
      :windows_configuration,
      :lustre_configuration,
      :ontap_configuration)
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
    #         audit_log_configuration: {
    #           file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #           file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #           audit_log_destination: "GeneralARN",
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
    # @!attribute [rw] audit_log_configuration
    #   The configuration that Amazon FSx for Windows File Server uses to
    #   audit and log user accesses of files, folders, and file shares on
    #   the Amazon FSx for Windows File Server file system..
    #   @return [Types::WindowsAuditLogCreateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateFileSystemWindowsConfiguration AWS API Documentation
    #
    class UpdateFileSystemWindowsConfiguration < Struct.new(
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :throughput_capacity,
      :self_managed_active_directory_configuration,
      :audit_log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to specify changes to the ONTAP configuration for the volume you
    # are updating.
    #
    # @note When making an API call, you may pass UpdateOntapVolumeConfiguration
    #   data as a hash:
    #
    #       {
    #         junction_path: "JunctionPath",
    #         security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #         size_in_megabytes: 1,
    #         storage_efficiency_enabled: false,
    #         tiering_policy: {
    #           cooling_period: 1,
    #           name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #         },
    #       }
    #
    # @!attribute [rw] junction_path
    #   Specifies the location in the SVM's namespace where the volume is
    #   mounted. The `JunctionPath` must have a leading forward slash, such
    #   as `/vol3`.
    #   @return [String]
    #
    # @!attribute [rw] security_style
    #   The security style for the volume, which can be `UNIX`. `NTFS`, or
    #   `MIXED`.
    #   @return [String]
    #
    # @!attribute [rw] size_in_megabytes
    #   Specifies the size of the volume in megabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_efficiency_enabled
    #   Default is `false`. Set to true to enable the deduplication,
    #   compression, and compaction storage efficiency features on the
    #   volume.
    #   @return [Boolean]
    #
    # @!attribute [rw] tiering_policy
    #   Update the volume's data tiering policy.
    #   @return [Types::TieringPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateOntapVolumeConfiguration AWS API Documentation
    #
    class UpdateOntapVolumeConfiguration < Struct.new(
      :junction_path,
      :security_style,
      :size_in_megabytes,
      :storage_efficiency_enabled,
      :tiering_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStorageVirtualMachineRequest
    #   data as a hash:
    #
    #       {
    #         active_directory_configuration: {
    #           self_managed_active_directory_configuration: {
    #             user_name: "DirectoryUserName",
    #             password: "DirectoryPassword",
    #             dns_ips: ["IpAddress"],
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         storage_virtual_machine_id: "StorageVirtualMachineId", # required
    #         svm_admin_password: "AdminPassword",
    #       }
    #
    # @!attribute [rw] active_directory_configuration
    #   Updates the Microsoft Active Directory (AD) configuration for an SVM
    #   that is joined to an AD.
    #   @return [Types::UpdateSvmActiveDirectoryConfiguration]
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] storage_virtual_machine_id
    #   The ID of the SVM that you want to update, in the format
    #   `svm-0123456789abcdef0`.
    #   @return [String]
    #
    # @!attribute [rw] svm_admin_password
    #   Enter a new SvmAdminPassword if you are updating it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateStorageVirtualMachineRequest AWS API Documentation
    #
    class UpdateStorageVirtualMachineRequest < Struct.new(
      :active_directory_configuration,
      :client_request_token,
      :storage_virtual_machine_id,
      :svm_admin_password)
      SENSITIVE = [:svm_admin_password]
      include Aws::Structure
    end

    # @!attribute [rw] storage_virtual_machine
    #   Describes the Amazon FSx for NetApp ONTAP storage virtual machine
    #   (SVM) configuraton.
    #   @return [Types::StorageVirtualMachine]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateStorageVirtualMachineResponse AWS API Documentation
    #
    class UpdateStorageVirtualMachineResponse < Struct.new(
      :storage_virtual_machine)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the Microsoft Active Directory (AD) configuration of an SVM
    # joined to an AD. Pleae note, account credentials are not returned in
    # the response payload.
    #
    # @note When making an API call, you may pass UpdateSvmActiveDirectoryConfiguration
    #   data as a hash:
    #
    #       {
    #         self_managed_active_directory_configuration: {
    #           user_name: "DirectoryUserName",
    #           password: "DirectoryPassword",
    #           dns_ips: ["IpAddress"],
    #         },
    #       }
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration that Amazon FSx uses to join the Windows File
    #   Server instance to a self-managed Microsoft Active Directory (AD)
    #   directory.
    #   @return [Types::SelfManagedActiveDirectoryConfigurationUpdates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateSvmActiveDirectoryConfiguration AWS API Documentation
    #
    class UpdateSvmActiveDirectoryConfiguration < Struct.new(
      :self_managed_active_directory_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVolumeRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         volume_id: "VolumeId", # required
    #         ontap_configuration: {
    #           junction_path: "JunctionPath",
    #           security_style: "UNIX", # accepts UNIX, NTFS, MIXED
    #           size_in_megabytes: 1,
    #           storage_efficiency_enabled: false,
    #           tiering_policy: {
    #             cooling_period: 1,
    #             name: "SNAPSHOT_ONLY", # accepts SNAPSHOT_ONLY, AUTO, ALL, NONE
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   (Optional) An idempotency token for resource creation, in a string
    #   of up to 64 ASCII characters. This token is automatically filled on
    #   your behalf when you use the Command Line Interface (CLI) or an
    #   Amazon Web Services SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   Specifies the volume that you want to update, formatted
    #   `fsvol-0123456789abcdef0`.
    #   @return [String]
    #
    # @!attribute [rw] ontap_configuration
    #   The `ONTAP` configuration of the volume you are updating.
    #   @return [Types::UpdateOntapVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateVolumeRequest AWS API Documentation
    #
    class UpdateVolumeRequest < Struct.new(
      :client_request_token,
      :volume_id,
      :ontap_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume
    #   Returned after a successful `UpdateVolume` API operation, describing
    #   the volume just updated.
    #   @return [Types::Volume]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/UpdateVolumeResponse AWS API Documentation
    #
    class UpdateVolumeResponse < Struct.new(
      :volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon FSx for NetApp ONTAP volume.
    #
    # @!attribute [rw] creation_time
    #   The time that the resource was created, in seconds (since
    #   1970-01-01T00:00:00Z), also known as Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] file_system_id
    #   The globally unique ID of the file system, assigned by Amazon FSx.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle status of the volume.
    #
    #   * `CREATED` - The volume is fully available for use.
    #
    #   * `CREATING` - Amazon FSx is creating the new volume.
    #
    #   * `DELETING` - Amazon FSx is deleting an existing volume.
    #
    #   * `FAILED` - Amazon FSx was unable to create the volume.
    #
    #   * `MISCONFIGURED` - The volume is in a failed but recoverable state.
    #
    #   * `PENDING` - Amazon FSx has not started creating the volume.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the volume.
    #   @return [String]
    #
    # @!attribute [rw] ontap_configuration
    #   The configuration of an Amazon FSx for NetApp ONTAP volume
    #   @return [Types::OntapVolumeConfiguration]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for a given resource. ARNs uniquely
    #   identify Amazon Web Services resources. We require an ARN when you
    #   need to specify a resource unambiguously across all of Amazon Web
    #   Services. For more information, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
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
    # @!attribute [rw] volume_id
    #   The system-generated, unique ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of volume; `ONTAP` is the only valid volume type.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_transition_reason
    #   Describes why the volume lifecycle state changed.
    #   @return [Types::LifecycleTransitionReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :creation_time,
      :file_system_id,
      :lifecycle,
      :name,
      :ontap_configuration,
      :resource_arn,
      :tags,
      :volume_id,
      :volume_type,
      :lifecycle_transition_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to restrict the results of describe calls for Amazon FSx
    # for NetApp ONTAP volumes. You can use multiple filters to return
    # results that meet all applied filter requirements.
    #
    # @note When making an API call, you may pass VolumeFilter
    #   data as a hash:
    #
    #       {
    #         name: "file-system-id", # accepts file-system-id, storage-virtual-machine-id
    #         values: ["VolumeFilterValue"],
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/VolumeFilter AWS API Documentation
    #
    class VolumeFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # No Amazon FSx for NetApp ONTAP volumes were found based upon the
    # supplied parameters.
    #
    # @!attribute [rw] message
    #   A detailed error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/VolumeNotFound AWS API Documentation
    #
    class VolumeNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that Amazon FSx for Windows File Server uses to
    # audit and log user accesses of files, folders, and file shares on the
    # Amazon FSx for Windows File Server file system. For more information,
    # see [ File access auditing][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/file-access-auditing.html
    #
    # @!attribute [rw] file_access_audit_log_level
    #   Sets which attempt type is logged by Amazon FSx for file and folder
    #   accesses.
    #
    #   * `SUCCESS_ONLY` - only successful attempts to access files or
    #     folders are logged.
    #
    #   * `FAILURE_ONLY` - only failed attempts to access files or folders
    #     are logged.
    #
    #   * `SUCCESS_AND_FAILURE` - both successful attempts and failed
    #     attempts to access files or folders are logged.
    #
    #   * `DISABLED` - access auditing of files and folders is turned off.
    #   @return [String]
    #
    # @!attribute [rw] file_share_access_audit_log_level
    #   Sets which attempt type is logged by Amazon FSx for file share
    #   accesses.
    #
    #   * `SUCCESS_ONLY` - only successful attempts to access file shares
    #     are logged.
    #
    #   * `FAILURE_ONLY` - only failed attempts to access file shares are
    #     logged.
    #
    #   * `SUCCESS_AND_FAILURE` - both successful attempts and failed
    #     attempts to access file shares are logged.
    #
    #   * `DISABLED` - access auditing of file shares is turned off.
    #   @return [String]
    #
    # @!attribute [rw] audit_log_destination
    #   The Amazon Resource Name (ARN) for the destination of the audit
    #   logs. The destination can be any Amazon CloudWatch Logs log group
    #   ARN or Amazon Kinesis Data Firehose delivery stream ARN.
    #
    #   The name of the Amazon CloudWatch Logs log group must begin with the
    #   `/aws/fsx` prefix. The name of the Amazon Kinesis Data Firehouse
    #   delivery stream must begin with the `aws-fsx` prefix.
    #
    #   The destination ARN (either CloudWatch Logs log group or Kinesis
    #   Data Firehose delivery stream) must be in the same Amazon Web
    #   Services partition, Amazon Web Services Region, and Amazon Web
    #   Services account as your Amazon FSx file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/WindowsAuditLogConfiguration AWS API Documentation
    #
    class WindowsAuditLogConfiguration < Struct.new(
      :file_access_audit_log_level,
      :file_share_access_audit_log_level,
      :audit_log_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Windows file access auditing configuration used when creating or
    # updating an Amazon FSx for Windows File Server file system.
    #
    # @note When making an API call, you may pass WindowsAuditLogCreateConfiguration
    #   data as a hash:
    #
    #       {
    #         file_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         file_share_access_audit_log_level: "DISABLED", # required, accepts DISABLED, SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE
    #         audit_log_destination: "GeneralARN",
    #       }
    #
    # @!attribute [rw] file_access_audit_log_level
    #   Sets which attempt type is logged by Amazon FSx for file and folder
    #   accesses.
    #
    #   * `SUCCESS_ONLY` - only successful attempts to access files or
    #     folders are logged.
    #
    #   * `FAILURE_ONLY` - only failed attempts to access files or folders
    #     are logged.
    #
    #   * `SUCCESS_AND_FAILURE` - both successful attempts and failed
    #     attempts to access files or folders are logged.
    #
    #   * `DISABLED` - access auditing of files and folders is turned off.
    #   @return [String]
    #
    # @!attribute [rw] file_share_access_audit_log_level
    #   Sets which attempt type is logged by Amazon FSx for file share
    #   accesses.
    #
    #   * `SUCCESS_ONLY` - only successful attempts to access file shares
    #     are logged.
    #
    #   * `FAILURE_ONLY` - only failed attempts to access file shares are
    #     logged.
    #
    #   * `SUCCESS_AND_FAILURE` - both successful attempts and failed
    #     attempts to access file shares are logged.
    #
    #   * `DISABLED` - access auditing of file shares is turned off.
    #   @return [String]
    #
    # @!attribute [rw] audit_log_destination
    #   The Amazon Resource Name (ARN) that specifies the destination of the
    #   audit logs.
    #
    #   The destination can be any Amazon CloudWatch Logs log group ARN or
    #   Amazon Kinesis Data Firehose delivery stream ARN, with the following
    #   requirements:
    #
    #   * The destination ARN that you provide (either CloudWatch Logs log
    #     group or Kinesis Data Firehose delivery stream) must be in the
    #     same Amazon Web Services partition, Amazon Web Services Region,
    #     and Amazon Web Services account as your Amazon FSx file system.
    #
    #   * The name of the Amazon CloudWatch Logs log group must begin with
    #     the `/aws/fsx` prefix. The name of the Amazon Kinesis Data
    #     Firehouse delivery stream must begin with the `aws-fsx` prefix.
    #
    #   * If you do not provide a destination in `AuditLogDestination`,
    #     Amazon FSx will create and use a log stream in the CloudWatch Logs
    #     `/aws/fsx/windows` log group.
    #
    #   * If `AuditLogDestination` is provided and the resource does not
    #     exist, the request will fail with a `BadRequest` error.
    #
    #   * If `FileAccessAuditLogLevel` and `FileShareAccessAuditLogLevel`
    #     are both set to `DISABLED`, you cannot specify a destination in
    #     `AuditLogDestination`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fsx-2018-03-01/WindowsAuditLogCreateConfiguration AWS API Documentation
    #
    class WindowsAuditLogCreateConfiguration < Struct.new(
      :file_access_audit_log_level,
      :file_share_access_audit_log_level,
      :audit_log_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for this Microsoft Windows file system.
    #
    # @!attribute [rw] active_directory_id
    #   The ID for an existing Amazon Web Services Managed Microsoft Active
    #   Directory instance that the file system is joined to.
    #   @return [String]
    #
    # @!attribute [rw] self_managed_active_directory_configuration
    #   The configuration of the self-managed Microsoft Active Directory
    #   (AD) directory to which the Windows File Server or ONTAP storage
    #   virtual machine (SVM) instance is joined.
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
    #   [Availability and durability: Single-AZ and Multi-AZ file
    #   systems][1].
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
    #   The throughput of the Amazon FSx file system, measured in megabytes
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
    # @!attribute [rw] aliases
    #   An array of one or more DNS aliases that are currently associated
    #   with the Amazon FSx file system. Aliases allow you to use existing
    #   DNS names to access the data in your Amazon FSx file system. You can
    #   associate up to 50 aliases with a file system at any time. You can
    #   associate additional DNS aliases after you create the file system
    #   using the AssociateFileSystemAliases operation. You can remove DNS
    #   aliases from the file system after it is created using the
    #   DisassociateFileSystemAliases operation. You only need to specify
    #   the alias name in the request payload. For more information, see
    #   [DNS aliases][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html
    #   @return [Array<Types::Alias>]
    #
    # @!attribute [rw] audit_log_configuration
    #   The configuration that Amazon FSx for Windows File Server uses to
    #   audit and log user accesses of files, folders, and file shares on
    #   the Amazon FSx for Windows File Server file system.
    #   @return [Types::WindowsAuditLogConfiguration]
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
      :copy_tags_to_backups,
      :aliases,
      :audit_log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
