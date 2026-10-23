# frozen_string_literal: true

# This is generated code!

module Aws::FSx
  # This module contains the types returned by client operations.
  module Types

    # <p>An access point with that name already exists in the Amazon Web Services Region in your Amazon Web Services account.</p>
    # @!attribute error_code
    #   <p>An error code indicating that an access point with that name already exists in the Amazon Web Services Region in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class AccessPointAlreadyOwnedByYou < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Microsoft Active Directory attributes of the Amazon FSx for Windows File
    #             Server file system.</p>
    # @!attribute domain_name
    #   <p>The fully qualified domain name of the self-managed Active Directory directory.</p>
    #   @return [String]
    # @!attribute active_directory_id
    #   <p>The ID of the Amazon Web Services Managed Microsoft Active Directory instance to which the file system is joined.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class ActiveDirectoryBackupAttributes < Struct.new(
      nil,
      :domain_name,
      :active_directory_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Active Directory error.</p>
    # @!attribute active_directory_id
    #   <p>The directory ID of the directory that an error pertains to.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of Active Directory error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class ActiveDirectoryError < Struct.new(
      nil,
      :active_directory_id,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a specific Amazon FSx administrative action for the current Windows,
    #             Lustre, OpenZFS, or ONTAP file system or volume.</p>
    # @!attribute administrative_action_type
    #   <p>Describes the type of administrative action, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FILE_SYSTEM_UPDATE</code> - A file system update administrative action
    #                       initiated from the Amazon FSx console, API
    #                           (<code>UpdateFileSystem</code>), or CLI
    #                       (<code>update-file-system</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THROUGHPUT_OPTIMIZATION</code> - After the <code>FILE_SYSTEM_UPDATE</code>
    #                       task to increase a file system's throughput capacity has been completed
    #                       successfully, a <code>THROUGHPUT_OPTIMIZATION</code> task starts.</p>
    #                  <p>You can track the storage-optimization progress using the
    #                       <code>ProgressPercent</code> property. When
    #                       <code>THROUGHPUT_OPTIMIZATION</code> has been completed successfully, the
    #                       parent <code>FILE_SYSTEM_UPDATE</code> action status changes to
    #                       <code>COMPLETED</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-throughput-capacity.html">Managing
    #                           throughput capacity</a> in the <i>Amazon FSx for Windows
    #                               File Server User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STORAGE_OPTIMIZATION</code> - After the <code>FILE_SYSTEM_UPDATE</code>
    #                       task to increase a file system's storage capacity has completed
    #                       successfully, a <code>STORAGE_OPTIMIZATION</code> task starts. </p>
    #                  <ul>
    #                     <li>
    #                        <p>For Windows and ONTAP, storage optimization is the process of migrating the file system data
    #                           to newer larger disks.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Lustre, storage optimization consists of rebalancing the data across the existing and
    #                               newly added file servers.</p>
    #                     </li>
    #                  </ul>
    #                  <p>You can track the storage-optimization progress using the
    #                           <code>ProgressPercent</code> property. When
    #                           <code>STORAGE_OPTIMIZATION</code> has been completed successfully, the
    #                       parent <code>FILE_SYSTEM_UPDATE</code> action status changes to
    #                           <code>COMPLETED</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing
    #                           storage capacity</a> in the <i>Amazon FSx for Windows
    #                           File Server User Guide</i>, <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing storage
    #                           capacity</a> in the <i>Amazon FSx for
    #                               Lustre User Guide</i>, and
    #                       <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html">Managing storage capacity and provisioned IOPS</a> in the <i>Amazon FSx for NetApp ONTAP User
    #                               Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FILE_SYSTEM_ALIAS_ASSOCIATION</code> - A file system update to associate a new Domain
    #                       Name System (DNS) alias with the file system. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_AssociateFileSystemAliases.html">
    #                           AssociateFileSystemAliases</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FILE_SYSTEM_ALIAS_DISASSOCIATION</code> - A file system update to disassociate a DNS alias from the file system.
    #                   For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DisassociateFileSystemAliases.html">DisassociateFileSystemAliases</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IOPS_OPTIMIZATION</code> - After the <code>FILE_SYSTEM_UPDATE</code>
    #                       task to increase a file system's throughput capacity has been completed
    #                       successfully, a <code>IOPS_OPTIMIZATION</code> task starts.</p>
    #                  <p>You can track the storage-optimization progress using the
    #                           <code>ProgressPercent</code> property. When <code>IOPS_OPTIMIZATION</code>
    #                       has been completed successfully, the parent <code>FILE_SYSTEM_UPDATE</code>
    #                       action status changes to <code>COMPLETED</code>. For more information, see
    #                           <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-provisioned-ssd-iops.html">Managing
    #                           provisioned SSD IOPS</a> in the Amazon FSx for Windows File
    #                       Server User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STORAGE_TYPE_OPTIMIZATION</code> - After the <code>FILE_SYSTEM_UPDATE</code>
    #                       task to increase a file system's throughput capacity has been completed
    #                       successfully, a <code>STORAGE_TYPE_OPTIMIZATION</code> task starts.</p>
    #                  <p>You can track the storage-optimization progress using the
    #                       <code>ProgressPercent</code> property. When
    #                       <code>STORAGE_TYPE_OPTIMIZATION</code> has been completed successfully, the
    #                       parent <code>FILE_SYSTEM_UPDATE</code> action status changes to
    #                       <code>COMPLETED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_UPDATE</code> - A volume update to an Amazon FSx for OpenZFS volume
    #                       initiated from the Amazon FSx console, API (<code>UpdateVolume</code>),
    #                       or CLI (<code>update-volume</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_RESTORE</code> - An Amazon FSx for OpenZFS volume
    #                   is returned to the state saved by the specified snapshot, initiated from an
    #                   API (<code>RestoreVolumeFromSnapshot</code>) or CLI
    #                   (<code>restore-volume-from-snapshot</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SNAPSHOT_UPDATE</code> - A snapshot update to an Amazon FSx for
    #                       OpenZFS volume initiated from the Amazon FSx console, API
    #                           (<code>UpdateSnapshot</code>), or CLI (<code>update-snapshot</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RELEASE_NFS_V3_LOCKS</code> - Tracks the release of Network File System
    #                       (NFS) V3 locks on an Amazon FSx for OpenZFS file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DOWNLOAD_DATA_FROM_BACKUP</code> - An FSx for ONTAP backup is
    #                       being restored to a new volume on a second-generation file system. Once the all the file 
    #                       metadata is loaded onto the volume, you can mount the volume with read-only access.
    #                       during this process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_INITIALIZE_WITH_SNAPSHOT</code> - A volume is being created from
    #                       a snapshot on a different FSx for OpenZFS file system. You can
    #                       initiate this from the Amazon FSx console, API
    #                       (<code>CreateVolume</code>), or CLI (<code>create-volume</code>) when using
    #                       the using the <code>FULL_COPY</code> strategy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_UPDATE_WITH_SNAPSHOT</code> - A volume is being updated from a
    #                       snapshot on a different FSx for OpenZFS file system. You can initiate
    #                       this from the Amazon FSx console, API
    #                           (<code>CopySnapshotAndUpdateVolume</code>), or CLI
    #                           (<code>copy-snapshot-and-update-volume</code>).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute progress_percent
    #   <p>The percentage-complete status of a <code>STORAGE_OPTIMIZATION</code> 
    #                or <code>DOWNLOAD_DATA_FROM_BACKUP</code> administrative action. Does not apply to any
    #               other administrative action type.</p>
    #   @return [Integer]
    # @!attribute request_time
    #   <p>The time that the administrative action request was received.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the administrative action, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon FSx failed to process the administrative action
    #                       successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Amazon FSx is processing the administrative action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon FSx is waiting to process the administrative
    #                       action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - Amazon FSx has finished processing the administrative
    #                       task.</p>
    #                  <p>For a backup restore to a second-generation FSx for ONTAP file system, 
    #                       indicates that all data has been downloaded to the volume, and clients now have read-write access to volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_OPTIMIZING</code> - For a storage-capacity increase update, Amazon FSx
    #                       has updated the file system with the new storage capacity, and is now performing
    #                       the storage-optimization process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - For a backup restore to a second-generation FSx for ONTAP file system, 
    #                       indicates that the file metadata is being downloaded onto the volume. The volume's Lifecycle state is CREATING.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - For a backup restore to a second-generation FSx for ONTAP file system, 
    #                       indicates that all metadata has been downloaded to the new volume and client can access data with read-only access 
    #                       while Amazon FSx downloads the file data to the volume. Track the
    #                       progress of this process with the <code>ProgressPercent</code> element.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute target_file_system_values
    #   <p>The target value for the administration action, provided in the
    #                   <code>UpdateFileSystem</code> operation. Returned for
    #                   <code>FILE_SYSTEM_UPDATE</code> administrative actions. </p>
    #   @return [Types::FileSystem]
    # @!attribute failure_details
    #   <p>Provides information about a failed administrative action.</p>
    #   @return [Types::AdministrativeActionFailureDetails]
    # @!attribute target_volume_values
    #   <p>Describes an Amazon FSx volume.</p>
    #   @return [Types::Volume]
    # @!attribute target_snapshot_values
    #   <p>A snapshot of an Amazon FSx for OpenZFS volume.</p>
    #   @return [Types::Snapshot]
    # @!attribute total_transfer_bytes
    #   <p>The number of bytes that have transferred for the FSx for OpenZFS snapshot
    #               that you're copying.</p>
    #   @return [Integer]
    # @!attribute remaining_transfer_bytes
    #   <p>The remaining bytes to transfer for the FSx for OpenZFS snapshot that you're
    #               copying.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class AdministrativeAction < Struct.new(
      nil,
      :administrative_action_type,
      :progress_percent,
      :request_time,
      :status,
      :target_file_system_values,
      :failure_details,
      :target_volume_values,
      :target_snapshot_values,
      :total_transfer_bytes,
      :remaining_transfer_bytes,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a failed administrative action.</p>
    # @!attribute message
    #   <p>Error message providing details about the failed administrative action.</p>
    #   @return [String]
    class AdministrativeActionFailureDetails < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to specify configuration options for a volume’s storage aggregate or aggregates.</p>
    # @!attribute aggregates
    #   <p>The list of aggregates that this volume resides on. Aggregates are storage pools which make up your primary storage tier. Each high-availability (HA) pair has one aggregate. The names of the aggregates map to the names of the aggregates in the ONTAP CLI and REST API. For FlexVols, there will always be a single entry.</p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The strings in the value of <code>Aggregates</code> are not are not formatted as <code>aggrX</code>, where X is a number between 1 and 12.</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>Aggregates</code> contains aggregates that are not present.</p>
    #               </li>
    #               <li>
    #                  <p>One or more of the aggregates supplied are too close to the volume limit to support adding more volumes.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute total_constituents
    #   <p>The total number of constituents this FlexGroup volume has. Not applicable for FlexVols.</p>
    #   @return [Integer]
    class AggregateConfiguration < Struct.new(
      nil,
      :aggregates,
      :total_constituents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A DNS alias that is associated with the file system. You can use a DNS alias to access a file system using 
    #             user-defined DNS names, in addition to the default DNS name
    #             that Amazon FSx assigns to the file system. For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">DNS aliases</a> 
    #             in the <i>FSx for Windows File Server User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the DNS alias. The alias name has to meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Formatted as a fully-qualified domain name (FQDN), <code>hostname.domain</code>, for example, <code>accounting.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Can contain alphanumeric characters, the underscore (_), and the hyphen (-).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot start or end with a hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>Can start with a numeric.</p>
    #               </li>
    #            </ul>
    #            <p>For DNS names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
    #               as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>Describes the state of the DNS alias.</p>
    #            <ul>
    #               <li>
    #                  <p>AVAILABLE - The DNS alias is associated with an Amazon FSx file system.</p>
    #               </li>
    #               <li>
    #                  <p>CREATING - Amazon FSx is creating the DNS alias and associating it with the file system.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED - Amazon FSx was unable to associate the DNS alias with the file system.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING - Amazon FSx is disassociating the DNS alias from the file system and deleting it.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED - Amazon FSx was unable to disassociate the DNS alias from the file system.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Alias < Struct.new(
      nil,
      :name,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object specifying one or more DNS alias names to associate with an Amazon FSx for Windows File Server file system.</p>
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>Specifies the file system with which you want to associate one or more DNS aliases.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>An array of one or more DNS alias names to associate with the file system. 
    #               The alias name has to comply with the following formatting requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Formatted as a fully-qualified domain name (FQDN), <i>
    #                        <code>hostname.domain</code>
    #                     </i>, 
    #                       for example, <code>accounting.corp.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Can contain alphanumeric characters and the hyphen (-).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot start or end with a hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>Can start with a numeric.</p>
    #               </li>
    #            </ul>
    #            <p>For DNS alias names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
    #               as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>
    #   @return [Array<String>]
    class AssociateFileSystemAliasesRequest < Struct.new(
      nil,
      :client_request_token,
      :file_system_id,
      :aliases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The system generated response showing the DNS aliases that 
    #             Amazon FSx is attempting to associate with the file system. 
    #             Use the  API 
    #             operation to monitor the status of the aliases Amazon FSx is 
    #             associating with the file system. It can take up to 2.5 minutes for 
    #         the alias status to change from <code>CREATING</code> to <code>AVAILABLE</code>. </p>
    # @!attribute aliases
    #   <p>An array of the DNS aliases that Amazon FSx is associating with the file system.</p>
    #   @return [Array<Types::Alias>]
    class AssociateFileSystemAliasesResponse < Struct.new(
      nil,
      :aliases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data repository association's automatic export policy. The
    #             <code>AutoExportPolicy</code> defines the types of updated objects on the
    #             file system that will be automatically exported to the data repository.
    #             As you create, modify, or delete files, Amazon FSx for Lustre 
    #             automatically exports the defined changes asynchronously once your application finishes
    #             modifying the file.</p>
    #          <p>The <code>AutoExportPolicy</code> is only supported on Amazon FSx for Lustre file systems
    #             with a data repository association.</p>
    # @!attribute events
    #   <p>The <code>AutoExportPolicy</code> can have the following event values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - New files and directories are automatically exported
    #                   to the data repository as they are added to the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHANGED</code> - Changes to files and directories on the
    #                   file system are automatically exported to the data repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - Files and directories are automatically deleted
    #                   on the data repository when they are deleted on the file system.</p>
    #               </li>
    #            </ul>
    #            <p>You can define any combination of event types for your <code>AutoExportPolicy</code>.</p>
    #   @return [Array<String>]
    class AutoExportPolicy < Struct.new(
      nil,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data repository association's automatic import policy.
    #             The AutoImportPolicy defines how Amazon FSx keeps your file metadata and directory
    #             listings up to date by importing changes to your Amazon FSx for Lustre file system
    #             as you modify objects in a linked S3 bucket.</p>
    #          <p>The <code>AutoImportPolicy</code> is only supported on Amazon FSx for Lustre file systems
    #             with a data repository association.</p>
    # @!attribute events
    #   <p>The <code>AutoImportPolicy</code> can have the following event values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - Amazon FSx automatically imports metadata of
    #                   files added to the linked S3 bucket that do not currently exist in the FSx
    #                   file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHANGED</code> - Amazon FSx automatically updates file
    #                   metadata and invalidates existing file content on the file system as files
    #                   change in the data repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - Amazon FSx automatically deletes files
    #                   on the file system as corresponding files are deleted in the data repository.</p>
    #               </li>
    #            </ul>
    #            <p>You can define any combination of event types for your <code>AutoImportPolicy</code>.</p>
    #   @return [Array<String>]
    class AutoImportPolicy < Struct.new(
      nil,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sets the autocommit period of files in an FSx for ONTAP SnapLock volume, which determines 
    #             how long the files must  
    #         remain unmodified before they're automatically transitioned to the write once, read many (WORM) state. 
    #         </p>
    #          <p>For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/worm-state.html#worm-state-autocommit">Autocommit</a>. </p>
    # @!attribute type
    #   <p>Defines the type of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume. 
    #           Setting this value to <code>NONE</code> disables autocommit. The default value is <code>NONE</code>. </p>
    #   @return [String]
    # @!attribute value
    #   <p>Defines the amount of time for the autocommit period of a file in an FSx for ONTAP SnapLock volume. 
    #           The following ranges are valid: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minutes</code>: 5 - 65,535</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hours</code>: 1 - 65,535</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Days</code>: 1 - 3,650</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Months</code>: 1 - 120</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Years</code>: 1 - 10</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class AutocommitPeriod < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A backup of an Amazon FSx for Windows File Server, Amazon FSx for
    #             Lustre file system, Amazon FSx for NetApp ONTAP volume, or Amazon FSx
    #             for OpenZFS file system.</p>
    # @!attribute backup_id
    #   <p>The ID of the backup.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the backup.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The backup is fully available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx hasn't started creating the backup.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon FSx is creating the backup.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRANSFERRING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx is transferring the backup to Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COPYING</code> - Amazon FSx is copying the backup.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - Amazon FSx deleted the backup and it's no longer
    #                       available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon FSx couldn't finish the backup.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_details
    #   <p>Details explaining any failures that occurred when creating a backup.</p>
    #   @return [Types::BackupFailureDetails]
    # @!attribute type
    #   <p>The type of the file-system backup.</p>
    #   @return [String]
    # @!attribute progress_percent
    #   <p>Displays the current percent of progress of an asynchronous task.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time when a particular backup was created.</p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt the
    #               backup of the Amazon FSx file system's data at rest. </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the backup resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with a particular file system.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system
    #   <p>The metadata of the file system associated with the backup. This metadata is persisted
    #               even if the file system is deleted.</p>
    #   @return [Types::FileSystem]
    # @!attribute directory_information
    #   <p>The configuration of the self-managed Microsoft Active Directory directory to which
    #               the Windows File Server instance is joined.</p>
    #   @return [Types::ActiveDirectoryBackupAttributes]
    # @!attribute owner_id
    #   <p>An Amazon Web Services account ID. This ID is a 12-digit number that you use to construct Amazon
    #               Resource Names (ARNs) for resources.</p>
    #   @return [String]
    # @!attribute source_backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    # @!attribute source_backup_region
    #   <p>The source Region of the backup. Specifies the Region from where this backup
    #               is copied.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Specifies the resource type that's backed up.</p>
    #   @return [String]
    # @!attribute volume
    #   <p>Describes an Amazon FSx volume.</p>
    #   @return [Types::Volume]
    # @!attribute size_in_bytes
    #   <p>
    #               The size of the backup in bytes. This represents the amount of data that the file system would contain if you restore this backup.
    #           </p>
    #   @return [Integer]
    class Backup < Struct.new(
      nil,
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
      :volume,
      :size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't delete a backup while it's being copied.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    # @!attribute backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    class BackupBeingCopied < Struct.new(
      nil,
      :message,
      :backup_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If backup creation fails, this structure contains the details of that
    #             failure.</p>
    # @!attribute message
    #   <p>A message describing the backup-creation failure.</p>
    #   @return [String]
    class BackupFailureDetails < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Another backup is already under way. Wait for completion before initiating
    #             additional backups of this file system.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class BackupInProgress < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No Amazon FSx backups were found based upon the supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class BackupNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't delete a backup while it's being used to restore a file
    #             system.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of a file system being restored from the backup.</p>
    #   @return [String]
    class BackupRestoring < Struct.new(
      nil,
      :message,
      :file_system_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A generic error indicating a failure with a client request.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class BadRequest < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cancels a data repository task.</p>
    # @!attribute task_id
    #   <p>Specifies the data repository task to cancel.</p>
    #   @return [String]
    class CancelDataRepositoryTaskRequest < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle
    #   <p>The lifecycle status of the data repository task, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon FSx has not started the task.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXECUTING</code> - Amazon FSx is processing the task.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> -  Amazon FSx was not able to complete the task. For example, there may be files the task failed to process. 
    #                   The <a>DataRepositoryTaskFailureDetails</a> property provides more information about task failures.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - FSx completed the task successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELED</code> - Amazon FSx canceled the task and it did not complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELING</code> - FSx is in process of canceling the task.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute task_id
    #   <p>The ID of the task being canceled.</p>
    #   @return [String]
    class CancelDataRepositoryTaskResponse < Struct.new(
      nil,
      :lifecycle,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a report detailing the data repository task results of the files processed that match the criteria specified in the report <code>Scope</code> parameter. 
    #             FSx delivers the report to the file system's linked data repository in Amazon S3, 
    #             using the path specified in the report <code>Path</code> parameter. 
    #             You can specify whether or not a report gets generated for a task using the <code>Enabled</code> parameter.</p>
    # @!attribute enabled
    #   <p>Set <code>Enabled</code> to <code>True</code> to generate a <code>CompletionReport</code> when the task completes. 
    #               If set to <code>true</code>, then you need to provide a report <code>Scope</code>, <code>Path</code>, and <code>Format</code>. 
    #               Set <code>Enabled</code> to <code>False</code> if you do not want a <code>CompletionReport</code> generated when the task completes.</p>
    #   @return [Boolean]
    # @!attribute path
    #   <p>Required if <code>Enabled</code> is set to <code>true</code>. Specifies the location of the report on the file system's
    #               linked S3 data repository. An absolute path that defines where the completion report will be stored in the destination location. 
    #               The <code>Path</code> you provide must be located within the file system’s ExportPath. 
    #               An example <code>Path</code> value is "s3://amzn-s3-demo-bucket/myExportPath/optionalPrefix".
    #               The report provides the following information for each file in the report:
    #               FilePath, FileStatus, and ErrorCode.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Required if <code>Enabled</code> is set to <code>true</code>. Specifies the format of the <code>CompletionReport</code>. <code>REPORT_CSV_20191124</code> is the only format currently supported.
    #               When <code>Format</code> is set to <code>REPORT_CSV_20191124</code>, the <code>CompletionReport</code> is provided in CSV format, and is delivered to
    #               <code>{path}/task-{id}/failures.csv</code>. 
    #           </p>
    #   @return [String]
    # @!attribute scope
    #   <p>Required if <code>Enabled</code> is set to <code>true</code>. Specifies the scope of the <code>CompletionReport</code>; <code>FAILED_FILES_ONLY</code> is the only scope currently supported. 
    #               When <code>Scope</code> is set to <code>FAILED_FILES_ONLY</code>, the <code>CompletionReport</code> only contains information about files that the data repository task failed to process.</p>
    #   @return [String]
    class CompletionReport < Struct.new(
      nil,
      :enabled,
      :path,
      :format,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute source_backup_id
    #   <p>The ID of the source backup. Specifies the ID of the backup that's being copied.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The source Amazon Web Services Region of the backup. Specifies the Amazon Web Services Region from which the backup is being copied. The source and destination
    #            Regions must be in the same Amazon Web Services partition. If you don't specify a
    #            Region, <code>SourceRegion</code> defaults to the Region where the request is sent from
    #            (in-Region copy).</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #            <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    # @!attribute copy_tags
    #   <p>A Boolean flag indicating whether tags from the source backup should be copied to the
    #            backup copy. This value defaults to <code>false</code>.</p>
    #            <p>If you set <code>CopyTags</code> to <code>true</code> and the source backup has existing
    #            tags, you can use the <code>Tags</code> parameter to create new tags, provided that the sum
    #            of the source backup tags and the new tags doesn't exceed 50. Both sets of tags are
    #            merged. If there are tag conflicts (for example, two tags with the same key but different
    #            values), the tags created with the <code>Tags</code> parameter take precedence.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    class CopyBackupRequest < Struct.new(
      nil,
      :client_request_token,
      :source_backup_id,
      :source_region,
      :kms_key_id,
      :copy_tags,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup
    #   <p>A backup of an Amazon FSx for Windows File Server, Amazon FSx for
    #               Lustre file system, Amazon FSx for NetApp ONTAP volume, or Amazon FSx
    #               for OpenZFS file system.</p>
    #   @return [Types::Backup]
    class CopyBackupResponse < Struct.new(
      nil,
      :backup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>Specifies the ID of the volume that you are copying the snapshot to.</p>
    #   @return [String]
    # @!attribute source_snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute copy_strategy
    #   <p>Specifies the strategy to use when copying data from a snapshot to the volume. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULL_COPY</code> - Copies all data from the snapshot to the volume.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INCREMENTAL_COPY</code> - Copies only the snapshot data that's changed
    #                       since the previous replication.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>CLONE</code> isn't a valid copy strategy option for the
    #                       <code>CopySnapshotAndUpdateVolume</code> operation.</p>
    #            </note>
    #   @return [String]
    # @!attribute options
    #   <p>Confirms that you want to delete data on the destination volume that wasn’t there
    #               during the previous snapshot replication.</p>
    #            <p>Your replication will fail if you don’t include an option for a specific type of data
    #               and that data is on your destination. For example, if you don’t include
    #                   <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> and there are intermediate snapshots on
    #               the destination, you can’t copy the snapshot.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> - Deletes snapshots on the
    #                       destination volume that aren’t on the source volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_CLONED_VOLUMES</code> - Deletes snapshot clones on the
    #                       destination volume that aren't on the source volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_INTERMEDIATE_DATA</code> - Overwrites snapshots on the
    #                       destination volume that don’t match the source snapshot that you’re
    #                       copying.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class CopySnapshotAndUpdateVolumeRequest < Struct.new(
      nil,
      :client_request_token,
      :volume_id,
      :source_snapshot_arn,
      :copy_strategy,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The ID of the volume that you copied the snapshot to.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle state of the destination volume. </p>
    #   @return [String]
    # @!attribute administrative_actions
    #   <p>A list of administrative actions for the file system that are in process or waiting to
    #               be processed. Administrative actions describe changes to the Amazon FSx
    #               system.</p>
    #   @return [Array<Types::AdministrativeAction>]
    class CopySnapshotAndUpdateVolumeResponse < Struct.new(
      nil,
      :volume_id,
      :lifecycle,
      :administrative_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to specify the configuration options for an FSx for ONTAP volume's storage aggregate or aggregates.</p>
    # @!attribute aggregates
    #   <p>Used to specify the names of aggregates on which the volume will be created.</p>
    #   @return [Array<String>]
    # @!attribute constituents_per_aggregate
    #   <p>Used to explicitly set the number of constituents within the FlexGroup per storage aggregate. This field is optional when creating a FlexGroup volume. If unspecified, the default value will be 8. This field cannot be provided when creating a FlexVol volume.</p>
    #   @return [Integer]
    class CreateAggregateConfiguration < Struct.new(
      nil,
      :aggregates,
      :constituents_per_aggregate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the FSx for OpenZFS volume that the S3 access point will be attached to, and the file system user identity.</p>
    # @!attribute volume_id
    #   <p>The ID of the FSx for OpenZFS volume to which you want the S3 access point attached.</p>
    #   @return [String]
    # @!attribute file_system_identity
    #   <p>Specifies the file system user identity to use for authorizing file read and write requests that are made using this S3 access point.</p>
    #   @return [Types::OpenZFSFileSystemIdentity]
    class CreateAndAttachS3AccessPointOpenZFSConfiguration < Struct.new(
      nil,
      :volume_id,
      :file_system_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name you want to assign to this S3 access point.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of S3 access point you want to create. Only <code>OpenZFS</code> is supported.</p>
    #   @return [String]
    # @!attribute open_zfs_configuration
    #   <p>Specifies the configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume.</p>
    #   @return [Types::CreateAndAttachS3AccessPointOpenZFSConfiguration]
    # @!attribute s3_access_point
    #   <p>Specifies the virtual private cloud (VPC) configuration if you're creating an access point that is restricted to a VPC. 
    #            For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/access-points-vpc.html">Creating access points restricted to a virtual private cloud</a>.</p>
    #   @return [Types::CreateAndAttachS3AccessPointS3Configuration]
    class CreateAndAttachS3AccessPointRequest < Struct.new(
      nil,
      :client_request_token,
      :name,
      :type,
      :open_zfs_configuration,
      :s3_access_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_attachment
    #   <p>Describes the configuration of the S3 access point created.</p>
    #   @return [Types::S3AccessPointAttachment]
    class CreateAndAttachS3AccessPointResponse < Struct.new(
      nil,
      :s3_access_point_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to create an S3 access point that accepts requests only from a virtual private cloud (VPC) to restrict data access to a private network.</p>
    # @!attribute vpc_configuration
    #   <p>If included, Amazon S3 restricts access to this S3 access point to requests made from the specified virtual private cloud (VPC).</p>
    #   @return [Types::S3AccessPointVpcConfiguration]
    # @!attribute policy
    #   <p>Specifies an access policy to associate with the S3 access point configuration. For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html">Configuring IAM policies for using access points</a> 
    #         in the Amazon Simple Storage Service User Guide.</p>
    #   @return [String]
    class CreateAndAttachS3AccessPointS3Configuration < Struct.new(
      nil,
      :vpc_configuration,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for the <code>CreateBackup</code> operation.</p>
    # @!attribute file_system_id
    #   <p>The ID of the file system to back up.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) A string of up to 63 ASCII characters that Amazon FSx uses to
    #               ensure idempotent creation. This string is automatically filled on your behalf when you
    #               use the Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>(Optional) The tags to apply to the backup at backup creation. The key value of the
    #                   <code>Name</code> tag appears in the console as the backup name. If you have set
    #                   <code>CopyTagsToBackups</code> to <code>true</code>, and you specify one or more
    #               tags using the <code>CreateBackup</code> operation, no existing file system tags are
    #               copied from the file system to the backup.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute volume_id
    #   <p>(Optional) The ID of the FSx for ONTAP volume to back up.</p>
    #   @return [String]
    class CreateBackupRequest < Struct.new(
      nil,
      :file_system_id,
      :client_request_token,
      :tags,
      :volume_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the <code>CreateBackup</code> operation.</p>
    # @!attribute backup
    #   <p>A description of the backup.</p>
    #   @return [Types::Backup]
    class CreateBackupResponse < Struct.new(
      nil,
      :backup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute file_system_path
    #   <p>A path on the file system that points to a high-level directory (such
    #               as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
    #               that will be mapped 1-1 with <code>DataRepositoryPath</code>.
    #               The leading forward slash in the name is required. Two data repository
    #               associations cannot have overlapping file system paths. For example, if
    #               a data repository is associated with file system path <code>/ns1/</code>,
    #               then you cannot link another data repository with file system
    #               path <code>/ns1/ns2</code>.</p>
    #            <p>This path specifies where in your file system files will be exported
    #               from or imported to. This file system directory can be linked to only one
    #               Amazon S3 bucket, and no other S3 bucket can be linked to the directory.</p>
    #            <note>
    #               <p>If you specify only a forward slash (<code>/</code>) as the file system
    #               path, you can link only one data repository to the file system. You can only specify
    #               "/" as the file system path for the first data repository associated with a file system.</p>
    #            </note>
    #   @return [String]
    # @!attribute data_repository_path
    #   <p>The path to the Amazon S3 data repository that will be linked to the file
    #               system. The path can be an S3 bucket or prefix in the format
    #               <code>s3://bucket-name/prefix/</code> (where <code>prefix</code>
    #               is optional). This path specifies where in the S3 data repository
    #               files will be imported from or exported to.</p>
    #   @return [String]
    # @!attribute batch_import_meta_data_on_create
    #   <p>Set to <code>true</code> to run an import data repository task to import
    #               metadata from the data repository to the file system after the data repository
    #               association is created. Default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    #   @return [Integer]
    # @!attribute s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx Lustre file system with a data repository association.
    #               The configuration defines which file events (new, changed, or
    #               deleted files or directories) are automatically imported from
    #               the linked data repository to the file system or automatically
    #               exported from the file system to the data repository.</p>
    #   @return [Types::S3DataRepositoryConfiguration]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    class CreateDataRepositoryAssociationRequest < Struct.new(
      nil,
      :file_system_id,
      :file_system_path,
      :data_repository_path,
      :batch_import_meta_data_on_create,
      :imported_file_chunk_size,
      :s3,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>The response object returned after the data repository association is created.</p>
    #   @return [Types::DataRepositoryAssociation]
    class CreateDataRepositoryAssociationResponse < Struct.new(
      nil,
      :association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>Specifies the type of data repository task to create.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXPORT_TO_REPOSITORY</code> tasks export from your
    #                   Amazon FSx for Lustre file system to a linked data repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORT_METADATA_FROM_REPOSITORY</code> tasks import metadata
    #                   changes from a linked S3 bucket to your Amazon FSx for Lustre file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RELEASE_DATA_FROM_FILESYSTEM</code> tasks release files in
    #                   your Amazon FSx for Lustre file system that have been exported to a linked
    #                   S3 bucket and that meet your specified release criteria.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUTO_RELEASE_DATA</code> tasks automatically release files from
    #                   an Amazon File Cache resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute paths
    #   <p>A list of paths for the data repository task to use when the task is processed.
    #               If a path that you provide isn't valid, the task fails. If you don't provide
    #               paths, the default behavior is to export all files to S3 (for export tasks), import
    #               all files from S3 (for import tasks), or release all exported files that meet the
    #               last accessed time criteria (for release tasks).</p>
    #            <ul>
    #               <li>
    #                  <p>For export tasks, the list contains paths on the FSx for Lustre file system
    #                   from which the files are exported to the Amazon S3 bucket. The default path is the
    #                   file system root directory. The paths you provide need to be relative to the mount
    #                   point of the file system. If the mount point is <code>/mnt/fsx</code> and
    #                   <code>/mnt/fsx/path1</code> is a directory or file on the file system you want
    #                   to export, then the path to provide is <code>path1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For import tasks, the list contains paths in the Amazon S3 bucket
    #                   from which POSIX metadata changes are imported to the FSx for Lustre file system.
    #                   The path can be an S3 bucket or prefix in the format
    #                   <code>s3://bucket-name/prefix</code> (where <code>prefix</code> is optional).</p>
    #               </li>
    #               <li>
    #                  <p>For release tasks, the list contains directory or file paths on the
    #                   FSx for Lustre file system from which to release exported files. If a directory is
    #                   specified, files within the directory are released. If a file path is specified,
    #                   only that file is released. To release all exported files in the file system,
    #                   specify a forward slash (/) as the path.</p>
    #                  <note>
    #                     <p>A file must also meet the last accessed time criteria
    #                       specified in  for the
    #                       file to be released.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute report
    #   <p>Defines whether or not Amazon FSx provides a CompletionReport once the task has completed. 
    #               A CompletionReport provides a detailed  report on the files that Amazon FSx processed that meet the criteria specified by the 
    #               <code>Scope</code> parameter. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html">Working with Task Completion Reports</a>.</p>
    #   @return [Types::CompletionReport]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute capacity_to_release
    #   <p>Specifies the amount of data to release, in GiB, by an Amazon File Cache
    #               <code>AUTO_RELEASE_DATA</code> task that automatically releases files from the cache.</p>
    #   @return [Integer]
    # @!attribute release_configuration
    #   <p>The configuration that specifies the last accessed time criteria for files
    #               that will be released from an Amazon FSx for Lustre file system.</p>
    #   @return [Types::ReleaseConfiguration]
    class CreateDataRepositoryTaskRequest < Struct.new(
      nil,
      :type,
      :paths,
      :file_system_id,
      :report,
      :client_request_token,
      :tags,
      :capacity_to_release,
      :release_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_repository_task
    #   <p>The description of the data repository task that you just created.</p>
    #   @return [Types::DataRepositoryTask]
    class CreateDataRepositoryTaskResponse < Struct.new(
      nil,
      :data_repository_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon File Cache configuration for the cache that you are creating.</p>
    # @!attribute per_unit_storage_throughput
    #   <p>Provisions the amount of read and write throughput for each 1 tebibyte (TiB)
    #               of cache storage capacity, in MB/s/TiB. The only supported
    #               value is <code>1000</code>.</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>Specifies the cache deployment type, which must be <code>CACHE_1</code>.</p>
    #   @return [String]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute metadata_configuration
    #   <p>The configuration for a Lustre MDT (Metadata Target) storage volume.</p>
    #   @return [Types::FileCacheLustreMetadataConfiguration]
    class CreateFileCacheLustreConfiguration < Struct.new(
      nil,
      :per_unit_storage_throughput,
      :deployment_type,
      :weekly_maintenance_start_time,
      :metadata_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #            <p>By using the idempotent operation, you can retry a <code>CreateFileCache</code>
    #               operation without the risk of creating an extra cache. This approach can be useful
    #               when an initial call fails in a way that makes it unclear whether a cache was created.
    #               Examples are if a transport level timeout occurred, or your connection was reset.
    #               If you use the same client request token and the initial call created a cache, the
    #               client receives success as long as the parameters are the same.</p>
    #   @return [String]
    # @!attribute file_cache_type
    #   <p>The type of cache that you're creating, which
    #               must be <code>LUSTRE</code>.</p>
    #   @return [String]
    # @!attribute file_cache_type_version
    #   <p>Sets the Lustre version for the cache that you're creating,
    #               which must be <code>2.12</code>.</p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>The storage capacity of the cache in gibibytes (GiB). Valid values
    #               are 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
    #   @return [Integer]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs that the cache will be accessible from. You can specify only
    #               one subnet ID in a call to the <code>CreateFileCache</code> operation.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of IDs specifying the security groups to apply to all network interfaces
    #               created for Amazon File Cache access. This list isn't returned in later requests to
    #               describe the cache.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute copy_tags_to_data_repository_associations
    #   <p>A boolean flag indicating whether tags for the cache should be copied to
    #               data repository associations. This value defaults to false.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #               an Amazon File Cache. If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed
    #               KMS key for your account is used. For more information,
    #               see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    # @!attribute lustre_configuration
    #   <p>The configuration for the Amazon File Cache resource being created.</p>
    #   @return [Types::CreateFileCacheLustreConfiguration]
    # @!attribute data_repository_associations
    #   <p>A list of up to 8 configurations for data repository associations (DRAs) to
    #               be created during the cache creation. The DRAs link the cache to either an
    #               Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol.</p>
    #            <p>The DRA configurations must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>All configurations on the list must be of the
    #                   same data repository type, either all S3 or all NFS. A cache
    #                   can't link to different data repository types at the same time.</p>
    #               </li>
    #               <li>
    #                  <p>An NFS DRA must link to an NFS file system that
    #                   supports the NFSv3 protocol.</p>
    #               </li>
    #            </ul>
    #            <p>DRA automatic import and automatic export is not supported.</p>
    #   @return [Array<Types::FileCacheDataRepositoryAssociation>]
    class CreateFileCacheRequest < Struct.new(
      nil,
      :client_request_token,
      :file_cache_type,
      :file_cache_type_version,
      :storage_capacity,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :copy_tags_to_data_repository_associations,
      :kms_key_id,
      :lustre_configuration,
      :data_repository_associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_cache
    #   <p>A description of the cache that was created.</p>
    #   @return [Types::FileCacheCreating]
    class CreateFileCacheResponse < Struct.new(
      nil,
      :file_cache,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for the <code>CreateFileSystemFromBackup</code>
    #             operation.</p>
    # @!attribute backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent creation. This string is automatically filled on your behalf when you use the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code> 
    #               file system deployment types, provide exactly two subnet IDs, one for the preferred file server 
    #               and one for the standby file server. You specify one of these subnets as the preferred subnet 
    #               using the <code>WindowsConfiguration > PreferredSubnetID</code> property.</p>
    #            <p>Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file system deployment
    #               types, Lustre file systems, and OpenZFS file systems provide exactly one subnet ID. The
    #               file server is launched in that subnet's Availability Zone.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of IDs for the security groups that apply to the specified network interfaces
    #               created for file system access. These security groups apply to all network interfaces.
    #               This value isn't returned in later <code>DescribeFileSystem</code> requests.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to be applied to the file system at file system creation. The key value of
    #               the <code>Name</code> tag appears in the console as the file system
    #               name.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute windows_configuration
    #   <p>The configuration for this Microsoft Windows file system.</p>
    #   @return [Types::CreateFileSystemWindowsConfiguration]
    # @!attribute lustre_configuration
    #   <p>The Lustre configuration for the file system being created.</p>
    #            <note>
    #               <p>The following parameters are not supported for file systems
    #               with a data repository association created with
    #               .</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AutoImportPolicy</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ExportPath</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportedFileChunkSize</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportPath</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Types::CreateFileSystemLustreConfiguration]
    # @!attribute storage_type
    #   <p>Sets the storage type for the Windows, OpenZFS, or Lustre file system that you're creating from
    #               a backup. Valid values are <code>SSD</code>, <code>HDD</code>, and <code>INTELLIGENT_TIERING</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows and OpenZFS
    #                       deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>HDD</code> to use hard disk drive storage. 
    #                       HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> FSx for Windows File Server file system deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>INTELLIGENT_TIERING</code> to use fully elastic, intelligently-tiered storage.
    #                       Intelligent-Tiering is only available for OpenZFS file systems with the Multi-AZ deployment type
    #                       and for Lustre file systems with the Persistent_2 deployment type.</p>
    #               </li>
    #            </ul>
    #            <p> The default value is <code>SSD</code>. </p>
    #            <note>
    #               <p>HDD and SSD storage types have different minimum storage capacity requirements. 
    #               A restored file system's storage capacity is tied to the file system that was backed up. 
    #               You can create a file system that uses HDD storage from a backup of a file system that 
    #               used SSD storage if the original SSD file system had a storage capacity of at least 2000 GiB.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #            <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    # @!attribute file_system_type_version
    #   <p>Sets the version for the Amazon FSx for Lustre file system that you're
    #               creating from a backup. Valid values are <code>2.10</code>, <code>2.12</code>,
    #               and <code>2.15</code>.</p>
    #            <p>You can enter a Lustre version that is newer than the backup's
    #               <code>FileSystemTypeVersion</code> setting. If you don't enter a newer Lustre version,
    #               it defaults to the backup's setting.</p>
    #   @return [String]
    # @!attribute open_zfs_configuration
    #   <p>The OpenZFS configuration for the file system that's being created. </p>
    #   @return [Types::CreateFileSystemOpenZFSConfiguration]
    # @!attribute storage_capacity
    #   <p>Sets the storage capacity of the OpenZFS file system that you're creating
    #               from a backup, in gibibytes (GiB). Valid values are from 64 GiB up to 524,288 GiB
    #               (512 TiB). However, the value that you specify must be equal to or greater than the
    #               backup's storage capacity value. If you don't use the <code>StorageCapacity</code>
    #               parameter, the default is the backup's <code>StorageCapacity</code> value.</p>
    #            <p>If used to create a file system other than OpenZFS, you must provide a value
    #               that matches the backup's <code>StorageCapacity</code> value. If you provide any
    #               other value, Amazon FSx responds with an HTTP status code 400 Bad Request. </p>
    #   @return [Integer]
    # @!attribute network_type
    #   <p>Sets the network type for the Amazon FSx for OpenZFS file system
    #               that you're creating from a backup.</p>
    #   @return [String]
    class CreateFileSystemFromBackupRequest < Struct.new(
      nil,
      :backup_id,
      :client_request_token,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :windows_configuration,
      :lustre_configuration,
      :storage_type,
      :kms_key_id,
      :file_system_type_version,
      :open_zfs_configuration,
      :storage_capacity,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the <code>CreateFileSystemFromBackup</code>
    #             operation.</p>
    # @!attribute file_system
    #   <p>A description of the file system.</p>
    #   @return [Types::FileSystem]
    class CreateFileSystemFromBackupResponse < Struct.new(
      nil,
      :file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lustre configuration for the file system being created.</p>
    #          <note>
    #             <p>The following parameters are not supported for file systems
    #             with a data repository association created with
    #             .</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>AutoImportPolicy</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>ExportPath</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>ImportedFileChunkSize</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>ImportPath</code>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute weekly_maintenance_start_time
    #   <p>(Optional) The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #   @return [String]
    # @!attribute import_path
    #   <p>(Optional) The path to the Amazon S3 bucket (including the optional prefix) that
    #               you're using as the data repository for your Amazon FSx for Lustre file system.
    #               The root of your FSx for Lustre file system will
    #               be mapped to the root of the Amazon S3 bucket you select. An
    #               example is <code>s3://import-bucket/optional-prefix</code>. If you specify a prefix
    #               after the Amazon S3 bucket name, only object keys with that prefix are loaded into the
    #               file system.</p>
    #            <note>
    #               <p>This parameter is not supported for file systems with a data repository association.</p>
    #            </note>
    #   @return [String]
    # @!attribute export_path
    #   <p>(Optional) Specifies the path in the Amazon S3 bucket where the root of your
    #               Amazon FSx file system is exported. The path must use the same Amazon S3
    #               bucket as specified in ImportPath. You can provide an optional prefix to which new and
    #               changed data is to be exported from your Amazon FSx for Lustre file system. If
    #               an <code>ExportPath</code> value is not provided, Amazon FSx sets a default export path,
    #               <code>s3://import-bucket/FSxLustre[creation-timestamp]</code>. The timestamp is in
    #               UTC format, for example
    #               <code>s3://import-bucket/FSxLustre20181105T222312Z</code>.</p>
    #            <p>The Amazon S3 export bucket must be the same as the import bucket specified by
    #                   <code>ImportPath</code>. If you specify only a bucket name, such as
    #                   <code>s3://import-bucket</code>, you get a 1:1 mapping of file system objects to S3
    #               bucket objects. This mapping means that the input data in S3 is overwritten on export.
    #               If you provide a custom prefix in the export path, such as
    #               <code>s3://import-bucket/[custom-optional-prefix]</code>, Amazon FSx exports the contents of your file 
    #               system to that export prefix in the Amazon S3 bucket.</p>
    #            <note>
    #               <p>This parameter is not supported for file systems with a data repository association.</p>
    #            </note>
    #   @return [String]
    # @!attribute imported_file_chunk_size
    #   <p>(Optional) For files imported from a data repository, this value determines the stripe
    #               count and maximum amount of data per file (in MiB) stored on a single physical disk. The
    #               maximum number of disks that a single file can be striped across is limited by the total
    #               number of disks that make up the file system.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3  objects have a maximum size of 5 TB.</p>
    #            <note>
    #               <p>This parameter is not supported for file systems with a data repository association.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>(Optional) Choose <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment 
    #               types when you need temporary storage and shorter-term processing of data. 
    #               The <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst 
    #               throughput capacity than <code>SCRATCH_1</code>.</p>
    #            <p>Choose <code>PERSISTENT_1</code> for longer-term storage and for throughput-focused 
    #               workloads that aren’t latency-sensitive.
    #               <code>PERSISTENT_1</code> supports encryption of data in transit, and is available in all 
    #               Amazon Web Services Regions in which FSx for Lustre is available.</p>
    #            <p>Choose <code>PERSISTENT_2</code> for longer-term storage and for latency-sensitive workloads 
    #               that require the highest levels of IOPS/throughput. <code>PERSISTENT_2</code> supports 
    #               the SSD and Intelligent-Tiering storage classes.
    #               You can optionally specify a metadata configuration mode for <code>PERSISTENT_2</code>
    #               which supports increasing metadata performance. <code>PERSISTENT_2</code> is available
    #               in a limited number of Amazon Web Services Regions. For more information, and an up-to-date
    #               list of Amazon Web Services Regions in which <code>PERSISTENT_2</code> is available, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-fsx-lustre.html">Deployment and
    #                   storage class options for FSx for Lustre file systems</a> in
    #               the <i>Amazon FSx for Lustre User Guide</i>.</p>
    #            <note>
    #               <p>If you choose <code>PERSISTENT_2</code>, and you set <code>FileSystemTypeVersion</code> to
    #                       <code>2.10</code>, the <code>CreateFileSystem</code> operation fails.</p>
    #            </note>
    #            <p>Encryption of data in transit is automatically turned on when you access
    #                   <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2</code> file
    #                   systems from Amazon EC2 instances that support automatic encryption in
    #                   the Amazon Web Services Regions where they are available. For more information about
    #                   encryption in transit for FSx for Lustre file systems, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/encryption-in-transit-fsxl.html">Encrypting data in
    #                   transit</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>
    #            <p>(Default = <code>SCRATCH_1</code>)</p>
    #   @return [String]
    # @!attribute auto_import_policy
    #   <p> (Optional) When you create your file system, your existing S3 objects appear as file and
    #               directory listings.  Use this parameter to choose how Amazon FSx keeps your file and directory
    #               listings up to date as you add or modify objects in your linked S3 bucket. <code>AutoImportPolicy</code>
    #               can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - (Default) AutoImport is off. Amazon FSx only updates 
    #                   file and directory listings from the linked S3 bucket 
    #                   when the file system is created. FSx does not update file and directory 
    #                   listings for any new or changed objects after choosing this option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - AutoImport is on. Amazon FSx automatically imports
    #                   directory listings of any new objects added to the linked S3 bucket that 
    #                   do not currently exist in the FSx file system. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_CHANGED</code> - AutoImport is on. Amazon FSx automatically imports 
    #                   file and directory listings of any new objects added to the S3 bucket and any 
    #                   existing objects that are changed in the S3 bucket after you choose this option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_CHANGED_DELETED</code> - AutoImport is on. Amazon FSx automatically
    #                   imports file and directory listings of any new objects added to the S3 bucket, any 
    #                   existing objects that are changed in the S3 bucket, and any objects that were deleted
    #                   in the S3 bucket.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/older-deployment-types.html#legacy-auto-import-from-s3">
    #               Automatically import updates from your S3 bucket</a>.</p>
    #            <note>
    #               <p>This parameter is not supported for file systems with a data repository association.</p>
    #            </note>
    #   @return [String]
    # @!attribute per_unit_storage_throughput
    #   <p>Required with <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> deployment
    #               types using an SSD or HDD storage class, provisions the amount of read and write throughput for each 1 tebibyte (TiB) of
    #               file system storage capacity, in MB/s/TiB. File system throughput capacity is calculated
    #               by multiplying ﬁle system storage capacity (TiB) by the
    #                   <code>PerUnitStorageThroughput</code> (MB/s/TiB). For a 2.4-TiB ﬁle system,
    #               provisioning 50 MB/s/TiB of <code>PerUnitStorageThroughput</code> yields 120 MB/s of ﬁle
    #               system throughput. You pay for the amount of throughput that you provision. </p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> SSD storage: 50, 100, 200 MB/s/TiB.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> HDD storage: 12, 40 MB/s/TiB.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_2</code> SSD storage: 125, 250, 500, 1000 MB/s/TiB.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #               <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>0</code>.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>(Optional) Not available for use with file systems that are linked to a data
    #               repository. A boolean flag indicating whether tags for the file system should be copied
    #               to backups. The default value is false. If <code>CopyTagsToBackups</code> is set to
    #               true, all file system tags are copied to all automatic and user-initiated backups when
    #               the user doesn't specify any backup-specific tags. If
    #                   <code>CopyTagsToBackups</code> is set to true and you specify one or more backup
    #               tags, only the specified tags are copied to backups. If you specify one or more tags
    #               when creating a user-initiated backup, no tags are copied from the file system,
    #               regardless of this value.</p>
    #            <p>(Default = <code>false</code>)</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html">
    #               Working with backups</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute drive_cache_type
    #   <p>The type of drive cache used by <code>PERSISTENT_1</code> file systems that are provisioned with
    #               HDD storage devices. This parameter is required when storage type is HDD. Set this property to
    #               <code>READ</code> to improve the performance for frequently accessed files by caching up to 20%
    #               of the total storage capacity of the file system.</p>
    #            <p>This parameter is required when <code>StorageType</code> is set to <code>HDD</code>.</p>
    #   @return [String]
    # @!attribute data_compression_type
    #   <p>Sets the data compression configuration for the file system. <code>DataCompressionType</code>
    #               can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - (Default) Data compression is turned off when
    #                   the file system is created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Data compression is turned on with the LZ4
    #                   algorithm.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html">Lustre data compression</a> 
    #               in the <i>Amazon FSx for Lustre User Guide</i>.</p>
    #   @return [String]
    # @!attribute efa_enabled
    #   <p>(Optional) Specifies whether Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS)
    #               support is enabled for the Amazon FSx for Lustre file system.</p>
    #            <p>(Default = <code>false</code>)</p>
    #   @return [Boolean]
    # @!attribute log_configuration
    #   <p>The Lustre logging configuration used when creating an Amazon FSx for Lustre
    #               file system. When logging is enabled, Lustre logs error and warning events for data repositories
    #               associated with your file system to Amazon CloudWatch Logs.</p>
    #   @return [Types::LustreLogCreateConfiguration]
    # @!attribute root_squash_configuration
    #   <p>The Lustre root squash configuration used when creating an Amazon FSx for Lustre
    #               file system. When enabled, root squash restricts root-level access from clients that
    #               try to access your file system as a root user.</p>
    #   @return [Types::LustreRootSquashConfiguration]
    # @!attribute metadata_configuration
    #   <p>The Lustre metadata performance configuration for the creation of an
    #               FSx for Lustre file system using a <code>PERSISTENT_2</code>
    #               deployment type.</p>
    #   @return [Types::CreateFileSystemLustreMetadataConfiguration]
    # @!attribute throughput_capacity
    #   <p>Specifies the throughput of an FSx for Lustre file system using the Intelligent-Tiering storage class,
    #               measured in megabytes per second (MBps). Valid values are 4000 MBps or
    #               multiples of 4000 MBps. You pay for the amount of throughput that you provision.</p>
    #   @return [Integer]
    # @!attribute data_read_cache_configuration
    #   <p>Specifies the optional provisioned SSD read cache on FSx for Lustre file systems that
    #               use the Intelligent-Tiering storage class. Required when <code>StorageType</code> is set
    #               to <code>INTELLIGENT_TIERING</code>.</p>
    #   @return [Types::LustreReadCacheConfiguration]
    class CreateFileSystemLustreConfiguration < Struct.new(
      nil,
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
      :data_compression_type,
      :efa_enabled,
      :log_configuration,
      :root_squash_configuration,
      :metadata_configuration,
      :throughput_capacity,
      :data_read_cache_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lustre metadata performance configuration for the creation of an
    #             Amazon FSx for Lustre file system using a <code>PERSISTENT_2</code>
    #             deployment type. The configuration uses a Metadata IOPS value to set the
    #             maximum rate of metadata disk IOPS supported by the file system.</p>
    #          <p>After creation, the file system supports increasing metadata performance.
    #             For more information on Metadata IOPS, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-metadata-performance.html#metadata-configuration">Lustre
    #                 metadata performance configuration</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>
    # @!attribute iops
    #   <p>(USER_PROVISIONED mode only) Specifies the number of Metadata IOPS to provision
    #               for the file system. This parameter sets the maximum rate of metadata disk IOPS
    #               supported by the file system.</p>
    #            <ul>
    #               <li>
    #                  <p>For SSD file systems, valid values are <code>1500</code>,
    #                       <code>3000</code>, <code>6000</code>, <code>12000</code>, and
    #                       multiples of <code>12000</code> up to a maximum of <code>192000</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Intelligent-Tiering file systems, valid values are <code>6000</code>
    #                       and <code>12000</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>Iops</code> doesn’t have a default value. If you're using USER_PROVISIONED mode,
    #                   you can choose to specify a valid value. If you're using AUTOMATIC mode,
    #                   you cannot specify a value because FSx for Lustre automatically sets
    #                   the value based on your file system storage capacity.
    #               </p>
    #            </note>
    #   @return [Integer]
    # @!attribute mode
    #   <p>The metadata configuration mode for provisioning Metadata IOPS for
    #               an FSx for Lustre file system using a <code>PERSISTENT_2</code>
    #               deployment type.</p>
    #            <ul>
    #               <li>
    #                  <p>In AUTOMATIC mode (supported only on SSD file systems),
    #                       FSx for Lustre automatically provisions and scales the
    #                       number of Metadata IOPS for your file system
    #                   based on your file system storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>In USER_PROVISIONED mode, you specify the number of Metadata
    #                   IOPS to provision for your file system.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateFileSystemLustreMetadataConfiguration < Struct.new(
      nil,
      :iops,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The ONTAP configuration properties of the FSx for ONTAP file system that you
    #             are creating.</p>
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies the FSx for ONTAP file system deployment type to use in creating
    #               the file system.  </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_1</code> - A high availability file system configured
    #                       for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ)
    #                       unavailability. This is a first-generation FSx for ONTAP file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_2</code> - A high availability file system configured for Multi-AZ redundancy to tolerate 
    #                   temporary AZ unavailability. This is a second-generation FSx for ONTAP file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_1</code> - A file system configured for Single-AZ
    #                       redundancy. This is a first-generation FSx for ONTAP file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_2</code> - A file system configured with multiple high-availability (HA) pairs for Single-AZ redundancy. 
    #                   This is a second-generation FSx for ONTAP file system.</p>
    #               </li>
    #            </ul>
    #            <p>For information about the use cases for Multi-AZ and Single-AZ deployments, refer to
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-AZ.html">Choosing a file system deployment type</a>. </p>
    #   @return [String]
    # @!attribute endpoint_ip_address_range
    #   <p>(Multi-AZ only) Specifies the IPv4 address range in which the endpoints to access your
    #               file system will be created. By default in the Amazon FSx  API, Amazon FSx
    #               selects an unused IP address range for you from the 198.19.* range. By default in the 
    #               Amazon FSx  console, Amazon FSx  chooses the last 64 IP addresses from
    #               the VPC’s primary CIDR range to use as the endpoint IP address range for the file system.
    #               You can have overlapping endpoint IP addresses for file systems deployed in the
    #               same VPC/route tables, as long as they don't overlap with any subnet.</p>
    #   @return [String]
    # @!attribute fsx_admin_password
    #   <p>The ONTAP administrative password for the <code>fsxadmin</code> user with which you
    #               administer your file system using the NetApp ONTAP CLI and REST API.</p>
    #   @return [String]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS configuration for the FSx for ONTAP file system.</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute preferred_subnet_id
    #   <p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code> or <code>MULTI_AZ_2</code>. This
    #               specifies the subnet in which you want the preferred file server to be located.</p>
    #   @return [String]
    # @!attribute route_table_ids
    #   <p>(Multi-AZ only) Specifies the route tables in which Amazon FSx  creates the rules
    #               for routing traffic to the correct file server. You should specify all virtual private cloud
    #               (VPC) route tables associated with the subnets in which your clients are located. By default,
    #               Amazon FSx  selects your VPC's default route table.</p>
    #            <note>
    #               <p>Amazon FSx manages these route tables for Multi-AZ file systems using tag-based authentication. 
    #               These route tables are tagged with <code>Key: AmazonFSx; Value: ManagedByAmazonFSx</code>. 
    #               When creating FSx for ONTAP Multi-AZ file systems using CloudFormation we recommend that you add the 
    #               <code>Key: AmazonFSx; Value: ManagedByAmazonFSx</code> tag manually.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute throughput_capacity
    #   <p>Sets the throughput capacity for the file system that you're creating in megabytes per second (MBps). For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-throughput-capacity.html">Managing throughput capacity</a> 
    #               in the FSx for ONTAP User Guide.</p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> and <code>ThroughputCapacityPerHAPair</code> are not the same value.</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> when divided by the value of <code>HAPairs</code> is outside of the valid range for <code>ThroughputCapacity</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute ha_pairs
    #   <p>Specifies how many high-availability (HA) pairs of file servers will power your file system. First-generation file systems are powered by 1 HA pair.
    #               Second-generation multi-AZ file systems are powered by 1 HA pair. Second generation single-AZ file systems are powered by up to 12 HA pairs. The default value is 1. 
    #               The value of this property affects the values of <code>StorageCapacity</code>, 
    #               <code>Iops</code>, and <code>ThroughputCapacity</code>. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/administering-file-systems.html#HA-pairs">High-availability (HA) pairs</a> in the FSx for ONTAP user guide. Block storage protocol support 
    #               (iSCSI and NVMe over TCP) is disabled on file systems with more than 6 HA pairs. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/supported-fsx-clients.html#using-block-storage">Using block storage protocols</a>. </p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>HAPairs</code> is less than 1 or greater than 12.</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>HAPairs</code> is greater than 1 and the value of <code>DeploymentType</code> is <code>SINGLE_AZ_1</code>, <code>MULTI_AZ_1</code>, or <code>MULTI_AZ_2</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute throughput_capacity_per_ha_pair
    #   <p>Use to choose the throughput capacity per HA pair, rather than the total throughput for the file system. </p>
    #            <p>You can define either the <code>ThroughputCapacityPerHAPair</code> or the <code>ThroughputCapacity</code> when creating a file system, but not both.</p>
    #            <p>This field and <code>ThroughputCapacity</code> are the same for file systems powered by one HA pair.</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_1</code> and <code>MULTI_AZ_1</code> file systems, valid values are 128, 256, 512, 1024, 2048, or 4096 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_2</code>, valid values are 1536, 3072, or 6144 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>MULTI_AZ_2</code>, valid values are 384, 768, 1536, 3072, or 6144 MBps.</p>
    #               </li>
    #            </ul>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> and <code>ThroughputCapacityPerHAPair</code> are not the same value for file systems with one HA pair.</p>
    #               </li>
    #               <li>
    #                  <p>The value of deployment type is <code>SINGLE_AZ_2</code> and <code>ThroughputCapacity</code> / <code>ThroughputCapacityPerHAPair</code> is not a valid HA pair (a value between 1 and 12).</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacityPerHAPair</code> is not a valid value.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute endpoint_ipv6_address_range
    #   <p>(Multi-AZ only) Specifies the IPv6 address range in which the endpoints to access
    #               your file system will be created. By default in the Amazon FSx API and
    #               Amazon FSx console, Amazon FSx selects an available /118 IP address
    #               range for you from one of the VPC's CIDR ranges. You can have overlapping endpoint
    #               IP addresses for file systems deployed in the same VPC/route tables, as long as they
    #               don't overlap with any subnet.</p>
    #   @return [String]
    class CreateFileSystemOntapConfiguration < Struct.new(
      nil,
      :automatic_backup_retention_days,
      :daily_automatic_backup_start_time,
      :deployment_type,
      :endpoint_ip_address_range,
      :fsx_admin_password,
      :disk_iops_configuration,
      :preferred_subnet_id,
      :route_table_ids,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :ha_pairs,
      :throughput_capacity_per_ha_pair,
      :endpoint_ipv6_address_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon FSx for OpenZFS configuration properties for the file system that you are creating.</p>
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>A Boolean value indicating whether tags for the file system should be copied to
    #               backups. This value defaults to <code>false</code>. If it's set to <code>true</code>,
    #               all tags for the file system are copied to all automatic and user-initiated backups
    #               where the user doesn't specify tags. If this value is <code>true</code>, and you specify
    #               one or more tags, only the specified tags are copied to backups. If you specify one or
    #               more tags when creating a user-initiated backup, no tags are copied from the file
    #               system, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute copy_tags_to_volumes
    #   <p>A Boolean value indicating whether tags for the file system should be copied to volumes.
    #               This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
    #               for the file system are copied to volumes where the user doesn't specify tags. If this
    #               value is <code>true</code>, and you specify one or more tags, only the specified tags
    #               are copied to volumes. If you specify one or more tags when creating the volume, no
    #               tags are copied from the file system, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies the file system deployment type. Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_1</code>- Creates file systems with high availability and durability by replicating your data and supporting failover across multiple Availability Zones in the same Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_HA_2</code>- Creates file systems with high availability and throughput capacities of 160 - 10,240 MB/s using an NVMe L2ARC cache by deploying a primary and standby file system within the same Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_HA_1</code>- Creates file systems with high availability and throughput capacities of 64 - 4,096 MB/s by deploying a primary and standby file system within the same Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_2</code>- Creates file systems with throughput capacities of 160 - 10,240 MB/s
    #                   using an NVMe L2ARC cache that automatically recover within a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_1</code>- Creates file systems with throughput capacities of 64 - 4,096 MBs that automatically recover within a single Availability Zone.</p>
    #               </li>
    #            </ul>
    #            <p>For a list of which Amazon Web Services Regions each deployment type is available in, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/availability-durability.html#available-aws-regions">Deployment type availability</a>.
    #               For more information on the differences in performance between deployment types, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#zfs-fs-performance">File system performance</a>
    #               in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [String]
    # @!attribute throughput_capacity
    #   <p>Specifies the throughput of an Amazon FSx for OpenZFS file system, measured in megabytes per second (MBps). Valid values depend on the <code>DeploymentType</code> that you choose, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>MULTI_AZ_1</code> and <code>SINGLE_AZ_2</code>, valid values are 160, 320, 640,
    #                   1280, 2560, 3840, 5120, 7680, or 10240 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_1</code>, valid values are 64, 128, 256, 512, 1024, 2048, 3072, or 4096 MBps.</p>
    #               </li>
    #            </ul>
    #            <p>You pay for additional throughput capacity that you provision.</p>
    #   @return [Integer]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for NetApp ONTAP, Amazon FSx for Windows File Server, or FSx for OpenZFS file system. By default, Amazon FSx 
    #               automatically provisions 3 IOPS per GB of storage capacity. You can provision additional IOPS per
    #               GB of storage. The configuration consists of the total number of provisioned SSD IOPS
    #               and how it is was provisioned, or the mode (by the customer or by Amazon FSx).</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute root_volume_configuration
    #   <p>The configuration Amazon FSx uses when creating the root value of the Amazon FSx for OpenZFS
    #               file system. All volumes are children of the root volume. </p>
    #   @return [Types::OpenZFSCreateRootVolumeConfiguration]
    # @!attribute preferred_subnet_id
    #   <p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code>. This specifies the subnet in which you want the preferred file server to be located.</p>
    #   @return [String]
    # @!attribute endpoint_ip_address_range
    #   <p>(Multi-AZ only) Specifies the IPv4 address range in which the endpoints to access your
    #               file system will be created. By default in the Amazon FSx API and Amazon FSx console, Amazon FSx
    #               selects an available /28 IP address range for you from one of the VPC's CIDR ranges.
    #               You can have overlapping endpoint IP addresses for file systems deployed in the
    #               same VPC/route tables, as long as they don't overlap with any subnet.</p>
    #   @return [String]
    # @!attribute endpoint_ipv6_address_range
    #   <p>(Multi-AZ only) Specifies the IPv6 address range in which the endpoints to access
    #               your file system will be created. By default in the Amazon FSx API and
    #               Amazon FSx console, Amazon FSx selects an available /118 IP address
    #               range for you from one of the VPC's CIDR ranges. You can have overlapping endpoint
    #               IP addresses for file systems deployed in the same VPC/route tables, as long as they
    #               don't overlap with any subnet.</p>
    #   @return [String]
    # @!attribute route_table_ids
    #   <p>(Multi-AZ only) Specifies the route tables in which Amazon FSx  creates the rules
    #               for routing traffic to the correct file server. You should specify all virtual private cloud
    #               (VPC) route tables associated with the subnets in which your clients are located. By default,
    #               Amazon FSx  selects your VPC's default route table.</p>
    #   @return [Array<String>]
    # @!attribute read_cache_configuration
    #   <p>
    #               Specifies the optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class. 
    #           </p>
    #   @return [Types::OpenZFSReadCacheConfiguration]
    class CreateFileSystemOpenZFSConfiguration < Struct.new(
      nil,
      :automatic_backup_retention_days,
      :copy_tags_to_backups,
      :copy_tags_to_volumes,
      :daily_automatic_backup_start_time,
      :deployment_type,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :disk_iops_configuration,
      :root_volume_configuration,
      :preferred_subnet_id,
      :endpoint_ip_address_range,
      :endpoint_ipv6_address_range,
      :route_table_ids,
      :read_cache_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object used to create a new Amazon FSx file system.</p>
    # @!attribute client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent creation. This string is automatically filled on your behalf when you use the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute file_system_type
    #   <p>The type of Amazon FSx file system to create. Valid values are
    #                   <code>WINDOWS</code>, <code>LUSTRE</code>, <code>ONTAP</code>, and
    #                   <code>OPENZFS</code>.</p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>Sets the storage capacity of the file system that you're creating, in gibibytes (GiB).</p>
    #            <p>
    #               <b>FSx for Lustre file systems</b> - The amount of
    #               storage capacity that you can configure depends on the value that you set for
    #                   <code>StorageType</code> and the Lustre <code>DeploymentType</code>, as
    #               follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_2</code>, and <code>PERSISTENT_1</code> deployment types 
    #                   using SSD storage type, the valid values are 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> HDD file systems, valid values are increments of 6000 GiB for 
    #                   12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SCRATCH_1</code> deployment type, valid values are 
    #                   1200 GiB, 2400 GiB, and increments of 3600 GiB.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>FSx for ONTAP file systems</b> - The amount of storage capacity 
    #               that you can configure depends on the value of the <code>HAPairs</code> property. The minimum value is calculated as 1,024 * <code>HAPairs</code> and the maximum is calculated as 524,288 * <code>HAPairs</code>. </p>
    #            <p>
    #               <b>FSx for OpenZFS file systems</b> - The amount of storage capacity that 
    #               you can configure is from 64 GiB up to 524,288 GiB (512 TiB).</p>
    #            <p>
    #               <b>FSx for Windows File Server file systems</b> - The amount
    #               of storage capacity that you can configure depends on the value that you set for
    #                   <code>StorageType</code> as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For SSD storage, valid values are 32 GiB-65,536 GiB (64 TiB).</p>
    #               </li>
    #               <li>
    #                  <p>For HDD storage, valid values are 2000 GiB-65,536 GiB (64 TiB).</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute storage_type
    #   <p>Sets the storage class for the file system that you're creating. Valid values are
    #                   <code>SSD</code>, <code>HDD</code>, and <code>INTELLIGENT_TIERING</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows,
    #                       Lustre, ONTAP, and OpenZFS deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>HDD</code> to use hard disk drive storage, which is supported on 
    #                       <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types,
    #                   and on <code>PERSISTENT_1</code> Lustre file system deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>INTELLIGENT_TIERING</code> to use fully elastic, intelligently-tiered storage.
    #                       Intelligent-Tiering is only available for OpenZFS file systems with the Multi-AZ deployment type
    #                       and for Lustre file systems with the Persistent_2 deployment type.</p>
    #               </li>
    #            </ul>
    #            <p>Default value is <code>SSD</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options"> Storage
    #                   type options</a> in the <i>FSx for Windows File Server User
    #                   Guide</i>, <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-fsx-lustre.html#lustre-storage-classes">FSx for Lustre storage classes</a>
    #               in the <i>FSx for Lustre User Guide</i>, and <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance-intelligent-tiering">Working with Intelligent-Tiering</a>
    #               in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system will be accessible from. For
    #               Windows and ONTAP <code>MULTI_AZ_1</code> deployment types,provide exactly two subnet
    #               IDs, one for the preferred file server and one for the standby file server. You specify
    #               one of these subnets as the preferred subnet using the <code>WindowsConfiguration >
    #                   PreferredSubnetID</code> or <code>OntapConfiguration > PreferredSubnetID</code>
    #               properties. For more information about Multi-AZ file system configuration, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html">
    #                   Availability and durability: Single-AZ and Multi-AZ file systems</a> in the
    #                   <i>Amazon FSx for Windows User Guide</i> and <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html">
    #                   Availability and durability</a> in the <i>Amazon FSx for ONTAP User
    #                   Guide</i>.</p>
    #            <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> and all Lustre 
    #               deployment types, provide exactly one subnet ID.
    #              The file server is launched in that subnet's Availability Zone.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of IDs specifying the security groups to apply to all network interfaces
    #               created for file system access. This list isn't returned in later requests to
    #               describe the file system.</p>
    #            <important>
    #               <p>You must specify a security group if you are creating a Multi-AZ 
    #               FSx for ONTAP file system in a VPC subnet that has been shared with you.</p>
    #            </important>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to apply to the file system that's being created. The key value of the
    #                   <code>Name</code> tag appears in the console as the file system name.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #            <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    # @!attribute windows_configuration
    #   <p>The Microsoft Windows configuration for the file system that's being created.</p>
    #   @return [Types::CreateFileSystemWindowsConfiguration]
    # @!attribute lustre_configuration
    #   <p>The Lustre configuration for the file system being created.</p>
    #            <note>
    #               <p>The following parameters are not supported for file systems
    #               with a data repository association created with
    #               .</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AutoImportPolicy</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ExportPath</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportedFileChunkSize</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportPath</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Types::CreateFileSystemLustreConfiguration]
    # @!attribute ontap_configuration
    #   <p>The ONTAP configuration properties of the FSx for ONTAP file system that you
    #               are creating.</p>
    #   @return [Types::CreateFileSystemOntapConfiguration]
    # @!attribute file_system_type_version
    #   <p>For FSx for Lustre file systems, sets the Lustre version for the file system
    #               that you're creating. Valid values are <code>2.10</code>, <code>2.12</code>, and
    #               <code>2.15</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>2.10</code> is supported by the Scratch and Persistent_1 Lustre 
    #                   deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2.12</code> is supported by all Lustre deployment types, except
    #                   for <code>PERSISTENT_2</code> with a metadata configuration mode.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2.15</code> is supported by all Lustre deployment types and is
    #                   recommended for all new file systems.</p>
    #               </li>
    #            </ul>
    #            <p>Default value is <code>2.10</code>, except for the following deployments:</p>
    #            <ul>
    #               <li>
    #                  <p>Default value is <code>2.12</code> when <code>DeploymentType</code> is set to 
    #                   <code>PERSISTENT_2</code> without a metadata configuration mode.</p>
    #               </li>
    #               <li>
    #                  <p>Default value is <code>2.15</code> when <code>DeploymentType</code> is set to 
    #                   <code>PERSISTENT_2</code> with a metadata configuration mode.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute open_zfs_configuration
    #   <p>The OpenZFS configuration for the file system that's being created.</p>
    #   @return [Types::CreateFileSystemOpenZFSConfiguration]
    # @!attribute network_type
    #   <p>The network type of the Amazon FSx file system that you
    #               are creating. Valid values are <code>IPV4</code> (which supports
    #               IPv4 only) and <code>DUAL</code> (for dual-stack mode, which supports
    #               both IPv4 and IPv6). The default is <code>IPV4</code>. Supported
    #               for FSx for OpenZFS, FSx for ONTAP, and FSx for Windows File Server
    #               file systems.</p>
    #   @return [String]
    class CreateFileSystemRequest < Struct.new(
      nil,
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
      :file_system_type_version,
      :open_zfs_configuration,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object returned after the file system is created.</p>
    # @!attribute file_system
    #   <p>The configuration of the file system that was created.</p>
    #   @return [Types::FileSystem]
    class CreateFileSystemResponse < Struct.new(
      nil,
      :file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for the Microsoft Windows file system used in
    #                 <code>CreateFileSystem</code> and <code>CreateFileSystemFromBackup</code>
    #             operations.</p>
    # @!attribute active_directory_id
    #   <p>The ID for an existing Amazon Web Services Managed Microsoft Active Directory (AD) instance that the
    #               file system should join when it's created.</p>
    #   @return [String]
    # @!attribute self_managed_active_directory_configuration
    #   <p>The configuration that Amazon FSx uses to join a FSx for Windows File Server file system or an FSx for ONTAP storage virtual machine (SVM) to
    #               a self-managed (including on-premises) Microsoft Active Directory (AD)
    #               directory. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html">
    #                   Using Amazon FSx for Windows with your self-managed Microsoft Active Directory</a> or 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html">Managing FSx for ONTAP SVMs</a>.</p>
    #   @return [Types::SelfManagedActiveDirectoryConfiguration]
    # @!attribute deployment_type
    #   <p>Specifies the file system deployment type, valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_1</code> - Deploys a high availability file system that is configured 
    #                       for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ) unavailability. You 
    #                       can only deploy a Multi-AZ file system in Amazon Web Services Regions that have a minimum of three Availability Zones. Also 
    #                   supports HDD storage type</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_1</code> - (Default) Choose to deploy a file system that is configured for single AZ redundancy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_2</code> - The latest generation Single AZ file system. 
    #                       Specifies a file system that is configured for single AZ redundancy and supports HDD storage type.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html">
    #                   Availability and Durability: Single-AZ and Multi-AZ File Systems</a>.</p>
    #   @return [String]
    # @!attribute preferred_subnet_id
    #   <p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code>. This specifies the subnet 
    #               in which you want the preferred file server to be located. For in-Amazon Web Services applications, we recommend that you launch 
    #               your clients in the same Availability Zone (AZ) as your preferred file server to reduce cross-AZ 
    #               data transfer costs and minimize latency. </p>
    #   @return [String]
    # @!attribute throughput_capacity
    #   <p>Sets the throughput capacity of an Amazon FSx file system, measured in megabytes per second (MB/s), in 2 to
    #               the <i>n</i>th increments, between 2^3 (8) and 2^11 (2048).</p>
    #   @return [Integer]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #   @return [String]
    # @!attribute daily_automatic_backup_start_time
    #   <p>The preferred time to take daily automatic backups, formatted HH:MM in the UTC time
    #               zone.</p>
    #   @return [String]
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #               <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>A boolean flag indicating whether tags for the file system should be copied to
    #               backups. This value defaults to false. If it's set to true, all tags for the file
    #               system are copied to all automatic and user-initiated backups where the user
    #               doesn't specify tags. If this value is true, and you specify one or more tags, only
    #               the specified tags are copied to backups. If you specify one or more tags when creating a
    #               user-initiated backup, no tags are copied from the file system, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute aliases
    #   <p>An array of one or more DNS alias names that you want to associate with the Amazon FSx file system. 
    #               Aliases allow you to use existing DNS names to access the data in your Amazon FSx file system. 
    #               You can associate up to 50 aliases with a file system at any time. 
    #               You can associate additional DNS aliases after you create the file system using the AssociateFileSystemAliases operation. 
    #               You can remove DNS aliases from the file system after it is created using the DisassociateFileSystemAliases operation.
    #               You only need to specify the alias name in the request payload.
    #               For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">Managing DNS aliases</a> and 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/dns-aliases.html">Accessing data using DNS aliases</a>.</p>
    #            <p>An alias name has to meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Formatted as a fully-qualified domain name (FQDN), <code>hostname.domain</code>, for example, <code>accounting.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Can contain alphanumeric characters, the underscore (_), and the hyphen (-).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot start or end with a hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>Can start with a numeric.</p>
    #               </li>
    #            </ul>
    #            <p>For DNS alias names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
    #               as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>
    #   @return [Array<String>]
    # @!attribute audit_log_configuration
    #   <p>The configuration that Amazon FSx for Windows File Server uses to audit and log
    #               user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
    #               file system.</p>
    #   @return [Types::WindowsAuditLogCreateConfiguration]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for Windows file system.
    #           By default, Amazon FSx automatically provisions 3 IOPS per GiB of storage capacity. You can provision additional
    #           IOPS per GiB of storage, up to the maximum limit associated with your chosen throughput capacity.</p>
    #   @return [Types::DiskIopsConfiguration]
    class CreateFileSystemWindowsConfiguration < Struct.new(
      nil,
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
      :audit_log_configuration,
      :disk_iops_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration of the ONTAP volume that you are creating.</p>
    # @!attribute junction_path
    #   <p>Specifies the location in the SVM's namespace where the volume is mounted.
    #               This parameter is required. The <code>JunctionPath</code> must have a leading
    #               forward slash, such as <code>/vol3</code>.</p>
    #   @return [String]
    # @!attribute security_style
    #   <p>Specifies the security style for the volume. If a volume's security style is not specified, 
    #               it is automatically set to the root volume's security style. The security style determines the type of permissions 
    #               that FSx for ONTAP uses to control data access. Specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNIX</code> if the file system is managed by a UNIX
    #                   administrator, the majority of users are NFS clients, and an application
    #                   accessing the data uses a UNIX user as the service account.
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NTFS</code> if the file system is managed by a Windows
    #                   administrator, the majority of users are SMB clients, and an application
    #                   accessing the data uses a Windows user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MIXED</code> This is an advanced setting. For more information, see the topic 
    #                   <a href="https://docs.netapp.com/us-en/ontap/nfs-admin/security-styles-their-effects-concept.html">What the security styles and their effects are</a> 
    #                   in the NetApp Documentation Center.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html#volume-security-style">Volume security style</a> in the 
    #           FSx for ONTAP User Guide.</p>
    #   @return [String]
    # @!attribute size_in_megabytes
    #   <p>Use <code>SizeInBytes</code> instead. Specifies the size of the volume, in megabytes (MB), that you are creating.</p>
    #   @deprecated
    #     This property is deprecated, use SizeInBytes instead
    #   @return [Integer]
    # @!attribute storage_efficiency_enabled
    #   <p>Set to true to enable deduplication, compression, and compaction storage
    #               efficiency features on the volume, or set to false to disable them.</p>
    #            <p>
    #               <code>StorageEfficiencyEnabled</code> is required when creating a <code>RW</code> volume (<code>OntapVolumeType</code> set to <code>RW</code>).</p>
    #   @return [Boolean]
    # @!attribute storage_virtual_machine_id
    #   <p>Specifies the ONTAP SVM in which to create the volume.</p>
    #   @return [String]
    # @!attribute tiering_policy
    #   <p>Describes the data tiering policy for an ONTAP volume. When enabled, Amazon FSx for ONTAP's intelligent
    #               tiering automatically transitions a volume's data between the file system's primary storage and capacity
    #               pool storage based on your access patterns.</p>
    #            <p>Valid tiering policies are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SNAPSHOT_ONLY</code> - (Default value) moves cold snapshots to the capacity pool storage tier.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AUTO</code> - moves cold user data and snapshots to the capacity pool storage tier based on your access patterns.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - moves all user data blocks in both the active file system and Snapshot copies to the storage pool tier.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - keeps a volume's data in the primary storage tier, preventing it from being moved to the capacity pool tier.</p>
    #               </li>
    #            </ul>
    #   @return [Types::TieringPolicy]
    # @!attribute ontap_volume_type
    #   <p>Specifies the type of volume you are creating. Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RW</code> specifies a read/write volume. <code>RW</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DP</code> specifies a data-protection volume. A <code>DP</code> volume
    #                   is read-only and can be used as the destination of a NetApp SnapMirror relationship.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html#volume-types">Volume types</a> 
    #               in the Amazon FSx for NetApp ONTAP User Guide.</p>
    #   @return [String]
    # @!attribute snapshot_policy
    #   <p>Specifies the snapshot policy for the volume. There are three built-in snapshot policies:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>default</code>: This is the default policy. A maximum of six hourly snapshots taken five minutes past 
    #               the hour. A maximum of two daily snapshots taken Monday through Saturday at 10 minutes after
    #               midnight. A maximum of two weekly snapshots taken every Sunday at 15 minutes after midnight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>default-1weekly</code>: This policy is the same as the <code>default</code> policy except 
    #               that it only retains one snapshot from the weekly schedule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>none</code>: This policy does not take any snapshots. This policy can be assigned to volumes to 
    #               prevent automatic snapshots from being taken.</p>
    #               </li>
    #            </ul>
    #            <p>You can also provide the name of a custom policy that you created with the ONTAP CLI or REST API.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies">Snapshot policies</a> 
    #               in the Amazon FSx for NetApp ONTAP User Guide.</p>
    #   @return [String]
    # @!attribute copy_tags_to_backups
    #   <p>A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to
    #               false. If it's set to true, all tags for the volume are copied to all automatic and user-initiated backups
    #               where the user doesn't specify tags. If this value is true, and you specify one or more tags, only the
    #               specified tags are copied to backups. If you specify one or more tags when creating a user-initiated
    #               backup, no tags are copied from the volume, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute snaplock_configuration
    #   <p>Specifies the SnapLock configuration for an FSx for ONTAP volume. </p>
    #   @return [Types::CreateSnaplockConfiguration]
    # @!attribute volume_style
    #   <p>Use to specify the style of an ONTAP volume. FSx for ONTAP offers two styles of volumes that you can use for different purposes, 
    #               FlexVol and FlexGroup volumes. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html#volume-styles">Volume styles</a> in the Amazon FSx for NetApp ONTAP User Guide.</p>
    #   @return [String]
    # @!attribute aggregate_configuration
    #   <p>Use to specify configuration options for a volume’s storage aggregate or aggregates.</p>
    #   @return [Types::CreateAggregateConfiguration]
    # @!attribute size_in_bytes
    #   <p>Specifies the configured size of the volume, in bytes.</p>
    #   @return [Integer]
    class CreateOntapVolumeConfiguration < Struct.new(
      nil,
      :junction_path,
      :security_style,
      :size_in_megabytes,
      :storage_efficiency_enabled,
      :storage_virtual_machine_id,
      :tiering_policy,
      :ontap_volume_type,
      :snapshot_policy,
      :copy_tags_to_backups,
      :snaplock_configuration,
      :volume_style,
      :aggregate_configuration,
      :size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The snapshot configuration to use when creating an Amazon FSx for OpenZFS
    #             volume from a snapshot. </p>
    # @!attribute snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute copy_strategy
    #   <p>Specifies the strategy used when copying data from the snapshot to the new volume. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLONE</code> - The new volume references the data in the origin
    #                       snapshot. Cloning a snapshot is faster than copying data from the snapshot to a
    #                       new volume and doesn't consume disk throughput. However, the origin snapshot
    #                       can't be deleted if there is a volume using its copied data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FULL_COPY</code> - Copies all data from the snapshot to the new
    #                       volume.</p>
    #                  <p>Specify this option to create the volume from a snapshot on another FSx for OpenZFS file system.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>INCREMENTAL_COPY</code> option is only for updating an existing volume
    #                   by using a snapshot from another FSx for OpenZFS file system. For more
    #                   information, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_CopySnapshotAndUpdateVolume.html">CopySnapshotAndUpdateVolume</a>.</p>
    #            </note>
    #   @return [String]
    class CreateOpenZFSOriginSnapshotConfiguration < Struct.new(
      nil,
      :snapshot_arn,
      :copy_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration of the Amazon FSx for OpenZFS volume that you are creating.</p>
    # @!attribute parent_volume_id
    #   <p>The ID of the volume to use as the parent volume of the volume that you are creating.</p>
    #   @return [String]
    # @!attribute storage_capacity_reservation_gi_b
    #   <p>Specifies the amount of storage in gibibytes (GiB) to reserve from the parent volume. Setting
    #               <code>StorageCapacityReservationGiB</code> guarantees that the specified amount of storage space
    #               on the parent volume will always be available for the volume. 
    #               You can't reserve more storage than the parent volume has. To <i>not</i> specify a storage capacity 
    #               reservation, set this to <code>0</code> or <code>-1</code>. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-volumes.html#volume-properties">Volume properties</a> 
    #               in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute storage_capacity_quota_gi_b
    #   <p>Sets the maximum storage size in gibibytes (GiB) for the volume. You can specify 
    #               a quota that is larger than the storage on the parent volume. A volume quota limits 
    #               the amount of storage that the volume can consume to the configured amount, but does not 
    #               guarantee the space will be available on the parent volume. To guarantee quota space, you must also set 
    #               <code>StorageCapacityReservationGiB</code>. To <i>not</i> specify a storage capacity quota, set this to <code>-1</code>.
    #           </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-volumes.html#volume-properties">Volume properties</a> 
    #               in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute record_size_ki_b
    #   <p>Specifies the suggested block size for a volume in a ZFS dataset, in kibibytes (KiB). 
    #               For file systems using the Intelligent-Tiering storage class, valid values are 128, 256, 512, 1024, 2048, or 4096 KiB, with a default of 1024 KiB. 
    #               For all other file systems, valid values are 4, 8, 16, 32, 64, 128, 256, 512, or 1024 KiB, with a default of 128 KiB. 
    #               We recommend using the default setting for the majority of use cases. Generally, workloads that write in fixed small or large record sizes may benefit from setting a custom record size, like database workloads (small record size) or media streaming workloads (large record size).
    #               For additional guidance on when to set a custom record size, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#record-size-performance">
    #               ZFS Record size</a> in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute data_compression_type
    #   <p>Specifies the method used to compress the data on the volume. The compression
    #               type is <code>NONE</code> by default.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Doesn't compress the data on the volume.
    #                       <code>NONE</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
    #                       (ZSTD) compression algorithm. ZSTD compression provides a higher level of 
    #                       data compression and higher read throughput performance than LZ4 compression.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Compresses the data in the volume using the LZ4
    #                       compression algorithm. LZ4 compression provides a lower level of compression 
    #                       and higher write throughput performance than ZSTD compression.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about volume compression types and the performance of your Amazon FSx for OpenZFS file system,
    #               see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#performance-tips-zfs">
    #                   Tips for maximizing performance</a> File system and volume settings in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [String]
    # @!attribute copy_tags_to_snapshots
    #   <p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
    #               This value defaults to <code>false</code>. If this value is set to <code>true</code>, and you do not specify any tags, all tags for the original volume are copied over to snapshots. 
    #               If this value is set to <code>true</code>, and you do specify one or more tags, only the specified tags for the original volume are copied over to snapshots. If you specify one or more tags when creating a new snapshot, no tags are copied over from the original volume, regardless of this value.
    #           </p>
    #   @return [Boolean]
    # @!attribute origin_snapshot
    #   <p>The configuration object that specifies the snapshot to use as the origin of the data
    #               for the volume.</p>
    #   @return [Types::CreateOpenZFSOriginSnapshotConfiguration]
    # @!attribute read_only
    #   <p>A Boolean value indicating whether the volume is read-only.</p>
    #   @return [Boolean]
    # @!attribute nfs_exports
    #   <p>The configuration object for mounting a Network File System (NFS) file system.</p>
    #   @return [Array<Types::OpenZFSNfsExport>]
    # @!attribute user_and_group_quotas
    #   <p>Configures how much storage users and groups can use on the volume.</p>
    #   @return [Array<Types::OpenZFSUserOrGroupQuota>]
    class CreateOpenZFSVolumeConfiguration < Struct.new(
      nil,
      :parent_volume_id,
      :storage_capacity_reservation_gi_b,
      :storage_capacity_quota_gi_b,
      :record_size_ki_b,
      :data_compression_type,
      :copy_tags_to_snapshots,
      :origin_snapshot,
      :read_only,
      :nfs_exports,
      :user_and_group_quotas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the SnapLock configuration when creating an FSx for ONTAP SnapLock volume. </p>
    # @!attribute audit_log_volume
    #   <p>Enables or disables the audit log volume for an FSx for ONTAP SnapLock volume. The default 
    #               value is <code>false</code>. If you set <code>AuditLogVolume</code> to <code>true</code>, the SnapLock volume is 
    #               created as an audit log volume. The minimum retention period for an audit log volume is six months. </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/how-snaplock-works.html#snaplock-audit-log-volume">
    #               SnapLock audit log volumes</a>. </p>
    #   @return [Boolean]
    # @!attribute autocommit_period
    #   <p>The configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::AutocommitPeriod]
    # @!attribute privileged_delete
    #   <p>Enables, disables, or permanently disables privileged delete on an FSx for ONTAP SnapLock 
    #               Enterprise volume. Enabling privileged delete allows SnapLock administrators to delete WORM files even 
    #               if they have active retention periods. <code>PERMANENTLY_DISABLED</code> is a terminal state. 
    #               If privileged delete is permanently disabled on a SnapLock volume, you can't re-enable it. The default 
    #               value is <code>DISABLED</code>. </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-enterprise.html#privileged-delete">Privileged delete</a>. </p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Specifies the retention period of an FSx for ONTAP 
    #               SnapLock volume. </p>
    #   @return [Types::SnaplockRetentionPeriod]
    # @!attribute snaplock_type
    #   <p>Specifies the retention mode of an FSx for ONTAP SnapLock volume.  After it is set, it can't be changed. 
    #           You can choose one of the following retention modes: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLIANCE</code>: Files transitioned to write once, read many (WORM) on a Compliance volume can't be deleted 
    #                   until their retention periods expire. This retention mode is used to address government or industry-specific mandates or to protect 
    #                   against ransomware attacks. For more information, 
    #                   see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-compliance.html">SnapLock Compliance</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENTERPRISE</code>: Files transitioned to WORM on an Enterprise volume can be deleted by authorized users 
    #               before their retention periods expire using privileged delete. This retention mode is used to advance an organization's data integrity 
    #               and internal compliance or to test retention settings before using SnapLock Compliance. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-enterprise.html">SnapLock Enterprise</a>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute volume_append_mode_enabled
    #   <p>Enables or disables volume-append mode 
    #               on an FSx for ONTAP SnapLock volume. Volume-append mode allows you to 
    #               create WORM-appendable files and write data to them incrementally. The default value is <code>false</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/worm-state.html#worm-state-append">Volume-append mode</a>. </p>
    #   @return [Boolean]
    class CreateSnaplockConfiguration < Struct.new(
      nil,
      :audit_log_volume,
      :autocommit_period,
      :privileged_delete,
      :retention_period,
      :snaplock_type,
      :volume_append_mode_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the snapshot. </p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The ID of the volume that you are taking a snapshot of.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotRequest < Struct.new(
      nil,
      :client_request_token,
      :name,
      :volume_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>A description of the snapshot.</p>
    #   @return [Types::Snapshot]
    class CreateSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute active_directory_configuration
    #   <p>Describes the self-managed Microsoft Active Directory to which you want to join the SVM. 
    #         Joining an Active Directory provides user authentication and access control for SMB clients, 
    #         including Microsoft Windows and macOS clients accessing the file system.</p>
    #   @return [Types::CreateSvmActiveDirectoryConfiguration]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the SVM.</p>
    #   @return [String]
    # @!attribute svm_admin_password
    #   <p>The password to use when managing the SVM using the NetApp ONTAP CLI or REST API.
    #               If you do not specify a password, you can still use the file system's
    #               <code>fsxadmin</code> user to manage the SVM.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute root_volume_security_style
    #   <p>The security style of the root volume of the SVM. Specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UNIX</code> if the file system is managed by a UNIX
    #                   administrator, the majority of users are NFS clients, and an application
    #                   accessing the data uses a UNIX user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NTFS</code> if the file system is managed by a Microsoft Windows
    #                   administrator, the majority of users are SMB clients, and an application
    #                   accessing the data uses a Microsoft Windows user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MIXED</code> This is an advanced setting. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-security-style.html">Volume security style</a>
    #                   in the Amazon FSx for NetApp ONTAP User Guide.</p>
    #               </li>
    #            </ul>
    #            <p></p>
    #   @return [String]
    class CreateStorageVirtualMachineRequest < Struct.new(
      nil,
      :active_directory_configuration,
      :client_request_token,
      :file_system_id,
      :name,
      :svm_admin_password,
      :tags,
      :root_volume_security_style,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_virtual_machine
    #   <p>Returned after a successful <code>CreateStorageVirtualMachine</code> operation; describes the SVM just created.</p>
    #   @return [Types::StorageVirtualMachine]
    class CreateStorageVirtualMachineResponse < Struct.new(
      nil,
      :storage_virtual_machine,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that Amazon FSx uses to join the ONTAP storage virtual machine
    #             (SVM) to your self-managed (including on-premises) Microsoft Active Directory directory.</p>
    # @!attribute net_bios_name
    #   <p>The NetBIOS name of the Active Directory computer object that will be created for your SVM.</p>
    #   @return [String]
    # @!attribute self_managed_active_directory_configuration
    #   <p>The configuration that Amazon FSx uses to join a FSx for Windows File Server file system or an FSx for ONTAP storage virtual machine (SVM) to
    #               a self-managed (including on-premises) Microsoft Active Directory (AD)
    #               directory. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html">
    #                   Using Amazon FSx for Windows with your self-managed Microsoft Active Directory</a> or 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html">Managing FSx for ONTAP SVMs</a>.</p>
    #   @return [Types::SelfManagedActiveDirectoryConfiguration]
    class CreateSvmActiveDirectoryConfiguration < Struct.new(
      nil,
      :net_bios_name,
      :self_managed_active_directory_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new volume you're creating.</p>
    #   @return [String]
    # @!attribute ontap_configuration
    #   <p>Specifies the configuration of the ONTAP volume that you are creating.</p>
    #   @return [Types::CreateOntapVolumeConfiguration]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    class CreateVolumeFromBackupRequest < Struct.new(
      nil,
      :backup_id,
      :client_request_token,
      :name,
      :ontap_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume
    #   <p>Returned after a successful <code>CreateVolumeFromBackup</code> API operation,
    #               describing the volume just created.</p>
    #   @return [Types::Volume]
    class CreateVolumeFromBackupResponse < Struct.new(
      nil,
      :volume,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>Specifies the type of volume to create; <code>ONTAP</code> and <code>OPENZFS</code> are
    #               the only valid volume types.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies the name of the volume that you're creating.</p>
    #   @return [String]
    # @!attribute ontap_configuration
    #   <p>Specifies the configuration to use when creating the ONTAP volume.</p>
    #   @return [Types::CreateOntapVolumeConfiguration]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute open_zfs_configuration
    #   <p>Specifies the configuration to use when creating the OpenZFS volume.</p>
    #   @return [Types::CreateOpenZFSVolumeConfiguration]
    class CreateVolumeRequest < Struct.new(
      nil,
      :client_request_token,
      :volume_type,
      :name,
      :ontap_configuration,
      :tags,
      :open_zfs_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume
    #   <p>Returned after a successful <code>CreateVolume</code> API operation, describing the volume just created.</p>
    #   @return [Types::Volume]
    class CreateVolumeResponse < Struct.new(
      nil,
      :volume,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a data repository association that links
    #             an Amazon FSx for Lustre file system to an Amazon S3 bucket
    #             or an Amazon File Cache resource to an Amazon S3 bucket or an NFS file system.
    #             The data repository association configuration object is returned
    #             in the response of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateDataRepositoryAssociation</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UpdateDataRepositoryAssociation</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeDataRepositoryAssociations</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Data repository associations are supported on Amazon File Cache resources and
    #             all FSx for Lustre 2.12 and 2.15 file systems, excluding
    #             Intelligent-Tiering and <code>scratch_1</code> file systems.</p>
    # @!attribute association_id
    #   <p>The system-generated, unique ID of the data repository association.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>Describes the state of a data repository association. The lifecycle can have
    #               the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The data repository association between 
    #                   the file system or cache and the data repository is being created. 
    #                   The data repository is unavailable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The data repository association is
    #                   available for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURED</code> - The data repository association is
    #                   misconfigured. Until the configuration is corrected, automatic import and
    #                   automatic export will not work (only for Amazon FSx for Lustre).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The data repository association is undergoing
    #                   a customer initiated update that might affect its availability.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The data repository association is undergoing
    #                   a customer initiated deletion.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The data repository association is in a terminal
    #                   state that cannot be recovered.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_details
    #   <p>Provides detailed information about the data repository if its <code>Lifecycle</code> is 
    #               set to <code>MISCONFIGURED</code> or <code>FAILED</code>.</p>
    #   @return [Types::DataRepositoryFailureDetails]
    # @!attribute file_system_path
    #   <p>A path on the Amazon FSx for Lustre file system that points to a high-level directory (such
    #               as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
    #               that will be mapped 1-1 with <code>DataRepositoryPath</code>.
    #               The leading forward slash in the name is required. Two data repository
    #               associations cannot have overlapping file system paths. For example, if
    #               a data repository is associated with file system path <code>/ns1/</code>,
    #               then you cannot link another data repository with file system
    #               path <code>/ns1/ns2</code>.</p>
    #            <p>This path specifies where in your file system files will be exported
    #               from or imported to. This file system directory can be linked to only one
    #               Amazon S3 bucket, and no other S3 bucket can be linked to the directory.</p>
    #            <note>
    #               <p>If you specify only a forward slash (<code>/</code>) as the file system
    #               path, you can link only one data repository to the file system. You can only specify
    #               "/" as the file system path for the first data repository associated with a file system.</p>
    #            </note>
    #   @return [String]
    # @!attribute data_repository_path
    #   <p>The path to the data repository that will be linked to the cache
    #               or file system.</p>
    #            <ul>
    #               <li>
    #                  <p>For Amazon File Cache, the path can be an NFS data repository
    #                   that will be linked to the cache. The path can be in one of two formats:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you are not using the <code>DataRepositorySubdirectories</code>
    #                           parameter, the path is to an NFS Export directory (or one of its subdirectories)
    #                           in the format <code>nsf://nfs-domain-name/exportpath</code>. You can therefore
    #                           link a single NFS Export to a single data repository association.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you are using the <code>DataRepositorySubdirectories</code>
    #                           parameter, the path is the domain name of the NFS file system in the format
    #                           <code>nfs://filer-domain-name</code>, which indicates the root of the
    #                           subdirectories specified with the <code>DataRepositorySubdirectories</code>
    #                           parameter.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Amazon File Cache, the path can be an S3 bucket or prefix
    #                   in the format <code>s3://bucket-name/prefix/</code> (where <code>prefix</code>
    #                   is optional).</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon FSx for Lustre, the path can be an S3 bucket or prefix
    #                   in the format <code>s3://bucket-name/prefix/</code> (where <code>prefix</code>
    #                   is optional).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute batch_import_meta_data_on_create
    #   <p>A boolean flag indicating whether an import data repository task to import
    #               metadata should run after the data repository association is created. The
    #               task runs if this flag is set to <code>true</code>.</p>
    #            <note>
    #               <p>
    #                  <code>BatchImportMetaDataOnCreate</code> is not supported for data repositories
    #                   linked to an Amazon File Cache resource.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system or cache.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    #   @return [Integer]
    # @!attribute s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx for Lustre file system with a data repository association.</p>
    #   @return [Types::S3DataRepositoryConfiguration]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute file_cache_id
    #   <p>The globally unique ID of the Amazon File Cache resource.</p>
    #   @return [String]
    # @!attribute file_cache_path
    #   <p>A path on the Amazon File Cache that points to a high-level directory (such
    #               as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
    #               that will be mapped 1-1 with <code>DataRepositoryPath</code>.
    #               The leading forward slash in the path is required. Two data repository
    #               associations cannot have overlapping cache paths. For example, if
    #               a data repository is associated with cache path <code>/ns1/</code>,
    #               then you cannot link another data repository with cache
    #               path <code>/ns1/ns2</code>.</p>
    #            <p>This path specifies the directory in your cache where files will be exported
    #               from. This cache directory can be linked to only one data repository
    #               (S3 or NFS) and no other data repository can be linked to the directory.</p>
    #            <note>
    #               <p>The cache path can only be set to root (/) on an NFS DRA when
    #                   <code>DataRepositorySubdirectories</code> is specified. If you
    #                   specify root (/) as the cache path, you can create only one DRA
    #                   on the cache.</p>
    #               <p>The cache path cannot be set to root (/) for an S3 DRA.</p>
    #            </note>
    #   @return [String]
    # @!attribute data_repository_subdirectories
    #   <p>For Amazon File Cache, a list of NFS Exports that will be linked with an
    #               NFS data repository association. All the subdirectories must be on a single NFS file system.
    #               The Export paths are in the format <code>/exportpath1</code>.
    #               To use this parameter, you must configure <code>DataRepositoryPath</code>
    #               as the domain name of the NFS file system. The NFS file system domain name in effect is the
    #               root of the subdirectories. Note that <code>DataRepositorySubdirectories</code> is not
    #               supported for S3 data repositories.</p>
    #   @return [Array<String>]
    # @!attribute nfs
    #   <p>The configuration for an NFS data repository linked to an
    #               Amazon File Cache resource with a data repository association.</p>
    #   @return [Types::NFSDataRepositoryConfiguration]
    class DataRepositoryAssociation < Struct.new(
      nil,
      :association_id,
      :resource_arn,
      :file_system_id,
      :lifecycle,
      :failure_details,
      :file_system_path,
      :data_repository_path,
      :batch_import_meta_data_on_create,
      :imported_file_chunk_size,
      :s3,
      :tags,
      :creation_time,
      :file_cache_id,
      :file_cache_path,
      :data_repository_subdirectories,
      :nfs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No data repository associations were found based upon the supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class DataRepositoryAssociationNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data repository configuration object for Lustre file systems returned in the response of
    #             the <code>CreateFileSystem</code> operation.</p>
    #          <p>This data type is not supported on file systems with a data repository association.
    #             For file systems with a data repository association,
    #             see .</p>
    # @!attribute lifecycle
    #   <p>Describes the state of the file system's S3 durable data repository, if it is configured with an S3 repository. 
    #           The lifecycle can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The data repository configuration between 
    #                   the FSx file system and the linked S3 data repository is being created. 
    #                   The data repository is unavailable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The data repository is available for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURED</code> - Amazon FSx cannot automatically import updates from the S3 bucket 
    #                   until the data repository configuration is corrected. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/troubleshooting.html#troubleshooting-misconfigured-data-repository">Troubleshooting a Misconfigured linked S3 bucket</a>.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The data repository is undergoing a customer
    #                   initiated update and availability may be impacted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The data repository is in a terminal state that
    #                   cannot be recovered.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute import_path
    #   <p>The import path to the Amazon S3 bucket (and optional prefix) that you're using
    #               as the data repository for your FSx for Lustre file system, for example
    #                   <code>s3://import-bucket/optional-prefix</code>. If a prefix is specified after the
    #               Amazon S3 bucket name, only object keys with that prefix are loaded into the file
    #               system.</p>
    #   @return [String]
    # @!attribute export_path
    #   <p>The export path to the Amazon S3 bucket (and prefix) that you are using to store new and
    #               changed Lustre file system files in S3.</p>
    #   @return [String]
    # @!attribute imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    #   @return [Integer]
    # @!attribute auto_import_policy
    #   <p>Describes the file system's linked S3 data repository's <code>AutoImportPolicy</code>. 
    #               The AutoImportPolicy configures how Amazon FSx keeps your file and directory listings up to date 
    #               as you add or modify objects in your linked S3 bucket. <code>AutoImportPolicy</code> can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - (Default) AutoImport is off. Amazon FSx only updates 
    #                   file and directory listings from the linked S3 bucket 
    #                   when the file system is created. FSx does not update file and directory 
    #                   listings for any new or changed objects after choosing this option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - AutoImport is on. Amazon FSx automatically imports
    #                   directory listings of any new objects added to the linked S3 bucket that 
    #                   do not currently exist in the FSx file system. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_CHANGED</code> - AutoImport is on. Amazon FSx automatically imports 
    #                   file and directory listings of any new objects added to the S3 bucket and any 
    #                   existing objects that are changed in the S3 bucket after you choose this option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_CHANGED_DELETED</code> - AutoImport is on. Amazon FSx automatically
    #                   imports file and directory listings of any new objects added to the S3 bucket, any 
    #                   existing objects that are changed in the S3 bucket, and any objects that were deleted
    #                   in the S3 bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_details
    #   <p>Provides detailed information about the data repository if its <code>Lifecycle</code> is 
    #               set to <code>MISCONFIGURED</code> or <code>FAILED</code>.</p>
    #   @return [Types::DataRepositoryFailureDetails]
    class DataRepositoryConfiguration < Struct.new(
      nil,
      :lifecycle,
      :import_path,
      :export_path,
      :imported_file_chunk_size,
      :auto_import_policy,
      :failure_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides detailed information about the data repository if its <code>Lifecycle</code> is 
    #             set to <code>MISCONFIGURED</code> or <code>FAILED</code>.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class DataRepositoryFailureDetails < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the data repository task.</p>
    #          <ul>
    #             <li>
    #                <p>You use import and export data repository tasks to perform
    #                 bulk transfer operations between an Amazon FSx for Lustre file system
    #                 and a linked data repository.</p>
    #             </li>
    #             <li>
    #                <p>You use release data repository tasks to release files that have been exported
    #                 to a linked S3 bucket from your Amazon FSx for Lustre file system.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon File Cache resource uses a task to automatically
    #                 release files from the cache.</p>
    #             </li>
    #          </ul>
    #          <p>To learn more about data repository tasks, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html">Data Repository Tasks</a>. 
    #             </p>
    # @!attribute task_id
    #   <p>The system-generated, unique 17-digit ID of the data repository task.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the data repository task, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The task has not started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXECUTING</code> - The task is in process.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> -  The task was not able to be completed. For example, there may be files the task failed to process. 
    #                   The <a>DataRepositoryTaskFailureDetails</a> property provides more information about task failures.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The task has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELED</code> - The task was canceled and it did not complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELING</code> - The task is in process of being canceled.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>You cannot delete an FSx for Lustre file system if there are data 
    #                   repository tasks for the file system in the <code>PENDING</code> or <code>EXECUTING</code> states.
    #                   Please retry when the data repository task is finished (with a status of <code>CANCELED</code>, <code>SUCCEEDED</code>, or <code>FAILED</code>). 
    #                   You can use the DescribeDataRepositoryTask action to monitor the task status. Contact the FSx team if you need to delete your file system immediately.</p>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>The type of data repository task.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXPORT_TO_REPOSITORY</code> tasks export from your
    #                   Amazon FSx for Lustre file system to a linked data repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORT_METADATA_FROM_REPOSITORY</code> tasks import metadata
    #                   changes from a linked S3 bucket to your Amazon FSx for Lustre file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RELEASE_DATA_FROM_FILESYSTEM</code> tasks release files in
    #                   your Amazon FSx for Lustre file system that have been exported to a
    #                   linked S3 bucket and that meet your specified release criteria.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUTO_RELEASE_DATA</code> tasks automatically release files from
    #                   an Amazon File Cache resource.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>The time the system began processing the task.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the system completed processing the task, populated after the task is complete.</p>
    #   @return [Time]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system.</p>
    #   @return [String]
    # @!attribute paths
    #   <p>An array of paths that specify the data for the data repository task to process. 
    #               For example, in an EXPORT_TO_REPOSITORY task, the paths specify which data to export
    #               to the linked data repository.</p>
    #            <p>(Default) If <code>Paths</code> is not specified, Amazon FSx uses the file system root directory.</p>
    #   @return [Array<String>]
    # @!attribute failure_details
    #   <p>Failure message describing why the task failed, it is populated only when <code>Lifecycle</code> is set to <code>FAILED</code>.</p>
    #   @return [Types::DataRepositoryTaskFailureDetails]
    # @!attribute status
    #   <p>Provides the status of the number of files that the task has processed successfully and failed to process.</p>
    #   @return [Types::DataRepositoryTaskStatus]
    # @!attribute report
    #   <p>Provides a report detailing the data repository task results of the files processed that match the criteria specified in the report <code>Scope</code> parameter. 
    #               FSx delivers the report to the file system's linked data repository in Amazon S3, 
    #               using the path specified in the report <code>Path</code> parameter. 
    #               You can specify whether or not a report gets generated for a task using the <code>Enabled</code> parameter.</p>
    #   @return [Types::CompletionReport]
    # @!attribute capacity_to_release
    #   <p>Specifies the amount of data to release, in GiB, by an Amazon File Cache
    #               AUTO_RELEASE_DATA task that automatically releases files from the cache.</p>
    #   @return [Integer]
    # @!attribute file_cache_id
    #   <p>The system-generated, unique ID of the cache.</p>
    #   @return [String]
    # @!attribute release_configuration
    #   <p>The configuration that specifies the last accessed time criteria for files
    #               that will be released from an Amazon FSx for Lustre file system.</p>
    #   @return [Types::ReleaseConfiguration]
    class DataRepositoryTask < Struct.new(
      nil,
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
      :report,
      :capacity_to_release,
      :file_cache_id,
      :release_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data repository task could not be canceled because the task has already ended.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class DataRepositoryTaskEnded < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An existing data repository task is currently executing on the file system.  
    #         Wait until the existing task has completed, then create the new task.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class DataRepositoryTaskExecuting < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about why a data repository task failed. Only populated when the task <code>Lifecycle</code> is set to <code>FAILED</code>.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class DataRepositoryTaskFailureDetails < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>(Optional) An array of filter objects you can use to filter the response of data repository tasks you will see in the response. 
    #             You can filter the tasks returned in the response by one or more file system IDs, task lifecycles, and by task type. 
    #             A filter object consists of a filter <code>Name</code>, and one or more <code>Values</code> for the filter.</p>
    # @!attribute name
    #   <p>Name of the task property to use in filtering the tasks returned in the response.</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>file-system-id</code> to retrieve data repository tasks for specific file systems.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>task-lifecycle</code> to retrieve data repository tasks with one or more specific lifecycle states, 
    #                   as follows: CANCELED, EXECUTING, FAILED, PENDING, and SUCCEEDED.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>Use Values to include the specific file system IDs and task 
    #               lifecycle states for the filters you are using.</p>
    #   @return [Array<String>]
    class DataRepositoryTaskFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data repository task or tasks you specified could not be found.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class DataRepositoryTaskNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the task status showing a running total of the total number of files to be processed, 
    #             the number successfully processed, and the number of files the task failed to process.</p>
    # @!attribute total_count
    #   <p>The total number of files that the task will process. While a task is executing, the sum of 
    #               <code>SucceededCount</code> plus <code>FailedCount</code> may not equal <code>TotalCount</code>. When the task is complete, 
    #               <code>TotalCount</code> equals the sum of <code>SucceededCount</code> plus <code>FailedCount</code>.</p>
    #   @return [Integer]
    # @!attribute succeeded_count
    #   <p>A running total of the number of files that the task has successfully processed.</p>
    #   @return [Integer]
    # @!attribute failed_count
    #   <p>A running total of the number of files that the task failed to process.</p>
    #   @return [Integer]
    # @!attribute last_updated_time
    #   <p>The time at which the task status was last updated.</p>
    #   @return [Time]
    # @!attribute released_capacity
    #   <p>The total amount of data, in GiB, released by an Amazon File Cache
    #               AUTO_RELEASE_DATA task that automatically releases files from the cache.</p>
    #   @return [Integer]
    class DataRepositoryTaskStatus < Struct.new(
      nil,
      :total_count,
      :succeeded_count,
      :failed_count,
      :last_updated_time,
      :released_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for the <code>DeleteBackup</code> operation.</p>
    # @!attribute backup_id
    #   <p>The ID of the backup that you want to delete.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent deletion. This parameter is automatically filled on your behalf when using
    #               the CLI or SDK.</p>
    #   @return [String]
    class DeleteBackupRequest < Struct.new(
      nil,
      :backup_id,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the <code>DeleteBackup</code> operation.</p>
    # @!attribute backup_id
    #   <p>The ID of the backup that was deleted.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the backup. If the <code>DeleteBackup</code> operation is
    #               successful, the status is <code>DELETED</code>.</p>
    #   @return [String]
    class DeleteBackupResponse < Struct.new(
      nil,
      :backup_id,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the data repository association that you want to delete.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute delete_data_in_file_system
    #   <p>Set to <code>true</code> to delete the data in the file system that corresponds
    #               to the data repository association.</p>
    #   @return [Boolean]
    class DeleteDataRepositoryAssociationRequest < Struct.new(
      nil,
      :association_id,
      :client_request_token,
      :delete_data_in_file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the data repository association being deleted.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>Describes the lifecycle state of the data repository association being deleted.</p>
    #   @return [String]
    # @!attribute delete_data_in_file_system
    #   <p>Indicates whether data in the file system that corresponds to the data
    #               repository association is being deleted. Default is <code>false</code>.</p>
    #   @return [Boolean]
    class DeleteDataRepositoryAssociationResponse < Struct.new(
      nil,
      :association_id,
      :lifecycle,
      :delete_data_in_file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_cache_id
    #   <p>The ID of the cache that's being deleted.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    class DeleteFileCacheRequest < Struct.new(
      nil,
      :file_cache_id,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_cache_id
    #   <p>The ID of the cache that's being deleted.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The cache lifecycle for the deletion request. If the
    #               <code>DeleteFileCache</code> operation is successful, this status is
    #               <code>DELETING</code>.</p>
    #   @return [String]
    class DeleteFileCacheResponse < Struct.new(
      nil,
      :file_cache_id,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for the Amazon FSx for Lustre file system being deleted in the
    #                 <code>DeleteFileSystem</code> operation.</p>
    # @!attribute skip_final_backup
    #   <p>Set <code>SkipFinalBackup</code> to false if you want to take a final backup of the file 
    #               system you are deleting. By default, Amazon FSx will not take a final backup on your behalf when the
    #                   <code>DeleteFileSystem</code> operation is invoked. (Default = true)</p>
    #            <note>
    #               <p>The <code>fsx:CreateBackup</code> permission is required if you set <code>SkipFinalBackup</code> to <code>false</code> in order to delete the file system and take a final backup.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute final_backup_tags
    #   <p>Use if <code>SkipFinalBackup</code> is set to <code>false</code>, 
    #               and you want to apply an array of tags to the final backup. If you have set the file system property
    #               <code>CopyTagsToBackups</code> to true, and 
    #               you specify one or more <code>FinalBackupTags</code> when deleting a file system, Amazon FSx will not copy any existing file system tags to the backup.</p>
    #   @return [Array<Types::Tag>]
    class DeleteFileSystemLustreConfiguration < Struct.new(
      nil,
      :skip_final_backup,
      :final_backup_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the Amazon FSx for Lustre file system being deleted in the
    #                 <code>DeleteFileSystem</code> operation.</p>
    # @!attribute final_backup_id
    #   <p>The ID of the final backup for this file system.</p>
    #   @return [String]
    # @!attribute final_backup_tags
    #   <p>The set of tags applied to the final backup.</p>
    #   @return [Array<Types::Tag>]
    class DeleteFileSystemLustreResponse < Struct.new(
      nil,
      :final_backup_id,
      :final_backup_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for the Amazon FSx for OpenZFS file system used in the
    #                 <code>DeleteFileSystem</code> operation.</p>
    # @!attribute skip_final_backup
    #   <p>By default, Amazon FSx for OpenZFS takes a final backup on your behalf when
    #               the <code>DeleteFileSystem</code> operation is invoked. Doing this helps protect you
    #               from data loss, and we highly recommend taking the final backup. If you want to skip
    #               taking a final backup, set this value to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute final_backup_tags
    #   <p>A list of tags to apply to the file system's final backup.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute options
    #   <p>To delete a file system if there are child volumes present below the root volume,
    #               use the string <code>DELETE_CHILD_VOLUMES_AND_SNAPSHOTS</code>. If your file system
    #               has child volumes and you don't use this option, the delete request will fail.</p>
    #   @return [Array<String>]
    class DeleteFileSystemOpenZFSConfiguration < Struct.new(
      nil,
      :skip_final_backup,
      :final_backup_tags,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the Amazon FSx for OpenZFS file system that's being
    #             deleted in the <code>DeleteFileSystem</code> operation.</p>
    # @!attribute final_backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    # @!attribute final_backup_tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    class DeleteFileSystemOpenZFSResponse < Struct.new(
      nil,
      :final_backup_id,
      :final_backup_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for <code>DeleteFileSystem</code> operation.</p>
    # @!attribute file_system_id
    #   <p>The ID of the file system that you want to delete.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #               idempotent deletion. This token is automatically filled on your behalf when using the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute windows_configuration
    #   <p>The configuration object for the Microsoft Windows file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #   @return [Types::DeleteFileSystemWindowsConfiguration]
    # @!attribute lustre_configuration
    #   <p>The configuration object for the Amazon FSx for Lustre file system being deleted in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #   @return [Types::DeleteFileSystemLustreConfiguration]
    # @!attribute open_zfs_configuration
    #   <p>The configuration object for the OpenZFS file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #   @return [Types::DeleteFileSystemOpenZFSConfiguration]
    class DeleteFileSystemRequest < Struct.new(
      nil,
      :file_system_id,
      :client_request_token,
      :windows_configuration,
      :lustre_configuration,
      :open_zfs_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the <code>DeleteFileSystem</code> operation.</p>
    # @!attribute file_system_id
    #   <p>The ID of the file system that's being deleted.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The file system lifecycle for the deletion request. If the
    #                   <code>DeleteFileSystem</code> operation is successful, this status is
    #                   <code>DELETING</code>.</p>
    #   @return [String]
    # @!attribute windows_response
    #   <p>The response object for the Microsoft Windows file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #   @return [Types::DeleteFileSystemWindowsResponse]
    # @!attribute lustre_response
    #   <p>The response object for the Amazon FSx for Lustre file system being deleted in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #   @return [Types::DeleteFileSystemLustreResponse]
    # @!attribute open_zfs_response
    #   <p>The response object for the OpenZFS file system that's being deleted in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #   @return [Types::DeleteFileSystemOpenZFSResponse]
    class DeleteFileSystemResponse < Struct.new(
      nil,
      :file_system_id,
      :lifecycle,
      :windows_response,
      :lustre_response,
      :open_zfs_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for the Microsoft Windows file system used in the
    #                 <code>DeleteFileSystem</code> operation.</p>
    # @!attribute skip_final_backup
    #   <p>By default, Amazon FSx for Windows takes a final backup on your behalf when the
    #                   <code>DeleteFileSystem</code> operation is invoked. Doing this helps protect you
    #               from data loss, and we highly recommend taking the final backup. If you want to skip
    #               this backup, use this flag to do so.</p>
    #   @return [Boolean]
    # @!attribute final_backup_tags
    #   <p>A set of tags for your final backup.</p>
    #   @return [Array<Types::Tag>]
    class DeleteFileSystemWindowsConfiguration < Struct.new(
      nil,
      :skip_final_backup,
      :final_backup_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the Microsoft Windows file system used in the
    #                 <code>DeleteFileSystem</code> operation.</p>
    # @!attribute final_backup_id
    #   <p>The ID of the final backup for this file system.</p>
    #   @return [String]
    # @!attribute final_backup_tags
    #   <p>The set of tags applied to the final backup.</p>
    #   @return [Array<Types::Tag>]
    class DeleteFileSystemWindowsResponse < Struct.new(
      nil,
      :final_backup_id,
      :final_backup_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The ID of the snapshot that you want to delete.</p>
    #   @return [String]
    class DeleteSnapshotRequest < Struct.new(
      nil,
      :client_request_token,
      :snapshot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_id
    #   <p>The ID of the deleted snapshot.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the snapshot. If the <code>DeleteSnapshot</code> operation is
    #               successful, this status is <code>DELETING</code>.</p>
    #   @return [String]
    class DeleteSnapshotResponse < Struct.new(
      nil,
      :snapshot_id,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute storage_virtual_machine_id
    #   <p>The ID of the SVM that you want to delete.</p>
    #   @return [String]
    class DeleteStorageVirtualMachineRequest < Struct.new(
      nil,
      :client_request_token,
      :storage_virtual_machine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_virtual_machine_id
    #   <p>The ID of the SVM Amazon FSx is deleting.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>Describes the lifecycle state of the SVM being deleted.</p>
    #   @return [String]
    class DeleteStorageVirtualMachineResponse < Struct.new(
      nil,
      :storage_virtual_machine_id,
      :lifecycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use to specify skipping a final backup, adding tags to a final backup, or bypassing the 
    #             retention period of an FSx for ONTAP SnapLock Enterprise volume when deleting an 
    #             FSx for ONTAP volume. </p>
    # @!attribute skip_final_backup
    #   <p>Set to true if you want to skip taking a final backup of the volume 
    #           you are deleting.</p>
    #   @return [Boolean]
    # @!attribute final_backup_tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute bypass_snaplock_enterprise_retention
    #   <p>Setting this to <code>true</code> allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume 
    #               with unexpired write once, read many (WORM) files. The IAM permission <code>fsx:BypassSnaplockEnterpriseRetention</code> is also 
    #           required to delete SnapLock Enterprise volumes with unexpired WORM files. The default value is <code>false</code>. </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-delete-volume.html">
    #                   Deleting a SnapLock volume</a>. </p>
    #   @return [Boolean]
    class DeleteVolumeOntapConfiguration < Struct.new(
      nil,
      :skip_final_backup,
      :final_backup_tags,
      :bypass_snaplock_enterprise_retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the Amazon FSx for NetApp ONTAP volume being deleted
    #             in the <code>DeleteVolume</code> operation.</p>
    # @!attribute final_backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    # @!attribute final_backup_tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    class DeleteVolumeOntapResponse < Struct.new(
      nil,
      :final_backup_id,
      :final_backup_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A value that specifies whether to delete all child volumes and snapshots. </p>
    # @!attribute options
    #   <p>To delete the volume's child volumes, snapshots, and clones, use the string
    #                 <code>DELETE_CHILD_VOLUMES_AND_SNAPSHOTS</code>.</p>
    #   @return [Array<String>]
    class DeleteVolumeOpenZFSConfiguration < Struct.new(
      nil,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The ID of the volume that you are deleting.</p>
    #   @return [String]
    # @!attribute ontap_configuration
    #   <p>For Amazon FSx for ONTAP volumes, specify whether to take a final backup of
    #               the volume and apply tags to the backup. To apply tags to the backup, you must have the
    #                   <code>fsx:TagResource</code> permission.</p>
    #   @return [Types::DeleteVolumeOntapConfiguration]
    # @!attribute open_zfs_configuration
    #   <p>For Amazon FSx for OpenZFS volumes, specify whether to delete all child
    #               volumes and snapshots.</p>
    #   @return [Types::DeleteVolumeOpenZFSConfiguration]
    class DeleteVolumeRequest < Struct.new(
      nil,
      :client_request_token,
      :volume_id,
      :ontap_configuration,
      :open_zfs_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The ID of the volume that's being deleted.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle state of the volume being deleted. If the <code>DeleteVolume</code>
    #               operation is successful, this value is <code>DELETING</code>.</p>
    #   @return [String]
    # @!attribute ontap_response
    #   <p>Returned after a <code>DeleteVolume</code> request, showing the status of the delete
    #               request.</p>
    #   @return [Types::DeleteVolumeOntapResponse]
    class DeleteVolumeResponse < Struct.new(
      nil,
      :volume_id,
      :lifecycle,
      :ontap_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for the <code>DescribeBackups</code> operation.</p>
    # @!attribute backup_ids
    #   <p>The IDs of the backups that you want to retrieve. This parameter value overrides any
    #               filters. If any IDs aren't found, a <code>BackupNotFound</code> error occurs.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filters structure. The supported names are <code>file-system-id</code>,
    #                   <code>backup-type</code>, <code>file-system-type</code>, and
    #               <code>volume-id</code>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Maximum number of backups to return in the response. This parameter value must be
    #               greater than 0. The number of items that Amazon FSx returns is the minimum of
    #               the <code>MaxResults</code> parameter specified in the request and the service's
    #               internal maximum number of items per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An opaque pagination token returned from a previous <code>DescribeBackups</code>
    #               operation. If a token is present, the operation continues the list from where the
    #               returning call left off.</p>
    #   @return [String]
    class DescribeBackupsRequest < Struct.new(
      nil,
      :backup_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response object for the <code>DescribeBackups</code> operation.</p>
    # @!attribute backups
    #   <p>An array of backups.</p>
    #   @return [Array<Types::Backup>]
    # @!attribute next_token
    #   <p>A <code>NextToken</code> value is present if there are more backups than returned in
    #               the response. You can use the <code>NextToken</code> value in the subsequent request to
    #               fetch the backups. </p>
    #   @return [String]
    class DescribeBackupsResponse < Struct.new(
      nil,
      :backups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_ids
    #   <p>IDs of the data repository associations whose descriptions you want to retrieve
    #               (String).</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>A list of <code>Filter</code> elements.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be
    #               an integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeDataRepositoryAssociationsRequest < Struct.new(
      nil,
      :association_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>An array of one or more data repository association descriptions.</p>
    #   @return [Array<Types::DataRepositoryAssociation>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeDataRepositoryAssociationsResponse < Struct.new(
      nil,
      :associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_ids
    #   <p>(Optional) IDs of the tasks whose descriptions you want to retrieve
    #               (String).</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>(Optional) You can use filters to narrow the <code>DescribeDataRepositoryTasks</code> response to 
    #               include just tasks for specific file systems, or tasks in a specific lifecycle state.</p>
    #   @return [Array<Types::DataRepositoryTaskFilter>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeDataRepositoryTasksRequest < Struct.new(
      nil,
      :task_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_repository_tasks
    #   <p>The collection of data repository task descriptions returned.</p>
    #   @return [Array<Types::DataRepositoryTask>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeDataRepositoryTasksResponse < Struct.new(
      nil,
      :data_repository_tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_cache_ids
    #   <p>IDs of the caches whose descriptions you want to retrieve (String).</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeFileCachesRequest < Struct.new(
      nil,
      :file_cache_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_caches
    #   <p>The response object for the <code>DescribeFileCaches</code> operation.</p>
    #   @return [Array<Types::FileCache>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeFileCachesResponse < Struct.new(
      nil,
      :file_caches,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for <code>DescribeFileSystemAliases</code> operation.</p>
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system to return the associated DNS aliases for
    #               (String).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of DNS aliases to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Opaque pagination token returned from a previous
    #                   <code>DescribeFileSystemAliases</code> operation (String). If a token is included in the request, the action
    #               continues the list from where the previous returning call left off.</p>
    #   @return [String]
    class DescribeFileSystemAliasesRequest < Struct.new(
      nil,
      :client_request_token,
      :file_system_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for <code>DescribeFileSystemAliases</code> operation.</p>
    # @!attribute aliases
    #   <p>An array of one or more DNS aliases currently associated with the specified file system.</p>
    #   @return [Array<Types::Alias>]
    # @!attribute next_token
    #   <p>Present if there are more DNS aliases than returned in the response (String). You
    #               can use the <code>NextToken</code> value in a later request to fetch additional
    #               descriptions. </p>
    #   @return [String]
    class DescribeFileSystemAliasesResponse < Struct.new(
      nil,
      :aliases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for <code>DescribeFileSystems</code> operation.</p>
    # @!attribute file_system_ids
    #   <p>IDs of the file systems whose descriptions you want to retrieve
    #               (String).</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum number of file systems to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Opaque pagination token returned from a previous <code>DescribeFileSystems</code>
    #               operation (String). If a token present, the operation continues the list from where the
    #               returning call left off.</p>
    #   @return [String]
    class DescribeFileSystemsRequest < Struct.new(
      nil,
      :file_system_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for <code>DescribeFileSystems</code> operation.</p>
    # @!attribute file_systems
    #   <p>An array of file system descriptions.</p>
    #   @return [Array<Types::FileSystem>]
    # @!attribute next_token
    #   <p>Present if there are more file systems than returned in the response (String). You
    #               can use the <code>NextToken</code> value in the later request to fetch the
    #               descriptions. </p>
    #   @return [String]
    class DescribeFileSystemsResponse < Struct.new(
      nil,
      :file_systems,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the S3 access point attachments whose descriptions you want to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Enter a filter Name and Values pair to view a select set of S3 access point attachments.</p>
    #   @return [Array<Types::S3AccessPointAttachmentsFilter>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeS3AccessPointAttachmentsRequest < Struct.new(
      nil,
      :names,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_access_point_attachments
    #   <p>Array of S3 access point attachments returned after a successful <code>DescribeS3AccessPointAttachments</code> operation.</p>
    #   @return [Array<Types::S3AccessPointAttachment>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeS3AccessPointAttachmentsResponse < Struct.new(
      nil,
      :s3_access_point_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeSharedVpcConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable_fsx_route_table_updates_from_participant_accounts
    #   <p>Indicates whether participant accounts can create FSx for ONTAP Multi-AZ file systems in shared subnets.</p>
    #   @return [String]
    class DescribeSharedVpcConfigurationResponse < Struct.new(
      nil,
      :enable_fsx_route_table_updates_from_participant_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_ids
    #   <p>The IDs of the snapshots that you want to retrieve. This parameter value overrides any
    #               filters. If any IDs aren't found, a <code>SnapshotNotFound</code> error occurs.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filters structure. The supported names are <code>file-system-id</code> or
    #                   <code>volume-id</code>.</p>
    #   @return [Array<Types::SnapshotFilter>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    # @!attribute include_shared
    #   <p>Set to <code>false</code> (default) if you want to only see the snapshots owned by your
    #               Amazon Web Services account. Set to <code>true</code> if you want to see the
    #               snapshots in your account and the ones shared with you from another account.</p>
    #   @return [Boolean]
    class DescribeSnapshotsRequest < Struct.new(
      nil,
      :snapshot_ids,
      :filters,
      :max_results,
      :next_token,
      :include_shared,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshots
    #   <p>An array of snapshots.</p>
    #   @return [Array<Types::Snapshot>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeSnapshotsResponse < Struct.new(
      nil,
      :snapshots,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_virtual_machine_ids
    #   <p>Enter the ID of one or more SVMs that you want to view.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Enter a filter name:value pair to view a select set of SVMs.</p>
    #   @return [Array<Types::StorageVirtualMachineFilter>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeStorageVirtualMachinesRequest < Struct.new(
      nil,
      :storage_virtual_machine_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_virtual_machines
    #   <p>Returned after a successful <code>DescribeStorageVirtualMachines</code> operation, describing each SVM.</p>
    #   @return [Array<Types::StorageVirtualMachine>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeStorageVirtualMachinesResponse < Struct.new(
      nil,
      :storage_virtual_machines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_ids
    #   <p>The IDs of the volumes whose descriptions you want to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Enter a filter <code>Name</code> and <code>Values</code> pair to view a select set of
    #               volumes.</p>
    #   @return [Array<Types::VolumeFilter>]
    # @!attribute max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeVolumesRequest < Struct.new(
      nil,
      :volume_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volumes
    #   <p>Returned after a successful <code>DescribeVolumes</code> operation, describing each volume.</p>
    #   @return [Array<Types::Volume>]
    # @!attribute next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #   @return [String]
    class DescribeVolumesResponse < Struct.new(
      nil,
      :volumes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the S3 access point attachment that you want to delete.</p>
    #   @return [String]
    class DetachAndDeleteS3AccessPointRequest < Struct.new(
      nil,
      :client_request_token,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle
    #   <p>The lifecycle status of the S3 access point attachment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the S3 access point attachment being deleted.</p>
    #   @return [String]
    class DetachAndDeleteS3AccessPointResponse < Struct.new(
      nil,
      :lifecycle,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object of DNS aliases to disassociate from an Amazon FSx for Windows File Server file system.</p>
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>Specifies the file system from which to disassociate the DNS aliases.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>An array of one or more DNS alias names to disassociate, or remove, from the file system.</p>
    #   @return [Array<String>]
    class DisassociateFileSystemAliasesRequest < Struct.new(
      nil,
      :client_request_token,
      :file_system_id,
      :aliases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The system generated response showing the DNS aliases that Amazon FSx is attempting to disassociate from the file system. 
    #         Use the  API operation to monitor the status of the aliases Amazon FSx is removing from the file system.</p>
    # @!attribute aliases
    #   <p>An array of one or more DNS aliases that Amazon FSx is attempting to disassociate from the file system.</p>
    #   @return [Array<Types::Alias>]
    class DisassociateFileSystemAliasesResponse < Struct.new(
      nil,
      :aliases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for NetApp ONTAP, Amazon FSx for Windows File Server, or FSx for OpenZFS file system. By default, Amazon FSx 
    #             automatically provisions 3 IOPS per GB of storage capacity. You can provision additional IOPS per
    #             GB of storage. The configuration consists of the total number of provisioned SSD IOPS
    #             and how it is was provisioned, or the mode (by the customer or by Amazon FSx).</p>
    # @!attribute mode
    #   <p>Specifies whether the file system is 
    #               using the <code>AUTOMATIC</code> setting of SSD IOPS of 3 IOPS per GB of storage capacity, or 
    #               if it using a <code>USER_PROVISIONED</code> value.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The total number of SSD IOPS provisioned for the file system.</p>
    #            <p>The minimum and maximum values for this property depend on the value of <code>HAPairs</code> and <code>StorageCapacity</code>. The minimum value is calculated as <code>StorageCapacity</code> * 3 * <code>HAPairs</code> (3 IOPS per GB of <code>StorageCapacity</code>). The maximum value is calculated as 200,000 * <code>HAPairs</code>.</p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) if the value of <code>Iops</code> is outside of the minimum or maximum values.</p>
    #   @return [Integer]
    class DiskIopsConfiguration < Struct.new(
      nil,
      :mode,
      :iops,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the minimum amount of time since last access for a 
    #             file to be eligible for release. Only files that have been
    #             exported to S3 and that were last accessed or modified before
    #             this point-in-time are eligible to be released from the
    #             Amazon FSx for Lustre file system.</p>
    # @!attribute unit
    #   <p>The unit of time used by the <code>Value</code> parameter to
    #               determine if a file can be released, based on when it was last
    #               accessed. <code>DAYS</code> is the only supported value. This
    #               is a required parameter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>An integer that represents the minimum amount of time (in days)
    #               since a file was last accessed in the file system. Only exported files
    #               with a <code>MAX(atime, ctime, mtime)</code> timestamp that is more than
    #               this amount of time in the past (relative to the task create time)
    #               will be released. The default of <code>Value</code> is <code>0</code>.
    #               This is a required parameter.</p>
    #            <note>
    #               <p>If an exported file meets the last accessed time criteria,
    #               its file or directory path must also be specified in the <code>Paths</code>
    #               parameter of the  operation
    #               in order for the file to be released.</p>
    #            </note>
    #   @return [Integer]
    class DurationSinceLastAccess < Struct.new(
      nil,
      :unit,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a specific Amazon File Cache resource, which is
    #             a response object from the <code>DescribeFileCaches</code> operation.</p>
    # @!attribute owner_id
    #   <p>An Amazon Web Services account ID. This ID is a 12-digit number that you use to construct Amazon
    #               Resource Names (ARNs) for resources.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute file_cache_id
    #   <p>The system-generated, unique ID of the cache.</p>
    #   @return [String]
    # @!attribute file_cache_type
    #   <p>The type of cache, which must be <code>LUSTRE</code>.</p>
    #   @return [String]
    # @!attribute file_cache_type_version
    #   <p>The Lustre version of the cache, which must be <code>2.12</code>.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the cache. The following are the possible values and
    #               what they mean:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The cache is in a healthy state, and is reachable and available for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The new cache is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - An existing cache is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The cache is undergoing a customer-initiated update.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - An existing cache has experienced an unrecoverable failure. 
    #                   When creating a new cache, the cache was unable to be created.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_details
    #   <p>A structure providing details of any failures that occurred.</p>
    #   @return [Types::FileCacheFailureDetails]
    # @!attribute storage_capacity
    #   <p>The storage capacity of the cache in gibibytes (GiB).</p>
    #   @return [Integer]
    # @!attribute vpc_id
    #   <p>The ID of your virtual private cloud (VPC). For more information, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">VPC and
    #                   subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs that the cache will be accessible from. You can specify only
    #               one subnet ID in a call to the <code>CreateFileCache</code> operation.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_ids
    #   <p>A list of network interface IDs.</p>
    #   @return [Array<String>]
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name for the cache.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #               an Amazon File Cache. If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed
    #               KMS key for your account is used. For more information,
    #               see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute lustre_configuration
    #   <p>The configuration for the Amazon File Cache resource.</p>
    #   @return [Types::FileCacheLustreConfiguration]
    # @!attribute data_repository_association_ids
    #   <p>A list of IDs of data repository associations that are associated with this cache.</p>
    #   @return [Array<String>]
    class FileCache < Struct.new(
      nil,
      :owner_id,
      :creation_time,
      :file_cache_id,
      :file_cache_type,
      :file_cache_type_version,
      :lifecycle,
      :failure_details,
      :storage_capacity,
      :vpc_id,
      :subnet_ids,
      :network_interface_ids,
      :dns_name,
      :kms_key_id,
      :resource_arn,
      :lustre_configuration,
      :data_repository_association_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the Amazon File Cache resource being created in the
    #             <code>CreateFileCache</code> operation.</p>
    # @!attribute owner_id
    #   <p>An Amazon Web Services account ID. This ID is a 12-digit number that you use to construct Amazon
    #               Resource Names (ARNs) for resources.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute file_cache_id
    #   <p>The system-generated, unique ID of the cache.</p>
    #   @return [String]
    # @!attribute file_cache_type
    #   <p>The type of cache, which must be <code>LUSTRE</code>.</p>
    #   @return [String]
    # @!attribute file_cache_type_version
    #   <p>The Lustre version of the cache, which must be <code>2.12</code>.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the cache. The following are the possible values and
    #               what they mean:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The cache is in a healthy state, and is reachable and available for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The new cache is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - An existing cache is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The cache is undergoing a customer-initiated update.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - An existing cache has experienced an unrecoverable failure. 
    #                   When creating a new cache, the cache was unable to be created.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_details
    #   <p>A structure providing details of any failures that occurred in creating a cache.</p>
    #   @return [Types::FileCacheFailureDetails]
    # @!attribute storage_capacity
    #   <p>The storage capacity of the cache in gibibytes (GiB).</p>
    #   @return [Integer]
    # @!attribute vpc_id
    #   <p>The ID of your virtual private cloud (VPC). For more information, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">VPC and
    #                   subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs that the cache will be accessible from. You can specify only
    #               one subnet ID in a call to the <code>CreateFileCache</code> operation.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_ids
    #   <p>A list of network interface IDs.</p>
    #   @return [Array<String>]
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name for the cache.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #               an Amazon File Cache. If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed
    #               KMS key for your account is used. For more information,
    #               see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute copy_tags_to_data_repository_associations
    #   <p>A boolean flag indicating whether tags for the cache should be copied to
    #               data repository associations.</p>
    #   @return [Boolean]
    # @!attribute lustre_configuration
    #   <p>The configuration for the Amazon File Cache resource.</p>
    #   @return [Types::FileCacheLustreConfiguration]
    # @!attribute data_repository_association_ids
    #   <p>A list of IDs of data repository associations that are associated with this cache.</p>
    #   @return [Array<String>]
    class FileCacheCreating < Struct.new(
      nil,
      :owner_id,
      :creation_time,
      :file_cache_id,
      :file_cache_type,
      :file_cache_type_version,
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
      :copy_tags_to_data_repository_associations,
      :lustre_configuration,
      :data_repository_association_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a data repository association (DRA) to
    #             be created during the Amazon File Cache resource creation. The DRA
    #             links the cache to either an Amazon S3 bucket or prefix, or a Network File
    #             System (NFS) data repository that supports the NFSv3 protocol.</p>
    #          <p>The DRA does not support automatic import or automatic
    #             export.</p>
    # @!attribute file_cache_path
    #   <p>A path on the cache that points to a high-level directory (such
    #               as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
    #               that will be mapped 1-1 with <code>DataRepositoryPath</code>.
    #               The leading forward slash in the name is required. Two data repository
    #               associations cannot have overlapping cache paths. For example, if
    #               a data repository is associated with cache path <code>/ns1/</code>,
    #               then you cannot link another data repository with cache
    #               path <code>/ns1/ns2</code>.</p>
    #            <p>This path specifies where in your cache files will be exported
    #               from. This cache directory can be linked to only one data repository,
    #               and no data repository other can be linked to the directory.</p>
    #            <note>
    #               <p>The cache path can only be set to root (/) on an NFS DRA when
    #                   <code>DataRepositorySubdirectories</code> is specified. If you
    #                   specify root (/) as the cache path, you can create only one DRA
    #                   on the cache.</p>
    #               <p>The cache path cannot be set to root (/) for an S3 DRA.</p>
    #            </note>
    #   @return [String]
    # @!attribute data_repository_path
    #   <p>The path to the S3 or NFS data repository that links to the
    #               cache. You must provide one of the following paths:</p>
    #            <ul>
    #               <li>
    #                  <p>The path can be an NFS data repository that links to
    #                   the cache. The path can be in one of two formats:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you are not using the <code>DataRepositorySubdirectories</code>
    #                           parameter, the path is to an NFS Export directory (or one of its subdirectories)
    #                           in the format <code>nfs://nfs-domain-name/exportpath</code>. You can therefore
    #                           link a single NFS Export to a single data repository association.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you are using the <code>DataRepositorySubdirectories</code>
    #                           parameter, the path is the domain name of the NFS file system in the format
    #                           <code>nfs://filer-domain-name</code>, which indicates the root of the
    #                           subdirectories specified with the <code>DataRepositorySubdirectories</code>
    #                           parameter.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The path can be an S3 bucket or prefix
    #                   in the format <code>s3://bucket-name/prefix/</code> (where <code>prefix</code>
    #                   is optional).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_repository_subdirectories
    #   <p>A list of NFS Exports that will be linked with this data repository
    #               association. The Export paths are in the format <code>/exportpath1</code>.
    #               To use this parameter, you must configure <code>DataRepositoryPath</code>
    #               as the domain name of the NFS file system. The NFS file system domain name in effect is the
    #               root of the subdirectories. Note that <code>DataRepositorySubdirectories</code>
    #               is not supported for S3 data repositories.</p>
    #   @return [Array<String>]
    # @!attribute nfs
    #   <p>The configuration for a data repository association that
    #               links an Amazon File Cache resource to an NFS data repository.</p>
    #   @return [Types::FileCacheNFSConfiguration]
    class FileCacheDataRepositoryAssociation < Struct.new(
      nil,
      :file_cache_path,
      :data_repository_path,
      :data_repository_subdirectories,
      :nfs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure providing details of any failures that occurred.</p>
    # @!attribute message
    #   <p>A message describing any failures that occurred.</p>
    #   @return [String]
    class FileCacheFailureDetails < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the Amazon File Cache resource.</p>
    # @!attribute per_unit_storage_throughput
    #   <p>Per unit storage throughput represents the megabytes per second of read or write
    #               throughput per 1 tebibyte of storage provisioned. Cache throughput capacity is
    #               equal to Storage capacity (TiB) * PerUnitStorageThroughput (MB/s/TiB). The only
    #               supported value is <code>1000</code>.</p>
    #   @return [Integer]
    # @!attribute deployment_type
    #   <p>The deployment type of the Amazon File Cache resource, which must
    #               be <code>CACHE_1</code>.</p>
    #   @return [String]
    # @!attribute mount_name
    #   <p>You use the <code>MountName</code> value when mounting the cache. If you pass
    #               a cache ID to the <code>DescribeFileCaches</code> operation, it returns the
    #               the <code>MountName</code> value as part of the cache's description.</p>
    #   @return [String]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute metadata_configuration
    #   <p>The configuration for a Lustre MDT (Metadata Target) storage volume.</p>
    #   @return [Types::FileCacheLustreMetadataConfiguration]
    # @!attribute log_configuration
    #   <p>The configuration for Lustre logging used to write the enabled
    #               logging events for your Amazon File Cache resource to Amazon CloudWatch Logs.</p>
    #   @return [Types::LustreLogConfiguration]
    class FileCacheLustreConfiguration < Struct.new(
      nil,
      :per_unit_storage_throughput,
      :deployment_type,
      :mount_name,
      :weekly_maintenance_start_time,
      :metadata_configuration,
      :log_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a Lustre MDT (Metadata Target) storage volume.
    #             The metadata on Amazon File Cache is managed by a Lustre Metadata Server
    #             (MDS) while the actual metadata is persisted on an MDT.</p>
    # @!attribute storage_capacity
    #   <p>The storage capacity of the Lustre MDT (Metadata Target) storage
    #               volume in gibibytes (GiB). The only supported value is <code>2400</code> GiB.</p>
    #   @return [Integer]
    class FileCacheLustreMetadataConfiguration < Struct.new(
      nil,
      :storage_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an NFS data repository association (DRA)
    #             created during the creation of the Amazon File Cache resource.</p>
    # @!attribute version
    #   <p>The version of the NFS (Network File System) protocol of the
    #               NFS data repository. The only supported value is <code>NFS3</code>,
    #               which indicates that the data repository must support the NFSv3 protocol.</p>
    #   @return [String]
    # @!attribute dns_ips
    #   <p>A list of up to 2 IP addresses of DNS servers used to resolve
    #               the NFS file system domain name. The provided IP addresses can either
    #               be the IP addresses of a DNS forwarder or resolver that the customer
    #               manages and runs inside the customer VPC, or the IP addresses of the
    #               on-premises DNS servers.</p>
    #   @return [Array<String>]
    class FileCacheNFSConfiguration < Struct.new(
      nil,
      :version,
      :dns_ips,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No caches were found based upon supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class FileCacheNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a specific Amazon FSx file system.</p>
    # @!attribute owner_id
    #   <p>The Amazon Web Services account that created the file system. If the file system was created by a
    #               user in IAM Identity Center, the Amazon Web Services account to which the
    #               IAM user belongs is the owner.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the file system was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute file_system_id
    #   <p>The system-generated, unique 17-digit ID of the file system.</p>
    #   @return [String]
    # @!attribute file_system_type
    #   <p>The type of Amazon FSx file system, which can be <code>LUSTRE</code>,
    #                   <code>WINDOWS</code>, <code>ONTAP</code>, or <code>OPENZFS</code>.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the file system. The following are the possible values and
    #               what they mean:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The file system is in a healthy state, and is reachable and available for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon FSx is creating the new file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Amazon FSx is deleting an existing file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - An existing file system has experienced an unrecoverable failure. 
    #                       When creating a new file system, Amazon FSx was unable to create the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURED</code> - The file system is in a failed but recoverable state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURED_UNAVAILABLE</code> - (Amazon FSx for Windows File Server only) The file system is
    #                       currently unavailable due to a change in your Active Directory configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The file system is undergoing a customer-initiated update.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_details
    #   <p>A structure providing details of any failures that occurred.</p>
    #   @return [Types::FileSystemFailureDetails]
    # @!attribute storage_capacity
    #   <p>The storage capacity of the file system in gibibytes (GiB).</p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) if the value of <code>StorageCapacity</code> is outside of the minimum or maximum values.</p>
    #   @return [Integer]
    # @!attribute storage_type
    #   <p>The type of storage the file system is using.</p>
    #            <ul>
    #               <li>
    #                  <p>If set to <code>SSD</code>, the file system uses solid state drive storage.</p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>HDD</code>, the file system uses hard disk drive storage.</p>
    #               </li>
    #               <li>
    #                  <p>If set to <code>INTELLIGENT_TIERING</code>, the file system uses fully elastic,
    #                       intelligently-tiered storage.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the primary virtual private cloud (VPC) for the file system.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system is accessible from. For the Amazon FSx Windows and
    #               ONTAP <code>MULTI_AZ_1</code> file system deployment type, there are two subnet IDs, one for
    #               the preferred file server and one for the standby file server. The preferred file server subnet
    #               identified in the <code>PreferredSubnetID</code> property. All other file systems have only one subnet ID.</p>
    #            <p>For FSx for Lustre file systems, and Single-AZ Windows file systems, this is the ID of 
    #               the subnet that contains the file system's endpoint. For <code>MULTI_AZ_1</code> Windows and
    #               ONTAP file systems, the file system endpoint is available in the <code>PreferredSubnetID</code>.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_ids
    #   <p>The IDs of the elastic network interfaces from which a specific file system is
    #               accessible. The elastic network interface is automatically created in the same virtual
    #               private cloud (VPC) that the Amazon FSx file system was created in. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html">Elastic Network Interfaces</a> in
    #               the <i>Amazon EC2 User Guide.</i>
    #            </p>
    #            <p>For an Amazon FSx for Windows File Server file system, you can have one
    #               network interface ID. For an Amazon FSx for Lustre file system, you can have
    #               more than one.</p>
    #   @return [Array<String>]
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name for the file system.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt Amazon FSx file
    #               system data. Used as follows with Amazon FSx file system types:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                  and <code>PERSISTENT_2</code> deployment types only.</p>
    #                  <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the file system resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the file system. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/tag-resources.html">Tagging your
    #                   Amazon FSx resources</a> in the <i>Amazon FSx for Lustre User
    #               Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute windows_configuration
    #   <p>The configuration for this Amazon FSx for Windows File Server file system.</p>
    #   @return [Types::WindowsFileSystemConfiguration]
    # @!attribute lustre_configuration
    #   <p>The configuration for the Amazon FSx for Lustre file system.</p>
    #   @return [Types::LustreFileSystemConfiguration]
    # @!attribute administrative_actions
    #   <p>A list of administrative actions for the file system that are in process or waiting to
    #               be processed. Administrative actions describe changes to the Amazon FSx system
    #               that you have initiated using the <code>UpdateFileSystem</code> operation.</p>
    #   @return [Array<Types::AdministrativeAction>]
    # @!attribute ontap_configuration
    #   <p>The configuration for this Amazon FSx for NetApp ONTAP file system.</p>
    #   @return [Types::OntapFileSystemConfiguration]
    # @!attribute file_system_type_version
    #   <p>The Lustre version of the Amazon FSx for Lustre file system, which
    #               can be <code>2.10</code>, <code>2.12</code>, or <code>2.15</code>.</p>
    #   @return [String]
    # @!attribute open_zfs_configuration
    #   <p>The configuration for this Amazon FSx for OpenZFS file system.</p>
    #   @return [Types::OpenZFSFileSystemConfiguration]
    # @!attribute network_type
    #   <p>The network type of the file system.</p>
    #   @return [String]
    class FileSystem < Struct.new(
      nil,
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
      :file_system_type_version,
      :open_zfs_configuration,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon FSx for NetApp ONTAP file system has two endpoints
    #             that are used to access data or to manage the file system
    #             using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. They
    #             are the <code>Management</code> and <code>Intercluster</code> endpoints.</p>
    # @!attribute dns_name
    #   <p>The file system's DNS name. You can mount your file
    #               system using its DNS name.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>The IPv4 addresses of the file system endpoint.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>The IPv6 addresses of the file system endpoint.</p>
    #   @return [Array<String>]
    class FileSystemEndpoint < Struct.new(
      nil,
      :dns_name,
      :ip_addresses,
      :ipv6_addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon FSx for NetApp ONTAP file system has the following endpoints
    #             that are used to access data or to manage the file system using the
    #             NetApp ONTAP CLI, REST API, or NetApp SnapMirror.</p>
    # @!attribute intercluster
    #   <p>An endpoint for managing your file system by setting up NetApp SnapMirror
    #               with other ONTAP systems.</p>
    #   @return [Types::FileSystemEndpoint]
    # @!attribute management
    #   <p>An endpoint for managing your file system using the NetApp ONTAP CLI
    #               and NetApp ONTAP API.</p>
    #   @return [Types::FileSystemEndpoint]
    class FileSystemEndpoints < Struct.new(
      nil,
      :intercluster,
      :management,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure providing details of any failures that occurred.</p>
    # @!attribute message
    #   <p>A message describing any failures that occurred.</p>
    #   @return [String]
    class FileSystemFailureDetails < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lustre metadata performance configuration of an Amazon FSx for Lustre
    #             file system using a <code>PERSISTENT_2</code> deployment type. The configuration
    #             enables the file system to support increasing metadata performance.</p>
    # @!attribute iops
    #   <p>The number of Metadata IOPS provisioned for the file system.</p>
    #            <ul>
    #               <li>
    #                  <p>For SSD file systems, valid values are <code>1500</code>,
    #                       <code>3000</code>, <code>6000</code>, <code>12000</code>, and
    #                       multiples of <code>12000</code> up to a maximum of <code>192000</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Intelligent-Tiering file systems, valid values are <code>6000</code>
    #                       and <code>12000</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute mode
    #   <p>The metadata configuration mode for provisioning Metadata IOPS for the
    #               file system.</p>
    #            <ul>
    #               <li>
    #                  <p>In AUTOMATIC mode (supported only on SSD file systems),
    #                       FSx for Lustre automatically provisions and scales the
    #                       number of Metadata IOPS on your file system based on your file
    #                       system storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>In USER_PROVISIONED mode, you can choose to specify the number
    #                   of Metadata IOPS to provision for your file system.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class FileSystemLustreMetadataConfiguration < Struct.new(
      nil,
      :iops,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No Amazon FSx file systems were found based upon supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class FileSystemNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to restrict the results of describe calls. You can use multiple
    #             filters to return results that meet all applied filter requirements.</p>
    # @!attribute name
    #   <p>The name for this filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the filter. These are all the values for any of the applied
    #               filters.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error returned when a second request is received with the same client request
    #             token but different parameters settings. A client request token should always uniquely
    #             identify a single request.</p>
    # @!attribute parameter
    #   <p>A parameter that is incompatible with the earlier request.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class IncompatibleParameterError < Struct.new(
      nil,
      :parameter,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon FSx doesn't support Multi-AZ Windows File Server copy backup in the
    #          destination Region, so the copied backup can't be restored.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class IncompatibleRegionForMultiAZ < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A generic error indicating a server-side failure.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The access point specified doesn't exist.</p>
    # @!attribute error_code
    #   <p>An error code indicating that the access point specified doesn't exist.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidAccessPoint < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have filtered the response to a data repository type that is not supported.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidDataRepositoryType < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Key Management Service (KMS) key of the destination backup is not
    #          valid.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidDestinationKmsKey < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The path provided for data repository export isn't valid.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidExportPath < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The path provided for data repository import isn't valid.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidImportPath < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more network settings specified in the request are invalid.</p>
    # @!attribute message
    #   <p>Error message explaining what's wrong with network settings.</p>
    #   @return [String]
    # @!attribute invalid_subnet_id
    #   <p>The subnet ID that is either invalid or not part of the VPC specified.</p>
    #   @return [String]
    # @!attribute invalid_security_group_id
    #   <p>The security group ID is either invalid or not part of the VPC specified.</p>
    #   @return [String]
    # @!attribute invalid_route_table_id
    #   <p>The route table ID is either invalid or not part of the VPC specified.</p>
    #   @return [String]
    class InvalidNetworkSettings < Struct.new(
      nil,
      :message,
      :invalid_subnet_id,
      :invalid_security_group_id,
      :invalid_route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid value for <code>PerUnitStorageThroughput</code> was provided. Please create your file system again, using a valid value.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidPerUnitStorageThroughput < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Region provided for <code>SourceRegion</code> is not valid or is in a different
    #             Amazon Web Services partition.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidRegion < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action or operation requested is invalid. Verify that the action is typed correctly.</p>
    # @!attribute error_code
    #   <p>An error code indicating that the action or operation requested is invalid.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidRequest < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Key Management Service (KMS) key of the source backup is not
    #          valid.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class InvalidSourceKmsKey < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes why a resource lifecycle state changed.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class LifecycleTransitionReason < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for <code>ListTagsForResource</code> operation.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the Amazon FSx resource that will have its tags listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of tags to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Opaque pagination token returned from a previous
    #                   <code>ListTagsForResource</code> operation (String). If a token present, the action
    #               continues the list from where the returning call left off.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for <code>ListTagsForResource</code> operation.</p>
    # @!attribute tags
    #   <p>A list of tags on the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>This is present if there are more tags than returned in the response (String). You
    #               can use the <code>NextToken</code> value in the later request to fetch the tags.
    #           </p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the Amazon FSx for Lustre file system.</p>
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone. Here, <code>d</code> is the weekday number, from 1 through 7, beginning with Monday and
    #               ending with Sunday.</p>
    #   @return [String]
    # @!attribute data_repository_configuration
    #   <p>The data repository configuration object for Lustre file systems returned in the response of
    #               the <code>CreateFileSystem</code> operation.</p>
    #            <p>This data type is not supported on file systems with a data repository association.
    #               For file systems with a data repository association,
    #               see .</p>
    #   @return [Types::DataRepositoryConfiguration]
    # @!attribute deployment_type
    #   <p>The deployment type of the FSx for Lustre file system. 
    #               <i>Scratch deployment type</i> is designed for temporary storage
    #               and shorter-term processing of data.</p>
    #            <p>
    #               <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment types are best suited 
    #               for when you need temporary storage and shorter-term processing of data. The 
    #               <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst 
    #               throughput capacity than <code>SCRATCH_1</code>.</p>
    #            <p>The <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> deployment type is used
    #               for longer-term storage and workloads and encryption of data in transit.
    #                   <code>PERSISTENT_2</code> offers higher <code>PerUnitStorageThroughput</code>
    #               (up to 1000 MB/s/TiB) along with a lower minimum storage capacity requirement (600 GiB).
    #               To learn more about FSx for Lustre deployment types, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-fsx-lustre.html">Deployment and storage class options for
    #                       FSx for Lustre file systems</a>.</p>
    #            <p>The default is <code>SCRATCH_1</code>.</p>
    #   @return [String]
    # @!attribute per_unit_storage_throughput
    #   <p>Per unit storage throughput represents the megabytes per second of read or write
    #               throughput per 1 tebibyte of storage provisioned. File system throughput capacity is
    #               equal to Storage capacity (TiB) * PerUnitStorageThroughput (MB/s/TiB). This option is
    #               only valid for <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> deployment types. </p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> SSD storage: 50, 100, 200.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> HDD storage: 12, 40.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_2</code> SSD storage: 125, 250, 500, 1000.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute mount_name
    #   <p>You use the <code>MountName</code> value when mounting the file system.</p>
    #            <p>For the <code>SCRATCH_1</code> deployment type, this value is always "<code>fsx</code>". 
    #               For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2</code> deployment
    #               types, this value is a string that is unique within an Amazon Web Services Region. 
    #           </p>
    #   @return [String]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>A boolean flag indicating whether tags on the file system are copied to backups.
    #               If it's set to true, all tags on the file system are
    #               copied to all automatic backups and any user-initiated backups where the user
    #               doesn't specify any tags. If this value is true, and you specify one or more tags,
    #               only the specified tags are copied to backups. If you specify one or more tags when 
    #               creating a user-initiated backup, no tags are copied from the file system, 
    #               regardless of this value. (Default = false)</p>
    #   @return [Boolean]
    # @!attribute drive_cache_type
    #   <p>The type of drive cache used by <code>PERSISTENT_1</code> file systems that are provisioned with
    #               HDD storage devices. This parameter is required when <code>StorageType</code> is HDD. When set to
    #               <code>READ</code> the file system has an SSD storage cache that is sized to 20% of the file system's
    #               storage capacity. This improves the performance for frequently accessed files by caching up to 20%
    #               of the total storage capacity.</p>
    #            <p>This parameter is required when <code>StorageType</code> is set to HDD.</p>
    #   @return [String]
    # @!attribute data_compression_type
    #   <p>The data compression configuration for the file system. <code>DataCompressionType</code>
    #               can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Data compression is turned off for
    #                   the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Data compression is turned on with the LZ4
    #                   algorithm.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html">Lustre data compression</a>.</p>
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The Lustre logging configuration. Lustre logging writes the enabled log
    #               events for your file system to Amazon CloudWatch Logs.</p>
    #   @return [Types::LustreLogConfiguration]
    # @!attribute root_squash_configuration
    #   <p>The Lustre root squash configuration for an Amazon FSx for Lustre
    #               file system. When enabled, root squash restricts root-level access from clients that
    #               try to access your file system as a root user.</p>
    #   @return [Types::LustreRootSquashConfiguration]
    # @!attribute metadata_configuration
    #   <p>The Lustre metadata performance configuration for an Amazon FSx for Lustre file system
    #               using a <code>PERSISTENT_2</code> deployment type.</p>
    #   @return [Types::FileSystemLustreMetadataConfiguration]
    # @!attribute efa_enabled
    #   <p>Specifies whether Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS)
    #               support is enabled for the Amazon FSx for Lustre file system.</p>
    #   @return [Boolean]
    # @!attribute throughput_capacity
    #   <p>The throughput of an Amazon FSx for Lustre file system using the Intelligent-Tiering
    #               storage class, measured in megabytes per second (MBps).</p>
    #   @return [Integer]
    # @!attribute data_read_cache_configuration
    #   <p>Required when <code>StorageType</code> is set to <code>INTELLIGENT_TIERING</code>.
    #               Specifies the optional provisioned SSD read cache.</p>
    #   @return [Types::LustreReadCacheConfiguration]
    class LustreFileSystemConfiguration < Struct.new(
      nil,
      :weekly_maintenance_start_time,
      :data_repository_configuration,
      :deployment_type,
      :per_unit_storage_throughput,
      :mount_name,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :copy_tags_to_backups,
      :drive_cache_type,
      :data_compression_type,
      :log_configuration,
      :root_squash_configuration,
      :metadata_configuration,
      :efa_enabled,
      :throughput_capacity,
      :data_read_cache_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for Lustre logging used to write the enabled
    #             logging events for your Amazon FSx for Lustre file system or
    #             Amazon File Cache resource to Amazon CloudWatch Logs.</p>
    # @!attribute level
    #   <p>The data repository events that are logged by Amazon FSx.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WARN_ONLY</code> - only warning events are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR_ONLY</code> - only error events are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN_ERROR</code> - both warning events and error events
    #                       are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - logging of data repository events
    #                       is turned off.</p>
    #               </li>
    #            </ul>
    #            <p>Note that Amazon File Cache uses a default setting of <code>WARN_ERROR</code>,
    #               which can't be changed.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) that specifies the destination of the logs.
    #               The destination can be any Amazon CloudWatch Logs log group ARN. The destination
    #               ARN must be in the same Amazon Web Services partition, Amazon Web Services Region,
    #               and Amazon Web Services account as your Amazon FSx file system.</p>
    #   @return [String]
    class LustreLogConfiguration < Struct.new(
      nil,
      :level,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lustre logging configuration used when creating or updating an
    #             Amazon FSx for Lustre file system. An Amazon File Cache is created
    #             with Lustre logging enabled by default, with a setting of
    #             <code>WARN_ERROR</code> for the logging events. which can't be changed.</p>
    #          <p>Lustre logging writes the enabled logging events for your file system
    #             or cache to Amazon CloudWatch Logs.</p>
    # @!attribute level
    #   <p>Sets which data repository events are logged by Amazon FSx.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WARN_ONLY</code> - only warning events are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR_ONLY</code> - only error events are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN_ERROR</code> - both warning events and error events
    #                       are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - logging of data repository events
    #                       is turned off.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon Resource Name (ARN) that specifies the destination of the logs.</p>
    #            <p>The destination can be any Amazon CloudWatch Logs log group ARN, with the following
    #               requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>The destination ARN that you provide must be in the same Amazon Web Services partition,
    #                       Amazon Web Services Region, and Amazon Web Services account as your Amazon FSx file system.</p>
    #               </li>
    #               <li>
    #                  <p>The name of the Amazon CloudWatch Logs log group must begin with
    #                       the <code>/aws/fsx</code> prefix.</p>
    #               </li>
    #               <li>
    #                  <p>If you do not provide a destination, Amazon FSx will create and use a
    #                       log stream in the CloudWatch Logs <code>/aws/fsx/lustre</code> log group
    #                       (for Amazon FSx for Lustre) or <code>/aws/fsx/filecache</code>
    #                       (for Amazon File Cache).</p>
    #               </li>
    #               <li>
    #                  <p>If <code>Destination</code> is provided and the resource does not
    #                       exist, the request will fail with a <code>BadRequest</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>Level</code> is set to <code>DISABLED</code>, you cannot specify
    #                       a destination in <code>Destination</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LustreLogCreateConfiguration < Struct.new(
      nil,
      :level,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The configuration for the optional provisioned SSD read cache on Amazon FSx for Lustre file systems
    #             that use the Intelligent-Tiering storage class.
    #         </p>
    # @!attribute sizing_mode
    #   <p>
    #               Specifies how the provisioned SSD read cache is sized, as follows:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>Set to <code>NO_CACHE</code> if you do not want to use an SSD read cache with your Intelligent-Tiering file system.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>USER_PROVISIONED</code> to specify the exact size of your SSD read cache.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>PROPORTIONAL_TO_THROUGHPUT_CAPACITY</code> to have your SSD read cache automatically sized based on your throughput capacity.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute size_gi_b
    #   <p>
    #               Required if <code>SizingMode</code> is set to <code>USER_PROVISIONED</code>.
    #               Specifies the size of the file system's SSD read cache, in gibibytes (GiB).
    #           </p>
    #            <p>The SSD read cache size is distributed across provisioned file servers in
    #               your file system. Intelligent-Tiering file systems support a minimum of 32 GiB
    #               and maximum of 131072 GiB for SSD read cache size for every 4,000 MB/s of throughput
    #               capacity provisioned.</p>
    #   @return [Integer]
    class LustreReadCacheConfiguration < Struct.new(
      nil,
      :sizing_mode,
      :size_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for Lustre root squash used to restrict root-level access
    #             from clients that try to access your FSx for Lustre file system as root.
    #             Use the <code>RootSquash</code> parameter to enable root squash. To learn more
    #             about Lustre root squash,
    #             see  <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/root-squash.html">Lustre root squash</a>.</p>
    #          <p>You can also use the <code>NoSquashNids</code> parameter to provide an array of clients
    #             who are not affected by the root squash setting. These clients will access the file system as root,
    #             with unrestricted privileges.</p>
    # @!attribute root_squash
    #   <p>You enable root squash by setting a user ID (UID) and group ID (GID) for the file
    #               system in the format <code>UID:GID</code> (for example, <code>365534:65534</code>).
    #               The UID and GID values can range from <code>0</code> to <code>4294967294</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>A non-zero value for UID and GID enables root squash. The UID and GID
    #                   values can be different, but each must be a non-zero value.</p>
    #               </li>
    #               <li>
    #                  <p>A value of <code>0</code> (zero) for UID and GID indicates root,
    #                   and therefore disables root squash.</p>
    #               </li>
    #            </ul>
    #            <p>When root squash is enabled, the user ID and group ID of a root user accessing
    #               the file system are re-mapped to the UID and GID you provide.</p>
    #   @return [String]
    # @!attribute no_squash_nids
    #   <p>When root squash is enabled, you can optionally specify an array of NIDs of clients
    #               for which root squash does not apply. A client NID is a Lustre Network Identifier used
    #               to uniquely identify a client. You can specify the NID as either a single address or a
    #               range of addresses:</p>
    #            <ul>
    #               <li>
    #                  <p>A single address is described in standard Lustre NID format by specifying
    #                   the client’s IP address followed by the Lustre network ID (for example,
    #                   <code>10.0.1.6@tcp</code>).</p>
    #               </li>
    #               <li>
    #                  <p>An address range is described using a dash to separate the range (for example,
    #                   <code>10.0.[2-10].[1-255]@tcp</code>).</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class LustreRootSquashConfiguration < Struct.new(
      nil,
      :root_squash,
      :no_squash_nids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A cache configuration is required for this operation.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class MissingFileCacheConfiguration < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A file system configuration is required for this operation.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class MissingFileSystemConfiguration < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A volume configuration is required for this operation.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class MissingVolumeConfiguration < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a data repository association that
    #             links an Amazon File Cache resource to an NFS data repository.</p>
    # @!attribute version
    #   <p>The version of the NFS (Network File System) protocol of the
    #               NFS data repository. Currently, the only supported value is
    #               <code>NFS3</code>, which indicates that the data repository must
    #               support the NFSv3 protocol.</p>
    #   @return [String]
    # @!attribute dns_ips
    #   <p>A list of up to 2 IP addresses of DNS servers used to resolve
    #               the NFS file system domain name. The provided IP addresses can either
    #               be the IP addresses of a DNS forwarder or resolver that the customer
    #               manages and runs inside the customer VPC, or the IP addresses of the
    #               on-premises DNS servers.</p>
    #   @return [Array<String>]
    # @!attribute auto_export_policy
    #   <p>This parameter is not supported for Amazon File Cache.</p>
    #   @return [Types::AutoExportPolicy]
    class NFSDataRepositoryConfiguration < Struct.new(
      nil,
      :version,
      :dns_ips,
      :auto_export_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified for the tagging operation is not a resource type owned by
    #             Amazon FSx. Use the API of the relevant service to perform the operation. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the non-Amazon FSx resource.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class NotServiceResourceError < Struct.new(
      nil,
      :resource_arn,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the FSx for NetApp ONTAP file system.</p>
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies the FSx for ONTAP file system deployment type in use in the file
    #               system. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_1</code> - A high availability file system configured
    #                       for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ)
    #                       unavailability. This is a first-generation FSx for ONTAP file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_2</code> - A high availability file system configured for Multi-AZ redundancy to tolerate 
    #                   temporary AZ unavailability. This is a second-generation FSx for ONTAP file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_1</code> - A file system configured for Single-AZ
    #                       redundancy. This is a first-generation FSx for ONTAP file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_2</code> - A file system configured with multiple high-availability (HA) pairs for Single-AZ redundancy. 
    #                   This is a second-generation FSx for ONTAP file system.</p>
    #               </li>
    #            </ul>
    #            <p>For information about the use cases for Multi-AZ and Single-AZ deployments, refer to
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html">Choosing Multi-AZ or
    #                   Single-AZ file system deployment</a>. </p>
    #   @return [String]
    # @!attribute endpoint_ip_address_range
    #   <p>(Multi-AZ only) Specifies the IPv4 address range in which the endpoints to access your
    #               file system will be created. By default in the Amazon FSx  API, Amazon FSx
    #               selects an unused IP address range for you from the 198.19.* range. By default in the 
    #               Amazon FSx  console, Amazon FSx  chooses the last 64 IP addresses from
    #               the VPC’s primary CIDR range to use as the endpoint IP address range for the file system.
    #               You can have overlapping endpoint IP addresses for file systems deployed in the
    #               same VPC/route tables.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The <code>Management</code> and <code>Intercluster</code> endpoints
    #               that are used to access data or to manage the file system using the
    #               NetApp ONTAP CLI, REST API, or NetApp SnapMirror.</p>
    #   @return [Types::FileSystemEndpoints]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS configuration for the ONTAP file system, specifying
    #               the number of provisioned IOPS and the provision mode.</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute preferred_subnet_id
    #   <p>The ID for a subnet. A <i>subnet</i> is a range of IP addresses in
    #               your virtual private cloud (VPC). For more information, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">VPC and subnets</a> in the
    #                   <i>Amazon VPC User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute route_table_ids
    #   <p>(Multi-AZ only) The VPC route tables in which your file system's endpoints are
    #               created.</p>
    #   @return [Array<String>]
    # @!attribute throughput_capacity
    #   <p>The sustained throughput of an Amazon FSx file system in Megabytes per second (MBps).</p>
    #   @return [Integer]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute fsx_admin_password
    #   <p>You can use the <code>fsxadmin</code> user account to access the NetApp ONTAP CLI and 
    #           REST API. The password value is always redacted in the response.</p>
    #   @return [String]
    # @!attribute ha_pairs
    #   <p>Specifies how many high-availability (HA) file server pairs the file system will have. The default value is 1. The value of this property affects the values of <code>StorageCapacity</code>, 
    #               <code>Iops</code>, and <code>ThroughputCapacity</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/HA-pairs.html">High-availability (HA) pairs</a> in the FSx for ONTAP user guide.</p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>HAPairs</code> is less than 1 or greater than 12.</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>HAPairs</code> is greater than 1 and the value of <code>DeploymentType</code> is <code>SINGLE_AZ_1</code>, <code>MULTI_AZ_1</code>, or <code>MULTI_AZ_2</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute throughput_capacity_per_ha_pair
    #   <p>Use to choose the throughput capacity per HA pair. When the value of <code>HAPairs</code> is equal to 1, the value of <code>ThroughputCapacityPerHAPair</code> is the total throughput for the file system.</p>
    #            <p>This field and <code>ThroughputCapacity</code> cannot be defined in the same API call, but one is required.</p>
    #            <p>This field and <code>ThroughputCapacity</code> are the same for file systems with one HA pair.</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_1</code> and <code>MULTI_AZ_1</code> file systems, valid values are 128, 256, 512, 1024, 2048, or 4096 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_2</code>, valid values are 1536, 3072, or 6144 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>MULTI_AZ_2</code>, valid values are 384, 768, 1536, 3072, or 6144 MBps.</p>
    #               </li>
    #            </ul>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> and <code>ThroughputCapacityPerHAPair</code> are not the same value.</p>
    #               </li>
    #               <li>
    #                  <p>The value of deployment type is <code>SINGLE_AZ_2</code> and <code>ThroughputCapacity</code> / <code>ThroughputCapacityPerHAPair</code> is not a valid HA pair (a value between 1 and 12).</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacityPerHAPair</code> is not a valid value.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute endpoint_ipv6_address_range
    #   <p>(Multi-AZ only) Specifies the IPv6 address range in which the endpoints to access
    #               your file system will be created. By default in the Amazon FSx API and
    #               Amazon FSx console, Amazon FSx selects an available /118 IP address
    #               range for you from one of the VPC's CIDR ranges. You can have overlapping endpoint
    #               IP addresses for file systems deployed in the same VPC/route tables, as long as they
    #               don't overlap with any subnet.</p>
    #   @return [String]
    class OntapFileSystemConfiguration < Struct.new(
      nil,
      :automatic_backup_retention_days,
      :daily_automatic_backup_start_time,
      :deployment_type,
      :endpoint_ip_address_range,
      :endpoints,
      :disk_iops_configuration,
      :preferred_subnet_id,
      :route_table_ids,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :fsx_admin_password,
      :ha_pairs,
      :throughput_capacity_per_ha_pair,
      :endpoint_ipv6_address_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an Amazon FSx for NetApp ONTAP volume.</p>
    # @!attribute flex_cache_endpoint_type
    #   <p>Specifies the FlexCache endpoint type of the volume.
    #               Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> specifies that the volume doesn't have a FlexCache configuration.
    #                   <code>NONE</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ORIGIN</code> specifies that the volume is the origin volume for a FlexCache volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CACHE</code> specifies that the volume is a FlexCache volume.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute junction_path
    #   <p>Specifies the directory that network-attached storage (NAS) clients use to mount the
    #               volume, along with the storage virtual machine (SVM) Domain Name System (DNS) name or IP
    #               address. You can create a <code>JunctionPath</code> directly below a parent volume
    #               junction or on a directory within a volume. A <code>JunctionPath</code> for a volume
    #               named <code>vol3</code> might be <code>/vol1/vol2/vol3</code>, or
    #                   <code>/vol1/dir2/vol3</code>, or even <code>/dir1/dir2/vol3</code>.</p>
    #   @return [String]
    # @!attribute security_style
    #   <p>The security style for the volume, which can be <code>UNIX</code>, <code>NTFS</code>,
    #               or
    #                   <code>MIXED</code>.</p>
    #   @return [String]
    # @!attribute size_in_megabytes
    #   <p>The configured size of the volume, in megabytes (MBs).</p>
    #   @return [Integer]
    # @!attribute storage_efficiency_enabled
    #   <p>The volume's storage efficiency setting.</p>
    #   @return [Boolean]
    # @!attribute storage_virtual_machine_id
    #   <p>The ID of the volume's storage virtual machine.</p>
    #   @return [String]
    # @!attribute storage_virtual_machine_root
    #   <p>A Boolean flag indicating whether this volume is the root volume for its storage
    #               virtual machine (SVM). Only one volume on an SVM can be the root volume. This value
    #               defaults to <code>false</code>. If this value is <code>true</code>, then this is the SVM
    #               root volume.</p>
    #            <p>This flag is useful when you're deleting an SVM, because you must first delete all
    #               non-root volumes. This flag, when set to <code>false</code>, helps you identify which
    #               volumes to delete before you can delete the SVM.</p>
    #   @return [Boolean]
    # @!attribute tiering_policy
    #   <p>The volume's <code>TieringPolicy</code> setting.</p>
    #   @return [Types::TieringPolicy]
    # @!attribute uuid
    #   <p>The volume's universally unique identifier (UUID).</p>
    #   @return [String]
    # @!attribute ontap_volume_type
    #   <p>Specifies the type of volume. Valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RW</code> specifies a read/write volume. <code>RW</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DP</code> specifies a data-protection volume. You can protect data by replicating it to
    #                       data-protection mirror copies. If a disaster occurs, you can use these
    #                       data-protection mirror copies to recover data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LS</code> specifies a load-sharing mirror volume. A load-sharing mirror reduces the
    #                       network traffic to a FlexVol volume by providing additional read-only access to
    #                       clients.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute snapshot_policy
    #   <p>Specifies the snapshot policy for the volume. There are three built-in snapshot policies:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>default</code>: This is the default policy. A maximum of six hourly snapshots taken five minutes past 
    #                   the hour. A maximum of two daily snapshots taken Monday through Saturday at 10 minutes after
    #                   midnight. A maximum of two weekly snapshots taken every Sunday at 15 minutes after midnight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>default-1weekly</code>: This policy is the same as the <code>default</code> policy except 
    #                   that it only retains one snapshot from the weekly schedule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>none</code>: This policy does not take any snapshots. This policy can be assigned to volumes to 
    #                   prevent automatic snapshots from being taken.</p>
    #               </li>
    #            </ul>
    #            <p>You can also provide the name of a custom policy that you created with the ONTAP CLI or REST API.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies">Snapshot policies</a> 
    #               in the Amazon FSx for NetApp ONTAP User Guide.</p>
    #   @return [String]
    # @!attribute copy_tags_to_backups
    #   <p>A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to
    #               false. If it's set to true, all tags for the volume are copied to all automatic and user-initiated backups
    #               where the user doesn't specify tags. If this value is true, and you specify one or more tags, only the
    #               specified tags are copied to backups. If you specify one or more tags when creating a user-initiated
    #               backup, no tags are copied from the volume, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute snaplock_configuration
    #   <p>The SnapLock configuration object for an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::SnaplockConfiguration]
    # @!attribute volume_style
    #   <p>Use to specify the style of an ONTAP volume. For more information about FlexVols and FlexGroups, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-types.html">Volume types</a> in Amazon FSx for NetApp ONTAP User Guide.</p>
    #   @return [String]
    # @!attribute aggregate_configuration
    #   <p>This structure specifies configuration options for a volume’s storage aggregate or aggregates.</p>
    #   @return [Types::AggregateConfiguration]
    # @!attribute size_in_bytes
    #   <p>The configured size of the volume, in bytes.</p>
    #   @return [Integer]
    class OntapVolumeConfiguration < Struct.new(
      nil,
      :flex_cache_endpoint_type,
      :junction_path,
      :security_style,
      :size_in_megabytes,
      :storage_efficiency_enabled,
      :storage_virtual_machine_id,
      :storage_virtual_machine_root,
      :tiering_policy,
      :uuid,
      :ontap_volume_type,
      :snapshot_policy,
      :copy_tags_to_backups,
      :snaplock_configuration,
      :volume_style,
      :aggregate_configuration,
      :size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies who can mount an OpenZFS file system and the options available while
    #             mounting the file system.</p>
    # @!attribute clients
    #   <p>A value that specifies who can mount the file system. You can provide a wildcard
    #               character (<code>*</code>), an IP address (<code>0.0.0.0</code>), or a CIDR address
    #                   (<code>192.0.2.0/24</code>). By default, Amazon FSx uses the wildcard
    #               character when specifying the client. </p>
    #   @return [String]
    # @!attribute options
    #   <p>The options to use when mounting the file system. For a list of options that you can
    #               use with Network File System (NFS), see the <a href="https://linux.die.net/man/5/exports">exports(5) - Linux man page</a>. When
    #               choosing your options, consider the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>crossmnt</code> is used by default. If you don't specify
    #                       <code>crossmnt</code> when changing the client configuration, you won't be
    #                       able to see or access snapshots in your file system's snapshot directory.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sync</code> is used by default. If you instead specify
    #                           <code>async</code>, the system acknowledges writes before writing to disk.
    #                       If the system crashes before the writes are finished, you lose the unwritten
    #                       data. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class OpenZFSClientConfiguration < Struct.new(
      nil,
      :clients,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an Amazon FSx for OpenZFS root volume.</p>
    # @!attribute record_size_ki_b
    #   <p>Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are 4, 8,
    #           16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB. Most workloads should use the 
    #           default record size. Database workflows can benefit from a smaller record size, while streaming 
    #           workflows can benefit from a larger record size. For additional guidance on setting a custom record 
    #           size, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#performance-tips-zfs">
    #           Tips for maximizing performance</a> in the
    #           <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute data_compression_type
    #   <p>Specifies the method used to compress the data on the volume. The compression
    #               type is <code>NONE</code> by default.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Doesn't compress the data on the volume.
    #                       <code>NONE</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
    #                       (ZSTD) compression algorithm. Compared to LZ4, Z-Standard provides a better
    #                       compression ratio to minimize on-disk storage utilization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Compresses the data in the volume using the LZ4
    #                       compression algorithm. Compared to Z-Standard, LZ4 is less compute-intensive
    #                       and delivers higher write throughput speeds.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute nfs_exports
    #   <p>The configuration object for mounting a file system.</p>
    #   @return [Array<Types::OpenZFSNfsExport>]
    # @!attribute user_and_group_quotas
    #   <p>An object specifying how much storage users or groups can use on the volume.</p>
    #   @return [Array<Types::OpenZFSUserOrGroupQuota>]
    # @!attribute copy_tags_to_snapshots
    #   <p>A Boolean value indicating whether tags for the volume should be copied to snapshots
    #               of the volume. This value defaults to <code>false</code>. If it's set to <code>true</code>,
    #               all tags for the volume are copied to snapshots where the user doesn't specify tags. If this
    #               value is <code>true</code> and you specify one or more tags, only the specified tags are
    #               copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
    #               are copied from the volume, regardless of this value. </p>
    #   @return [Boolean]
    # @!attribute read_only
    #   <p>A Boolean value indicating whether the volume is read-only. Setting this value to
    #                   <code>true</code> can be useful after you have completed changes to a volume and no
    #               longer want changes to occur. </p>
    #   @return [Boolean]
    class OpenZFSCreateRootVolumeConfiguration < Struct.new(
      nil,
      :record_size_ki_b,
      :data_compression_type,
      :nfs_exports,
      :user_and_group_quotas,
      :copy_tags_to_snapshots,
      :read_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the Amazon FSx for OpenZFS file system. </p>
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>A Boolean value indicating whether tags on the file system should be copied to
    #               backups.
    #               If it's set to <code>true</code>, all tags on the file system are copied to all
    #               automatic backups and any user-initiated backups where the user doesn't specify any
    #               tags. If this value is <code>true</code> and you specify one or more tags, only the
    #               specified tags are copied to backups. If you specify one or more tags when creating a
    #               user-initiated backup, no tags are copied from the file system, regardless of this
    #               value. </p>
    #   @return [Boolean]
    # @!attribute copy_tags_to_volumes
    #   <p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
    #               This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
    #               for the volume are copied to snapshots where the user doesn't specify tags. If this
    #               value is <code>true</code> and you specify one or more tags, only the specified tags are
    #               copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
    #               are copied from the volume, regardless of this value. </p>
    #   @return [Boolean]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>Specifies the file-system deployment type. Amazon FSx for OpenZFS supports  <code>MULTI_AZ_1</code>, <code>SINGLE_AZ_HA_2</code>, <code>SINGLE_AZ_HA_1</code>, <code>SINGLE_AZ_2</code>, and <code>SINGLE_AZ_1</code>.</p>
    #   @return [String]
    # @!attribute throughput_capacity
    #   <p>The throughput of an Amazon FSx file system, measured in megabytes per second (MBps).</p>
    #   @return [Integer]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for NetApp ONTAP, Amazon FSx for Windows File Server, or FSx for OpenZFS file system. By default, Amazon FSx 
    #               automatically provisions 3 IOPS per GB of storage capacity. You can provision additional IOPS per
    #               GB of storage. The configuration consists of the total number of provisioned SSD IOPS
    #               and how it is was provisioned, or the mode (by the customer or by Amazon FSx).</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute root_volume_id
    #   <p>The ID of the root volume of the OpenZFS file system. </p>
    #   @return [String]
    # @!attribute preferred_subnet_id
    #   <p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code>. This
    #               specifies the subnet in which you want the preferred file server to be located.</p>
    #   @return [String]
    # @!attribute endpoint_ip_address_range
    #   <p>(Multi-AZ only) Specifies the IPv4 address range in which the endpoints to access your
    #               file system will be created. By default in the Amazon FSx  API and Amazon FSx console, Amazon FSx
    #               selects an available /28 IP address range for you from one of the VPC's CIDR ranges.
    #               You can have overlapping endpoint IP addresses for file systems deployed in the
    #               same VPC/route tables.</p>
    #   @return [String]
    # @!attribute endpoint_ipv6_address_range
    #   <p>(Multi-AZ only) Specifies the IPv6 address range in which the endpoints to access your
    #               file system will be created. By default in the Amazon FSx API and Amazon FSx
    #               console, Amazon FSx selects an available /118 IP address range for you from one of the
    #               VPC's CIDR ranges. You can have overlapping endpoint IP addresses for file systems deployed
    #               in the same VPC/route tables, as long as they don't overlap with any subnet.</p>
    #   @return [String]
    # @!attribute route_table_ids
    #   <p>(Multi-AZ only) The VPC route tables in which your file system's endpoints are
    #               created.</p>
    #   @return [Array<String>]
    # @!attribute endpoint_ip_address
    #   <p>The IPv4 address of the endpoint
    #               that is used to access data or to manage the file system.</p>
    #   @return [String]
    # @!attribute endpoint_ipv6_address
    #   <p>The IPv6 address of the endpoint that is used to access data or to manage the file system.</p>
    #   @return [String]
    # @!attribute read_cache_configuration
    #   <p>
    #               Required when <code>StorageType</code> is set to <code>INTELLIGENT_TIERING</code>. Specifies the optional provisioned SSD read cache. </p>
    #   @return [Types::OpenZFSReadCacheConfiguration]
    class OpenZFSFileSystemConfiguration < Struct.new(
      nil,
      :automatic_backup_retention_days,
      :copy_tags_to_backups,
      :copy_tags_to_volumes,
      :daily_automatic_backup_start_time,
      :deployment_type,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :disk_iops_configuration,
      :root_volume_id,
      :preferred_subnet_id,
      :endpoint_ip_address_range,
      :endpoint_ipv6_address_range,
      :route_table_ids,
      :endpoint_ip_address,
      :endpoint_ipv6_address,
      :read_cache_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the file system user identity that will be used for authorizing all file access requests that are made using the S3 access point.</p>
    # @!attribute type
    #   <p>Specifies the FSx for OpenZFS user identity type, accepts only <code>POSIX</code>.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>Specifies the UID and GIDs of the file system POSIX user.</p>
    #   @return [Types::OpenZFSPosixFileSystemUser]
    class OpenZFSFileSystemIdentity < Struct.new(
      nil,
      :type,
      :posix_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Network File System (NFS) configurations for mounting an Amazon FSx for
    #             OpenZFS file system. </p>
    # @!attribute client_configurations
    #   <p>A list of configuration objects that contain the client and options for mounting the
    #               OpenZFS file system. </p>
    #   @return [Array<Types::OpenZFSClientConfiguration>]
    class OpenZFSNfsExport < Struct.new(
      nil,
      :client_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The snapshot configuration used when creating an Amazon FSx for OpenZFS volume
    #             from a snapshot.</p>
    # @!attribute snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute copy_strategy
    #   <p>The strategy used when copying data from the snapshot to the new volume. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLONE</code> - The new volume references the data in the origin
    #                       snapshot. Cloning a snapshot is faster than copying the data from a snapshot to
    #                       a new volume and doesn't consume disk throughput. However, the origin snapshot
    #                       can't be deleted if there is a volume using its copied data. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FULL_COPY</code> - Copies all data from the snapshot to the new
    #                       volume.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>INCREMENTAL_COPY</code> option is only for updating an existing volume
    #                   by using a snapshot from another FSx for OpenZFS file system. For more
    #                   information, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_CopySnapshotAndUpdateVolume.html">CopySnapshotAndUpdateVolume</a>.</p>
    #            </note>
    #   @return [String]
    class OpenZFSOriginSnapshotConfiguration < Struct.new(
      nil,
      :snapshot_arn,
      :copy_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The FSx for OpenZFS file system user that is used for authorizing all file access requests that are made using the S3 access point.</p>
    # @!attribute uid
    #   <p>The UID of the file system user.</p>
    #   @return [Integer]
    # @!attribute gid
    #   <p>The GID of the file system user.</p>
    #   @return [Integer]
    # @!attribute secondary_gids
    #   <p>The list of secondary GIDs for the file system user. </p>
    #   @return [Array<Integer>]
    class OpenZFSPosixFileSystemUser < Struct.new(
      nil,
      :uid,
      :gid,
      :secondary_gids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             The configuration for the optional provisioned SSD read cache on Amazon FSx for OpenZFS file systems that use the Intelligent-Tiering storage class.
    #         </p>
    # @!attribute sizing_mode
    #   <p>
    #               Specifies how the provisioned SSD read cache is sized, as follows:
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>Set to <code>NO_CACHE</code> if you do not want to use an SSD read cache with your Intelligent-Tiering file system.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>USER_PROVISIONED</code> to specify the exact size of your SSD read cache.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>PROPORTIONAL_TO_THROUGHPUT_CAPACITY</code> to have your SSD read cache automatically sized based on your throughput capacity.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute size_gi_b
    #   <p>
    #               Required if <code>SizingMode</code> is set to <code>USER_PROVISIONED</code>. Specifies the size of the file system's SSD read cache, in gibibytes (GiB).
    #           </p>
    #   @return [Integer]
    class OpenZFSReadCacheConfiguration < Struct.new(
      nil,
      :sizing_mode,
      :size_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to configure quotas that define how much storage a user or group can use on an 
    #             FSx for OpenZFS volume. For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-volumes.html#volume-properties">Volume properties</a>
    #             in the FSx for OpenZFS User Guide.
    #         </p>
    # @!attribute type
    #   <p>Specifies whether the quota applies to a user or group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the user or group that the quota applies to.</p>
    #   @return [Integer]
    # @!attribute storage_capacity_quota_gi_b
    #   <p>The user or group's storage quota, in gibibytes (GiB).</p>
    #   @return [Integer]
    class OpenZFSUserOrGroupQuota < Struct.new(
      nil,
      :type,
      :id,
      :storage_capacity_quota_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of an Amazon FSx for OpenZFS volume.</p>
    # @!attribute parent_volume_id
    #   <p>The ID of the parent volume.</p>
    #   @return [String]
    # @!attribute volume_path
    #   <p>The path to the volume from the root volume. For example,
    #                   <code>fsx/parentVolume/volume1</code>.</p>
    #   @return [String]
    # @!attribute storage_capacity_reservation_gi_b
    #   <p>The amount of storage in gibibytes (GiB) to reserve from the parent volume. You can't
    #               reserve more storage than the parent volume has reserved.</p>
    #   @return [Integer]
    # @!attribute storage_capacity_quota_gi_b
    #   <p>The maximum amount of storage in gibibytes (GiB) that the volume can use from its
    #               parent. You can specify a quota larger than the storage on the parent volume.</p>
    #   @return [Integer]
    # @!attribute record_size_ki_b
    #   <p>The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are 4, 8,
    #               16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB.
    #               Most workloads should use the default record size. For guidance on when
    #               to set a custom record size, see the
    #               <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute data_compression_type
    #   <p>Specifies the method used to compress the data on the volume. The compression
    #               type is <code>NONE</code> by default.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Doesn't compress the data on the volume.
    #                       <code>NONE</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
    #                       (ZSTD) compression algorithm. Compared to LZ4, Z-Standard provides a better
    #                       compression ratio to minimize on-disk storage utilization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Compresses the data in the volume using the LZ4
    #                       compression algorithm. Compared to Z-Standard, LZ4 is less compute-intensive
    #                       and delivers higher write throughput speeds.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_tags_to_snapshots
    #   <p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
    #               This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
    #               for the volume are copied to snapshots where the user doesn't specify tags. If this
    #               value is <code>true</code> and you specify one or more tags, only the specified tags are
    #               copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
    #               are copied from the volume, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute origin_snapshot
    #   <p>The configuration object that specifies the snapshot to use as the origin of the data
    #               for the volume.</p>
    #   @return [Types::OpenZFSOriginSnapshotConfiguration]
    # @!attribute read_only
    #   <p>A Boolean value indicating whether the volume is read-only.</p>
    #   @return [Boolean]
    # @!attribute nfs_exports
    #   <p>The configuration object for mounting a Network File System (NFS)
    #               file system.</p>
    #   @return [Array<Types::OpenZFSNfsExport>]
    # @!attribute user_and_group_quotas
    #   <p>An object specifying how much storage users or groups can use on the volume.</p>
    #   @return [Array<Types::OpenZFSUserOrGroupQuota>]
    # @!attribute restore_to_snapshot
    #   <p>Specifies the ID of the snapshot to which the volume was restored.</p>
    #   @return [String]
    # @!attribute delete_intermediate_snaphots
    #   <p>A Boolean value indicating whether snapshots between the
    #               current state and the specified snapshot should be deleted
    #               when a volume is restored from snapshot.</p>
    #   @return [Boolean]
    # @!attribute delete_cloned_volumes
    #   <p>A Boolean value indicating whether dependent clone volumes 
    #               created from intermediate snapshots should be deleted when
    #               a volume is restored from snapshot.</p>
    #   @return [Boolean]
    # @!attribute delete_intermediate_data
    #   <p>A Boolean value indicating whether snapshot data that differs between the current state and the specified snapshot should be overwritten when a volume is restored from a snapshot.</p>
    #   @return [Boolean]
    # @!attribute source_snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute destination_snapshot
    #   <p>The ID of the snapshot that's being copied or was most recently copied to the
    #               destination volume.</p>
    #   @return [String]
    # @!attribute copy_strategy
    #   <p>Specifies the strategy used when copying data from the snapshot to the new volume. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLONE</code> - The new volume references the data in the origin
    #                       snapshot. Cloning a snapshot is faster than copying data from the snapshot to a
    #                       new volume and doesn't consume disk throughput. However, the origin snapshot
    #                       can't be deleted if there is a volume using its copied data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FULL_COPY</code> - Copies all data from the snapshot to the new
    #                       volume.</p>
    #                  <p>Specify this option to create the volume from a snapshot on another FSx for OpenZFS file system.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>INCREMENTAL_COPY</code> option is only for updating an existing volume
    #                   by using a snapshot from another FSx for OpenZFS file system. For more
    #                   information, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_CopySnapshotAndUpdateVolume.html">CopySnapshotAndUpdateVolume</a>.</p>
    #            </note>
    #   @return [String]
    class OpenZFSVolumeConfiguration < Struct.new(
      nil,
      :parent_volume_id,
      :volume_path,
      :storage_capacity_reservation_gi_b,
      :storage_capacity_quota_gi_b,
      :record_size_ki_b,
      :data_compression_type,
      :copy_tags_to_snapshots,
      :origin_snapshot,
      :read_only,
      :nfs_exports,
      :user_and_group_quotas,
      :restore_to_snapshot,
      :delete_intermediate_snaphots,
      :delete_cloned_volumes,
      :delete_intermediate_data,
      :source_snapshot_arn,
      :destination_snapshot,
      :copy_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that specifies a minimum amount of time since
    #             last access for an exported file to be eligible for release from an
    #             Amazon FSx for Lustre file system. Only files that were last
    #             accessed before this point-in-time can be released. For example, if
    #             you specify a last accessed time criteria of 9 days, only files that
    #             were last accessed 9.00001 or more days ago can be released.</p>
    #          <p>Only file data that has been exported to S3 can be released. Files
    #             that have not yet been exported to S3, such as new or changed files
    #             that have not been exported, are not eligible for release. When files
    #             are released, their metadata stays on the file system, so they
    #             can still be accessed later. Users and applications can access a
    #             released file by reading the file again, which restores data from
    #             Amazon S3 to the FSx for Lustre file system.</p>
    #          <note>
    #             <p>If a file meets the last accessed time criteria, its
    #             file or directory path must also be specified with the
    #             <code>Paths</code> parameter of the
    #              operation in order
    #             for the file to be released.</p>
    #          </note>
    # @!attribute duration_since_last_access
    #   <p>Defines the point-in-time since an exported file was last accessed,
    #               in order for that file to be eligible for release. Only files that were
    #               last accessed before this point-in-time are eligible to be released from
    #               the file system.</p>
    #   @return [Types::DurationSinceLastAccess]
    class ReleaseConfiguration < Struct.new(
      nil,
      :duration_since_last_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    class ReleaseFileSystemNfsV3LocksRequest < Struct.new(
      nil,
      :file_system_id,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system
    #   <p>A description of a specific Amazon FSx file system.</p>
    #   @return [Types::FileSystem]
    class ReleaseFileSystemNfsV3LocksResponse < Struct.new(
      nil,
      :file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified does not support tagging. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that doesn't support
    #               tagging.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class ResourceDoesNotSupportTagging < Struct.new(
      nil,
      :resource_arn,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified by the Amazon Resource Name (ARN) can't be found.</p>
    # @!attribute resource_arn
    #   <p>The resource ARN of the resource that can't be found.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class ResourceNotFound < Struct.new(
      nil,
      :resource_arn,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The ID of the volume that you are restoring.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The ID of the source snapshot. Specifies the snapshot that you are restoring
    #               from.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The settings used when restoring the specified volume from snapshot.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> - Deletes snapshots between the
    #                       current state and the specified snapshot. If there are intermediate snapshots
    #                       and this option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_CLONED_VOLUMES</code> - Deletes any dependent clone volumes 
    #                       created from intermediate snapshots. If there are any dependent clone volumes and this 
    #                       option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class RestoreVolumeFromSnapshotRequest < Struct.new(
      nil,
      :client_request_token,
      :volume_id,
      :snapshot_id,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume_id
    #   <p>The ID of the volume that you restored.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle state of the volume being restored.</p>
    #   @return [String]
    # @!attribute administrative_actions
    #   <p>A list of administrative actions for the file system that are in process or waiting to
    #               be processed. Administrative actions describe changes to the Amazon FSx
    #               system.</p>
    #   @return [Array<Types::AdministrativeAction>]
    class RestoreVolumeFromSnapshotResponse < Struct.new(
      nil,
      :volume_id,
      :lifecycle,
      :administrative_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the retention period of an FSx for ONTAP SnapLock volume.  After it is set, it can't be changed. 
    #             Files can't be 
    #         deleted or modified during the retention period. </p>
    #          <p>For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-retention.html">Working with the retention 
    #                 period in SnapLock</a>. </p>
    # @!attribute type
    #   <p>Defines the type of time for the retention period of an FSx for ONTAP SnapLock volume. 
    #               Set it to 
    #               one of the valid types. If you set it to <code>INFINITE</code>, the files are retained forever. If you set it to 
    #               <code>UNSPECIFIED</code>, the files are retained until you set an explicit retention period. </p>
    #   @return [String]
    # @!attribute value
    #   <p>Defines the amount of time for the retention period of an FSx for ONTAP SnapLock volume. 
    #           You can't set a value for <code>INFINITE</code> or <code>UNSPECIFIED</code>. For all other options, the 
    #           following ranges are valid: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Seconds</code>: 0 - 65,535</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Minutes</code>: 0 - 65,535</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Hours</code>: 0 - 24</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Days</code>: 0 - 365</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Months</code>: 0 - 12</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Years</code>: 0 - 100</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    class RetentionPeriod < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the S3 access point configuration of the S3 access point attachment.</p>
    # @!attribute resource_arn
    #   <p>he S3 access point's ARN.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The S3 access point's alias.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The S3 access point's virtual private cloud (VPC) configuration.</p>
    #   @return [Types::S3AccessPointVpcConfiguration]
    class S3AccessPoint < Struct.new(
      nil,
      :resource_arn,
      :alias,
      :vpc_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An S3 access point attached to an Amazon FSx volume.</p>
    # @!attribute lifecycle
    #   <p>The lifecycle status of the S3 access point attachment. The lifecycle can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>AVAILABLE - the S3 access point attachment is available for use</p>
    #               </li>
    #               <li>
    #                  <p>CREATING - Amazon FSx is creating the S3 access point and attachment</p>
    #               </li>
    #               <li>
    #                  <p>DELETING - Amazon FSx is deleting the S3 access point and attachment</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The S3 access point attachment is in a failed state. Delete and detach the S3 access 
    #                  point attachment, and create a new one.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING - Amazon FSx is updating the S3 access point attachment</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lifecycle_transition_reason
    #   <p>Describes why a resource lifecycle state changed.</p>
    #   @return [Types::LifecycleTransitionReason]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the S3 access point attachment; also used for the name of the S3 access point.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of Amazon FSx volume that the S3 access point is attached to. </p>
    #   @return [String]
    # @!attribute open_zfs_configuration
    #   <p>The OpenZFSConfiguration of the S3 access point attachment.</p>
    #   @return [Types::S3AccessPointOpenZFSConfiguration]
    # @!attribute s3_access_point
    #   <p>The S3 access point configuration of the S3 access point attachment.</p>
    #   @return [Types::S3AccessPoint]
    class S3AccessPointAttachment < Struct.new(
      nil,
      :lifecycle,
      :lifecycle_transition_reason,
      :creation_time,
      :name,
      :type,
      :open_zfs_configuration,
      :s3_access_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The access point specified was not found.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class S3AccessPointAttachmentNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of Name and Values pairs used to view a select set of S3 access point attachments.</p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the filter.</p>
    #   @return [Array<String>]
    class S3AccessPointAttachmentsFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the FSx for OpenZFS attachment configuration of an S3 access point attachment.</p>
    # @!attribute volume_id
    #   <p>The ID of the FSx for OpenZFS volume that the S3 access point is attached to.</p>
    #   @return [String]
    # @!attribute file_system_identity
    #   <p>The file system identity used to authorize file access requests made using the S3 access point.</p>
    #   @return [Types::OpenZFSFileSystemIdentity]
    class S3AccessPointOpenZFSConfiguration < Struct.new(
      nil,
      :volume_id,
      :file_system_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If included, Amazon S3 restricts access to this access point to requests from the specified virtual private cloud (VPC).</p>
    # @!attribute vpc_id
    #   <p>Specifies the virtual private cloud (VPC) for the S3 access point VPC configuration, if one exists.</p>
    #   @return [String]
    class S3AccessPointVpcConfiguration < Struct.new(
      nil,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon S3 data repository linked to an
    #             Amazon FSx for Lustre file system with a data repository association.
    #             The configuration consists of an <code>AutoImportPolicy</code> that
    #             defines which file events on the data repository are automatically
    #             imported to the file system and an <code>AutoExportPolicy</code> that
    #             defines which file events on the file system are automatically exported
    #             to the data repository. File events are when files or directories are
    #             added, changed, or deleted on the file system or the data repository.</p>
    #          <note>
    #             <p>Data repository associations on Amazon File Cache don't
    #             use <code>S3DataRepositoryConfiguration</code> because they don't
    #             support automatic import or automatic export.</p>
    #          </note>
    # @!attribute auto_import_policy
    #   <p>Specifies the type of updated objects (new, changed, deleted)
    #               that will be automatically imported from the linked S3 bucket
    #               to your file system.</p>
    #   @return [Types::AutoImportPolicy]
    # @!attribute auto_export_policy
    #   <p>Specifies the type of updated objects (new, changed, deleted)
    #               that will be automatically exported from your file system to
    #               the linked S3 bucket.</p>
    #   @return [Types::AutoExportPolicy]
    class S3DataRepositoryConfiguration < Struct.new(
      nil,
      :auto_import_policy,
      :auto_export_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the self-managed Microsoft Active Directory (AD) directory to
    #             which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.</p>
    # @!attribute domain_name
    #   <p>The fully qualified domain name of the self-managed AD directory.</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_name
    #   <p>The fully qualified distinguished name of the organizational unit within the
    #               self-managed AD directory to which the Windows File Server  or ONTAP storage virtual machine (SVM) instance is joined.</p>
    #   @return [String]
    # @!attribute file_system_administrators_group
    #   <p>The name of the domain group whose members have administrative privileges for the FSx
    #               file system.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user name for the service account on your self-managed AD domain that FSx uses to
    #               join to your AD domain.</p>
    #   @return [String]
    # @!attribute dns_ips
    #   <p>A list of up to three IP addresses of DNS servers or domain controllers in the
    #               self-managed AD directory.</p>
    #   @return [Array<String>]
    class SelfManagedActiveDirectoryAttributes < Struct.new(
      nil,
      :domain_name,
      :organizational_unit_distinguished_name,
      :file_system_administrators_group,
      :user_name,
      :dns_ips,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that Amazon FSx uses to join a FSx for Windows File Server file system or an FSx for ONTAP storage virtual machine (SVM) to
    #             a self-managed (including on-premises) Microsoft Active Directory (AD)
    #             directory. For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html">
    #                 Using Amazon FSx for Windows with your self-managed Microsoft Active Directory</a> or 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html">Managing FSx for ONTAP SVMs</a>.</p>
    # @!attribute domain_name
    #   <p>The fully qualified domain name of the self-managed AD directory, such as
    #                   <code>corp.example.com</code>.</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_name
    #   <p>(Optional) The fully qualified distinguished name of the organizational unit within
    #               your self-managed AD directory. Amazon
    #               FSx only accepts OU as the direct parent of the file system. An example is
    #                   <code>OU=FSx,DC=yourdomain,DC=corp,DC=com</code>. To learn more, see <a href="https://tools.ietf.org/html/rfc2253">RFC 2253</a>. If none is provided, the
    #               FSx file system is created in the default location of your self-managed AD directory. </p>
    #            <important>
    #               <p>Only Organizational Unit (OU) objects can be the direct parent of the file system
    #                   that you're creating.</p>
    #            </important>
    #   @return [String]
    # @!attribute file_system_administrators_group
    #   <p>(Optional) The name of the domain group whose members are granted administrative
    #               privileges for the file system. Administrative privileges include taking ownership of
    #               files and folders, setting audit controls (audit ACLs) on files and folders, and             
    #                   administering the file system remotely by using the FSx Remote PowerShell.
    #               The group that you specify must already exist in your domain. If you don't provide one,
    #               your AD domain's Domain Admins group is used.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user name for the service account on your self-managed AD domain that Amazon FSx
    #               will use to join to your AD domain. This account must have the permission to join
    #               computers to the domain in the organizational unit provided in
    #                   <code>OrganizationalUnitDistinguishedName</code>, or in the default location of your
    #               AD domain.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the service account on your self-managed AD domain that Amazon FSx
    #               will use to join to your AD domain.</p>
    #   @return [String]
    # @!attribute dns_ips
    #   <p>A list of up to three IP addresses of DNS servers or domain controllers in the
    #               self-managed AD directory. </p>
    #   @return [Array<String>]
    class SelfManagedActiveDirectoryConfiguration < Struct.new(
      nil,
      :domain_name,
      :organizational_unit_distinguished_name,
      :file_system_administrators_group,
      :user_name,
      :password,
      :dns_ips,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies changes you are making to the self-managed Microsoft Active Directory configuration to which  
    #             an FSx for Windows File Server file system or an FSx for ONTAP SVM is joined.</p>
    # @!attribute user_name
    #   <p>Specifies the updated user name for the service account on your self-managed Active Directory domain.
    #               Amazon FSx uses this account to join to your self-managed Active Directory domain.</p>
    #            <p>This account must have the permissions required to join
    #               computers to the domain in the organizational unit provided in
    #               <code>OrganizationalUnitDistinguishedName</code>.</p>
    #   @return [String]
    # @!attribute password
    #   <p>Specifies the updated password for the service account on your self-managed Active Directory domain. 
    #               Amazon FSx uses this account to join to your self-managed Active Directory domain.</p>
    #   @return [String]
    # @!attribute dns_ips
    #   <p>A list of up to three DNS server or domain controller IP addresses in your
    #               self-managed Active Directory domain.</p>
    #   @return [Array<String>]
    # @!attribute domain_name
    #   <p>Specifies an updated fully qualified domain name of your self-managed Active Directory configuration.</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_name
    #   <p>Specifies an updated fully qualified distinguished name of the organization unit within your self-managed Active Directory.</p>
    #   @return [String]
    # @!attribute file_system_administrators_group
    #   <p>For FSx for ONTAP file systems only - Specifies the updated name of the self-managed Active Directory domain group whose members are granted administrative privileges
    #               for the Amazon FSx resource.</p>
    #   @return [String]
    class SelfManagedActiveDirectoryConfigurationUpdates < Struct.new(
      nil,
      :user_name,
      :password,
      :dns_ips,
      :domain_name,
      :organizational_unit_distinguished_name,
      :file_system_administrators_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error indicating that a particular service limit was exceeded. You can increase
    #             some service limits by contacting Amazon Web Services Support.</p>
    # @!attribute limit
    #   <p>Enumeration of the service limit that was exceeded. </p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class ServiceLimitExceeded < Struct.new(
      nil,
      :limit,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the SnapLock configuration for an FSx for ONTAP SnapLock volume. </p>
    # @!attribute audit_log_volume
    #   <p>Enables or disables the audit log volume for an FSx for ONTAP SnapLock volume. The default 
    #               value is <code>false</code>. If you set <code>AuditLogVolume</code> to <code>true</code>, the SnapLock volume is 
    #               created as an audit log volume. The minimum retention period for an audit log volume is six months. </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/how-snaplock-works.html#snaplock-audit-log-volume">
    #                   SnapLock audit log volumes</a>. </p>
    #   @return [Boolean]
    # @!attribute autocommit_period
    #   <p>The configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::AutocommitPeriod]
    # @!attribute privileged_delete
    #   <p>Enables, disables, or permanently disables privileged delete on an FSx for ONTAP SnapLock 
    #               Enterprise volume. Enabling privileged delete allows SnapLock administrators to delete write once, read 
    #               many (WORM) files even 
    #               if they have active retention periods. <code>PERMANENTLY_DISABLED</code> is a terminal state. 
    #               If privileged delete is permanently disabled on a SnapLock volume, you can't re-enable it. The default 
    #               value is <code>DISABLED</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-enterprise.html#privileged-delete">Privileged delete</a>. </p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Specifies the retention period of an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::SnaplockRetentionPeriod]
    # @!attribute snaplock_type
    #   <p>Specifies the retention mode of an FSx for ONTAP SnapLock volume.  After it is set, it can't be changed. 
    #               You can choose one of the following retention modes: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLIANCE</code>: Files transitioned to write once, read many (WORM) on a Compliance volume can't be deleted 
    #                       until their retention periods expire. This retention mode is used to address government or industry-specific mandates or to protect 
    #                       against ransomware attacks. For more information, 
    #                       see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-compliance.html">SnapLock Compliance</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENTERPRISE</code>: Files transitioned to WORM on an Enterprise volume can be deleted by authorized users 
    #                   before their retention periods expire using privileged delete. This retention mode is used to advance an organization's data integrity 
    #                   and internal compliance or to test retention settings before using SnapLock Compliance. For more information, see 
    #                   <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-enterprise.html">SnapLock Enterprise</a>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute volume_append_mode_enabled
    #   <p>Enables or disables volume-append mode 
    #               on an FSx for ONTAP SnapLock volume. Volume-append mode allows you to 
    #               create WORM-appendable files and write data to them incrementally. 
    #               The default value is <code>false</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/worm-state.html#worm-state-append">Volume-append mode</a>. </p>
    #   @return [Boolean]
    class SnaplockConfiguration < Struct.new(
      nil,
      :audit_log_volume,
      :autocommit_period,
      :privileged_delete,
      :retention_period,
      :snaplock_type,
      :volume_append_mode_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to set the retention period of an FSx for ONTAP SnapLock volume. The retention 
    #         period includes default, maximum, and minimum settings. For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-retention.html">Working with the retention period 
    #             in SnapLock</a>. </p>
    # @!attribute default_retention
    #   <p>The retention period assigned to a write once, read many (WORM) file by default if an explicit retention period is not set for an 
    #               FSx for ONTAP SnapLock volume. The default retention period must be greater than or equal to 
    #           the minimum retention period and less than or equal to the maximum retention period. </p>
    #   @return [Types::RetentionPeriod]
    # @!attribute minimum_retention
    #   <p>The shortest retention period that can be assigned to a WORM file on an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::RetentionPeriod]
    # @!attribute maximum_retention
    #   <p>The longest retention period that can be assigned to a WORM file on 
    #               an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::RetentionPeriod]
    class SnaplockRetentionPeriod < Struct.new(
      nil,
      :default_retention,
      :minimum_retention,
      :maximum_retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of an Amazon FSx for OpenZFS volume.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The ID of the snapshot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the snapshot.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The ID of the volume that the snapshot is of.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the snapshot.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon FSx hasn't started creating the
    #                       snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon FSx is creating the snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Amazon FSx is deleting the snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The snapshot is fully available.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lifecycle_transition_reason
    #   <p>Describes why a resource lifecycle state changed.</p>
    #   @return [Types::LifecycleTransitionReason]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute administrative_actions
    #   <p>A list of administrative actions for the file system that are in process or waiting to
    #               be processed. Administrative actions describe changes to the Amazon FSx
    #               system.</p>
    #   @return [Array<Types::AdministrativeAction>]
    class Snapshot < Struct.new(
      nil,
      :resource_arn,
      :snapshot_id,
      :name,
      :volume_id,
      :creation_time,
      :lifecycle,
      :lifecycle_transition_reason,
      :tags,
      :administrative_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to restrict the results of <code>DescribeSnapshots</code> calls. You can
    #             use multiple filters to return results that meet all applied filter requirements.</p>
    # @!attribute name
    #   <p>The name of the filter to use. You can filter by the <code>file-system-id</code> or by
    #                   <code>volume-id</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The <code>file-system-id</code> or <code>volume-id</code> that you are filtering
    #               for.</p>
    #   @return [Array<String>]
    class SnapshotFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No Amazon FSx snapshots were found based on the supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class SnapshotNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the lifecycle status of the source backup isn't
    #             <code>AVAILABLE</code>.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    # @!attribute backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #   @return [String]
    class SourceBackupUnavailable < Struct.new(
      nil,
      :message,
      :backup_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    class StartMisconfiguredStateRecoveryRequest < Struct.new(
      nil,
      :client_request_token,
      :file_system_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system
    #   <p>A description of a specific Amazon FSx file system.</p>
    #   @return [Types::FileSystem]
    class StartMisconfiguredStateRecoveryResponse < Struct.new(
      nil,
      :file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon FSx for NetApp ONTAP storage virtual machine (SVM) configuration.</p>
    # @!attribute active_directory_configuration
    #   <p>Describes the Microsoft Active Directory configuration to which the SVM is joined, if applicable.</p>
    #   @return [Types::SvmActiveDirectoryConfiguration]
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute endpoints
    #   <p>The endpoints  that are used to access data or to manage the SVM
    #               using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They
    #               are the <code>Iscsi</code>, <code>Management</code>, <code>Nfs</code>,
    #               and <code>Smb</code> endpoints.</p>
    #   @return [Types::SvmEndpoints]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>Describes the SVM's lifecycle status.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The SVM is fully available for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon FSx is creating the new SVM.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Amazon FSx is deleting an existing SVM.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon FSx was unable to create the SVM.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURED</code> - The SVM is in a failed but recoverable state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon FSx has not started creating the SVM.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the SVM, if provisioned.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute storage_virtual_machine_id
    #   <p>The SVM's system generated unique ID.</p>
    #   @return [String]
    # @!attribute subtype
    #   <p>Describes the SVM's subtype.</p>
    #   @return [String]
    # @!attribute uuid
    #   <p>The SVM's UUID (universally unique identifier).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute lifecycle_transition_reason
    #   <p>Describes why the SVM lifecycle state changed.</p>
    #   @return [Types::LifecycleTransitionReason]
    # @!attribute root_volume_security_style
    #   <p>The security style of the root volume of the SVM.</p>
    #   @return [String]
    class StorageVirtualMachine < Struct.new(
      nil,
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
      :root_volume_security_style,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to restrict the results of describe calls for
    #             Amazon FSx for NetApp ONTAP storage virtual machines (SVMs). You can use multiple
    #             filters to return results that meet all applied filter requirements.</p>
    # @!attribute name
    #   <p>The name for this filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the filter. These are all the values for any of the applied
    #               filters.</p>
    #   @return [Array<String>]
    class StorageVirtualMachineFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No FSx for ONTAP SVMs were found based upon the supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class StorageVirtualMachineNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Microsoft Active Directory (AD) directory configuration to which the FSx for ONTAP storage virtual machine (SVM) is joined.
    #             Note that account credentials are not returned in the response payload.</p>
    # @!attribute net_bios_name
    #   <p>The NetBIOS name of the AD computer object to which the SVM is joined.</p>
    #   @return [String]
    # @!attribute self_managed_active_directory_configuration
    #   <p>The configuration of the self-managed Microsoft Active Directory (AD) directory to
    #               which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.</p>
    #   @return [Types::SelfManagedActiveDirectoryAttributes]
    class SvmActiveDirectoryConfiguration < Struct.new(
      nil,
      :net_bios_name,
      :self_managed_active_directory_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon FSx for NetApp ONTAP storage virtual machine (SVM) has
    #             four endpoints  that are used to access data or to manage the SVM
    #             using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They
    #             are the <code>Iscsi</code>, <code>Management</code>, <code>Nfs</code>,
    #             and <code>Smb</code> endpoints.</p>
    # @!attribute dns_name
    #   <p>The file system's DNS name. You can mount your file
    #               system using its DNS name.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>The SVM endpoint's IPv4 addresses.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_addresses
    #   <p>The SVM endpoint's IPv6 addresses.</p>
    #   @return [Array<String>]
    class SvmEndpoint < Struct.new(
      nil,
      :dns_name,
      :ip_addresses,
      :ipv6_addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon FSx for NetApp ONTAP storage virtual machine (SVM) has
    #             the following endpoints that are used to access data or to manage
    #             the SVM using the NetApp ONTAP CLI, REST API, or NetApp CloudManager.</p>
    # @!attribute iscsi
    #   <p>An endpoint for connecting using the Internet Small Computer Systems Interface (iSCSI)  protocol.</p>
    #   @return [Types::SvmEndpoint]
    # @!attribute management
    #   <p>An endpoint for managing SVMs using the NetApp ONTAP CLI, NetApp ONTAP API, or NetApp CloudManager.</p>
    #   @return [Types::SvmEndpoint]
    # @!attribute nfs
    #   <p>An endpoint for connecting using the Network File System (NFS) protocol.</p>
    #   @return [Types::SvmEndpoint]
    # @!attribute smb
    #   <p>An endpoint for connecting using the Server Message Block (SMB) protocol.</p>
    #   @return [Types::SvmEndpoint]
    class SvmEndpoints < Struct.new(
      nil,
      :iscsi,
      :management,
      :nfs,
      :smb,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a key-value pair for a resource tag.</p>
    # @!attribute key
    #   <p>A value that specifies the <code>TagKey</code>, the name of the tag. Tag keys must
    #               be unique for the resource to which they are attached.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value that specifies the <code>TagValue</code>, the value assigned to the
    #               corresponding tag key. Tag values can be null and don't have to be unique in a tag set.
    #               For example, you can have a key-value pair in a tag set of <code>finances : April</code>
    #               and also of <code>payroll : April</code>.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for the <code>TagResource</code> operation.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon FSx resource that you want to
    #               tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags for the resource. If a tag with a given key already exists, the
    #               value is replaced by the one specified in this parameter.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the <code>TagResource</code> operation.</p>
    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data tiering policy for an ONTAP volume. When enabled, Amazon FSx for ONTAP's intelligent
    #             tiering automatically transitions a volume's data between the file system's primary storage and capacity
    #             pool storage based on your access patterns.</p>
    #          <p>Valid tiering policies are the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>SNAPSHOT_ONLY</code> - (Default value) moves cold snapshots to the capacity pool storage tier.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AUTO</code> - moves cold user data and snapshots to the capacity pool storage tier based on your access patterns.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ALL</code> - moves all user data blocks in both the active file system and Snapshot copies to the storage pool tier.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>NONE</code> - keeps a volume's data in the primary storage tier, preventing it from being moved to the capacity pool tier.</p>
    #             </li>
    #          </ul>
    # @!attribute cooling_period
    #   <p>Specifies the number of days that user data in a volume must remain inactive before it is considered "cold" 
    #               and moved to the capacity pool. Used with the <code>AUTO</code> and <code>SNAPSHOT_ONLY</code> tiering policies. 
    #               Enter a whole number between 2 and 183. Default values are 31 days for <code>AUTO</code> and 2 days for 
    #               <code>SNAPSHOT_ONLY</code>.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>Specifies the tiering policy used to transition data. Default value is <code>SNAPSHOT_ONLY</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SNAPSHOT_ONLY</code> - moves cold snapshots to the capacity pool storage tier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUTO</code> - moves cold user data and snapshots to the capacity pool storage tier
    #                   based on your access patterns.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - moves all user data blocks in both the active file system and Snapshot copies to the
    #                   storage pool tier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - keeps a volume's data in the primary storage tier, preventing it from being moved to
    #                   the capacity pool tier.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class TieringPolicy < Struct.new(
      nil,
      :cooling_period,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of S3 access points attachments allowed for your account in this Amazon Web Services Region, or for the file system. For more information, or to request an increase, 
    #          see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html">Service quotas on FSx resources</a> in the FSx for OpenZFS User Guide.</p>
    # @!attribute error_code
    #   <p>An error code indicating that you have reached the maximum number of S3 access points attachments allowed for your account in this Amazon Web Services Region, or for the file system.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class TooManyAccessPoints < Struct.new(
      nil,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation is not supported for this resource or API.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class UnsupportedOperation < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for <code>UntagResource</code> action.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the Amazon FSx resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys of tags on the resource to untag. In case the tag key doesn't exist,
    #               the call will still succeed to be idempotent.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for <code>UntagResource</code> action.</p>
    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID of the data repository association that you are updating.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #            <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    #   @return [Integer]
    # @!attribute s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx Lustre file system with a data repository association.
    #               The configuration defines which file events (new, changed, or
    #               deleted files or directories) are automatically imported from
    #               the linked data repository to the file system or automatically
    #               exported from the file system to the data repository.</p>
    #   @return [Types::S3DataRepositoryConfiguration]
    class UpdateDataRepositoryAssociationRequest < Struct.new(
      nil,
      :association_id,
      :client_request_token,
      :imported_file_chunk_size,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>The response object returned after the data repository association is updated.</p>
    #   @return [Types::DataRepositoryAssociation]
    class UpdateDataRepositoryAssociationResponse < Struct.new(
      nil,
      :association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration update for an Amazon File Cache resource.</p>
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    class UpdateFileCacheLustreConfiguration < Struct.new(
      nil,
      :weekly_maintenance_start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_cache_id
    #   <p>The ID of the cache that you are updating.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute lustre_configuration
    #   <p>The configuration updates for an Amazon File Cache resource.</p>
    #   @return [Types::UpdateFileCacheLustreConfiguration]
    class UpdateFileCacheRequest < Struct.new(
      nil,
      :file_cache_id,
      :client_request_token,
      :lustre_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_cache
    #   <p>A description of the cache that was updated.</p>
    #   @return [Types::FileCache]
    class UpdateFileCacheResponse < Struct.new(
      nil,
      :file_cache,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration object for Amazon FSx for Lustre file systems used in the
    #                 <code>UpdateFileSystem</code> operation.</p>
    # @!attribute weekly_maintenance_start_time
    #   <p>(Optional) The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone. d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #   @return [String]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #               <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>0</code>.</p>
    #   @return [Integer]
    # @!attribute auto_import_policy
    #   <p> (Optional) When you create your file system, your existing S3 objects appear as file and directory listings. 
    #               Use this property to choose how Amazon FSx keeps your file and directory listing up to date 
    #               as you add or modify objects in your linked S3 bucket. <code>AutoImportPolicy</code> can
    #               have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - (Default) AutoImport is off. Amazon FSx only updates 
    #                   file and directory listings from the linked S3 bucket 
    #                   when the file system is created. FSx does not update the file and directory 
    #                   listing for any new or changed objects after choosing this option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - AutoImport is on. Amazon FSx automatically imports
    #                   directory listings of any new objects added to the linked S3 bucket that 
    #                   do not currently exist in the FSx file system. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_CHANGED</code> - AutoImport is on. Amazon FSx automatically imports 
    #                   file and directory listings of any new objects added to the S3 bucket and any 
    #                   existing objects that are changed in the S3 bucket after you choose this option.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_CHANGED_DELETED</code> - AutoImport is on. Amazon FSx automatically
    #                   imports file and directory listings of any new objects added to the S3 bucket, any 
    #                   existing objects that are changed in the S3 bucket, and any objects that were deleted
    #                   in the S3 bucket.</p>
    #               </li>
    #            </ul>
    #            <p>This parameter is not supported for file systems with a data repository association.</p>
    #   @return [String]
    # @!attribute data_compression_type
    #   <p>Sets the data compression configuration for the file system. <code>DataCompressionType</code>
    #               can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Data compression is turned off for
    #                   the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Data compression is turned on with the LZ4
    #                   algorithm.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't use <code>DataCompressionType</code>, the file system retains
    #               its current data compression configuration.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html">Lustre data compression</a>.</p>
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The Lustre logging configuration used when updating an Amazon FSx for Lustre
    #               file system. When logging is enabled, Lustre logs error and warning events for
    #               data repositories associated with your file system to Amazon CloudWatch Logs.</p>
    #   @return [Types::LustreLogCreateConfiguration]
    # @!attribute root_squash_configuration
    #   <p>The Lustre root squash configuration used when updating an Amazon FSx for Lustre
    #               file system. When enabled, root squash restricts root-level access from clients that
    #               try to access your file system as a root user.</p>
    #   @return [Types::LustreRootSquashConfiguration]
    # @!attribute per_unit_storage_throughput
    #   <p>The throughput of an Amazon FSx for Lustre Persistent SSD-based file system,
    #               measured in megabytes per second per tebibyte (MB/s/TiB). You can increase or decrease
    #               your file system's throughput. Valid values depend on the deployment type of the file
    #               system, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> SSD-based deployment types, valid values
    #                   are 50, 100, and 200 MB/s/TiB.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_2</code> SSD-based deployment types, valid values
    #                   are 125, 250, 500, and 1000 MB/s/TiB.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-throughput-capacity.html">
    #                   Managing throughput capacity</a>.</p>
    #   @return [Integer]
    # @!attribute metadata_configuration
    #   <p>The Lustre metadata performance configuration for an Amazon FSx for Lustre
    #               file system using a <code>PERSISTENT_2</code> deployment type. When this configuration
    #               is enabled, the file system supports increasing metadata performance.</p>
    #   @return [Types::UpdateFileSystemLustreMetadataConfiguration]
    # @!attribute throughput_capacity
    #   <p>The throughput of an Amazon FSx for Lustre file system using an Intelligent-Tiering
    #               storage class, measured in megabytes per second (MBps). You can only increase your file
    #               system's throughput. Valid values are 4000 MBps or multiples of 4000 MBps.</p>
    #   @return [Integer]
    # @!attribute data_read_cache_configuration
    #   <p>Specifies the optional provisioned SSD read cache on Amazon FSx for Lustre file systems that
    #                   use the Intelligent-Tiering storage class.</p>
    #   @return [Types::LustreReadCacheConfiguration]
    class UpdateFileSystemLustreConfiguration < Struct.new(
      nil,
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :auto_import_policy,
      :data_compression_type,
      :log_configuration,
      :root_squash_configuration,
      :per_unit_storage_throughput,
      :metadata_configuration,
      :throughput_capacity,
      :data_read_cache_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lustre metadata performance configuration update for an Amazon FSx for Lustre
    #             file system using a <code>PERSISTENT_2</code> deployment type. You can request
    #             an increase in your file system's Metadata IOPS and/or switch your file system's
    #             metadata configuration mode. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-metadata-performance.html">Managing
    #                 metadata performance</a> in the
    #             <i>Amazon FSx for Lustre User Guide</i>.</p>
    # @!attribute iops
    #   <p>(USER_PROVISIONED mode only) Specifies the number of Metadata IOPS to provision
    #               for your file system.</p>
    #            <ul>
    #               <li>
    #                  <p>For SSD file systems, valid values are <code>1500</code>,
    #                       <code>3000</code>, <code>6000</code>, <code>12000</code>, and
    #                       multiples of <code>12000</code> up to a maximum of <code>192000</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For Intelligent-Tiering file systems, valid values are <code>6000</code>
    #                       and <code>12000</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The value you provide must be greater than or equal to the current number of
    #               Metadata IOPS provisioned for the file system.</p>
    #   @return [Integer]
    # @!attribute mode
    #   <p>The metadata configuration mode for provisioning Metadata IOPS for
    #               an FSx for Lustre file system using a <code>PERSISTENT_2</code>
    #               deployment type.</p>
    #            <ul>
    #               <li>
    #                  <p>To increase the Metadata IOPS or to switch an SSD file system from
    #                       AUTOMATIC,
    #                   specify <code>USER_PROVISIONED</code> as the value for this parameter. Then use the
    #                   Iops parameter to provide a Metadata IOPS value that is greater than or equal to
    #                   the current number of Metadata IOPS provisioned for the file system.</p>
    #               </li>
    #               <li>
    #                  <p>To switch from USER_PROVISIONED mode on an SSD file system, specify
    #                   <code>AUTOMATIC</code> as the value for this parameter, but do not input a value
    #                   for Iops.</p>
    #                  <note>
    #                     <ul>
    #                        <li>
    #                           <p>If you request to switch from USER_PROVISIONED to AUTOMATIC mode and the
    #                                   current Metadata IOPS value is greater than the automated default, FSx for Lustre
    #                                   rejects the request because downscaling Metadata IOPS is not supported.</p>
    #                        </li>
    #                        <li>
    #                           <p>AUTOMATIC mode is not supported on Intelligent-Tiering
    #                                   file systems. For Intelligent-Tiering file systems, use USER_PROVISIONED mode.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateFileSystemLustreMetadataConfiguration < Struct.new(
      nil,
      :iops,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration updates for an Amazon FSx for NetApp ONTAP file system.</p>
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute fsx_admin_password
    #   <p>Update the password for the <code>fsxadmin</code> user by entering a new password. 
    #           You use the <code>fsxadmin</code> user to access the NetApp ONTAP CLI and REST API to manage your file system resources. 
    #               For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-resources-ontap-apps.html">Managing resources using NetApp Application</a>.</p>
    #   @return [String]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input output operations per second) configuration for an Amazon FSx for NetApp ONTAP file system. The default is 3 IOPS per GB of storage capacity,
    #               but you can provision additional IOPS per GB of storage. The configuration consists
    #               of an IOPS mode (<code>AUTOMATIC</code> or <code>USER_PROVISIONED</code>), and in
    #               the case of <code>USER_PROVISIONED</code> IOPS, the total number of SSD IOPS provisioned. 
    #               For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/storage-capacity-and-IOPS.html">File system storage capacity and IOPS</a>.</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute throughput_capacity
    #   <p>Enter a new value to change the amount of throughput capacity for the file system in megabytes per second (MBps). For more information, see 
    #             <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-throughput-capacity.html">Managing throughput capacity</a> 
    #             in the FSx for ONTAP User Guide.</p>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> and <code>ThroughputCapacityPerHAPair</code> are not the same value.</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> when divided by the value of <code>HAPairs</code> is outside of the valid range for <code>ThroughputCapacity</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute add_route_table_ids
    #   <p>(Multi-AZ only) A list of IDs of new virtual private cloud (VPC) route tables
    #               to associate (add) with your Amazon FSx for NetApp ONTAP file system.</p>
    #   @return [Array<String>]
    # @!attribute remove_route_table_ids
    #   <p>(Multi-AZ only) A list of IDs of existing virtual private cloud (VPC)
    #               route tables to disassociate (remove) from your Amazon FSx for NetApp ONTAP file system. You can use
    #               the  API operation to retrieve the
    #               list of VPC route table IDs for a file system.</p>
    #   @return [Array<String>]
    # @!attribute throughput_capacity_per_ha_pair
    #   <p>Use to choose the throughput capacity per HA pair, rather than the total throughput for the file system. </p>
    #            <p>This field and <code>ThroughputCapacity</code> cannot be defined in the same API call, but one is required.</p>
    #            <p>This field and <code>ThroughputCapacity</code> are the same for file systems with one HA pair.</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_1</code> and <code>MULTI_AZ_1</code> file systems, valid values are 128, 256, 512, 1024, 2048, or 4096 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_2</code>, valid values are 1536, 3072, or 6144 MBps.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>MULTI_AZ_2</code>, valid values are 384, 768, 1536, 3072, or 6144 MBps.</p>
    #               </li>
    #            </ul>
    #            <p>Amazon FSx responds with an HTTP status code 400 (Bad Request) for the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacity</code> and <code>ThroughputCapacityPerHAPair</code> are not the same value for file systems with one HA pair.</p>
    #               </li>
    #               <li>
    #                  <p>The value of deployment type is <code>SINGLE_AZ_2</code> and <code>ThroughputCapacity</code> / <code>ThroughputCapacityPerHAPair</code> is not a valid HA pair (a value between 1 and 12).</p>
    #               </li>
    #               <li>
    #                  <p>The value of <code>ThroughputCapacityPerHAPair</code> is not a valid value.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute ha_pairs
    #   <p>Use to update the number of high-availability (HA) pairs for a second-generation single-AZ file system. 
    #               If you increase the number of HA pairs for your file system, you must specify proportional increases for <code>StorageCapacity</code>, 
    #               <code>Iops</code>, and <code>ThroughputCapacity</code>. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/administering-file-systems.html#HA-pairs">High-availability (HA) pairs</a> in the FSx for ONTAP user guide. Block storage protocol support 
    #               (iSCSI and NVMe over TCP) is disabled on file systems with more than 6 HA pairs. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/supported-fsx-clients.html#using-block-storage">Using block storage protocols</a>.</p>
    #   @return [Integer]
    # @!attribute endpoint_ipv6_address_range
    #   <p>(Multi-AZ only) Specifies the IPv6 address range in which the endpoints to access
    #               your file system will be created. By default in the Amazon FSx API and
    #               Amazon FSx console, Amazon FSx selects an available /118 IP address
    #               range for you from one of the VPC's CIDR ranges. You can have overlapping endpoint
    #               IP addresses for file systems deployed in the same VPC/route tables, as long as they
    #               don't overlap with any subnet.</p>
    #   @return [String]
    class UpdateFileSystemOntapConfiguration < Struct.new(
      nil,
      :automatic_backup_retention_days,
      :daily_automatic_backup_start_time,
      :fsx_admin_password,
      :weekly_maintenance_start_time,
      :disk_iops_configuration,
      :throughput_capacity,
      :add_route_table_ids,
      :remove_route_table_ids,
      :throughput_capacity_per_ha_pair,
      :ha_pairs,
      :endpoint_ipv6_address_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration updates for an Amazon FSx for OpenZFS file system.</p>
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #                   <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>A Boolean value indicating whether tags for the file system should be copied to
    #               backups. This value defaults to <code>false</code>. If it's set to <code>true</code>,
    #               all tags for the file system are copied to all automatic and user-initiated backups
    #               where the user doesn't specify tags. If this value is <code>true</code> and you specify
    #               one or more tags, only the specified tags are copied to backups. If you specify one or
    #               more tags when creating a user-initiated backup, no tags are copied from the file
    #               system, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute copy_tags_to_volumes
    #   <p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
    #               This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
    #               for the volume are copied to snapshots where the user doesn't specify tags. If this
    #               value is <code>true</code> and you specify one or more tags, only the specified tags are
    #               copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
    #               are copied from the volume, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute daily_automatic_backup_start_time
    #   <p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
    #               zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
    #               hour. For example, <code>05:00</code> specifies 5 AM daily. </p>
    #   @return [String]
    # @!attribute throughput_capacity
    #   <p>The throughput of an Amazon FSx for OpenZFS file system, measured in megabytes per second  (MB/s). Valid values depend on the DeploymentType you choose, as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>MULTI_AZ_1</code> and <code>SINGLE_AZ_2</code>, valid values are 160, 320, 640,
    #                   1280, 2560, 3840, 5120, 7680, or 10240 MB/s.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SINGLE_AZ_1</code>, valid values are 64, 128, 256, 512, 1024, 2048, 3072, or 4096 MB/s.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #            <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>
    #   @return [String]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for NetApp ONTAP, Amazon FSx for Windows File Server, or FSx for OpenZFS file system. By default, Amazon FSx 
    #               automatically provisions 3 IOPS per GB of storage capacity. You can provision additional IOPS per
    #               GB of storage. The configuration consists of the total number of provisioned SSD IOPS
    #               and how it is was provisioned, or the mode (by the customer or by Amazon FSx).</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute add_route_table_ids
    #   <p>(Multi-AZ only) A list of IDs of new virtual private cloud (VPC) route tables
    #               to associate (add) with your Amazon FSx for OpenZFS file system.</p>
    #   @return [Array<String>]
    # @!attribute remove_route_table_ids
    #   <p>(Multi-AZ only) A list of IDs of existing virtual private cloud (VPC)
    #               route tables to disassociate (remove) from your Amazon FSx for OpenZFS file system. You can use
    #               the  API operation to retrieve the
    #               list of VPC route table IDs for a file system.</p>
    #   @return [Array<String>]
    # @!attribute read_cache_configuration
    #   <p>
    #               The configuration for the optional provisioned SSD read cache on file systems that use the Intelligent-Tiering storage class.</p>
    #   @return [Types::OpenZFSReadCacheConfiguration]
    # @!attribute endpoint_ipv6_address_range
    #   <p>(Multi-AZ only) Specifies the IPv6 address range in which the endpoints to access your
    #               file system will be created. By default in the Amazon FSx API and Amazon FSx console,
    #               Amazon FSx selects an available /118 IP address range for you from one of the VPC's CIDR ranges.
    #               You can have overlapping endpoint IP addresses for file systems deployed in the same VPC/route tables,
    #               as long as they don't overlap with any subnet.</p>
    #   @return [String]
    class UpdateFileSystemOpenZFSConfiguration < Struct.new(
      nil,
      :automatic_backup_retention_days,
      :copy_tags_to_backups,
      :copy_tags_to_volumes,
      :daily_automatic_backup_start_time,
      :throughput_capacity,
      :weekly_maintenance_start_time,
      :disk_iops_configuration,
      :add_route_table_ids,
      :remove_route_table_ids,
      :read_cache_configuration,
      :endpoint_ipv6_address_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request object for the <code>UpdateFileSystem</code> operation.</p>
    # @!attribute file_system_id
    #   <p>The ID of the file system that you are updating.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A string of up to 63 ASCII characters that Amazon FSx uses to ensure
    #         idempotent updates. This string is automatically filled on your behalf when you use the
    #           Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute storage_capacity
    #   <p>Use this parameter to increase the storage capacity of an FSx for Windows File Server,
    #         FSx for Lustre, FSx for OpenZFS, or FSx for ONTAP file system.
    #         For second-generation FSx for ONTAP file systems, you can also decrease the storage capacity.
    #         Specifies the storage capacity target value, in GiB, for the file system that you're updating. </p>
    #            <note>
    #               <p>You can't make a storage capacity increase request if there is an existing storage
    #           capacity increase request in progress.</p>
    #            </note>
    #            <p>For Lustre file systems, the storage capacity target value can be the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2 SSD</code> deployment types, valid values
    #           are in multiples of 2400 GiB. The value must be greater than the current storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT HDD</code> file systems, valid values are multiples of 6000 GiB for
    #           12-MBps throughput per TiB file systems and multiples of 1800 GiB for 40-MBps throughput
    #           per TiB file systems. The values must be greater than the current storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SCRATCH_1</code> file systems, you can't increase the storage capacity.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing storage and throughput
    #         capacity</a> in the <i>FSx for Lustre User Guide</i>.</p>
    #            <p>For FSx for OpenZFS file systems, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. For more information, see
    #         <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-storage-capacity.html">Managing storage capacity</a> in the <i>FSx for OpenZFS User
    #             Guide</i>.</p>
    #            <p>For Windows file systems, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. To increase storage capacity, the file system
    #         must have at least 16 MBps of throughput capacity. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing storage
    #           capacity</a> in the <i>Amazon FSxfor Windows File Server User
    #             Guide</i>.</p>
    #            <p>For ONTAP file systems, when increasing storage capacity, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. When decreasing storage capacity on second-generation file systems, the target value must be at least 9 percent smaller than the current SSD storage capacity. For more information, see
    #         <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/storage-capacity-and-IOPS.html">File system storage capacity and IOPS</a> in the Amazon FSx for NetApp ONTAP User
    #             Guide.</p>
    #   @return [Integer]
    # @!attribute windows_configuration
    #   <p>The configuration updates for an Amazon FSx for Windows File Server file system.</p>
    #   @return [Types::UpdateFileSystemWindowsConfiguration]
    # @!attribute lustre_configuration
    #   <p>The configuration object for Amazon FSx for Lustre file systems used in the
    #                   <code>UpdateFileSystem</code> operation.</p>
    #   @return [Types::UpdateFileSystemLustreConfiguration]
    # @!attribute ontap_configuration
    #   <p>The configuration updates for an Amazon FSx for NetApp ONTAP file system.</p>
    #   @return [Types::UpdateFileSystemOntapConfiguration]
    # @!attribute open_zfs_configuration
    #   <p>The configuration updates for an FSx for OpenZFS file system.</p>
    #   @return [Types::UpdateFileSystemOpenZFSConfiguration]
    # @!attribute storage_type
    #   <p>Specifies the file system's storage type.</p>
    #   @return [String]
    # @!attribute file_system_type_version
    #   <p>The Lustre version you are updating an FSx for Lustre file system to.
    #         Valid values are <code>2.12</code> and <code>2.15</code>. The value you choose must be
    #         newer than the file system's current Lustre version.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>Changes the network type of an FSx for OpenZFS file system.</p>
    #   @return [String]
    class UpdateFileSystemRequest < Struct.new(
      nil,
      :file_system_id,
      :client_request_token,
      :storage_capacity,
      :windows_configuration,
      :lustre_configuration,
      :ontap_configuration,
      :open_zfs_configuration,
      :storage_type,
      :file_system_type_version,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response object for the <code>UpdateFileSystem</code> operation.</p>
    # @!attribute file_system
    #   <p>A description of the file system that was updated.</p>
    #   @return [Types::FileSystem]
    class UpdateFileSystemResponse < Struct.new(
      nil,
      :file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the configuration for an existing Amazon FSx for Windows
    #             File Server file system. Amazon FSx only overwrites existing properties with non-null values
    #             provided in the request.</p>
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone. Where d is the weekday number, from 1 through 7, with 1 = Monday and 7 = Sunday.</p>
    #   @return [String]
    # @!attribute daily_automatic_backup_start_time
    #   <p>The preferred time to start the daily automatic backup, in the UTC time zone, for example, <code>02:00</code>
    #            </p>
    #   @return [String]
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this property to
    #               <code>0</code> disables automatic backups. You can retain automatic backups for a
    #               maximum of 90 days. The default is <code>30</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#automatic-backups">Working with Automatic Daily Backups</a>.</p>
    #   @return [Integer]
    # @!attribute throughput_capacity
    #   <p>Sets the target value for a file system's throughput capacity, in MB/s, that you are updating the file system to. Valid values are 
    #               8, 16, 32, 64, 128, 256, 512, 1024, 2048. You cannot make a throughput capacity update request if there is an existing throughput capacity update request in progress. For more information, 
    #               see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-throughput-capacity.html">Managing Throughput Capacity</a>.</p>
    #   @return [Integer]
    # @!attribute self_managed_active_directory_configuration
    #   <p>The configuration Amazon FSx uses to join the Windows File Server instance to the
    #               self-managed Microsoft AD directory. You cannot make a self-managed Microsoft AD update request if there is an existing self-managed Microsoft AD update request in progress.</p>
    #   @return [Types::SelfManagedActiveDirectoryConfigurationUpdates]
    # @!attribute audit_log_configuration
    #   <p>The configuration that Amazon FSx for Windows File Server uses to audit and log
    #               user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
    #               file system..</p>
    #   @return [Types::WindowsAuditLogCreateConfiguration]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for Windows file system.
    #               By default, Amazon FSx automatically provisions 3 IOPS per GiB of storage capacity. You can provision additional
    #               IOPS per GiB of storage, up to the maximum limit associated with your chosen throughput capacity.</p>
    #   @return [Types::DiskIopsConfiguration]
    class UpdateFileSystemWindowsConfiguration < Struct.new(
      nil,
      :weekly_maintenance_start_time,
      :daily_automatic_backup_start_time,
      :automatic_backup_retention_days,
      :throughput_capacity,
      :self_managed_active_directory_configuration,
      :audit_log_configuration,
      :disk_iops_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to specify changes to the ONTAP configuration for the volume you are updating.</p>
    # @!attribute junction_path
    #   <p>Specifies the location in the SVM's namespace where the volume is mounted. 
    #               The <code>JunctionPath</code> must have a leading forward slash, such as <code>/vol3</code>.</p>
    #   @return [String]
    # @!attribute security_style
    #   <p>The security style for the volume, which can be <code>UNIX</code>,
    #               <code>NTFS</code>, or <code>MIXED</code>.</p>
    #   @return [String]
    # @!attribute size_in_megabytes
    #   <p>Specifies the size of the volume in megabytes.</p>
    #   @return [Integer]
    # @!attribute storage_efficiency_enabled
    #   <p>Default is <code>false</code>. Set to true to enable the deduplication,
    #               compression, and compaction storage efficiency features on the volume.</p>
    #   @return [Boolean]
    # @!attribute tiering_policy
    #   <p>Update the volume's data tiering policy.</p>
    #   @return [Types::TieringPolicy]
    # @!attribute snapshot_policy
    #   <p>Specifies the snapshot policy for the volume. There are three built-in snapshot policies:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>default</code>: This is the default policy. A maximum of six hourly snapshots taken five minutes past 
    #                   the hour. A maximum of two daily snapshots taken Monday through Saturday at 10 minutes after
    #                   midnight. A maximum of two weekly snapshots taken every Sunday at 15 minutes after midnight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>default-1weekly</code>: This policy is the same as the <code>default</code> policy except 
    #                   that it only retains one snapshot from the weekly schedule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>none</code>: This policy does not take any snapshots. This policy can be assigned to volumes to 
    #                   prevent automatic snapshots from being taken.</p>
    #               </li>
    #            </ul>
    #            <p>You can also provide the name of a custom policy that you created with the ONTAP CLI or REST API.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies">Snapshot policies</a> 
    #               in the <i>Amazon FSx for NetApp ONTAP User Guide</i>.</p>
    #   @return [String]
    # @!attribute copy_tags_to_backups
    #   <p>A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to
    #               false. If it's set to true, all tags for the volume are copied to all automatic and user-initiated backups
    #               where the user doesn't specify tags. If this value is true, and you specify one or more tags, only the
    #               specified tags are copied to backups. If you specify one or more tags when creating a user-initiated
    #               backup, no tags are copied from the volume, regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute snaplock_configuration
    #   <p>The configuration object for updating the SnapLock configuration of an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::UpdateSnaplockConfiguration]
    # @!attribute size_in_bytes
    #   <p>The configured size of the volume, in bytes.</p>
    #   @return [Integer]
    class UpdateOntapVolumeConfiguration < Struct.new(
      nil,
      :junction_path,
      :security_style,
      :size_in_megabytes,
      :storage_efficiency_enabled,
      :tiering_policy,
      :snapshot_policy,
      :copy_tags_to_backups,
      :snaplock_configuration,
      :size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to specify changes to the OpenZFS configuration for the volume
    #             that you are updating.</p>
    # @!attribute storage_capacity_reservation_gi_b
    #   <p>The amount of storage in gibibytes (GiB) to reserve from the parent volume.
    #               You can't reserve more storage than the parent volume has reserved. You can specify
    #               a value of <code>-1</code> to unset a volume's storage capacity reservation.</p>
    #   @return [Integer]
    # @!attribute storage_capacity_quota_gi_b
    #   <p>The maximum amount of storage in gibibytes (GiB) that the volume can use from its
    #               parent. You can specify a quota larger than the storage on the parent volume. You
    #               can specify a value of <code>-1</code> to unset a volume's storage capacity quota.</p>
    #   @return [Integer]
    # @!attribute record_size_ki_b
    #   <p>Specifies the record size of an OpenZFS volume, in kibibytes (KiB). Valid values are 4, 8,
    #               16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB.
    #               Most workloads should use the default record size. Database workflows can benefit from a smaller 
    #               record size, while streaming workflows can benefit from a larger record size. For additional guidance on when
    #               to set a custom record size, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#performance-tips-zfs">
    #                   Tips for maximizing performance</a> in the
    #               <i>Amazon FSx for OpenZFS User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute data_compression_type
    #   <p>Specifies the method used to compress the data on the volume. The compression
    #               type is <code>NONE</code> by default.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Doesn't compress the data on the volume.
    #                       <code>NONE</code> is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
    #                       (ZSTD) compression algorithm. Compared to LZ4, Z-Standard provides a better
    #                       compression ratio to minimize on-disk storage utilization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LZ4</code> - Compresses the data in the volume using the LZ4
    #                       compression algorithm. Compared to Z-Standard, LZ4 is less compute-intensive
    #                       and delivers higher write throughput speeds.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute nfs_exports
    #   <p>The configuration object for mounting a Network File System (NFS) file system.</p>
    #   @return [Array<Types::OpenZFSNfsExport>]
    # @!attribute user_and_group_quotas
    #   <p>An object specifying how much storage users or groups can use on the volume.</p>
    #   @return [Array<Types::OpenZFSUserOrGroupQuota>]
    # @!attribute read_only
    #   <p>A Boolean value indicating whether the volume is read-only.</p>
    #   @return [Boolean]
    class UpdateOpenZFSVolumeConfiguration < Struct.new(
      nil,
      :storage_capacity_reservation_gi_b,
      :storage_capacity_quota_gi_b,
      :record_size_ki_b,
      :data_compression_type,
      :nfs_exports,
      :user_and_group_quotas,
      :read_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable_fsx_route_table_updates_from_participant_accounts
    #   <p>Specifies whether participant accounts can create FSx for ONTAP Multi-AZ
    #               file systems in shared subnets. Set to <code>true</code> to enable or <code>false</code>
    #               to disable.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    class UpdateSharedVpcConfigurationRequest < Struct.new(
      nil,
      :enable_fsx_route_table_updates_from_participant_accounts,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute enable_fsx_route_table_updates_from_participant_accounts
    #   <p>Indicates whether participant accounts can create FSx for ONTAP Multi-AZ file systems in shared subnets.</p>
    #   @return [String]
    class UpdateSharedVpcConfigurationResponse < Struct.new(
      nil,
      :enable_fsx_route_table_updates_from_participant_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the SnapLock configuration for an existing FSx for ONTAP volume. </p>
    # @!attribute audit_log_volume
    #   <p>Enables or disables the audit log volume for an FSx for ONTAP SnapLock volume. The default 
    #           value is <code>false</code>. If you set <code>AuditLogVolume</code> to <code>true</code>, the SnapLock volume is 
    #           created as an audit log volume. The minimum retention period for an audit log volume is six months. </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/how-snaplock-works.html#snaplock-audit-log-volume">
    #                   SnapLock audit log volumes</a>. </p>
    #   @return [Boolean]
    # @!attribute autocommit_period
    #   <p>The configuration object for setting the autocommit period of files in an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::AutocommitPeriod]
    # @!attribute privileged_delete
    #   <p>Enables, disables, or permanently disables privileged delete on an FSx for ONTAP SnapLock 
    #               Enterprise volume. Enabling privileged delete allows SnapLock administrators to delete write once, read 
    #               many (WORM) files even 
    #               if they have active retention periods. <code>PERMANENTLY_DISABLED</code> is a terminal state. 
    #           If privileged delete is permanently disabled on a SnapLock volume, you can't re-enable it. The default 
    #           value is <code>DISABLED</code>. </p>
    #            <p>For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snaplock-enterprise.html#privileged-delete">Privileged delete</a>. </p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Specifies the retention period of an FSx for ONTAP SnapLock volume. </p>
    #   @return [Types::SnaplockRetentionPeriod]
    # @!attribute volume_append_mode_enabled
    #   <p>Enables or disables volume-append mode 
    #               on an FSx for ONTAP SnapLock volume. Volume-append mode allows you to 
    #               create WORM-appendable files and write data to them incrementally. The default value is <code>false</code>. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/worm-state.html#worm-state-append">Volume-append mode</a>. </p>
    #   @return [Boolean]
    class UpdateSnaplockConfiguration < Struct.new(
      nil,
      :audit_log_volume,
      :autocommit_period,
      :privileged_delete,
      :retention_period,
      :volume_append_mode_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the snapshot to update.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The ID of the snapshot that you want to update, in the format
    #                   <code>fsvolsnap-0123456789abcdef0</code>.</p>
    #   @return [String]
    class UpdateSnapshotRequest < Struct.new(
      nil,
      :client_request_token,
      :name,
      :snapshot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Returned after a successful <code>UpdateSnapshot</code> operation, describing the
    #               snapshot that you updated.</p>
    #   @return [Types::Snapshot]
    class UpdateSnapshotResponse < Struct.new(
      nil,
      :snapshot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute active_directory_configuration
    #   <p>Specifies updates to an SVM's Microsoft Active Directory (AD) configuration.</p>
    #   @return [Types::UpdateSvmActiveDirectoryConfiguration]
    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute storage_virtual_machine_id
    #   <p>The ID of the SVM that you want to update, in the format <code>svm-0123456789abcdef0</code>.</p>
    #   @return [String]
    # @!attribute svm_admin_password
    #   <p>Specifies a new SvmAdminPassword.</p>
    #   @return [String]
    class UpdateStorageVirtualMachineRequest < Struct.new(
      nil,
      :active_directory_configuration,
      :client_request_token,
      :storage_virtual_machine_id,
      :svm_admin_password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_virtual_machine
    #   <p>Describes the Amazon FSx for NetApp ONTAP storage virtual machine (SVM) configuration.</p>
    #   @return [Types::StorageVirtualMachine]
    class UpdateStorageVirtualMachineResponse < Struct.new(
      nil,
      :storage_virtual_machine,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies updates to an FSx for ONTAP storage virtual machine's (SVM) Microsoft Active Directory (AD) configuration. 
    #             Note that account credentials are not returned in the response payload.</p>
    # @!attribute self_managed_active_directory_configuration
    #   <p>Specifies changes you are making to the self-managed Microsoft Active Directory configuration to which  
    #               an FSx for Windows File Server file system or an FSx for ONTAP SVM is joined.</p>
    #   @return [Types::SelfManagedActiveDirectoryConfigurationUpdates]
    # @!attribute net_bios_name
    #   <p>Specifies an updated NetBIOS name of the AD computer object <code>NetBiosName</code> to which an SVM is joined.</p>
    #   @return [String]
    class UpdateSvmActiveDirectoryConfiguration < Struct.new(
      nil,
      :self_managed_active_directory_configuration,
      :net_bios_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 63
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The ID of the volume that you want to update, in the format
    #                   <code>fsvol-0123456789abcdef0</code>.</p>
    #   @return [String]
    # @!attribute ontap_configuration
    #   <p>The configuration of the ONTAP volume that you are updating.</p>
    #   @return [Types::UpdateOntapVolumeConfiguration]
    # @!attribute name
    #   <p>The name of the OpenZFS volume. OpenZFS root volumes are automatically named
    #                   <code>FSX</code>. Child volume names must be unique among their parent volume's
    #               children. The name of the volume is part of the mount string for the OpenZFS volume. </p>
    #   @return [String]
    # @!attribute open_zfs_configuration
    #   <p>The configuration of the OpenZFS volume that you are updating.</p>
    #   @return [Types::UpdateOpenZFSVolumeConfiguration]
    class UpdateVolumeRequest < Struct.new(
      nil,
      :client_request_token,
      :volume_id,
      :ontap_configuration,
      :name,
      :open_zfs_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute volume
    #   <p>A description of the volume just updated. Returned after a successful
    #                   <code>UpdateVolume</code> API operation.</p>
    #   @return [Types::Volume]
    class UpdateVolumeResponse < Struct.new(
      nil,
      :volume,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon FSx volume.</p>
    # @!attribute creation_time
    #   <p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
    #               also known as Unix time.</p>
    #   @return [Time]
    # @!attribute file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the volume.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The volume is fully available for
    #                       use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The volume has been created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon FSx is creating the new volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Amazon FSx is deleting an existing
    #                       volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon FSx was unable to create the
    #                       volume.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISCONFIGURED</code> - The volume is in a failed but recoverable
    #                       state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Amazon FSx hasn't started creating the
    #                       volume.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the volume.</p>
    #   @return [String]
    # @!attribute ontap_configuration
    #   <p>The configuration of an Amazon FSx for NetApp ONTAP volume.</p>
    #   @return [Types::OntapVolumeConfiguration]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
    #               resources. We require an ARN when you need to specify a resource unambiguously across
    #               all of Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #               the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute volume_id
    #   <p>The system-generated, unique ID of the volume.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>The type of the volume.</p>
    #   @return [String]
    # @!attribute lifecycle_transition_reason
    #   <p>The reason why the volume lifecycle status changed.</p>
    #   @return [Types::LifecycleTransitionReason]
    # @!attribute administrative_actions
    #   <p>A list of administrative actions for the volume that are in process or waiting to be processed. 
    #               Administrative actions describe changes to the volume that you have initiated using
    #               the <code>UpdateVolume</code> action.</p>
    #   @return [Array<Types::AdministrativeAction>]
    # @!attribute open_zfs_configuration
    #   <p>The configuration of an Amazon FSx for OpenZFS volume.</p>
    #   @return [Types::OpenZFSVolumeConfiguration]
    class Volume < Struct.new(
      nil,
      :creation_time,
      :file_system_id,
      :lifecycle,
      :name,
      :ontap_configuration,
      :resource_arn,
      :tags,
      :volume_id,
      :volume_type,
      :lifecycle_transition_reason,
      :administrative_actions,
      :open_zfs_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to restrict the results of describe calls for Amazon FSx for
    #             NetApp ONTAP or Amazon FSx for OpenZFS volumes. You can use multiple filters to
    #             return results that meet all applied filter requirements.</p>
    # @!attribute name
    #   <p>The name for this filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the filter. These are all the values for any of the applied
    #               filters.</p>
    #   @return [Array<String>]
    class VolumeFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No Amazon FSx volumes were found based upon the supplied parameters.</p>
    # @!attribute message
    #   <p>A detailed error message.</p>
    #   @return [String]
    class VolumeNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that Amazon FSx for Windows File Server uses to audit and log
    #             user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
    #             file system. For more information,
    #             see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/file-access-auditing.html">
    #                 File access auditing</a>.</p>
    # @!attribute file_access_audit_log_level
    #   <p>Sets which attempt type is logged by Amazon FSx for file and folder accesses.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_ONLY</code> - only successful attempts to access files
    #                       or folders are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILURE_ONLY</code> - only failed attempts to access files
    #                       or folders are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
    #                       failed attempts to access files or folders are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - access auditing of files and folders is turned off.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute file_share_access_audit_log_level
    #   <p>Sets which attempt type is logged by Amazon FSx for file share accesses.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_ONLY</code> - only successful attempts to access file
    #                       shares are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILURE_ONLY</code> - only failed attempts to access file
    #                       shares are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
    #                       failed attempts to access file shares are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - access auditing of file shares is turned off.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute audit_log_destination
    #   <p>The Amazon Resource Name (ARN) for the destination of the audit logs.
    #               The destination can be any Amazon CloudWatch Logs log group ARN or
    #               Amazon Kinesis Data Firehose delivery stream ARN.</p>
    #            <p>The name of the Amazon CloudWatch Logs log group must begin with
    #               the <code>/aws/fsx</code> prefix. The name of the Amazon Kinesis Data
    #               Firehose delivery stream must begin with the <code>aws-fsx</code> prefix.</p>
    #            <p>The destination ARN (either CloudWatch Logs log group or Kinesis
    #               Data Firehose delivery stream) must be in the same Amazon Web Services partition,
    #               Amazon Web Services Region, and Amazon Web Services account as your Amazon FSx file system.</p>
    #   @return [String]
    class WindowsAuditLogConfiguration < Struct.new(
      nil,
      :file_access_audit_log_level,
      :file_share_access_audit_log_level,
      :audit_log_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Windows file access auditing configuration used when creating
    #             or updating an Amazon FSx for Windows File Server file system.</p>
    # @!attribute file_access_audit_log_level
    #   <p>Sets which attempt type is logged by Amazon FSx for file and folder accesses.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_ONLY</code> - only successful attempts to access files
    #                       or folders are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILURE_ONLY</code> - only failed attempts to access files
    #                       or folders are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
    #                       failed attempts to access files or folders are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - access auditing of files and folders is turned off.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute file_share_access_audit_log_level
    #   <p>Sets which attempt type is logged by Amazon FSx for file share accesses.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_ONLY</code> - only successful attempts to access file
    #                       shares are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILURE_ONLY</code> - only failed attempts to access file
    #                       shares are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
    #                       failed attempts to access file shares are logged.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - access auditing of file shares is turned off.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute audit_log_destination
    #   <p>The Amazon Resource Name (ARN) that specifies the destination of the audit logs.</p>
    #            <p>The destination can be any Amazon CloudWatch Logs log group ARN or Amazon Kinesis
    #               Data Firehose delivery stream ARN, with the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>The destination ARN that you provide (either CloudWatch Logs log group
    #                       or Kinesis Data Firehose delivery stream) must be in the same Amazon Web Services partition,
    #                       Amazon Web Services Region, and Amazon Web Services account as your Amazon FSx file system.</p>
    #               </li>
    #               <li>
    #                  <p>The name of the Amazon CloudWatch Logs log group must begin with
    #                       the <code>/aws/fsx</code> prefix. The name of the Amazon Kinesis Data
    #                       Firehose delivery stream must begin with the <code>aws-fsx</code> prefix.</p>
    #               </li>
    #               <li>
    #                  <p>If you do not provide a destination in <code>AuditLogDestination</code>,
    #                       Amazon FSx will create and use a log stream in the CloudWatch Logs
    #                       <code>/aws/fsx/windows</code> log group.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>AuditLogDestination</code> is provided and the resource does not
    #                       exist, the request will fail with a <code>BadRequest</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>FileAccessAuditLogLevel</code> and <code>FileShareAccessAuditLogLevel</code>
    #                       are both set to <code>DISABLED</code>, you cannot specify a destination in
    #                       <code>AuditLogDestination</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class WindowsAuditLogCreateConfiguration < Struct.new(
      nil,
      :file_access_audit_log_level,
      :file_share_access_audit_log_level,
      :audit_log_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for this Microsoft Windows file system.</p>
    # @!attribute active_directory_id
    #   <p>The ID for an existing Amazon Web Services Managed Microsoft Active Directory instance that the file system is joined to.</p>
    #   @return [String]
    # @!attribute self_managed_active_directory_configuration
    #   <p>The configuration of the self-managed Microsoft Active Directory (AD) directory to
    #               which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.</p>
    #   @return [Types::SelfManagedActiveDirectoryAttributes]
    # @!attribute deployment_type
    #   <p>Specifies the file system deployment type, valid values are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MULTI_AZ_1</code> - Specifies a high availability file system that is configured for Multi-AZ 
    #                       redundancy to tolerate temporary Availability Zone (AZ) unavailability, and supports SSD and HDD storage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_1</code> - (Default) Specifies a file system that is configured for single AZ redundancy, 
    #                       only supports SSD storage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SINGLE_AZ_2</code> - Latest generation Single AZ file system. 
    #                       Specifies a file system that is configured for single AZ redundancy and supports SSD and HDD storage.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see 
    #            <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html">Single-AZ and Multi-AZ File Systems</a>.</p>
    #   @return [String]
    # @!attribute remote_administration_endpoint
    #   <p>For <code>MULTI_AZ_1</code> deployment types, use this endpoint when performing administrative tasks on the file system using 
    #               Amazon FSx Remote PowerShell.</p>
    #            <p>For <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> deployment types, this is the DNS name of the file system.</p>
    #            <p>This endpoint is temporarily unavailable when the file system is undergoing maintenance.</p>
    #   @return [String]
    # @!attribute preferred_subnet_id
    #   <p>For <code>MULTI_AZ_1</code> deployment types, it specifies the ID of the subnet where the preferred file server is located. 
    #               Must be one of the two subnet IDs specified in <code>SubnetIds</code> property.
    #               Amazon FSx serves traffic from this subnet except in the event of a failover to the secondary file server.</p>
    #            <p>For <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> deployment types, this value is the same as that for <code>SubnetIDs</code>.
    #               For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html#single-multi-az-resources">Availability and durability: Single-AZ and Multi-AZ file systems</a>.</p>
    #   @return [String]
    # @!attribute preferred_file_server_ip
    #   <p>For <code>MULTI_AZ_1</code> deployment types, the IPv4 address of the primary, or preferred, file server.</p>
    #            <p>Use this IP address when mounting the file system on Linux SMB clients or Windows SMB clients that 
    #               are not joined to a Microsoft Active Directory. 
    #               Applicable for all Windows file system deployment types. 
    #               This IPv4 address is temporarily unavailable 
    #               when the file system is undergoing maintenance. For Linux and Windows 
    #               SMB clients that are joined to an Active Directory, use the file system's DNSName instead. For more information
    #               on mapping and mounting file shares, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-file-shares.html">Accessing data using file shares</a>.</p>
    #   @return [String]
    # @!attribute throughput_capacity
    #   <p>The throughput of the Amazon FSx file system, measured in megabytes per
    #               second.</p>
    #   @return [Integer]
    # @!attribute maintenance_operations_in_progress
    #   <p>The list of maintenance operations in progress for this file system.</p>
    #   @return [Array<String>]
    # @!attribute weekly_maintenance_start_time
    #   <p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
    #               time zone. d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>
    #   @return [String]
    # @!attribute daily_automatic_backup_start_time
    #   <p>The preferred time to take daily automatic backups, in the UTC time zone.</p>
    #   @return [String]
    # @!attribute automatic_backup_retention_days
    #   <p>The number of days to retain automatic backups. Setting this to 0 disables automatic
    #               backups. You can retain automatic backups for a maximum of 90 days.</p>
    #   @return [Integer]
    # @!attribute copy_tags_to_backups
    #   <p>A boolean flag indicating whether tags on the file system should be copied to backups.
    #               This value defaults to false. If it's set to true, all tags on the file system are
    #               copied to all automatic backups and any user-initiated backups where the user
    #               doesn't specify any tags. If this value is true, and you specify one or more tags,
    #               only the specified tags are copied to backups. If you specify one or more tags when 
    #               creating a user-initiated backup, no tags are copied from the file system, 
    #               regardless of this value.</p>
    #   @return [Boolean]
    # @!attribute aliases
    #   <p>An array of one or more DNS aliases that are currently associated with the Amazon FSx file system. 
    #               Aliases allow you to use existing DNS names to access the data in your Amazon FSx file system. 
    #               You can associate up to 50 aliases with a file system at any time. 
    #               You can associate additional DNS aliases after you create the file system using the AssociateFileSystemAliases operation. 
    #               You can remove DNS aliases from the file system after it is created using the DisassociateFileSystemAliases operation.
    #               You only need to specify the alias name in the request payload. For more information, see 
    #               <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">Managing DNS aliases</a>.</p>
    #   @return [Array<Types::Alias>]
    # @!attribute audit_log_configuration
    #   <p>The configuration that Amazon FSx for Windows File Server uses to audit and log
    #               user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
    #               file system.</p>
    #   @return [Types::WindowsAuditLogConfiguration]
    # @!attribute disk_iops_configuration
    #   <p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for Windows file system.
    #               By default, Amazon FSx automatically provisions 3 IOPS per GiB of storage capacity. You can provision additional
    #               IOPS per GiB of storage, up to the maximum limit associated with your chosen throughput capacity.</p>
    #   @return [Types::DiskIopsConfiguration]
    # @!attribute preferred_file_server_ipv6
    #   <p>For MULTI_AZ_1 deployment types, the IPv6 address of the primary, or preferred, file server.
    #               Use this IP address when mounting the file system on Linux SMB clients or Windows SMB clients
    #               that are not joined to a Microsoft Active Directory. Applicable for all Windows file system
    #               deployment types. This IPv6 address is temporarily unavailable when the file system is undergoing
    #               maintenance. For Linux and Windows SMB clients that are joined to an Active Directory, use the
    #               file system's DNSName instead.</p>
    #   @return [String]
    class WindowsFileSystemConfiguration < Struct.new(
      nil,
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
      :audit_log_configuration,
      :disk_iops_configuration,
      :preferred_file_server_ipv6,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
