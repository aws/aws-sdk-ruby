# frozen_string_literal: true

# This is generated code!

module Aws::EFS
  # This module contains the types returned by client operations.
  module Types

    # <p>Returned if the access point that you are trying to create already exists, with the
    #             creation token you provided in the request.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   @return [String]
    class AccessPointAlreadyExists < Struct.new(
      :error_code,
      :message,
      :access_point_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of an EFS file system access point.</p>
    # @!attribute client_token
    #   <p>The opaque string specified in the request to ensure idempotent creation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point. This is the value of the <code>Name</code> tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the access point, presented as an array of Tag objects.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute access_point_id
    #   <p>The ID of the access point, assigned by Amazon EFS.</p>
    #   @return [String]
    # @!attribute access_point_arn
    #   <p>The unique Amazon Resource Name (ARN) associated with the access
    #         point.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the EFS file system that the access point applies to.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by
    #         NFS clients using the access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>The directory on the EFS file system that the access point exposes as the root
    #         directory to NFS clients using the access point.</p>
    #   @return [Types::RootDirectory]
    # @!attribute owner_id
    #   <p>Identifies the Amazon Web Services account that owns the access point resource.</p>
    #   @return [String]
    # @!attribute life_cycle_state
    #   <p>Identifies the lifecycle phase of the access point.</p>
    #   @return [String]
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
      :life_cycle_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the Amazon Web Services account has already created the maximum number of access points
    #             allowed per file system. For more informaton, see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#limits-efs-resources-per-account-per-region">https://docs.aws.amazon.com/efs/latest/ug/limits.html#limits-efs-resources-per-account-per-region</a>.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class AccessPointLimitExceeded < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the specified <code>AccessPointId</code> value doesn't exist in the
    #             requester's Amazon Web Services account.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class AccessPointNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the Availability Zone that was specified for a mount target is 
    #             different from the Availability Zone that was specified for One Zone storage.
    #             For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html">Regional and One Zone storage redundancy</a>.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class AvailabilityZonesMismatch < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The backup policy for the file system used to create automatic daily backups. If status has a value of 
    #       <code>ENABLED</code>, the file system is being automatically backed up. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups">Automatic backups</a>.</p>
    # @!attribute status
    #   <p>Describes the status of the file system's backup policy.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ENABLED</code>
    #                     </b> – EFS is automatically
    #             backing up the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ENABLING</code>
    #                     </b> – EFS is turning on
    #             automatic backups for the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DISABLED</code>
    #                     </b> – Automatic back ups are turned
    #             off for the file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DISABLING</code>
    #                     </b> – EFS is turning off
    #             automatic backups for the file system.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class BackupPolicy < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the request is malformed or contains an error such as an invalid
    #             parameter value or a missing required parameter.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class BadRequest < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the source file system in a replication is encrypted but the destination file system is unencrypted.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of an EFS file system access point.</p>
    # @!attribute client_token
    #   <p>The opaque string specified in the request to ensure idempotent creation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access point. This is the value of the <code>Name</code> tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the access point, presented as an array of Tag objects.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute access_point_id
    #   <p>The ID of the access point, assigned by Amazon EFS.</p>
    #   @return [String]
    # @!attribute access_point_arn
    #   <p>The unique Amazon Resource Name (ARN) associated with the access
    #         point.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the EFS file system that the access point applies to.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by
    #         NFS clients using the access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>The directory on the EFS file system that the access point exposes as the root
    #         directory to NFS clients using the access point.</p>
    #   @return [Types::RootDirectory]
    # @!attribute owner_id
    #   <p>Identifies the Amazon Web Services account that owns the access point resource.</p>
    #   @return [String]
    # @!attribute life_cycle_state
    #   <p>Identifies the lifecycle phase of the access point.</p>
    #   @return [String]
    class CreateAccessPointOutput < Struct.new(
      :client_token,
      :name,
      :tags,
      :access_point_id,
      :access_point_arn,
      :file_system_id,
      :posix_user,
      :root_directory,
      :owner_id,
      :life_cycle_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent
    #         creation.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Creates tags associated with the access point. Each tag is a key-value pair, each key must be unique. For more 
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #         in the <i>Amazon Web Services General Reference Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system_id
    #   <p>The ID of the EFS file system that the access point provides access to.</p>
    #   @return [String]
    # @!attribute posix_user
    #   <p>The operating system user and
    #         group applied to all file system requests made using the access point.</p>
    #   @return [Types::PosixUser]
    # @!attribute root_directory
    #   <p>Specifies the directory on the EFS file system that the access point exposes as
    #         the root directory of your file system to NFS clients using the access point. The clients
    #         using the access point can only access the root directory and below. If the
    #           <code>RootDirectory</code> > <code>Path</code> specified does not exist, Amazon EFS creates it and applies the <code>CreationInfo</code> settings when a client connects to an
    #         access point. When specifying a <code>RootDirectory</code>, you must provide the
    #           <code>Path</code>, and the <code>CreationInfo</code>.</p>
    #            <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory. 
    #         If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount 
    #         using the access point will fail.</p>
    #   @return [Types::RootDirectory]
    class CreateAccessPointRequest < Struct.new(
      :client_token,
      :tags,
      :file_system_id,
      :posix_user,
      :root_directory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the file system.</p>
    # @!attribute owner_id
    #   <p>The Amazon Web Services account that created the file system.</p>
    #   @return [String]
    # @!attribute creation_token
    #   <p>The opaque string specified in the request.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system, assigned by Amazon EFS.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) for the EFS file system, in the
    #         format
    #             <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>
    #               </code>.
    #         Example with sample data:
    #           <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>
    #            </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the file system was created, in seconds (since
    #         1970-01-01T00:00:00Z).</p>
    #   @return [Time]
    # @!attribute life_cycle_state
    #   <p>The lifecycle phase of the file system.</p>
    #   @return [String]
    # @!attribute name
    #   <p>You can add tags to a file system, including a <code>Name</code> tag. For more
    #         information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns
    #         the value in this field. </p>
    #   @return [String]
    # @!attribute number_of_mount_targets
    #   <p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>
    #   @return [Integer]
    # @!attribute size_in_bytes
    #   <p>The latest known metered size (in bytes) of data stored in the file system, in its
    #           <code>Value</code> field, and the time at which that size was determined in its
    #           <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of
    #         seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent
    #         the size of a consistent snapshot of the file system, but it is eventually consistent when
    #         there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual
    #         size only if the file system is not modified for a period longer than a couple of hours.
    #         Otherwise, the value is not the exact size that the file system was at any point in time.
    #       </p>
    #   @return [Types::FileSystemSize]
    # @!attribute performance_mode
    #   <p>The performance mode of the file system.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>A Boolean value that, if true, indicates that the file system is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of an KMS key used to protect the encrypted file system.</p>
    #   @return [String]
    # @!attribute throughput_mode
    #   <p>Displays the file system's throughput mode. For more information, see 
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes">Throughput modes</a> 
    #         in the <i>Amazon EFS User Guide</i>.
    #       </p>
    #   @return [String]
    # @!attribute provisioned_throughput_in_mibps
    #   <p>The amount of provisioned throughput, measured in MiBps, for the file system. Valid for
    #         file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>
    #   @return [Float]
    # @!attribute availability_zone_name
    #   <p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is
    #         valid only for One Zone file systems. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html">Using EFS storage
    #           classes</a> in the <i>Amazon EFS User Guide</i>.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The unique and consistent identifier of the Availability Zone in which the file system is
    #         located, and is valid only for One Zone file systems. For example,
    #           <code>use1-az1</code> is an Availability Zone ID for the us-east-1 Amazon Web Services Region, and
    #         it has the same location in every Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the file system, presented as an array of <code>Tag</code>
    #         objects.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system_protection
    #   <p>Describes the protection on the file system. </p>
    #   @return [Types::FileSystemProtectionDescription]
    class CreateFileSystemOutput < Struct.new(
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
      :availability_zone_name,
      :availability_zone_id,
      :tags,
      :file_system_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_mount_targets] = 0 unless options.key?(:number_of_mount_targets)
        super
      end
    end

    # @!attribute creation_token
    #   <p>A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent
    #         creation.</p>
    #   @return [String]
    # @!attribute performance_mode
    #   <p>The performance mode of the file system. We recommend <code>generalPurpose</code>
    #         performance mode for all file systems. File systems using the <code>maxIO</code> performance
    #         mode can scale to higher levels of aggregate throughput and operations per second with a
    #         tradeoff of slightly higher latencies for most file operations. The performance mode
    #         can't be changed after the file system has been created. The <code>maxIO</code> mode is
    #         not supported on One Zone file systems.</p>
    #            <important>
    #               <p>Due to the higher per-operation latencies with Max I/O, we recommend using General Purpose performance mode for all file systems.</p>
    #            </important>
    #            <p>Default is <code>generalPurpose</code>.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>A Boolean value that, if true, creates an encrypted file system. When creating an
    #         encrypted file system, you have the option of specifying an existing Key Management Service key (KMS key).
    #         If you don't specify a KMS key, then the default KMS key for
    #         Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system.
    #       </p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key that you want to use to protect the encrypted file
    #         system. This parameter is required only if you want to use a non-default KMS key. If this parameter is not specified, the default KMS key for Amazon EFS is used. You can specify a KMS key ID using the following
    #         formats:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID - A unique identifier of the key, for example
    #               <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>ARN - An Amazon Resource Name (ARN) for the key, for example
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias - A previously created display name for a key, for example
    #               <code>alias/projectKey1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias ARN - An ARN for a key alias, for example
    #               <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you use <code>KmsKeyId</code>, you must set the <a>CreateFileSystemRequest$Encrypted</a> 
    #         parameter to true.</p>
    #            <important>
    #               <p>EFS accepts only symmetric KMS keys. You cannot use asymmetric 
    #         KMS keys with Amazon EFS file systems.</p>
    #            </important>
    #   @return [String]
    # @!attribute throughput_mode
    #   <p>Specifies the throughput mode for the file system. The mode can be <code>bursting</code>,
    #           <code>provisioned</code>, or <code>elastic</code>. If you set <code>ThroughputMode</code> to
    #           <code>provisioned</code>, you must also set a value for
    #           <code>ProvisionedThroughputInMibps</code>. After you create the file system, you can
    #         decrease your file system's Provisioned throughput or change between the
    #         throughput modes, with certain time restrictions. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput">Specifying
    #           throughput with provisioned mode</a> in the <i>Amazon EFS User
    #           Guide</i>. </p>
    #            <p>Default is <code>bursting</code>.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_in_mibps
    #   <p>The throughput, measured in mebibytes per second (MiBps), that you want to provision for a
    #         file system that you're creating. Required if <code>ThroughputMode</code> is set to
    #           <code>provisioned</code>. Valid values are 1-3414 MiBps, with the upper limit depending on
    #         Region. To increase this limit, contact Amazon Web ServicesSupport. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS quotas
    #           that you can increase</a> in the <i>Amazon EFS User
    #         Guide</i>.</p>
    #   @return [Float]
    # @!attribute availability_zone_name
    #   <p>For One Zone file systems, specify the Amazon Web Services
    #         Availability Zone in which to create the file system. Use the format <code>us-east-1a</code> to
    #         specify the  Availability Zone. For more information about One Zone file systems, see
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html#file-system-type">EFS file system types</a> in the <i>Amazon EFS User Guide</i>.</p>
    #            <note>
    #               <p>One Zone file systems are not available in all Availability Zones in Amazon Web Services Regions where Amazon EFS is available.</p>
    #            </note>
    #   @return [String]
    # @!attribute backup
    #   <p>Specifies whether automatic backups are enabled on the file system that you are creating.
    #         Set the value to <code>true</code> to enable automatic backups. If you are creating a
    #         One Zone file system, automatic backups are enabled by default. For more
    #         information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups">Automatic backups</a> in the
    #             <i>Amazon EFS User Guide</i>.</p>
    #            <p>Default is <code>false</code>. However, if you specify an <code>AvailabilityZoneName</code>, 
    #         the default is <code>true</code>.</p>
    #            <note>
    #               <p>Backup is not available in all Amazon Web Services Regions where Amazon EFS is available.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Use to create one or more tags associated with the file system. Each
    #           tag is a user-defined key-value pair. Name your file system on creation by including a
    #           <code>"Key":"Name","Value":"{value}"</code> key-value pair. Each key must be unique. For more 
    #           information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #           in the <i>Amazon Web Services General Reference Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateFileSystemRequest < Struct.new(
      :creation_token,
      :performance_mode,
      :encrypted,
      :kms_key_id,
      :throughput_mode,
      :provisioned_throughput_in_mibps,
      :availability_zone_name,
      :backup,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of a mount target.</p>
    # @!attribute owner_id
    #   <p>Amazon Web Services account ID that owns the resource.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>System-assigned mount target ID.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system for which the mount target is intended.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the mount target's subnet.</p>
    #   @return [String]
    # @!attribute life_cycle_state
    #   <p>Lifecycle state of the mount target.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>Address at which the file system can be mounted by using the mount target.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address for the mount target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface that Amazon EFS created when it created the mount
    #         target.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The unique and consistent identifier of the Availability Zone that the mount target resides in.
    #         For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it
    #         has the same location in every Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute availability_zone_name
    #   <p>The name of the Availability Zone in which the mount target is located. Availability Zones are
    #         independently mapped to names for each Amazon Web Services account. For example, the
    #         Availability Zone <code>us-east-1a</code> for your Amazon Web Services account might not be the
    #         same location as <code>us-east-1a</code> for another Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The virtual private cloud (VPC) ID that the mount target is configured in.</p>
    #   @return [String]
    class CreateMountTargetOutput < Struct.new(
      :owner_id,
      :mount_target_id,
      :file_system_id,
      :subnet_id,
      :life_cycle_state,
      :ip_address,
      :ipv6_address,
      :network_interface_id,
      :availability_zone_id,
      :availability_zone_name,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute file_system_id
    #   <p>The ID of the file system for which to create the mount target.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet to add the mount target in. For One Zone file systems, use the subnet
    #         that is associated with the file system's Availability Zone.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>If the IP address type for the mount target is IPv4, then specify the IPv4 address within
    #         the address range of the specified subnet.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>If the IP address type for the mount target is IPv6, then specify the IPv6 address within
    #         the address range of the specified subnet.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>Specify the type of IP address of the mount target you are creating. Options are IPv4,
    #         dual stack, or IPv6. If you don’t specify an IpAddressType, then IPv4 is used.</p>
    #            <ul>
    #               <li>
    #                  <p>IPV4_ONLY – Create mount target with IPv4 only subnet or dual-stack subnet.</p>
    #               </li>
    #               <li>
    #                  <p>DUAL_STACK – Create mount target with dual-stack subnet.</p>
    #               </li>
    #               <li>
    #                  <p>IPV6_ONLY – Create mount target with IPv6 only subnet.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Creating IPv6 mount target only ENI in dual-stack subnet is not supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute security_groups
    #   <p>VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be for the same
    #         VPC as the subnet specified. The maximum number of security groups depends on account quota.
    #         For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html">Amazon VPC Quotas</a>
    #         in the <i>Amazon VPC User Guide</i> (see the <b>Security Groups</b>
    #         table).
    #       </p>
    #   @return [Array<String>]
    class CreateMountTargetRequest < Struct.new(
      :file_system_id,
      :subnet_id,
      :ip_address,
      :ipv6_address,
      :ip_address_type,
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the replication configuration for a specific file system.</p>
    # @!attribute source_file_system_id
    #   <p>The ID of the source Amazon EFS file system that is being replicated.</p>
    #   @return [String]
    # @!attribute source_file_system_region
    #   <p>The Amazon Web Services Region in which the source EFS file system is
    #         located.</p>
    #   @return [String]
    # @!attribute source_file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the current source file system in the
    #         replication configuration.</p>
    #   @return [String]
    # @!attribute original_source_file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the original source EFS file
    #         system in the replication configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Describes when the replication configuration was created.</p>
    #   @return [Time]
    # @!attribute destinations
    #   <p>An array of destination objects. Only one destination object is supported.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute source_file_system_owner_id
    #   <p>ID of the Amazon Web Services account in which the source file system resides.</p>
    #   @return [String]
    class CreateReplicationConfigurationOutput < Struct.new(
      :source_file_system_id,
      :source_file_system_region,
      :source_file_system_arn,
      :original_source_file_system_arn,
      :creation_time,
      :destinations,
      :source_file_system_owner_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_file_system_id
    #   <p>Specifies the Amazon EFS file system that you want to replicate. This file system cannot already be 
    #       a source or destination file system in another replication configuration.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>An array of destination configuration objects. Only one destination configuration object is supported.</p>
    #   @return [Array<Types::DestinationToCreate>]
    class CreateReplicationConfigurationRequest < Struct.new(
      :source_file_system_id,
      :destinations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute file_system_id
    #   <p>The ID of the file system whose tags you want to modify (String). This operation modifies
    #         the tags only, not the file system.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    #         pair. </p>
    #   @return [Array<Types::Tag>]
    class CreateTagsRequest < Struct.new(
      :file_system_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Required if the <code>RootDirectory</code> > <code>Path</code> specified does not exist. 
    #       Specifies the POSIX IDs and permissions to apply to the access point's <code>RootDirectory</code> > <code>Path</code>. 
    #       If the access point root directory does not exist, EFS creates it with these settings when a client connects to the access point. 
    #       When specifying <code>CreationInfo</code>, you must include values for all properties. 
    #    </p>
    #          <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory. 
    #       If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount 
    #       using the access point will fail.</p>
    #          <important>
    #             <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> does not exist, 
    #       attempts to mount the file system using the access point will fail.</p>
    #          </important>
    # @!attribute owner_uid
    #   <p>Specifies the POSIX user ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>
    #   @return [Integer]
    # @!attribute owner_gid
    #   <p>Specifies the POSIX group ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>
    #   @return [Integer]
    # @!attribute permissions
    #   <p>Specifies the POSIX permissions to apply to the <code>RootDirectory</code>, in the format of an octal number representing the file's mode bits.</p>
    #   @return [String]
    class CreationInfo < Struct.new(
      :owner_uid,
      :owner_gid,
      :permissions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_point_id
    #   <p>The ID of the access point that you want to delete.</p>
    #   @return [String]
    class DeleteAccessPointRequest < Struct.new(
      :access_point_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Specifies the EFS file system for which to delete the
    #           <code>FileSystemPolicy</code>.</p>
    #   @return [String]
    class DeleteFileSystemPolicyRequest < Struct.new(
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute file_system_id
    #   <p>The ID of the file system you want to delete.</p>
    #   @return [String]
    class DeleteFileSystemRequest < Struct.new(
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute mount_target_id
    #   <p>The ID of the mount target to delete (String).</p>
    #   @return [String]
    class DeleteMountTargetRequest < Struct.new(
      :mount_target_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_file_system_id
    #   <p>The ID of the source file system in the replication configuration.</p>
    #   @return [String]
    # @!attribute deletion_mode
    #   <p>When replicating across Amazon Web Services accounts or across Amazon Web Services Regions, 
    #         Amazon EFS deletes the replication configuration from both the source 
    #         and destination account or Region (<code>ALL_CONFIGURATIONS</code>) by default. 
    #         If there's a configuration or permissions issue that prevents Amazon EFS from deleting the 
    #         replication configuration from both sides, you can use the <code>LOCAL_CONFIGURATION_ONLY</code> mode
    #         to delete the replication configuration from only the local side (the account
    #          or Region from which the delete is performed). </p>
    #            <note>
    #               <p>Only use the <code>LOCAL_CONFIGURATION_ONLY</code> mode in the case that Amazon EFS is unable
    #          to delete the replication configuration in both the source and destination account or Region. 
    #           Deleting the local configuration 
    #          leaves the configuration in the other account or Region unrecoverable.</p>
    #               <p>Additionally, do not use this mode for same-account, same-region replication as doing so results in a 
    #           BadRequest exception error.</p>
    #            </note>
    #   @return [String]
    class DeleteReplicationConfigurationRequest < Struct.new(
      :source_file_system_id,
      :deletion_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute file_system_id
    #   <p>The ID of the file system whose tags you want to delete (String).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to delete.</p>
    #   @return [Array<String>]
    class DeleteTagsRequest < Struct.new(
      :file_system_id,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service timed out trying to fulfill the request, and the client should try the
    #             call again.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class DependencyTimeout < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>(Optional) When retrieving all access points for a file system,
    #         you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.  
    #         The default value is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #               <code>NextToken</code> is present if the response is paginated. You can use 
    #         <code>NextMarker</code> in the subsequent request to fetch the next page of access point descriptions.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   <p>(Optional) Specifies an EFS access point to describe in the response; mutually
    #         exclusive with <code>FileSystemId</code>.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>(Optional) If you provide a <code>FileSystemId</code>, EFS returns all access
    #         points for that file system; mutually exclusive with <code>AccessPointId</code>.</p>
    #   @return [String]
    class DescribeAccessPointsRequest < Struct.new(
      :max_results,
      :next_token,
      :access_point_id,
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_points
    #   <p>An array of access point descriptions.</p>
    #   @return [Array<Types::AccessPointDescription>]
    # @!attribute next_token
    #   <p>Present if there are more access points than returned in the response. 
    #         You can use the NextMarker in the subsequent request to fetch the additional descriptions.</p>
    #   @return [String]
    class DescribeAccessPointsResponse < Struct.new(
      :access_points,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of 
    #         Amazon Web Services account preferences if the response payload was paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>(Optional) When retrieving account preferences,
    #         you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.  
    #         The default value is 100. </p>
    #   @return [Integer]
    class DescribeAccountPreferencesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id_preference
    #   <p>Describes the resource ID preference setting for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region.</p>
    #   @return [Types::ResourceIdPreference]
    # @!attribute next_token
    #   <p>Present if there are more records than returned in the response. 
    #         You can use the <code>NextToken</code> in the subsequent request to fetch the additional descriptions.</p>
    #   @return [String]
    class DescribeAccountPreferencesResponse < Struct.new(
      :resource_id_preference,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_policy
    #   <p>Describes the file system's backup policy, indicating whether automatic backups are
    #         turned on or off.</p>
    #   @return [Types::BackupPolicy]
    class DescribeBackupPolicyOutput < Struct.new(
      :backup_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Specifies which EFS file system for which to retrieve the
    #           <code>BackupPolicy</code>.</p>
    #   @return [String]
    class DescribeBackupPolicyRequest < Struct.new(
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Specifies the EFS file system to which the <code>FileSystemPolicy</code>
    #         applies.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file
    #         system.</p>
    #   @return [String]
    class DescribeFileSystemPolicyOutput < Struct.new(
      :file_system_id,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Specifies which EFS file system to retrieve the <code>FileSystemPolicy</code>
    #         for.</p>
    #   @return [String]
    class DescribeFileSystemPolicyRequest < Struct.new(
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute max_items
    #   <p>(Optional) Specifies the maximum number of file systems to return in the response
    #         (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
    #         </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>(Optional) Opaque pagination token returned from a previous
    #           <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the
    #         list from where the returning call had left off. </p>
    #   @return [String]
    # @!attribute creation_token
    #   <p>(Optional) Restricts the list to the file system with this creation token (String). You
    #         specify a creation token when you create an Amazon EFS file system.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>(Optional) ID of the file system whose description you want to retrieve
    #         (String).</p>
    #   @return [String]
    class DescribeFileSystemsRequest < Struct.new(
      :max_items,
      :marker,
      :creation_token,
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Present if provided by caller in the request (String).</p>
    #   @return [String]
    # @!attribute file_systems
    #   <p>An array of file system descriptions.</p>
    #   @return [Array<Types::FileSystemDescription>]
    # @!attribute next_marker
    #   <p>Present if there are more file systems than returned in the response (String). You can
    #         use the <code>NextMarker</code> in the subsequent request to fetch the descriptions.</p>
    #   @return [String]
    class DescribeFileSystemsResponse < Struct.new(
      :marker,
      :file_systems,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policies
    #   <p>An array of lifecycle management policies. EFS supports a maximum of one
    #         policy per file system.</p>
    #   @return [Array<Types::LifecyclePolicy>]
    class DescribeLifecycleConfigurationOutput < Struct.new(
      :lifecycle_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID of the file system whose <code>LifecycleConfiguration</code> object you want to
    #         retrieve (String).</p>
    #   @return [String]
    class DescribeLifecycleConfigurationRequest < Struct.new(
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute mount_target_id
    #   <p>The ID of the mount target whose security groups you want to retrieve.</p>
    #   @return [String]
    class DescribeMountTargetSecurityGroupsRequest < Struct.new(
      :mount_target_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_groups
    #   <p>An array of security groups.</p>
    #   @return [Array<String>]
    class DescribeMountTargetSecurityGroupsResponse < Struct.new(
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute max_items
    #   <p>(Optional) Maximum number of mount targets to return in the response. Currently, this
    #         number is automatically set to
    #         10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>(Optional) Opaque pagination token returned from a previous
    #           <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue
    #         the list from where the previous returning call left off.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>(Optional) ID of the file system whose mount targets you want to list (String). It must
    #         be included in your request if an <code>AccessPointId</code> or <code>MountTargetId</code> is not included. Accepts either a file system ID or ARN as input.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>(Optional) ID of the mount target that you want to have described (String). It must be
    #         included in your request if <code>FileSystemId</code> is not included. Accepts either a mount target ID or ARN as input.</p>
    #   @return [String]
    # @!attribute access_point_id
    #   <p>(Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a
    #         <code>FileSystemId</code> or <code>MountTargetId</code> is not included in your request. Accepts either an access point ID or ARN as input.</p>
    #   @return [String]
    class DescribeMountTargetsRequest < Struct.new(
      :max_items,
      :marker,
      :file_system_id,
      :mount_target_id,
      :access_point_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p>If the request included the <code>Marker</code>, the response returns that value in
    #         this field.</p>
    #   @return [String]
    # @!attribute mount_targets
    #   <p>Returns the file system's mount targets as an array of
    #           <code>MountTargetDescription</code> objects.</p>
    #   @return [Array<Types::MountTargetDescription>]
    # @!attribute next_marker
    #   <p>If a value is present, there are more mount targets to return. In a subsequent request,
    #         you can provide <code>Marker</code> in your request with this value to retrieve the next set
    #         of mount targets.</p>
    #   @return [String]
    class DescribeMountTargetsResponse < Struct.new(
      :marker,
      :mount_targets,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>You can retrieve the replication configuration for a specific file system by providing its
    #         file system ID. For cross-account,cross-region replication, an account can only describe the replication
    #         configuration for a file system in its own Region.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #               <code>NextToken</code> is present if the response is paginated. You can use
    #           <code>NextToken</code> in a subsequent request to fetch the next page of
    #         output.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>(Optional) To limit the number of objects returned in a response, you can specify the
    #           <code>MaxItems</code> parameter. The default value is 100. </p>
    #   @return [Integer]
    class DescribeReplicationConfigurationsRequest < Struct.new(
      :file_system_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replications
    #   <p>The collection of replication configurations that is returned.</p>
    #   @return [Array<Types::ReplicationConfigurationDescription>]
    # @!attribute next_token
    #   <p>You can use the <code>NextToken</code> from the previous response in a subsequent 
    #         request to fetch the additional descriptions.</p>
    #   @return [String]
    class DescribeReplicationConfigurationsResponse < Struct.new(
      :replications,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute max_items
    #   <p>(Optional) The maximum number of file system tags to return in the response. Currently,
    #         this number is automatically set to
    #         100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>(Optional) An opaque pagination token returned from a previous
    #           <code>DescribeTags</code> operation (String). If present, it specifies to continue the list
    #         from where the previous call left off.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system whose tag set you want to retrieve.</p>
    #   @return [String]
    class DescribeTagsRequest < Struct.new(
      :max_items,
      :marker,
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p>If the request included a <code>Marker</code>, the response returns that value in this
    #         field.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Returns tags associated with the file system as an array of <code>Tag</code> objects.
    #       </p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_marker
    #   <p>If a value is present, there are more tags to return. In a subsequent request, you can
    #         provide the value of <code>NextMarker</code> as the value of the <code>Marker</code> parameter
    #         in your next request to retrieve the next set of tags.</p>
    #   @return [String]
    class DescribeTagsResponse < Struct.new(
      :marker,
      :tags,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination file system in the replication configuration.</p>
    # @!attribute status
    #   <p>Describes the status of the replication configuration. For more information 
    #       about replication status, see <a href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#restoring-backup-efsmonitoring-replication-status.html">Viewing
    #         replication details</a> in the <i>Amazon EFS User Guide</i>. 
    #       </p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the destination Amazon EFS file system.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region in which the destination file system is located.</p>
    #   @return [String]
    # @!attribute last_replicated_timestamp
    #   <p>The time when the most recent sync was successfully completed on the destination file
    #         system. Any changes to data on the source file system that occurred before this time have been
    #         successfully replicated to the destination file system. Any changes that occurred after this
    #         time might not be fully replicated.</p>
    #   @return [Time]
    # @!attribute owner_id
    #   <p>ID of the Amazon Web Services account in which the destination file system resides.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Message that provides details about the <code>PAUSED</code> or <code>ERRROR</code> state 
    #         of the replication destination configuration. For more information 
    #         about replication status messages, see <a href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#restoring-backup-efsmonitoring-replication-status.html">Viewing
    #           replication details</a> in the <i>Amazon EFS User Guide</i>. 
    #       </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Amazon Resource Name (ARN) of the IAM role in the source account that allows
    #           Amazon EFS to perform replication on its behalf. This is optional for same-account
    #         replication and required for cross-account replication.</p>
    #   @return [String]
    class Destination < Struct.new(
      :status,
      :file_system_id,
      :region,
      :last_replicated_timestamp,
      :owner_id,
      :status_message,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the new or existing destination file system for the replication
    #       configuration.</p>
    #          <ul>
    #             <li>
    #                <p>If you want to replicate to a new file system, do not specify the File System ID
    #           for the destination file system. Amazon EFS creates a new, empty file system.
    #           For One Zone storage, specify the Availability Zone to create the file system in. To
    #           use an Key Management Service key other than the default KMS key, then
    #           specify it. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/create-replication.html">Configuring replication to new Amazon EFS file system</a> in the <i>Amazon EFS User
    #                 Guide</i>.</p>
    #                <note>
    #                   <p>After the file system is created, you cannot change the KMS key or the performance mode.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>If you want to replicate to an existing file system that's in the same account
    #           as the source file system, then you need to 
    #           provide the ID or Amazon Resource Name (ARN) of the file system to which to replicate. The file system's replication
    #           overwrite protection must be disabled. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-replication#replicate-existing-destination">Replicating to
    #             an existing file system</a> in the <i>Amazon EFS User
    #               Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>If you are replicating the file system to a file system that's in a different account than the
    #         source file system (cross-account replication), you need to provide the ARN for the file system and the IAM role that allows Amazon EFS to perform
    #           replication on the destination account. The file system's replication overwrite protection
    #           must be disabled. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/cross-account-replication.html">Replicating across Amazon Web Services accounts</a> in the <i>Amazon EFS User
    #           Guide</i>.</p>
    #             </li>
    #          </ul>
    # @!attribute region
    #   <p>To create a file system that uses Regional storage, specify the Amazon Web Services Region in which to create the destination file system. The Region must be enabled
    #         for the Amazon Web Services account that owns the source file system. For more information, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable">Managing Amazon Web Services Regions</a> in the <i>Amazon Web Services General
    #           Reference Reference Guide</i>.</p>
    #   @return [String]
    # @!attribute availability_zone_name
    #   <p>To create a file system that uses One Zone storage, specify the name of the
    #         Availability Zone in which to create the destination file system.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>Specify the Key Management Service (KMS) key that you want to use to
    #         encrypt the destination file system. If you do not specify a KMS key, Amazon EFS uses your default KMS key for Amazon EFS,
    #           <code>/aws/elasticfilesystem</code>. This ID can be in one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID - The unique identifier of the key, for example
    #               <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>ARN - The ARN for the key, for example
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias - A previously created display name for a key, for example
    #             <code>alias/projectKey1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias ARN - The ARN for a key alias, for example
    #               <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID or ARN of the file system to use for the destination. 
    #         For cross-account replication, this must be an  ARN. The file system's 
    #         replication overwrite replication must be disabled. If no ID or ARN is 
    #         specified, then a new file system is created. </p>
    #            <note>
    #               <p>When you initially configure replication to an existing file system, Amazon EFS
    #           writes data to or removes existing data from the destination file system to match data in
    #           the source file system. If you don't want to change data in the destination file system,
    #           then you should replicate to a new file system instead. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/create-replication.html">https://docs.aws.amazon.com/efs/latest/ug/create-replication.html</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Amazon Resource Name (ARN) of the IAM role in the source account that allows
    #           Amazon EFS to perform replication on its behalf. This is optional for same-account
    #         replication and required for cross-account replication.</p>
    #   @return [String]
    class DestinationToCreate < Struct.new(
      :region,
      :availability_zone_name,
      :kms_key_id,
      :file_system_id,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the file system you are trying to create already exists, with the
    #             creation token you provided.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   @return [String]
    class FileSystemAlreadyExists < Struct.new(
      :error_code,
      :message,
      :file_system_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the file system.</p>
    # @!attribute owner_id
    #   <p>The Amazon Web Services account that created the file system.</p>
    #   @return [String]
    # @!attribute creation_token
    #   <p>The opaque string specified in the request.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system, assigned by Amazon EFS.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) for the EFS file system, in the
    #         format
    #             <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>
    #               </code>.
    #         Example with sample data:
    #           <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>
    #            </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the file system was created, in seconds (since
    #         1970-01-01T00:00:00Z).</p>
    #   @return [Time]
    # @!attribute life_cycle_state
    #   <p>The lifecycle phase of the file system.</p>
    #   @return [String]
    # @!attribute name
    #   <p>You can add tags to a file system, including a <code>Name</code> tag. For more
    #         information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns
    #         the value in this field. </p>
    #   @return [String]
    # @!attribute number_of_mount_targets
    #   <p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>
    #   @return [Integer]
    # @!attribute size_in_bytes
    #   <p>The latest known metered size (in bytes) of data stored in the file system, in its
    #           <code>Value</code> field, and the time at which that size was determined in its
    #           <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of
    #         seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent
    #         the size of a consistent snapshot of the file system, but it is eventually consistent when
    #         there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual
    #         size only if the file system is not modified for a period longer than a couple of hours.
    #         Otherwise, the value is not the exact size that the file system was at any point in time.
    #       </p>
    #   @return [Types::FileSystemSize]
    # @!attribute performance_mode
    #   <p>The performance mode of the file system.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>A Boolean value that, if true, indicates that the file system is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of an KMS key used to protect the encrypted file system.</p>
    #   @return [String]
    # @!attribute throughput_mode
    #   <p>Displays the file system's throughput mode. For more information, see 
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes">Throughput modes</a> 
    #         in the <i>Amazon EFS User Guide</i>.
    #       </p>
    #   @return [String]
    # @!attribute provisioned_throughput_in_mibps
    #   <p>The amount of provisioned throughput, measured in MiBps, for the file system. Valid for
    #         file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>
    #   @return [Float]
    # @!attribute availability_zone_name
    #   <p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is
    #         valid only for One Zone file systems. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html">Using EFS storage
    #           classes</a> in the <i>Amazon EFS User Guide</i>.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The unique and consistent identifier of the Availability Zone in which the file system is
    #         located, and is valid only for One Zone file systems. For example,
    #           <code>use1-az1</code> is an Availability Zone ID for the us-east-1 Amazon Web Services Region, and
    #         it has the same location in every Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the file system, presented as an array of <code>Tag</code>
    #         objects.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system_protection
    #   <p>Describes the protection on the file system. </p>
    #   @return [Types::FileSystemProtectionDescription]
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
      :availability_zone_name,
      :availability_zone_id,
      :tags,
      :file_system_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_mount_targets] = 0 unless options.key?(:number_of_mount_targets)
        super
      end
    end

    # <p>Returned if a file system has mount targets.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class FileSystemInUse < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the Amazon Web Services account has already created the maximum number of file systems
    #             allowed per account.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class FileSystemLimitExceeded < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the specified <code>FileSystemId</code> value doesn't exist in the
    #             requester's Amazon Web Services account.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class FileSystemNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the protection on a file system. </p>
    # @!attribute replication_overwrite_protection
    #   <p>The status of the file system's replication overwrite protection.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The file system cannot be used as the destination file
    #             system in a replication configuration. The file system is writeable. Replication overwrite
    #             protection is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The file system can be used as the destination file
    #             system in a replication configuration. The file system is read-only and can only be
    #             modified by EFS replication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLICATING</code> – The file system is being used as the destination
    #             file system in a replication configuration. The file system is read-only and is modified
    #             only by EFS replication.</p>
    #               </li>
    #            </ul>
    #            <p>If the replication configuration is deleted, the file system's replication overwrite
    #         protection is re-enabled, the file system becomes writeable.</p>
    #   @return [String]
    class FileSystemProtectionDescription < Struct.new(
      :replication_overwrite_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The latest known metered size (in bytes) of data stored in the file system, in its
    #         <code>Value</code> field, and the time at which that size was determined in its
    #         <code>Timestamp</code> field. The value doesn't represent the size of a consistent
    #       snapshot of the file system, but it is eventually consistent when there are no writes to the
    #       file system. That is, the value represents the actual size only if the file system is not
    #       modified for a period longer than a couple of hours. Otherwise, the value is not necessarily
    #       the exact size the file system was at any instant in time.</p>
    # @!attribute value
    #   <p>The latest known metered size (in bytes) of data stored in the file system.</p>
    #   @return [Integer]
    # @!attribute timestamp
    #   <p>The time at which the size of data, returned in the <code>Value</code> field, was
    #         determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.</p>
    #   @return [Time]
    # @!attribute value_in_ia
    #   <p>The latest known metered size (in bytes) of data stored in the Infrequent Access storage
    #         class.</p>
    #   @return [Integer]
    # @!attribute value_in_standard
    #   <p>The latest known metered size (in bytes) of data stored in the Standard
    #         storage class.</p>
    #   @return [Integer]
    # @!attribute value_in_archive
    #   <p>The latest known metered size (in bytes) of data stored in the Archive
    #         storage class.</p>
    #   @return [Integer]
    class FileSystemSize < Struct.new(
      :value,
      :timestamp,
      :value_in_ia,
      :value_in_standard,
      :value_in_archive,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Returned if the file system's lifecycle state is not "available".</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class IncorrectFileSystemLifeCycleState < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the mount target is not in the correct state for the
    #             operation.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class IncorrectMountTargetState < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if there's not enough capacity to provision additional throughput. This value
    #             might be returned when you try to create a file system in provisioned throughput mode,
    #             when you attempt to increase the provisioned throughput of an existing file system, or
    #             when you attempt to change an existing file system from Bursting Throughput to
    #             Provisioned Throughput mode. Try again later.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class InsufficientThroughputCapacity < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if an error occurred on the server side.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the <code>FileSystemPolicy</code> is malformed or contains an error such
    #             as a parameter value that is not valid or a missing required parameter. Returned in the
    #             case of a policy lockout safety check error.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class InvalidPolicyException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the request specified an <code>IpAddress</code> that is already in use
    #             in the subnet.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class IpAddressInUse < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a policy used by lifecycle management that specifies when to transition files
    #       into and out of storage classes. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html">Managing file system
    #       storage</a>.</p>
    #          <note>
    #             <p>When using the <code>put-lifecycle-configuration</code> CLI command or the
    #           <code>PutLifecycleConfiguration</code> API action, Amazon EFS requires that each
    #           <code>LifecyclePolicy</code> object have only a single transition. This means that in a
    #         request body, <code>LifecyclePolicies</code> must be structured as an array of
    #           <code>LifecyclePolicy</code> objects, one object for each transition. For more
    #         information, see the request examples in <a>PutLifecycleConfiguration</a>.</p>
    #          </note>
    # @!attribute transition_to_ia
    #   <p>The number of days after files were last accessed in primary storage (the
    #         Standard storage class) at which to move them to Infrequent Access
    #         (IA) storage. Metadata operations such as listing the contents of a directory
    #         don't count as file access events.</p>
    #   @return [String]
    # @!attribute transition_to_primary_storage_class
    #   <p>Whether to move files back to primary (Standard) storage after they are
    #         accessed in IA or Archive storage. Metadata operations such as
    #         listing the contents of a directory don't count as file access events.</p>
    #   @return [String]
    # @!attribute transition_to_archive
    #   <p>The number of days after files were last accessed in primary storage (the
    #         Standard storage class) at which to move them to Archive
    #         storage. Metadata operations such as listing the contents of a directory don't count as
    #         file access events.</p>
    #   @return [String]
    class LifecyclePolicy < Struct.new(
      :transition_to_ia,
      :transition_to_primary_storage_class,
      :transition_to_archive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Specifies the EFS resource you want to retrieve tags for. You can retrieve tags
    #         for EFS file systems and access points using this API endpoint.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>(Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of the tags for the specified EFS resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>
    #               <code>NextToken</code> is present if the response payload is paginated. You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute mount_target_id
    #   <p>The ID of the mount target whose security groups you want to modify.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>An array of VPC security group IDs. </p>
    #   @return [Array<String>]
    class ModifyMountTargetSecurityGroupsRequest < Struct.new(
      :mount_target_id,
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the mount target would violate one of the specified restrictions based
    #             on the file system's existing mount targets.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class MountTargetConflict < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a description of a mount target.</p>
    # @!attribute owner_id
    #   <p>Amazon Web Services account ID that owns the resource.</p>
    #   @return [String]
    # @!attribute mount_target_id
    #   <p>System-assigned mount target ID.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system for which the mount target is intended.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the mount target's subnet.</p>
    #   @return [String]
    # @!attribute life_cycle_state
    #   <p>Lifecycle state of the mount target.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>Address at which the file system can be mounted by using the mount target.</p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The IPv6 address for the mount target.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface that Amazon EFS created when it created the mount
    #         target.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The unique and consistent identifier of the Availability Zone that the mount target resides in.
    #         For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it
    #         has the same location in every Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute availability_zone_name
    #   <p>The name of the Availability Zone in which the mount target is located. Availability Zones are
    #         independently mapped to names for each Amazon Web Services account. For example, the
    #         Availability Zone <code>us-east-1a</code> for your Amazon Web Services account might not be the
    #         same location as <code>us-east-1a</code> for another Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The virtual private cloud (VPC) ID that the mount target is configured in.</p>
    #   @return [String]
    class MountTargetDescription < Struct.new(
      :owner_id,
      :mount_target_id,
      :file_system_id,
      :subnet_id,
      :life_cycle_state,
      :ip_address,
      :ipv6_address,
      :network_interface_id,
      :availability_zone_id,
      :availability_zone_name,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if there is no mount target with the specified ID found in the
    #             caller's Amazon Web Services account.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class MountTargetNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The calling account has reached the limit for elastic network interfaces for the
    #             specific Amazon Web Services Region. Either delete some network interfaces or request
    #             that the account quota be raised. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html">Amazon VPC Quotas</a>
    #             in the <i>Amazon VPC User Guide</i> (see the <b>Network
    #                 interfaces per Region</b> entry in the <b>Network
    #                 interfaces</b> table). </p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class NetworkInterfaceLimitExceeded < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if <code>IpAddress</code> was not specified in the request and there are
    #             no free IP addresses in the subnet.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class NoFreeAddressesInSubnet < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if <code>no backup</code> is specified for a One Zone EFS file system.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class PolicyNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The full POSIX identity, including the user ID, group ID, and any secondary group IDs, on the access point that is used for all file system operations performed by
    #       NFS clients using the access point.</p>
    # @!attribute uid
    #   <p>The POSIX user ID used for all file system operations using this access point.</p>
    #   @return [Integer]
    # @!attribute gid
    #   <p>The POSIX group ID used for all file system operations using this access point.</p>
    #   @return [Integer]
    # @!attribute secondary_gids
    #   <p>Secondary POSIX group IDs used for all file system operations using this access point.</p>
    #   @return [Array<Integer>]
    class PosixUser < Struct.new(
      :uid,
      :gid,
      :secondary_gids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id_type
    #   <p>Specifies the EFS resource ID preference to set for the user's Amazon Web Services account, in the current Amazon Web Services Region, either <code>LONG_ID</code>
    #         (17 characters), or <code>SHORT_ID</code> (8 characters).</p>
    #            <note>
    #               <p>Starting in October, 2021, you will receive an error when setting the account preference to
    #             <code>SHORT_ID</code>. Contact Amazon Web Services support if you receive an error and must
    #           use short IDs for file system and mount target resources.</p>
    #            </note>
    #   @return [String]
    class PutAccountPreferencesRequest < Struct.new(
      :resource_id_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id_preference
    #   <p>Describes the resource type and its ID preference for the user's Amazon Web Services account, in the current Amazon Web Services Region.</p>
    #   @return [Types::ResourceIdPreference]
    class PutAccountPreferencesResponse < Struct.new(
      :resource_id_preference,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_policy
    #   <p>Describes the file system's backup policy, indicating whether automatic backups are
    #         turned on or off.</p>
    #   @return [Types::BackupPolicy]
    class PutBackupPolicyOutput < Struct.new(
      :backup_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Specifies which EFS file system to update the backup policy for.</p>
    #   @return [String]
    # @!attribute backup_policy
    #   <p>The backup policy included in the <code>PutBackupPolicy</code> request.</p>
    #   @return [Types::BackupPolicy]
    class PutBackupPolicyRequest < Struct.new(
      :file_system_id,
      :backup_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>Specifies the EFS file system to which the <code>FileSystemPolicy</code>
    #         applies.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file
    #         system.</p>
    #   @return [String]
    class PutFileSystemPolicyOutput < Struct.new(
      :file_system_id,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID of the EFS file system that you want to create or update the
    #           <code>FileSystemPolicy</code> for.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The <code>FileSystemPolicy</code> that you're creating. Accepts a JSON formatted
    #         policy definition. EFS file system policies have a 20,000 character limit. To find
    #         out more about the elements that make up a file system policy, see <a href="https://docs.aws.amazon.com/efs/latest/ug/security_iam_service-with-iam.html#security_iam_service-with-iam-resource-based-policies">Resource-based policies within Amazon EFS</a>. </p>
    #   @return [String]
    # @!attribute bypass_policy_lockout_safety_check
    #   <p>(Optional) A boolean that specifies whether or not to bypass the <code>FileSystemPolicy</code> lockout safety check. The lockout safety check 
    #         determines whether the policy in the request will lock out, or prevent, the IAM principal that is making the request from making future <code>PutFileSystemPolicy</code> requests on this file system.
    #         Set <code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only when you intend to prevent 
    #         the IAM principal that is making the request from making subsequent <code>PutFileSystemPolicy</code> requests on this file system. 
    #         The default value is <code>False</code>.
    #       </p>
    #   @return [Boolean]
    class PutFileSystemPolicyRequest < Struct.new(
      :file_system_id,
      :policy,
      :bypass_policy_lockout_safety_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policies
    #   <p>An array of lifecycle management policies. EFS supports a maximum of one
    #         policy per file system.</p>
    #   @return [Array<Types::LifecyclePolicy>]
    class PutLifecycleConfigurationOutput < Struct.new(
      :lifecycle_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID of the file system for which you are creating the
    #           <code>LifecycleConfiguration</code> object (String).</p>
    #   @return [String]
    # @!attribute lifecycle_policies
    #   <p>An array of <code>LifecyclePolicy</code> objects that define the file system's
    #           <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object
    #         informs lifecycle management of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TransitionToIA</code>
    #                     </b> – 
    #         When to move files in the file system from primary storage (Standard storage class) into the Infrequent Access 
    #           (IA) storage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TransitionToArchive</code>
    #                     </b> –
    #             When to move files in the file system from their current storage class (either IA or Standard storage) into the 
    #            Archive storage.</p>
    #                  <p>File systems cannot transition into Archive storage before transitioning into IA  storage. Therefore,  
    #           TransitionToArchive must either not be set or must be later than TransitionToIA.</p>
    #                  <note>
    #                     <p>The Archive storage class is available only for file systems that use the Elastic throughput mode 
    #   and the General Purpose performance mode. </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TransitionToPrimaryStorageClass</code>
    #                     </b> – Whether to move files in the file system back to primary storage (Standard storage class) after they are accessed in IA
    #           or Archive storage.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>When using the <code>put-lifecycle-configuration</code> CLI command or the
    #             <code>PutLifecycleConfiguration</code> API action, Amazon EFS requires that each
    #             <code>LifecyclePolicy</code> object have only a single transition. This means that in a
    #           request body, <code>LifecyclePolicies</code> must be structured as an array of
    #             <code>LifecyclePolicy</code> objects, one object for each storage transition. See the example
    #           requests in the following section for more information.</p>
    #            </note>
    #   @return [Array<Types::LifecyclePolicy>]
    class PutLifecycleConfigurationRequest < Struct.new(
      :file_system_id,
      :lifecycle_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the file system is already included in a replication configuration.></p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class ReplicationAlreadyExists < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the replication configuration for a specific file system.</p>
    # @!attribute source_file_system_id
    #   <p>The ID of the source Amazon EFS file system that is being replicated.</p>
    #   @return [String]
    # @!attribute source_file_system_region
    #   <p>The Amazon Web Services Region in which the source EFS file system is
    #         located.</p>
    #   @return [String]
    # @!attribute source_file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the current source file system in the
    #         replication configuration.</p>
    #   @return [String]
    # @!attribute original_source_file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the original source EFS file
    #         system in the replication configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Describes when the replication configuration was created.</p>
    #   @return [Time]
    # @!attribute destinations
    #   <p>An array of destination objects. Only one destination object is supported.</p>
    #   @return [Array<Types::Destination>]
    # @!attribute source_file_system_owner_id
    #   <p>ID of the Amazon Web Services account in which the source file system resides.</p>
    #   @return [String]
    class ReplicationConfigurationDescription < Struct.new(
      :source_file_system_id,
      :source_file_system_region,
      :source_file_system_arn,
      :original_source_file_system_arn,
      :creation_time,
      :destinations,
      :source_file_system_owner_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the specified file system does not have a replication
    #             configuration.</p>
    # @!attribute error_code
    #   <p>ReplicationNotFound</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class ReplicationNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the resource type and its ID preference for the user's Amazon Web Services account, in the current Amazon Web Services Region.</p>
    # @!attribute resource_id_type
    #   <p>Identifies the EFS resource ID preference, either <code>LONG_ID</code> (17
    #         characters) or <code>SHORT_ID</code> (8 characters).</p>
    #   @return [String]
    # @!attribute resources
    #   <p>Identifies the Amazon EFS resources to which the ID preference setting applies, <code>FILE_SYSTEM</code> and <code>MOUNT_TARGET</code>.</p>
    #   @return [Array<String>]
    class ResourceIdPreference < Struct.new(
      :resource_id_type,
      :resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the directory on the Amazon EFS file system that the access point
    #       provides access to. The access point exposes the specified file system path as the root
    #       directory of your file system to applications using the access point. NFS clients using the
    #       access point can only access data in the access point's <code>RootDirectory</code> and its
    #       subdirectories.</p>
    # @!attribute path
    #   <p>Specifies the path on the EFS file system to expose as the root directory to
    #         NFS clients using the access point to access the EFS file system. A path can have
    #         up to four subdirectories. If the specified path does not exist, you are required to provide
    #         the <code>CreationInfo</code>.</p>
    #   @return [String]
    # @!attribute creation_info
    #   <p>(Optional) Specifies the POSIX IDs and permissions to apply to the access point's
    #           <code>RootDirectory</code>. If the <code>RootDirectory</code> > <code>Path</code>
    #         specified does not exist, EFS creates the root directory using the
    #           <code>CreationInfo</code> settings when a client connects to an access point. When
    #         specifying the <code>CreationInfo</code>, you must provide values for all properties. </p>
    #            <important>
    #               <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> > <code>Path</code> does not exist, 
    #         attempts to mount the file system using the access point will fail.</p>
    #            </important>
    #   @return [Types::CreationInfo]
    class RootDirectory < Struct.new(
      :path,
      :creation_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the number of <code>SecurityGroups</code> specified in the request is
    #             greater than the limit, which is based on account quota.  Either delete some security groups
    #             or request that the account quota be raised. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html">Amazon VPC Quotas</a>
    #             in the <i>Amazon VPC User Guide</i> (see the <b>Security Groups</b>
    #             table).
    #         </p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class SecurityGroupLimitExceeded < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if one of the specified security groups doesn't exist in the subnet's
    #             virtual private cloud (VPC).</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class SecurityGroupNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the
    #             request.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class SubnetNotFound < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag is a key-value pair. Allowed characters are letters, white space, and numbers that
    #       can be represented in UTF-8, and the following characters:<code> + - = . _ : /</code>.</p>
    # @!attribute key
    #   <p>The tag key (String). The key can't start with <code>aws:</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID specifying the EFS resource that you want to create a tag for.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    #         pair.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned when the <code>CreateAccessPoint</code> API action is called too quickly and 
    #             the number of Access Points on the file system is nearing the 
    #             <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#limits-efs-resources-per-account-per-region">limit of 120</a>.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the throughput mode or amount of provisioned throughput can't be changed
    #             because the throughput limit of 1024 MiB/s has been reached.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class ThroughputLimitExceeded < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if you don’t wait at least 24 hours before either changing the throughput mode, or
    #             decreasing the Provisioned Throughput value.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class TooManyRequests < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the requested Amazon EFS functionality is not available in the specified Availability Zone.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class UnsupportedAvailabilityZone < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Specifies the EFS resource that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the key-value tag pairs that you want to remove from the specified
    #         EFS resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_id,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of the file system.</p>
    # @!attribute owner_id
    #   <p>The Amazon Web Services account that created the file system.</p>
    #   @return [String]
    # @!attribute creation_token
    #   <p>The opaque string specified in the request.</p>
    #   @return [String]
    # @!attribute file_system_id
    #   <p>The ID of the file system, assigned by Amazon EFS.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) for the EFS file system, in the
    #         format
    #             <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>
    #               </code>.
    #         Example with sample data:
    #           <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>
    #            </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time that the file system was created, in seconds (since
    #         1970-01-01T00:00:00Z).</p>
    #   @return [Time]
    # @!attribute life_cycle_state
    #   <p>The lifecycle phase of the file system.</p>
    #   @return [String]
    # @!attribute name
    #   <p>You can add tags to a file system, including a <code>Name</code> tag. For more
    #         information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns
    #         the value in this field. </p>
    #   @return [String]
    # @!attribute number_of_mount_targets
    #   <p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>
    #   @return [Integer]
    # @!attribute size_in_bytes
    #   <p>The latest known metered size (in bytes) of data stored in the file system, in its
    #           <code>Value</code> field, and the time at which that size was determined in its
    #           <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of
    #         seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent
    #         the size of a consistent snapshot of the file system, but it is eventually consistent when
    #         there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual
    #         size only if the file system is not modified for a period longer than a couple of hours.
    #         Otherwise, the value is not the exact size that the file system was at any point in time.
    #       </p>
    #   @return [Types::FileSystemSize]
    # @!attribute performance_mode
    #   <p>The performance mode of the file system.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>A Boolean value that, if true, indicates that the file system is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of an KMS key used to protect the encrypted file system.</p>
    #   @return [String]
    # @!attribute throughput_mode
    #   <p>Displays the file system's throughput mode. For more information, see 
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes">Throughput modes</a> 
    #         in the <i>Amazon EFS User Guide</i>.
    #       </p>
    #   @return [String]
    # @!attribute provisioned_throughput_in_mibps
    #   <p>The amount of provisioned throughput, measured in MiBps, for the file system. Valid for
    #         file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>
    #   @return [Float]
    # @!attribute availability_zone_name
    #   <p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is
    #         valid only for One Zone file systems. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html">Using EFS storage
    #           classes</a> in the <i>Amazon EFS User Guide</i>.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The unique and consistent identifier of the Availability Zone in which the file system is
    #         located, and is valid only for One Zone file systems. For example,
    #           <code>use1-az1</code> is an Availability Zone ID for the us-east-1 Amazon Web Services Region, and
    #         it has the same location in every Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the file system, presented as an array of <code>Tag</code>
    #         objects.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute file_system_protection
    #   <p>Describes the protection on the file system. </p>
    #   @return [Types::FileSystemProtectionDescription]
    class UpdateFileSystemOutput < Struct.new(
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
      :availability_zone_name,
      :availability_zone_id,
      :tags,
      :file_system_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_mount_targets] = 0 unless options.key?(:number_of_mount_targets)
        super
      end
    end

    # <p>Describes the protection on a file system. </p>
    # @!attribute replication_overwrite_protection
    #   <p>The status of the file system's replication overwrite protection.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The file system cannot be used as the destination file
    #             system in a replication configuration. The file system is writeable. Replication overwrite
    #             protection is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The file system can be used as the destination file
    #             system in a replication configuration. The file system is read-only and can only be
    #             modified by EFS replication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLICATING</code> – The file system is being used as the destination
    #             file system in a replication configuration. The file system is read-only and is modified
    #             only by EFS replication.</p>
    #               </li>
    #            </ul>
    #            <p>If the replication configuration is deleted, the file system's replication overwrite
    #         protection is re-enabled, the file system becomes writeable.</p>
    #   @return [String]
    class UpdateFileSystemProtectionOutput < Struct.new(
      :replication_overwrite_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID of the file system to update. </p>
    #   @return [String]
    # @!attribute replication_overwrite_protection
    #   <p>The status of the file system's replication overwrite protection.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The file system cannot be used as the destination file
    #             system in a replication configuration. The file system is writeable. Replication overwrite
    #             protection is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The file system can be used as the destination file
    #             system in a replication configuration. The file system is read-only and can only be
    #             modified by EFS replication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REPLICATING</code> – The file system is being used as the destination file
    #             system in a replication configuration. The file system is read-only and is only modified
    #             only by EFS replication.</p>
    #               </li>
    #            </ul>
    #            <p>If the replication configuration is deleted, the file system's replication overwrite
    #         protection is re-enabled and the file system becomes writeable.</p>
    #   @return [String]
    class UpdateFileSystemProtectionRequest < Struct.new(
      :file_system_id,
      :replication_overwrite_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute file_system_id
    #   <p>The ID of the file system that you want to update.</p>
    #   @return [String]
    # @!attribute throughput_mode
    #   <p>(Optional) Updates the file system's throughput mode. If you're not
    #         updating your throughput mode, you don't need to provide this value in your
    #         request. If you are changing the <code>ThroughputMode</code> to <code>provisioned</code>, 
    #         you must also set a value for <code>ProvisionedThroughputInMibps</code>.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_in_mibps
    #   <p>(Optional) The throughput, measured in mebibytes per second (MiBps), that you want to
    #         provision for a file system that you're creating. Required if <code>ThroughputMode</code>
    #         is set to <code>provisioned</code>. Valid values are 1-3414 MiBps, with the upper limit
    #         depending on Region. To increase this limit, contact Amazon Web ServicesSupport. For more information,
    #         see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS
    #           quotas that you can increase</a> in the <i>Amazon EFS User
    #           Guide</i>.</p>
    #   @return [Float]
    class UpdateFileSystemRequest < Struct.new(
      :file_system_id,
      :throughput_mode,
      :provisioned_throughput_in_mibps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returned if the Backup service is not available in the Amazon Web Services Region in which the request was made.</p>
    # @!attribute error_code
    #   <p>The error code is a string that uniquely identifies an error condition. 
    #           It is meant to be read and understood by programs that detect and handle errors by type. </p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error 
    #           condition in English. It is intended for a human audience. Simple programs display the message directly 
    #           to the end user if they encounter an error condition they don't know how or don't care to handle. 
    #           Sophisticated programs with more exhaustive error handling and proper internationalization are 
    #           more likely to ignore the error message.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
