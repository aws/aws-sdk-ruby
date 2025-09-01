# frozen_string_literal: true

# This is generated code!

module Aws::DocDB
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents the input to <a>AddSourceIdentifierToSubscription</a>.
    #         </p>
    # @!attribute subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you
    #               want to add a source identifier to.</p>
    #   @return [String]
    # @!attribute source_identifier
    #   <p>The identifier of the event source to be added:</p>
    #            <ul>
    #               <li>
    #                  <p>If the source type is an instance, a
    #                       <code>DBInstanceIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a security group, a
    #                       <code>DBSecurityGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a parameter group, a
    #                       <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a snapshot, a
    #                       <code>DBSnapshotIdentifier</code> must be provided.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AddSourceIdentifierToSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_subscription
    #   <p>Detailed information about an event to which you have subscribed.</p>
    #   @return [Types::EventSubscription]
    class AddSourceIdentifierToSubscriptionResult < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>AddTagsToResource</a>.
    #         </p>
    # @!attribute resource_name
    #   <p>The Amazon DocumentDB resource that the tags are added to. This value is an
    #               Amazon Resource Name .</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon DocumentDB resource.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ApplyMethod
      immediate = 'immediate'
      pending_reboot = 'pending-reboot'
    end

    # <p>Represents the input to <a>ApplyPendingMaintenanceAction</a>.
    #         </p>
    # @!attribute resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that the pending
    #               maintenance action applies to.</p>
    #   @return [String]
    # @!attribute apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    #   @return [String]
    # @!attribute opt_in_type
    #   <p>A value that specifies the type of opt-in request or undoes an
    #               opt-in request. An opt-in request of type <code>immediate</code>
    #               can't be undone.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action
    #                       immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance
    #                       action during the next maintenance window for the resource.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing
    #                       <code>next-maintenance</code> opt-in requests.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ApplyPendingMaintenanceActionMessage < Struct.new(
      :resource_identifier,
      :apply_action,
      :opt_in_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_pending_maintenance_actions
    #   <p>Represents the output of <a>ApplyPendingMaintenanceAction</a>.
    #           </p>
    #   @return [Types::ResourcePendingMaintenanceActions]
    class ApplyPendingMaintenanceActionResult < Struct.new(
      :resource_pending_maintenance_actions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified CIDR IP or Amazon EC2 security group isn't authorized for the specified security group.</p>
    #          <p>Amazon DocumentDB also might not be authorized to perform necessary actions on your behalf using IAM.</p>
    # @!attribute message
    #   @return [String]
    class AuthorizationNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an Availability Zone.</p>
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #   @return [String]
    class AvailabilityZone < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A certificate authority (CA) certificate for an Amazon Web Services account.</p>
    # @!attribute certificate_identifier
    #   <p>The unique key that identifies a certificate.</p>
    #            <p>Example: <code>rds-ca-2019</code>
    #            </p>
    #   @return [String]
    # @!attribute certificate_type
    #   <p>The type of the certificate.</p>
    #            <p>Example: <code>CA</code>
    #            </p>
    #   @return [String]
    # @!attribute thumbprint
    #   <p>The thumbprint of the certificate.</p>
    #   @return [String]
    # @!attribute valid_from
    #   <p>The starting date-time from which the certificate is valid.</p>
    #            <p>Example: <code>2019-07-31T17:57:09Z</code>
    #            </p>
    #   @return [Time]
    # @!attribute valid_till
    #   <p>The date-time after which the certificate is no longer valid.</p>
    #            <p>Example: <code>2024-07-31T17:57:09Z</code>
    #            </p>
    #   @return [Time]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #            <p>Example: <code>arn:aws:rds:us-east-1::cert:rds-ca-2019</code>
    #            </p>
    #   @return [String]
    class Certificate < Struct.new(
      :certificate_identifier,
      :certificate_type,
      :thumbprint,
      :valid_from,
      :valid_till,
      :certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the details of the DB instance’s server certificate.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html">Updating Your Amazon DocumentDB TLS 
    #             Certificates</a> and 
    #             <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html">
    #                 Encrypting Data in Transit</a> in the <i>Amazon DocumentDB Developer 
    #                     Guide</i>.</p>
    # @!attribute ca_identifier
    #   <p>The CA identifier of the CA certificate used for the DB instance's server certificate.</p>
    #   @return [String]
    # @!attribute valid_till
    #   <p>The expiration date of the DB instance’s server certificate.</p>
    #   @return [Time]
    class CertificateDetails < Struct.new(
      :ca_identifier,
      :valid_till,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificates
    #   <p>A list of certificates for this Amazon Web Services account.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute marker
    #   <p>An optional pagination token provided if the number of records retrieved is greater than <code>MaxRecords</code>. If this parameter is specified, the marker specifies the next record in the list. Including the value of <code>Marker</code> in the next call to <code>DescribeCertificates</code> results in the next page of certificates.</p>
    #   @return [String]
    class CertificateMessage < Struct.new(
      :certificates,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>CertificateIdentifier</code> doesn't refer to an existing certificate. </p>
    # @!attribute message
    #   @return [String]
    class CertificateNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration setting for the log types to be enabled for export to Amazon
    #             CloudWatch Logs for a specific instance or cluster.</p>
    #          <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine
    #             which logs are exported (or not exported) to CloudWatch Logs. The values within these
    #             arrays depend on the engine that is being used.</p>
    # @!attribute enable_log_types
    #   <p>The list of log types to enable.</p>
    #   @return [Array<String>]
    # @!attribute disable_log_types
    #   <p>The list of log types to disable.</p>
    #   @return [Array<String>]
    class CloudwatchLogsExportConfiguration < Struct.new(
      :enable_log_types,
      :disable_log_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the secret managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for the master user password.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret.</p>
    #   @return [String]
    # @!attribute secret_status
    #   <p>The status of the secret.</p>
    #            <p>The possible status values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>creating - The secret is being created.</p>
    #               </li>
    #               <li>
    #                  <p>active - The secret is available for normal use and rotation.</p>
    #               </li>
    #               <li>
    #                  <p>rotating - The secret is being rotated.</p>
    #               </li>
    #               <li>
    #                  <p>impaired - The secret can be used to access database credentials, but it can't be rotated. 
    #                   A secret might have this status if, for example, permissions are changed so that Amazon DocumentDB can no longer access either the secret or the KMS key for the secret.</p>
    #                  <p>When a secret has this status, you can correct the condition that caused the status. 
    #                       Alternatively, modify the instance to turn off automatic management of database credentials, and then modify the instance again to turn on automatic management of database credentials.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier that is used to encrypt the secret.</p>
    #   @return [String]
    class ClusterMasterUserSecret < Struct.new(
      :secret_arn,
      :secret_status,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CopyDBClusterParameterGroup</a>.
    #         </p>
    # @!attribute source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>If the source cluster parameter group is in the same Amazon Web Services Region as the copy, specify a valid parameter group identifier; for example, <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
    #               </li>
    #               <li>
    #                  <p>If the source parameter group is in a different Amazon Web Services Region than the copy, specify a valid cluster parameter group ARN; for example, <code>arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-param-group1</code>
    #            </p>
    #   @return [String]
    # @!attribute target_db_cluster_parameter_group_description
    #   <p>A description for the copied cluster parameter group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that are to be assigned to the parameter group.</p>
    #   @return [Array<Types::Tag>]
    class CopyDBClusterParameterGroupMessage < Struct.new(
      :source_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_parameter_group
    #   <p>Detailed information about a cluster parameter group. </p>
    #   @return [Types::DBClusterParameterGroup]
    class CopyDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CopyDBClusterSnapshot</a>.
    #         </p>
    # @!attribute source_db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot to copy. This parameter is
    #               not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid system snapshot in the
    #                       <i>available</i> state.</p>
    #               </li>
    #               <li>
    #                  <p>If the source snapshot is in the same Amazon Web Services Region as the copy, specify a valid snapshot identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If the source snapshot is in a different Amazon Web Services Region than the copy, specify a valid cluster snapshot ARN.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    #   @return [String]
    # @!attribute target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new cluster snapshot to create from the
    #               source cluster snapshot. This parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot2</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID for an encrypted cluster snapshot. The KMS
    #               key ID is the Amazon Resource Name (ARN), KMS key identifier, or
    #               the KMS key alias for the KMS encryption key. </p>
    #            <p>If you copy an encrypted cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the cluster snapshot is encrypted with the same KMS key as the source cluster snapshot.</p>
    #            <p>If you copy an encrypted cluster snapshot that is shared from another Amazon Web Services account, then you must specify a value for <code>KmsKeyId</code>.</p>
    #            <p>To copy an encrypted cluster snapshot to another Amazon Web Services Region, set <code>KmsKeyId</code> to the KMS key ID that you want to use to encrypt the copy of the cluster snapshot in the destination Region. KMS encryption keys are specific to the Amazon Web Services Region that they are created in, and you can't use encryption keys from one Amazon Web Services Region in another Amazon Web Services Region.</p>
    #            <p>If you copy an unencrypted cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>
    #   @return [String]
    # @!attribute pre_signed_url
    #   <p>The URL that contains a Signature Version 4 signed request for the<code>CopyDBClusterSnapshot</code> API action in the Amazon Web Services Region that contains the source cluster snapshot to copy. You must use the <code>PreSignedUrl</code> parameter when copying a cluster snapshot from another Amazon Web Services Region.</p>
    #            <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify
    #               <code>SourceRegion</code> (or <code>--source-region</code> for the
    #               CLI) instead of specifying <code>PreSignedUrl</code> manually.
    #               Specifying <code>SourceRegion</code> autogenerates a pre-signed URL
    #               that is a valid request for the operation that can be executed in
    #               the source Amazon Web Services Region.</p>
    #            <p>The presigned URL must be a valid request for the
    #               <code>CopyDBClusterSnapshot</code> API action that can be executed
    #               in the source Amazon Web Services Region that contains the cluster snapshot to be
    #               copied. The presigned URL request must contain the following
    #               parameter values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SourceRegion</code> - The ID of the region that
    #                       contains the snapshot to be copied.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SourceDBClusterSnapshotIdentifier</code> - The
    #                       identifier for the the encrypted cluster snapshot to be
    #                       copied. This identifier must be in the Amazon Resource Name
    #                       (ARN) format for the source Amazon Web Services Region. For example, if you
    #                       are copying an encrypted cluster snapshot from the us-east-1
    #                       Amazon Web Services Region, then your
    #                       <code>SourceDBClusterSnapshotIdentifier</code> looks
    #                       something like the following:
    #                       <code>arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TargetDBClusterSnapshotIdentifier</code> - The
    #                       identifier for the new cluster snapshot to be created. This
    #                       parameter isn't case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_tags
    #   <p>Set to <code>true</code> to copy all tags from the source cluster
    #               snapshot to the target cluster snapshot, and otherwise
    #               <code>false</code>. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to be assigned to the cluster snapshot.</p>
    #   @return [Array<Types::Tag>]
    class CopyDBClusterSnapshotMessage < Struct.new(
      :source_db_cluster_snapshot_identifier,
      :target_db_cluster_snapshot_identifier,
      :kms_key_id,
      :pre_signed_url,
      :copy_tags,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_snapshot
    #   <p>Detailed information about a cluster snapshot. </p>
    #   @return [Types::DBClusterSnapshot]
    class CopyDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CreateDBCluster</a>.
    #         </p>
    # @!attribute availability_zones
    #   <p>A list of Amazon EC2 Availability Zones that instances in the
    #               cluster can be created in.</p>
    #   @return [Array<String>]
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. You
    #               must specify a minimum value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute db_cluster_identifier
    #   <p>The cluster identifier. This parameter is stored as a lowercase
    #               string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster</code>
    #            </p>
    #   @return [String]
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to associate with this
    #               cluster.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this cluster.
    #               </p>
    #   @return [Array<String>]
    # @!attribute db_subnet_group_name
    #   <p>A subnet group to associate with this cluster.</p>
    #            <p>Constraints: Must match the name of an existing
    #               <code>DBSubnetGroup</code>. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the database engine to be used for this cluster.</p>
    #            <p>Valid values: <code>docdb</code>
    #            </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the database engine to use. The <code>--engine-version</code> will default to the latest major engine version. For production workloads, we recommend explicitly declaring this parameter with the intended major engine version.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which the instances in the cluster accept
    #               connections.</p>
    #   @return [Integer]
    # @!attribute master_username
    #   <p>The name of the master user for the cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word for the chosen database engine.
    #                       </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute master_user_password
    #   <p>The password for the master database user. This password can
    #               contain any printable ASCII character except forward slash (/),
    #               double quote ("), or the "at" symbol (@).</p>
    #            <p>Constraints: Must contain from 8 to 100 characters.</p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if
    #               automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.
    #                       </p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur,
    #               in Universal Coordinated Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the cluster.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute storage_encrypted
    #   <p>Specifies whether the cluster is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier for an encrypted cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a cluster using the same Amazon Web Services account that owns the KMS encryption key that is used to encrypt the new cluster, you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #            <p>If an encryption key is not specified in <code>KmsKeyId</code>:
    #               </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>StorageEncrypted</code> parameter is
    #                       <code>true</code>, Amazon DocumentDB uses your default encryption key.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each Amazon Web Services Regions.</p>
    #   @return [String]
    # @!attribute pre_signed_url
    #   <p>Not currently supported.
    #               </p>
    #   @return [String]
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>A list of log types that need to be enabled for exporting to Amazon
    #               CloudWatch Logs. You can enable audit logs or profiler logs. For more
    #               information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html">
    #                   Auditing Amazon DocumentDB Events</a>
    #               and <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html">
    #                   Profiling Amazon DocumentDB Operations</a>.
    #           </p>
    #   @return [Array<String>]
    # @!attribute deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If
    #               <code>DeletionProtection</code> is enabled, the cluster cannot be
    #               deleted unless it is modified and <code>DeletionProtection</code> is
    #               disabled. <code>DeletionProtection</code> protects clusters from
    #               being accidentally deleted.</p>
    #   @return [Boolean]
    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier of the new global cluster.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #            <note>
    #               <p>When you create a DocumentDB DB cluster with the storage type set to <code>iopt1</code>, the storage type is returned
    #                       in the response. The storage type isn't returned when you set it to <code>standard</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    #   @return [Types::ServerlessV2ScalingConfiguration]
    # @!attribute manage_master_user_password
    #   <p>Specifies whether to manage the master user password with Amazon Web Services Secrets Manager.</p>
    #            <p>Constraint: You can't manage the master user password with Amazon Web Services Secrets Manager if <code>MasterUserPassword</code> is specified.</p>
    #   @return [Boolean]
    # @!attribute master_user_secret_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to encrypt a secret that is automatically generated and managed in Amazon Web Services Secrets Manager.
    #               This setting is valid only if the master user password is managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for the DB cluster.</p>
    #            <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. 
    #               To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #            <p>If you don't specify <code>MasterUserSecretKmsKeyId</code>, then the <code>aws/secretsmanager</code> KMS key is used to encrypt the secret. 
    #               If the secret is in a different Amazon Web Services account, then you can't use the <code>aws/secretsmanager</code> KMS key to encrypt the secret, and you must use a customer managed KMS key.</p>
    #            <p>There is a default KMS key for your Amazon Web Services account. 
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #   @return [String]
    class CreateDBClusterMessage < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :db_cluster_identifier,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :db_subnet_group_name,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :pre_signed_url,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :global_cluster_identifier,
      :storage_type,
      :serverless_v2_scaling_configuration,
      :manage_master_user_password,
      :master_user_secret_kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input of <a>CreateDBClusterParameterGroup</a>.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must not match the name of an existing
    #                       <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #   @return [String]
    # @!attribute db_parameter_group_family
    #   <p>The cluster parameter group family name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the cluster parameter group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the cluster parameter group.</p>
    #   @return [Array<Types::Tag>]
    class CreateDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_parameter_group
    #   <p>Detailed information about a cluster parameter group. </p>
    #   @return [Types::DBClusterParameterGroup]
    class CreateDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class CreateDBClusterResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input of <a>CreateDBClusterSnapshot</a>.</p>
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot. This parameter is stored
    #               as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.
    #                       </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    #   @return [String]
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the cluster to create a snapshot for. This
    #               parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing
    #                       <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster</code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the cluster snapshot.</p>
    #   @return [Array<Types::Tag>]
    class CreateDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_snapshot
    #   <p>Detailed information about a cluster snapshot. </p>
    #   @return [Types::DBClusterSnapshot]
    class CreateDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CreateDBInstance</a>.</p>
    # @!attribute db_instance_identifier
    #   <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    #   @return [String]
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the instance; for example,
    #                   <code>db.r5.large</code>. </p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #            <p>Valid value: <code>docdb</code>
    #            </p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Amazon EC2 Availability Zone that the instance is created in. </p>
    #            <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region.</p>
    #            <p>Example: <code>us-east-1d</code>
    #            </p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur, in Universal
    #               Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region, occurring on a random day of the week. </p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to be assigned to the instance. You can assign up to
    #              10 tags to an instance.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the cluster that the instance will belong to.</p>
    #   @return [String]
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #   @return [Boolean]
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    #               primary instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid values: 0-15</p>
    #   @return [Integer]
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB Instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using Amazon
    #                   Performance Insights</a>.</p>
    #   @return [Boolean]
    # @!attribute performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights
    #               data.</p>
    #            <p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #               for the KMS key.</p>
    #            <p>If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your
    #               default KMS key. There is a default KMS key for your
    #               Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services region.</p>
    #   @return [String]
    # @!attribute ca_certificate_identifier
    #   <p>The CA certificate identifier to use for the DB instance's server certificate.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html">Updating Your Amazon DocumentDB TLS 
    #               Certificates</a> and 
    #               <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html">
    #                   Encrypting Data in Transit</a> in the <i>Amazon DocumentDB Developer 
    #                       Guide</i>.</p>
    #   @return [String]
    class CreateDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :availability_zone,
      :preferred_maintenance_window,
      :auto_minor_version_upgrade,
      :tags,
      :db_cluster_identifier,
      :copy_tags_to_snapshot,
      :promotion_tier,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :ca_certificate_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_instance
    #   <p>Detailed information about an instance. </p>
    #   @return [Types::DBInstance]
    class CreateDBInstanceResult < Struct.new(
      :db_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CreateDBSubnetGroup</a>.</p>
    # @!attribute db_subnet_group_name
    #   <p>The name for the subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores,
    #               spaces, or hyphens. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute db_subnet_group_description
    #   <p>The description for the subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the subnet group.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to be assigned to the subnet group.</p>
    #   @return [Array<Types::Tag>]
    class CreateDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_subnet_group
    #   <p>Detailed information about a subnet group. </p>
    #   @return [Types::DBSubnetGroup]
    class CreateDBSubnetGroupResult < Struct.new(
      :db_subnet_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CreateEventSubscription</a>.</p>
    # @!attribute subscription_name
    #   <p>The name of the subscription.</p>
    #            <p>Constraints: The name must be fewer than 255 characters.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. Amazon SNS creates the ARN when you create a topic and subscribe to it.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by an instance, you would set this parameter to <code>db-instance</code>. If this value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code>, <code>db-cluster</code>,
    #                   <code>db-parameter-group</code>, <code>db-security-group</code>,
    #                   <code>db-cluster-snapshot</code>
    #            </p>
    #   @return [String]
    # @!attribute event_categories
    #   <p> A list of event categories for a <code>SourceType</code> that you want to subscribe to. </p>
    #   @return [Array<String>]
    # @!attribute source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a
    #               hyphen or contain two consecutive hyphens.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>SourceIds</code> are provided, <code>SourceType</code> must also be
    #                       provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is an instance, a <code>DBInstanceIdentifier</code> must
    #                       be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a security group, a <code>DBSecurityGroupName</code>
    #                       must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a parameter group, a
    #                           <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a snapshot, a <code>DBSnapshotIdentifier</code> must
    #                       be provided.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, set to <code>false</code> to create the subscription but not active it. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to be assigned to the event subscription.</p>
    #   @return [Array<Types::Tag>]
    class CreateEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_subscription
    #   <p>Detailed information about an event to which you have subscribed.</p>
    #   @return [Types::EventSubscription]
    class CreateEventSubscriptionResult < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>CreateGlobalCluster</a>.</p>
    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier of the new global cluster.</p>
    #   @return [String]
    # @!attribute source_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) to use as the primary cluster of the global cluster. This parameter is optional.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the database engine to be used for this cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version of the global cluster.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the new global cluster. The global cluster can't be deleted when deletion protection is enabled. </p>
    #   @return [Boolean]
    # @!attribute database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon DocumentDB will not create a database in the global cluster you are creating.</p>
    #   @return [String]
    # @!attribute storage_encrypted
    #   <p>The storage encryption setting for the new global cluster. </p>
    #   @return [Boolean]
    class CreateGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :source_db_cluster_identifier,
      :engine,
      :engine_version,
      :deletion_protection,
      :database_name,
      :storage_encrypted,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Amazon DocumentDB global cluster.</p>
    #   @return [Types::GlobalCluster]
    class CreateGlobalClusterResult < Struct.new(
      :global_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about a cluster. </p>
    # @!attribute availability_zones
    #   <p>Provides the list of Amazon EC2 Availability Zones that instances in the cluster
    #               can be created in.</p>
    #   @return [Array<String>]
    # @!attribute backup_retention_period
    #   <p>Specifies the number of days for which automatic snapshots are retained.</p>
    #   @return [Integer]
    # @!attribute db_cluster_identifier
    #   <p>Contains a user-supplied cluster identifier. This identifier is the unique key that
    #               identifies a cluster.</p>
    #   @return [String]
    # @!attribute db_cluster_parameter_group
    #   <p>Specifies the name of the cluster parameter group for the cluster.</p>
    #   @return [String]
    # @!attribute db_subnet_group
    #   <p>Specifies information on the subnet group that is associated with the cluster, including the name, description, and subnets in the subnet group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the current state of this cluster.</p>
    #   @return [String]
    # @!attribute percent_progress
    #   <p>Specifies the progress of the operation as a percentage.</p>
    #   @return [String]
    # @!attribute earliest_restorable_time
    #   <p>The earliest time to which a database can be restored with point-in-time
    #               restore.</p>
    #   @return [Time]
    # @!attribute endpoint
    #   <p>Specifies the connection endpoint for the primary instance of the cluster.</p>
    #   @return [String]
    # @!attribute reader_endpoint
    #   <p>The reader endpoint for the cluster. The reader endpoint for a cluster load balances connections across the Amazon DocumentDB replicas that are available in a cluster. As clients request new connections to the reader endpoint, Amazon DocumentDB distributes the connection requests among the Amazon DocumentDB replicas in the cluster. This functionality can help balance your read workload across multiple Amazon DocumentDB replicas in your cluster. </p>
    #            <p>If a failover occurs, and the Amazon DocumentDB replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Amazon DocumentDB replicas in the cluster, you can then reconnect to the reader endpoint.</p>
    #   @return [String]
    # @!attribute multi_az
    #   <p>Specifies whether the cluster has instances in multiple Availability Zones.</p>
    #   @return [Boolean]
    # @!attribute engine
    #   <p>Provides the name of the database engine to be used for this cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #   @return [String]
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time
    #               restore.</p>
    #   @return [Time]
    # @!attribute port
    #   <p>Specifies the port that the database engine is listening on.</p>
    #   @return [Integer]
    # @!attribute master_username
    #   <p>Contains the master user name for the cluster.</p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>Specifies the daily time range during which automated backups are created if automated
    #               backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which system maintenance can occur, in
    #               Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute replication_source_identifier
    #   <p>Contains the identifier of the source cluster if this cluster is a secondary cluster.</p>
    #   @return [String]
    # @!attribute read_replica_identifiers
    #   <p>Contains one or more identifiers of the secondary clusters that are associated with this cluster.</p>
    #   @return [Array<String>]
    # @!attribute db_cluster_members
    #   <p>Provides the list of instances that make up the cluster.</p>
    #   @return [Array<Types::DBClusterMember>]
    # @!attribute vpc_security_groups
    #   <p>Provides a list of virtual private cloud (VPC) security groups that the cluster
    #               belongs to.</p>
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    # @!attribute hosted_zone_id
    #   <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
    #   @return [String]
    # @!attribute storage_encrypted
    #   <p>Specifies whether the cluster is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>If <code>StorageEncrypted</code> is <code>true</code>, the KMS key identifier for
    #               the encrypted cluster.</p>
    #   @return [String]
    # @!attribute db_cluster_resource_id
    #   <p>The Amazon Web Services Region-unique, immutable identifier for the cluster. This identifier is
    #               found in CloudTrail log entries whenever the KMS key for the cluster is accessed.</p>
    #   @return [String]
    # @!attribute db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for the cluster.</p>
    #   @return [String]
    # @!attribute associated_roles
    #   <p>Provides a list of the Identity and Access Management (IAM) roles that are associated with the cluster. (IAM) roles that are associated with a cluster grant permission for the cluster to access other Amazon Web Services services on your behalf.</p>
    #   @return [Array<Types::DBClusterRole>]
    # @!attribute clone_group_id
    #   <p>Identifies the clone group to which the DB cluster is associated.</p>
    #   @return [String]
    # @!attribute cluster_create_time
    #   <p>Specifies the time when the cluster was created, in Universal Coordinated Time
    #               (UTC).</p>
    #   @return [Time]
    # @!attribute enabled_cloudwatch_logs_exports
    #   <p>A list of log types that this cluster is configured to export to Amazon CloudWatch
    #               Logs.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
    #               enabled, the cluster cannot be deleted unless it is modified and
    #                   <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
    #               protects clusters from being accidentally deleted.</p>
    #   @return [Boolean]
    # @!attribute storage_type
    #   <p>Storage type associated with your cluster</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #   @return [String]
    # @!attribute serverless_v2_scaling_configuration
    #   <p>The scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    #   @return [Types::ServerlessV2ScalingConfigurationInfo]
    # @!attribute master_user_secret
    #   <p>The secret managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for the master user password.</p>
    #   @return [Types::ClusterMasterUserSecret]
    class DBCluster < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :db_cluster_identifier,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :status,
      :percent_progress,
      :earliest_restorable_time,
      :endpoint,
      :reader_endpoint,
      :multi_az,
      :engine,
      :engine_version,
      :latest_restorable_time,
      :port,
      :master_username,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :replication_source_identifier,
      :read_replica_identifiers,
      :db_cluster_members,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :db_cluster_arn,
      :associated_roles,
      :clone_group_id,
      :cluster_create_time,
      :enabled_cloudwatch_logs_exports,
      :deletion_protection,
      :storage_type,
      :serverless_v2_scaling_configuration,
      :master_user_secret,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You already have a cluster with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class DBClusterAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an instance that is part of a cluster.</p>
    # @!attribute db_instance_identifier
    #   <p>Specifies the instance identifier for this member of the cluster.</p>
    #   @return [String]
    # @!attribute is_cluster_writer
    #   <p>A value that is <code>true</code> if the cluster member is the primary instance for
    #               the cluster and <code>false</code> otherwise.</p>
    #   @return [Boolean]
    # @!attribute db_cluster_parameter_group_status
    #   <p>Specifies the status of the cluster parameter group for this member of the DB
    #               cluster.</p>
    #   @return [String]
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    #               primary instance after a failure of the existing primary instance. </p>
    #   @return [Integer]
    class DBClusterMember < Struct.new(
      :db_instance_identifier,
      :is_cluster_writer,
      :db_cluster_parameter_group_status,
      :promotion_tier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeDBClusters</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute db_clusters
    #   <p>A list of clusters.</p>
    #   @return [Array<Types::DBCluster>]
    class DBClusterMessage < Struct.new(
      :marker,
      :db_clusters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBClusterIdentifier</code> doesn't refer to an existing cluster. </p>
    # @!attribute message
    #   @return [String]
    class DBClusterNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about a cluster parameter group. </p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>Provides the name of the cluster parameter group.</p>
    #   @return [String]
    # @!attribute db_parameter_group_family
    #   <p>Provides the name of the parameter group family that this cluster parameter
    #               group is compatible with.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Provides the customer-specified description for this cluster parameter
    #               group.</p>
    #   @return [String]
    # @!attribute db_cluster_parameter_group_arn
    #   <p>The Amazon Resource Name (ARN) for the cluster parameter group.</p>
    #   @return [String]
    class DBClusterParameterGroup < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_cluster_parameter_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBClusterParameterGroupName</code> doesn't refer to an existing cluster parameter group. </p>
    # @!attribute message
    #   @return [String]
    class DBClusterParameterGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DBClusterParameterGroups</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute db_cluster_parameter_groups
    #   <p>A list of cluster parameter groups.</p>
    #   @return [Array<Types::DBClusterParameterGroup>]
    class DBClusterParameterGroupsMessage < Struct.new(
      :marker,
      :db_cluster_parameter_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The cluster can't be created because you have reached the maximum allowed quota of clusters.</p>
    # @!attribute message
    #   @return [String]
    class DBClusterQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an Identity and Access Management (IAM) role that is associated with a
    #             cluster.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAMrole that is associated with the DB
    #               cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Describes the state of association between the IAMrole and the cluster. The <code>Status</code> property returns one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The IAMrole ARN is associated with the cluster and can be used to access other Amazon Web Services services on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The IAMrole ARN is being associated with the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID</code> - The IAMrole ARN is associated with the cluster, but the cluster cannot assume the IAMrole to access other Amazon Web Services services on your behalf.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DBClusterRole < Struct.new(
      :role_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about a cluster snapshot. </p>
    # @!attribute availability_zones
    #   <p>Provides the list of Amazon EC2 Availability Zones that instances in the cluster
    #               snapshot can be restored in.</p>
    #   @return [Array<String>]
    # @!attribute db_cluster_snapshot_identifier
    #   <p>Specifies the identifier for the cluster snapshot.</p>
    #   @return [String]
    # @!attribute db_cluster_identifier
    #   <p>Specifies the cluster identifier of the cluster that this cluster snapshot
    #               was created from.</p>
    #   @return [String]
    # @!attribute snapshot_create_time
    #   <p>Provides the time when the snapshot was taken, in UTC.</p>
    #   @return [Time]
    # @!attribute engine
    #   <p>Specifies the name of the database engine.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the status of this cluster snapshot.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Specifies the port that the cluster was listening on at the time of the
    #               snapshot.</p>
    #   @return [Integer]
    # @!attribute vpc_id
    #   <p>Provides the virtual private cloud (VPC) ID that is associated with the cluster
    #               snapshot.</p>
    #   @return [String]
    # @!attribute cluster_create_time
    #   <p>Specifies the time when the cluster was created, in Universal Coordinated Time
    #               (UTC).</p>
    #   @return [Time]
    # @!attribute master_username
    #   <p>Provides the master user name for the cluster snapshot.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>Provides the version of the database engine for this cluster snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_type
    #   <p>Provides the type of the cluster snapshot.</p>
    #   @return [String]
    # @!attribute percent_progress
    #   <p>Specifies the percentage of the estimated data that has been transferred.</p>
    #   @return [Integer]
    # @!attribute storage_encrypted
    #   <p>Specifies whether the cluster snapshot is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>If <code>StorageEncrypted</code> is <code>true</code>, the KMS key identifier for the encrypted cluster snapshot.</p>
    #   @return [String]
    # @!attribute db_cluster_snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for the cluster snapshot.</p>
    #   @return [String]
    # @!attribute source_db_cluster_snapshot_arn
    #   <p>If the cluster snapshot was copied from a source cluster snapshot, the ARN for
    #               the source cluster snapshot; otherwise, a null value.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>Storage type associated with your cluster snapshot</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #   @return [String]
    class DBClusterSnapshot < Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_snapshot_arn,
      :source_db_cluster_snapshot_arn,
      :storage_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You already have a cluster snapshot with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class DBClusterSnapshotAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the name and values of a manual cluster snapshot attribute.</p>
    #          <p>Manual cluster snapshot attributes are used to authorize other Amazon Web Services accounts to restore a manual cluster snapshot.</p>
    # @!attribute attribute_name
    #   <p>The name of the manual cluster snapshot attribute.</p>
    #            <p>The attribute named <code>restore</code> refers to the list of Amazon Web Services accounts that have permission to copy or restore the manual cluster snapshot.</p>
    #   @return [String]
    # @!attribute attribute_values
    #   <p>The values for the manual cluster snapshot attribute.</p>
    #            <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual cluster snapshot. If a value of <code>all</code> is in the list, then the manual cluster snapshot is public and available for any Amazon Web Services account to copy or restore.</p>
    #   @return [Array<String>]
    class DBClusterSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about the attributes that are associated with a cluster
    #             snapshot.</p>
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot that the attributes apply to.</p>
    #   @return [String]
    # @!attribute db_cluster_snapshot_attributes
    #   <p>The list of attributes and values for the cluster snapshot.</p>
    #   @return [Array<Types::DBClusterSnapshotAttribute>]
    class DBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_snapshot_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeDBClusterSnapshots</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute db_cluster_snapshots
    #   <p>Provides a list of cluster snapshots.</p>
    #   @return [Array<Types::DBClusterSnapshot>]
    class DBClusterSnapshotMessage < Struct.new(
      :marker,
      :db_cluster_snapshots,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBClusterSnapshotIdentifier</code> doesn't refer to an existing cluster snapshot. </p>
    # @!attribute message
    #   @return [String]
    class DBClusterSnapshotNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Detailed information about an engine version. </p>
    # @!attribute engine
    #   <p>The name of the database engine.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the database engine.</p>
    #   @return [String]
    # @!attribute db_parameter_group_family
    #   <p>The name of the parameter group family for the database engine.</p>
    #   @return [String]
    # @!attribute db_engine_description
    #   <p>The description of the database engine.</p>
    #   @return [String]
    # @!attribute db_engine_version_description
    #   <p>The description of the database engine version.</p>
    #   @return [String]
    # @!attribute valid_upgrade_target
    #   <p>A list of engine versions that this database engine version can be upgraded to.</p>
    #   @return [Array<Types::UpgradeTarget>]
    # @!attribute exportable_log_types
    #   <p>The types of logs that the database engine has available for export to Amazon
    #               CloudWatch Logs.</p>
    #   @return [Array<String>]
    # @!attribute supports_log_exports_to_cloudwatch_logs
    #   <p>A value that indicates whether the engine version supports exporting the log types
    #               specified by <code>ExportableLogTypes</code> to CloudWatch Logs.</p>
    #   @return [Boolean]
    # @!attribute supported_ca_certificate_identifiers
    #   <p>A list of the supported CA certificate identifiers.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html">Updating Your Amazon DocumentDB TLS 
    #               Certificates</a> and 
    #               <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html">
    #                   Encrypting Data in Transit</a> in the <i>Amazon DocumentDB Developer 
    #                       Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute supports_certificate_rotation_without_restart
    #   <p>Indicates whether the engine version supports rotating the server certificate without 
    #               rebooting the DB instance.</p>
    #   @return [Boolean]
    # @!attribute serverless_v2_features_support
    #   <p>Specifies any Amazon DocumentDB Serverless properties or limits that differ between Amazon DocumentDB engine versions. 
    #               You can test the values of this attribute when deciding which Amazon DocumentDB version to use in a new or upgraded cluster. 
    #               You can also retrieve the version of an existing cluster and check whether that version supports certain Amazon DocumentDB Serverless features before you attempt to use those features.</p>
    #   @return [Types::ServerlessV2FeaturesSupport]
    class DBEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :valid_upgrade_target,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supported_ca_certificate_identifiers,
      :supports_certificate_rotation_without_restart,
      :serverless_v2_features_support,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeDBEngineVersions</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute db_engine_versions
    #   <p>Detailed information about one or more engine versions.</p>
    #   @return [Array<Types::DBEngineVersion>]
    class DBEngineVersionMessage < Struct.new(
      :marker,
      :db_engine_versions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about an instance. </p>
    # @!attribute db_instance_identifier
    #   <p>Contains a user-provided database identifier. This identifier is the unique key that
    #               identifies an instance.</p>
    #   @return [String]
    # @!attribute db_instance_class
    #   <p>Contains the name of the compute and memory capacity class of the instance.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Provides the name of the database engine to be used for this instance.</p>
    #   @return [String]
    # @!attribute db_instance_status
    #   <p>Specifies the current state of this database.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>Specifies the connection endpoint.</p>
    #   @return [Types::Endpoint]
    # @!attribute instance_create_time
    #   <p>Provides the date and time that the instance was created.</p>
    #   @return [Time]
    # @!attribute preferred_backup_window
    #   <p> Specifies the daily time range during which automated backups are created if
    #               automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>.
    #           </p>
    #   @return [String]
    # @!attribute backup_retention_period
    #   <p>Specifies the number of days for which automatic snapshots are retained.</p>
    #   @return [Integer]
    # @!attribute vpc_security_groups
    #   <p>Provides a list of VPC security group elements that the instance belongs to.</p>
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    # @!attribute availability_zone
    #   <p>Specifies the name of the Availability Zone that the instance is located in.</p>
    #   @return [String]
    # @!attribute db_subnet_group
    #   <p>Specifies information on the subnet group that is associated with the instance, including the name, description, and subnets in the subnet group.</p>
    #   @return [Types::DBSubnetGroup]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which system maintenance can occur, in
    #               Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute pending_modified_values
    #   <p>Specifies that changes to the instance are pending. This element is included only when changes are pending. Specific changes are identified by subelements.</p>
    #   @return [Types::PendingModifiedValues]
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time
    #               restore.</p>
    #   @return [Time]
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>Does not apply. This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    #   @return [Boolean]
    # @!attribute publicly_accessible
    #   <p>Not supported. Amazon DocumentDB does not currently support public endpoints. The value 
    #             of <code>PubliclyAccessible</code> is always <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute status_infos
    #   <p>The status of a read replica. If the instance is not a read replica, this is
    #               blank.</p>
    #   @return [Array<Types::DBInstanceStatusInfo>]
    # @!attribute db_cluster_identifier
    #   <p>Contains the name of the cluster that the instance is a member of if the 
    #               instance is a member of a cluster.</p>
    #   @return [String]
    # @!attribute storage_encrypted
    #   <p>Specifies whether or not the instance is encrypted.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p> If <code>StorageEncrypted</code> is <code>true</code>, the KMS key identifier for
    #               the encrypted instance. </p>
    #   @return [String]
    # @!attribute dbi_resource_id
    #   <p>The Amazon Web Services Region-unique, immutable identifier for the instance. This identifier is found in CloudTrail log entries whenever the KMS key for the instance is
    #               accessed.</p>
    #   @return [String]
    # @!attribute ca_certificate_identifier
    #   <p>The identifier of the CA certificate for this DB instance.</p>
    #   @return [String]
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #   @return [Boolean]
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the
    #               primary instance after a failure of the existing primary instance.</p>
    #   @return [Integer]
    # @!attribute db_instance_arn
    #   <p>The Amazon Resource Name (ARN) for the instance.</p>
    #   @return [String]
    # @!attribute enabled_cloudwatch_logs_exports
    #   <p>A list of log types that this instance is configured to export to CloudWatch Logs.</p>
    #   @return [Array<String>]
    # @!attribute certificate_details
    #   <p>The details of the DB instance's server certificate.</p>
    #   @return [Types::CertificateDetails]
    # @!attribute performance_insights_enabled
    #   <p>Set to <code>true</code> if Amazon RDS Performance Insights is enabled for the DB instance, and otherwise <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
    #   @return [String]
    class DBInstance < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :endpoint,
      :instance_create_time,
      :preferred_backup_window,
      :backup_retention_period,
      :vpc_security_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :engine_version,
      :auto_minor_version_upgrade,
      :publicly_accessible,
      :status_infos,
      :db_cluster_identifier,
      :storage_encrypted,
      :kms_key_id,
      :dbi_resource_id,
      :ca_certificate_identifier,
      :copy_tags_to_snapshot,
      :promotion_tier,
      :db_instance_arn,
      :enabled_cloudwatch_logs_exports,
      :certificate_details,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You already have a instance with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class DBInstanceAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeDBInstances</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute db_instances
    #   <p>Detailed information about one or more instances. </p>
    #   @return [Array<Types::DBInstance>]
    class DBInstanceMessage < Struct.new(
      :marker,
      :db_instances,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBInstanceIdentifier</code> doesn't refer to an existing instance. </p>
    # @!attribute message
    #   @return [String]
    class DBInstanceNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides a list of status information for an instance.</p>
    # @!attribute status_type
    #   <p>This value is currently "<code>read replication</code>."</p>
    #   @return [String]
    # @!attribute normal
    #   <p>A Boolean value that is <code>true</code> if the instance is operating normally, or
    #                   <code>false</code> if the instance is in an error state.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Status of the instance. For a <code>StatusType</code> of read replica, the values
    #               can be <code>replicating</code>, error, <code>stopped</code>, or
    #               <code>terminated</code>.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Details of the error if there is an error for the instance. If the instance is not in
    #               an error state, this value is blank.</p>
    #   @return [String]
    class DBInstanceStatusInfo < Struct.new(
      :status_type,
      :normal,
      :status,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A parameter group with the same name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DBParameterGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBParameterGroupName</code> doesn't refer to an existing parameter group. </p>
    # @!attribute message
    #   @return [String]
    class DBParameterGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This request would cause you to exceed the allowed number of parameter groups.</p>
    # @!attribute message
    #   @return [String]
    class DBParameterGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBSecurityGroupName</code> doesn't refer to an existing security group. </p>
    # @!attribute message
    #   @return [String]
    class DBSecurityGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBSnapshotIdentifier</code> is already being used by an existing snapshot. </p>
    # @!attribute message
    #   @return [String]
    class DBSnapshotAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBSnapshotIdentifier</code> doesn't refer to an existing snapshot. </p>
    # @!attribute message
    #   @return [String]
    class DBSnapshotNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about a subnet group. </p>
    # @!attribute db_subnet_group_name
    #   <p>The name of the subnet group.</p>
    #   @return [String]
    # @!attribute db_subnet_group_description
    #   <p>Provides the description of the subnet group.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>Provides the virtual private cloud (VPC) ID of the subnet group.</p>
    #   @return [String]
    # @!attribute subnet_group_status
    #   <p>Provides the status of the subnet group.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>Detailed information about one or more subnets within a subnet group.</p>
    #   @return [Array<Types::Subnet>]
    # @!attribute db_subnet_group_arn
    #   <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
    #   @return [String]
    class DBSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBSubnetGroupName</code> is already being used by an existing subnet group. </p>
    # @!attribute message
    #   @return [String]
    class DBSubnetGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Subnets in the subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
    # @!attribute message
    #   @return [String]
    class DBSubnetGroupDoesNotCoverEnoughAZs < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeDBSubnetGroups</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute db_subnet_groups
    #   <p>Detailed information about one or more subnet groups.</p>
    #   @return [Array<Types::DBSubnetGroup>]
    class DBSubnetGroupMessage < Struct.new(
      :marker,
      :db_subnet_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <code>DBSubnetGroupName</code> doesn't refer to an existing subnet group. </p>
    # @!attribute message
    #   @return [String]
    class DBSubnetGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request would cause you to exceed the allowed number of subnet groups.</p>
    # @!attribute message
    #   @return [String]
    class DBSubnetGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request would cause you to exceed the allowed number of subnets in a subnet group.</p>
    # @!attribute message
    #   @return [String]
    class DBSubnetQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The upgrade failed because a resource that the depends on can't be
    #             modified.</p>
    # @!attribute message
    #   @return [String]
    class DBUpgradeDependencyFailureFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteDBCluster</a>.</p>
    # @!attribute db_cluster_identifier
    #   <p>The cluster identifier for the cluster to be deleted. This parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing <code>DBClusterIdentifier</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute skip_final_snapshot
    #   <p> Determines whether a final cluster snapshot is created before the cluster is deleted. If <code>true</code> is specified, no cluster snapshot is created. If <code>false</code> is specified, a cluster snapshot is created before the DB cluster is deleted. </p>
    #            <note>
    #               <p>If <code>SkipFinalSnapshot</code> is <code>false</code>, you must specify a <code>FinalDBSnapshotIdentifier</code> parameter.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute final_db_snapshot_identifier
    #   <p> The cluster snapshot identifier of the new cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p>
    #            <note>
    #               <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to <code>true</code> results in an error. </p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteDBClusterParameterGroup</a>.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any clusters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class DeleteDBClusterResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteDBClusterSnapshot</a>.</p>
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the cluster snapshot to delete.</p>
    #            <p>Constraints: Must be the name of an existing cluster snapshot in the <code>available</code> state.</p>
    #   @return [String]
    class DeleteDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_snapshot
    #   <p>Detailed information about a cluster snapshot. </p>
    #   @return [Types::DBClusterSnapshot]
    class DeleteDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteDBInstance</a>.</p>
    # @!attribute db_instance_identifier
    #   <p>The instance identifier for the instance to be deleted. This parameter isn't
    #               case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing instance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_instance
    #   <p>Detailed information about an instance. </p>
    #   @return [Types::DBInstance]
    class DeleteDBInstanceResult < Struct.new(
      :db_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteDBSubnetGroup</a>.</p>
    # @!attribute db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #            <note>
    #               <p>You can't delete the default subnet group.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <p>Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    class DeleteDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteEventSubscription</a>.</p>
    # @!attribute subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to delete.</p>
    #   @return [String]
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_subscription
    #   <p>Detailed information about an event to which you have subscribed.</p>
    #   @return [Types::EventSubscription]
    class DeleteEventSubscriptionResult < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DeleteGlobalCluster</a>.</p>
    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier of the global cluster being deleted.</p>
    #   @return [String]
    class DeleteGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Amazon DocumentDB global cluster.</p>
    #   @return [Types::GlobalCluster]
    class DeleteGlobalClusterResult < Struct.new(
      :global_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_identifier
    #   <p>The user-supplied certificate identifier. If this parameter is specified, information for only the specified certificate is returned. If this parameter is omitted, a list of up to <code>MaxRecords</code> certificates is returned. This parameter is not case sensitive.</p>
    #            <p>Constraints</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing <code>CertificateIdentifier</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Minimum: 20</p>
    #               </li>
    #               <li>
    #                  <p>Maximum: 100</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeCertificates</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeCertificatesMessage < Struct.new(
      :certificate_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBClusterParameterGroups</a>.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a specific cluster parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the name of an existing
    #                           <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeDBClusterParameterGroupsMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBClusterParameters</a>.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a specific cluster parameter group to return parameter details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the name of an existing <code>DBClusterParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source
    #   <p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>.
    #           </p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeDBClusterParametersMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DBClusterParameterGroup</a>.</p>
    # @!attribute parameters
    #   <p>Provides a list of parameters for the cluster parameter group.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeDBClusterParametersOutput < Struct.new(
      :parameters,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBClusterSnapshotAttributes</a>.</p>
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier for the cluster snapshot to describe the attributes for.</p>
    #   @return [String]
    class DescribeDBClusterSnapshotAttributesMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_snapshot_attributes_result
    #   <p>Detailed information about the attributes that are associated with a cluster
    #               snapshot.</p>
    #   @return [Types::DBClusterSnapshotAttributesResult]
    class DescribeDBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_attributes_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBClusterSnapshots</a>.</p>
    # @!attribute db_cluster_identifier
    #   <p>The ID of the cluster to retrieve the list of cluster snapshots for. This parameter can't be used with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case sensitive. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the identifier of an existing
    #                       <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute db_cluster_snapshot_identifier
    #   <p>A specific cluster snapshot identifier to describe. This parameter can't be used with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the identifier of an existing
    #                           <code>DBClusterSnapshot</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    #                       parameter must also be specified.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute snapshot_type
    #   <p>The type of cluster snapshots to be returned. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>shared</code> - Return all manual cluster snapshots that have been shared to your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public</code> - Return all cluster snapshots that have been marked as public.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual cluster snapshots are returned. You can include shared cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public cluster snapshots with these results by setting the<code>IncludePublic</code> parameter to <code>true</code>.</p>
    #            <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute include_shared
    #   <p>Set to <code>true</code> to include shared manual cluster snapshots from other Amazon Web Services accounts that this Amazon Web Services account has been given permission to copy or restore, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_public
    #   <p>Set to <code>true</code> to include manual cluster snapshots that are public and can be copied or restored by any Amazon Web Services account, and otherwise <code>false</code>. The default is <code>false</code>.</p>
    #   @return [Boolean]
    class DescribeDBClusterSnapshotsMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBClusters</a>.</p>
    # @!attribute db_cluster_identifier
    #   <p>The user-provided cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match an existing <code>DBClusterIdentifier</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>A filter that specifies one or more clusters to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list only includes information about the clusters identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeDBClustersMessage < Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBEngineVersions</a>.</p>
    # @!attribute engine
    #   <p>The database engine to return.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The database engine version to return.</p>
    #            <p>Example: <code>3.6.0</code>
    #            </p>
    #   @return [String]
    # @!attribute db_parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match an existing
    #                       <code>DBParameterGroupFamily</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute default_only
    #   <p>Indicates that only the default version of the specified engine or engine and major
    #               version combination is returned.</p>
    #   @return [Boolean]
    # @!attribute list_supported_character_sets
    #   <p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>
    #   @return [Boolean]
    # @!attribute list_supported_timezones
    #   <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>
    #   @return [Boolean]
    class DescribeDBEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      :default_only,
      :list_supported_character_sets,
      :list_supported_timezones,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBInstances</a>.</p>
    # @!attribute db_instance_identifier
    #   <p>The user-provided instance identifier. If this parameter is specified, information from only the specific instance is returned. This parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If provided, must match the identifier of an existing
    #                       <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>A filter that specifies one or more instances to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list includes only the information about the instances that are associated with the clusters that are identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts instance identifiers and instance ARNs. The results list includes only the information about the instances that are identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeDBInstancesMessage < Struct.new(
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeDBSubnetGroups</a>.</p>
    # @!attribute db_subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeDBSubnetGroupsMessage < Struct.new(
      :db_subnet_group_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeEngineDefaultClusterParameters</a>.</p>
    # @!attribute db_parameter_group_family
    #   <p>The name of the cluster parameter group family to return the engine parameter
    #               information for.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeEngineDefaultClusterParametersMessage < Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engine_defaults
    #   <p>Contains the result of a successful invocation of the
    #                   <code>DescribeEngineDefaultClusterParameters</code> operation. </p>
    #   @return [Types::EngineDefaults]
    class DescribeEngineDefaultClusterParametersResult < Struct.new(
      :engine_defaults,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeEventCategories</a>.</p>
    # @!attribute source_type
    #   <p>The type of source that is generating the events.</p>
    #            <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>
    #            </p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeEventSubscriptions</a>.</p>
    # @!attribute subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to
    #               describe.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeEventSubscriptionsMessage < Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeEvents</a>.</p>
    # @!attribute source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>SourceIdentifier</code> is provided, <code>SourceType</code> must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBInstance</code>, a
    #                           <code>DBInstanceIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSecurityGroup</code>, a
    #                           <code>DBSecurityGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBParameterGroup</code>, a
    #                           <code>DBParameterGroupName</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSnapshot</code>, a
    #                           <code>DBSnapshotIdentifier</code> must be provided.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format. </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The number of minutes to retrieve events for.</p>
    #            <p>Default: 60</p>
    #   @return [Integer]
    # @!attribute event_categories
    #   <p>A list of event categories that trigger notifications for an event notification
    #               subscription.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The user-supplied  cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case-sensitive.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A filter that specifies one or more global DB clusters to describe.</p>
    #            <p>Supported filters: <code>db-cluster-id</code> accepts  cluster identifiers and  cluster Amazon Resource Names (ARNs). The results list will only include information about the clusters identified by these ARNs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeGlobalClustersMessage < Struct.new(
      :global_cluster_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribeOrderableDBInstanceOptions</a>.</p>
    # @!attribute engine
    #   <p>The name of the engine to retrieve instance options for.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available
    #               offerings that match the specified engine version.</p>
    #   @return [String]
    # @!attribute db_instance_class
    #   <p>The instance class filter value. Specify this parameter to show only the available
    #               offerings that match the specified instance class.</p>
    #   @return [String]
    # @!attribute license_model
    #   <p>The license model filter value. Specify this parameter to show only the available
    #               offerings that match the specified license model.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The virtual private cloud (VPC) filter value. Specify this parameter to show only the
    #               available VPC or non-VPC offerings.</p>
    #   @return [Boolean]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeOrderableDBInstanceOptionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :vpc,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>DescribePendingMaintenanceActions</a>.</p>
    # @!attribute resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions
    #               for.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts cluster identifiers and cluster
    #                       Amazon Resource Names (ARNs). The results list includes only pending maintenance
    #                       actions for the clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts instance identifiers and instance
    #                       ARNs. The results list includes only pending maintenance actions for the DB
    #                       instances identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token (marker) is included
    #            in the response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    class DescribePendingMaintenanceActionsMessage < Struct.new(
      :resource_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Network information for accessing a cluster or instance. Client programs must
    #             specify a valid endpoint to access these Amazon DocumentDB resources.</p>
    # @!attribute address
    #   <p>Specifies the DNS address of the instance.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Specifies the port that the database engine is listening on.</p>
    #   @return [Integer]
    # @!attribute hosted_zone_id
    #   <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
    #   @return [String]
    class Endpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the result of a successful invocation of the
    #                 <code>DescribeEngineDefaultClusterParameters</code> operation. </p>
    # @!attribute db_parameter_group_family
    #   <p>The name of the cluster parameter group family to return the engine parameter information for.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of a particular cluster parameter group family.</p>
    #   @return [Array<Types::Parameter>]
    class EngineDefaults < Struct.new(
      :db_parameter_group_family,
      :marker,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about an event.</p>
    # @!attribute source_identifier
    #   <p>Provides the identifier for the source of the event.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Specifies the source type for this event.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Provides the text of this event.</p>
    #   @return [String]
    # @!attribute event_categories
    #   <p>Specifies the category for the event.</p>
    #   @return [Array<String>]
    # @!attribute date
    #   <p>Specifies the date and time of the event.</p>
    #   @return [Time]
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) for the event.</p>
    #   @return [String]
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      :source_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An event source type, accompanied by one or more event category names.</p>
    # @!attribute source_type
    #   <p>The source type that the returned categories belong to.</p>
    #   @return [String]
    # @!attribute event_categories
    #   <p>The event categories for the specified source type.</p>
    #   @return [Array<String>]
    class EventCategoriesMap < Struct.new(
      :source_type,
      :event_categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeEventCategories</a>.</p>
    # @!attribute event_categories_map_list
    #   <p>A list of event category maps.</p>
    #   @return [Array<Types::EventCategoriesMap>]
    class EventCategoriesMessage < Struct.new(
      :event_categories_map_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about an event to which you have subscribed.</p>
    # @!attribute customer_aws_id
    #   <p>The Amazon Web Services customer account that is associated with the Amazon DocumentDB event notification
    #               subscription.</p>
    #   @return [String]
    # @!attribute cust_subscription_id
    #   <p>The Amazon DocumentDB event notification subscription ID.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The topic ARN of the Amazon DocumentDB event notification subscription.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon DocumentDB event notification subscription.</p>
    #            <p>Constraints:</p>
    #            <p>Can be one of the following: <code>creating</code>, <code>modifying</code>,
    #                   <code>deleting</code>, <code>active</code>, <code>no-permission</code>,
    #                   <code>topic-not-exist</code>
    #            </p>
    #            <p>The <code>no-permission</code> status indicates that Amazon DocumentDB no longer has permission
    #               to post to the SNS topic. The <code>topic-not-exist</code> status indicates that the
    #               topic was deleted after the subscription was created.</p>
    #   @return [String]
    # @!attribute subscription_creation_time
    #   <p>The time at which the Amazon DocumentDB event notification subscription was created.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The source type for the Amazon DocumentDB event notification subscription.</p>
    #   @return [String]
    # @!attribute source_ids_list
    #   <p>A list of source IDs for the Amazon DocumentDB event notification subscription.</p>
    #   @return [Array<String>]
    # @!attribute event_categories_list
    #   <p>A list of event categories for the Amazon DocumentDB event notification subscription.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>A Boolean value indicating whether the subscription is enabled. A value of
    #                   <code>true</code> indicates that the subscription is enabled.</p>
    #   @return [Boolean]
    # @!attribute event_subscription_arn
    #   <p>The Amazon Resource Name (ARN) for the event subscription.</p>
    #   @return [String]
    class EventSubscription < Struct.new(
      :customer_aws_id,
      :cust_subscription_id,
      :sns_topic_arn,
      :status,
      :subscription_creation_time,
      :source_type,
      :source_ids_list,
      :event_categories_list,
      :enabled,
      :event_subscription_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of event subscriptions. </p>
    # @!attribute message
    #   @return [String]
    class EventSubscriptionQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeEventSubscriptions</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute event_subscriptions_list
    #   <p>A list of event subscriptions.</p>
    #   @return [Array<Types::EventSubscription>]
    class EventSubscriptionsMessage < Struct.new(
      :marker,
      :event_subscriptions_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeEvents</a>.</p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute events
    #   <p>Detailed information about one or more events. </p>
    #   @return [Array<Types::Event>]
    class EventsMessage < Struct.new(
      :marker,
      :events,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>FailoverDBCluster</a>.</p>
    # @!attribute db_cluster_identifier
    #   <p>A cluster identifier to force a failover for. This parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute target_db_instance_identifier
    #   <p>The name of the instance to promote to the primary instance.</p>
    #            <p>You must specify the instance identifier for an Amazon DocumentDB replica in the cluster. For
    #               example, <code>mydbcluster-replica1</code>.</p>
    #   @return [String]
    class FailoverDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class FailoverDBClusterResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The identifier of the Amazon DocumentDB global cluster to apply this operation. 
    #               The identifier is the unique key assigned by the user when the cluster is created. 
    #               In other words, it's the name of the global cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing global cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    #   @return [String]
    # @!attribute target_db_cluster_identifier
    #   <p>The identifier of the secondary Amazon DocumentDB cluster that you want to promote to the primary for the global cluster. 
    #               Use the Amazon Resource Name (ARN) for the identifier so that Amazon DocumentDB can locate the cluster in its Amazon Web Services region.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing secondary cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    #   @return [String]
    # @!attribute allow_data_loss
    #   <p>Specifies whether to allow data loss for this global cluster operation. Allowing data loss triggers a global failover operation.</p>
    #            <p>If you don't specify <code>AllowDataLoss</code>, the global cluster operation defaults to a switchover.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Can't be specified together with the <code>Switchover</code> parameter.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute switchover
    #   <p>Specifies whether to switch over this global database cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Can't be specified together with the <code>AllowDataLoss</code> parameter.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    class FailoverGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :target_db_cluster_identifier,
      :allow_data_loss,
      :switchover,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Amazon DocumentDB global cluster.</p>
    #   @return [Types::GlobalCluster]
    class FailoverGlobalClusterResult < Struct.new(
      :global_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A named set of filter values, used to return a more specific list of results. You can
    #             use a filter to match a set of resources by specific criteria, such as IDs.</p>
    #          <p>Wildcards are not supported in filters.</p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case sensitive.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more filter values. Filter values are case sensitive.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A data type representing an Amazon DocumentDB global cluster.</p>
    # @!attribute global_cluster_identifier
    #   <p>Contains a user-supplied global  cluster identifier. This identifier is the unique key that identifies a global cluster. </p>
    #   @return [String]
    # @!attribute global_cluster_resource_id
    #   <p>The Amazon Web Services RegionRegion-unique, immutable identifier for the global database cluster. 
    #               This identifier is found in CloudTrail log entries whenever the KMS customer master key (CMK) for the cluster is accessed. </p>
    #   @return [String]
    # @!attribute global_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for the global cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the current state of this global cluster.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The Amazon DocumentDB database engine used by the global cluster. </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The default database name within the new global cluster.</p>
    #   @return [String]
    # @!attribute storage_encrypted
    #   <p>The storage encryption setting for the global cluster.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the new global cluster.</p>
    #   @return [Boolean]
    # @!attribute global_cluster_members
    #   <p>The list of cluster IDs for secondary clusters within the global cluster. Currently limited to one item. </p>
    #   @return [Array<Types::GlobalClusterMember>]
    class GlobalCluster < Struct.new(
      :global_cluster_identifier,
      :global_cluster_resource_id,
      :global_cluster_arn,
      :status,
      :engine,
      :engine_version,
      :database_name,
      :storage_encrypted,
      :deletion_protection,
      :global_cluster_members,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The <code>GlobalClusterIdentifier</code> already exists. Choose a new global cluster identifier (unique name) to create a new global cluster. </p>
    # @!attribute message
    #   @return [String]
    class GlobalClusterAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A data structure with information about any primary and secondary clusters associated with an Amazon DocumentDB global clusters. </p>
    # @!attribute db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for each Amazon DocumentDB cluster.</p>
    #   @return [String]
    # @!attribute readers
    #   <p>The Amazon Resource Name (ARN) for each read-only secondary cluster associated with the Amazon DocumentDB global cluster.</p>
    #   @return [Array<String>]
    # @!attribute is_writer
    #   <p> Specifies whether the Amazon DocumentDB cluster is the primary cluster (that is, has read-write capability) for the Amazon DocumentDB global cluster with which it is associated. </p>
    #   @return [Boolean]
    class GlobalClusterMember < Struct.new(
      :db_cluster_arn,
      :readers,
      :is_writer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The <code>GlobalClusterIdentifier</code> doesn't refer to an existing global cluster.</p>
    # @!attribute message
    #   @return [String]
    class GlobalClusterNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of global  clusters for this account is already at the maximum allowed.</p>
    # @!attribute message
    #   @return [String]
    class GlobalClusterQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p></p>
    #   @return [String]
    # @!attribute global_clusters
    #   <p></p>
    #   @return [Array<Types::GlobalCluster>]
    class GlobalClustersMessage < Struct.new(
      :marker,
      :global_clusters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request would cause you to exceed the allowed number of instances.</p>
    # @!attribute message
    #   @return [String]
    class InstanceQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The cluster doesn't have enough capacity for the current operation.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientDBClusterCapacityFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified instance class isn't available in the specified Availability Zone.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientDBInstanceCapacityFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There is not enough storage available for the current action. You might be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available. </p>
    # @!attribute message
    #   @return [String]
    class InsufficientStorageClusterCapacityFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The provided value isn't a valid cluster snapshot state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDBClusterSnapshotStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The cluster isn't in a valid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDBClusterStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The specified instance isn't in the <i>available</i> state.
    #         </p>
    # @!attribute message
    #   @return [String]
    class InvalidDBInstanceStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The parameter group is in use, or it is in a state that is not valid. If you are trying to delete the parameter group, you can't delete it when the parameter group is in this state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDBParameterGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The state of the security group doesn't allow deletion.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDBSecurityGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The state of the snapshot doesn't allow deletion.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDBSnapshotStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subnet group can't be deleted because it's in use.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDBSubnetGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The subnet isn't in the <i>available</i> state. </p>
    # @!attribute message
    #   @return [String]
    class InvalidDBSubnetStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Someone else might be modifying a subscription. Wait a few seconds, and try
    #             again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEventSubscriptionStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation can't be performed while the cluster is in this state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidGlobalClusterStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You cannot restore from a virtual private cloud (VPC) backup to a non-VPC DB
    #             instance.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRestoreFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested subnet is not valid, or multiple subnets were requested that are not all
    #             in a common virtual private cloud (VPC).</p>
    # @!attribute message
    #   @return [String]
    class InvalidSubnet < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subnet group doesn't cover all Availability Zones after it is created
    #             because of changes that were made.</p>
    # @!attribute message
    #   @return [String]
    class InvalidVPCNetworkStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An error occurred when accessing an KMS key.</p>
    # @!attribute message
    #   @return [String]
    class KMSKeyNotAccessibleFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ListTagsForResource</a>.</p>
    # @!attribute resource_name
    #   <p>The Amazon DocumentDB resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
    #   @return [String]
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #   @return [Array<Types::Filter>]
    class ListTagsForResourceMessage < Struct.new(
      :resource_name,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyDBCluster</a>.</p>
    # @!attribute db_cluster_identifier
    #   <p>The cluster identifier for the cluster that is being modified. This parameter is
    #               not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute new_db_cluster_identifier
    #   <p>The new cluster identifier for the cluster when renaming a cluster. This
    #               value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    #   @return [String]
    # @!attribute apply_immediately
    #   <p>A value that specifies whether the changes in this request and any pending changes are
    #               asynchronously applied as soon as possible, regardless of the
    #                   <code>PreferredMaintenanceWindow</code> setting for the cluster. If this
    #               parameter is set to <code>false</code>, changes to the cluster are applied during the
    #               next maintenance window.</p>
    #            <p>The <code>ApplyImmediately</code> parameter affects only the
    #                   <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If
    #               you set this parameter value to <code>false</code>, the changes to the
    #                   <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are
    #               applied during the next maintenance window. All other changes are applied immediately,
    #               regardless of the value of the <code>ApplyImmediately</code> parameter.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a
    #               minimum value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to use for the cluster.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups that the cluster will belong
    #               to.</p>
    #   @return [Array<String>]
    # @!attribute port
    #   <p>The port number on which the cluster accepts connections.</p>
    #            <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
    #            <p>Default: The same port as the original cluster.</p>
    #   @return [Integer]
    # @!attribute master_user_password
    #   <p>The password for the master database user. This password can contain any printable
    #               ASCII character except forward slash (/), double quote ("), or the "at" symbol
    #               (@).</p>
    #            <p>Constraints: Must contain from 8 to 100 characters.</p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups
    #               are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #               Coordinated Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for
    #               each Amazon Web Services Region, occurring on a random day of the week. </p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to Amazon
    #               CloudWatch Logs for a specific instance or cluster. The
    #                   <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which
    #               logs are exported (or not exported) to CloudWatch Logs.</p>
    #   @return [Types::CloudwatchLogsExportConfiguration]
    # @!attribute engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #                Changing this parameter results in an outage. The change is applied during
    #                the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #            <p>To list all of the available engine versions for Amazon DocumentDB use the following command:</p>
    #            <p>
    #               <code>aws docdb describe-db-engine-versions --engine docdb --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #   @return [String]
    # @!attribute allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #            <p>Constraints: You must allow major version upgrades when specifying a value for the
    #                <code>EngineVersion</code> parameter that is a different major version than the DB
    #                cluster's current version.</p>
    #   @return [Boolean]
    # @!attribute deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is
    #               enabled, the cluster cannot be deleted unless it is modified and
    #                   <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code>
    #               protects clusters from being accidentally deleted.</p>
    #   @return [Boolean]
    # @!attribute storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #   @return [String]
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    #   @return [Types::ServerlessV2ScalingConfiguration]
    # @!attribute manage_master_user_password
    #   <p>Specifies whether to manage the master user password with Amazon Web Services Secrets Manager.
    #               If the cluster doesn't manage the master user password with Amazon Web Services Secrets Manager, you can turn on this management. 
    #               In this case, you can't specify <code>MasterUserPassword</code>.
    #               If the cluster already manages the master user password with Amazon Web Services Secrets Manager, and you specify that the master user password is not managed with Amazon Web Services Secrets Manager, then you must specify <code>MasterUserPassword</code>. 
    #               In this case, Amazon DocumentDB deletes the secret and uses the new password for the master user specified by <code>MasterUserPassword</code>.</p>
    #   @return [Boolean]
    # @!attribute master_user_secret_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to encrypt a secret that is automatically generated and managed in Amazon Web Services Secrets Manager.</p>
    #            <p>This setting is valid only if both of the following conditions are met:</p>
    #            <ul>
    #               <li>
    #                  <p>The cluster doesn't manage the master user password in Amazon Web Services Secrets Manager. 
    #                   If the cluster already manages the master user password in Amazon Web Services Secrets Manager, you can't change the KMS key that is used to encrypt the secret.</p>
    #               </li>
    #               <li>
    #                  <p>You are enabling <code>ManageMasterUserPassword</code> to manage the master user password in Amazon Web Services Secrets Manager. 
    #                   If you are turning on <code>ManageMasterUserPassword</code> and don't specify <code>MasterUserSecretKmsKeyId</code>, then the <code>aws/secretsmanager</code> KMS key is used to encrypt the secret. 
    #                   If the secret is in a different Amazon Web Services account, then you can't use the <code>aws/secretsmanager</code> KMS key to encrypt the secret, and you must use a customer managed KMS key.</p>
    #               </li>
    #            </ul>
    #            <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. 
    #               To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #            <p>There is a default KMS key for your Amazon Web Services account. 
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute rotate_master_user_password
    #   <p>Specifies whether to rotate the secret managed by Amazon Web Services Secrets Manager for the master user password.</p>
    #            <p>This setting is valid only if the master user password is managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for the cluster. 
    #               The secret value contains the updated password.</p>
    #            <p>Constraint: You must apply the change immediately when rotating the master user password.</p>
    #   @return [Boolean]
    class ModifyDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :new_db_cluster_identifier,
      :apply_immediately,
      :backup_retention_period,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :port,
      :master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :cloudwatch_logs_export_configuration,
      :engine_version,
      :allow_major_version_upgrade,
      :deletion_protection,
      :storage_type,
      :serverless_v2_scaling_configuration,
      :manage_master_user_password,
      :master_user_secret_kms_key_id,
      :rotate_master_user_password,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyDBClusterParameterGroup</a>.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to modify.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of parameters in the cluster parameter group to modify.</p>
    #   @return [Array<Types::Parameter>]
    class ModifyDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the name of a cluster parameter group.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #   @return [String]
    class ModifyDBClusterParameterGroupOutput < Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class ModifyDBClusterResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyDBClusterSnapshotAttribute</a>.</p>
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier for the cluster snapshot to modify the attributes for.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the cluster snapshot attribute to modify.</p>
    #            <p>To manage authorization for other Amazon Web Services accounts to copy or restore a manual cluster
    #               snapshot, set this value to <code>restore</code>.</p>
    #   @return [String]
    # @!attribute values_to_add
    #   <p>A list of cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
    #            <p>To authorize other Amazon Web Services accounts to copy or restore a manual cluster snapshot, set this list to include one or more Amazon Web Services account IDs. To make the manual cluster snapshot restorable by any Amazon Web Services account, set it to <code>all</code>. Do not add the <code>all</code> value for any manual cluster snapshots that contain private information that you don't want to be available to all Amazon Web Services accounts.</p>
    #   @return [Array<String>]
    # @!attribute values_to_remove
    #   <p>A list of cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
    #            <p>To remove authorization for other Amazon Web Services accounts to copy or restore a manual cluster snapshot, set this list to include one or more Amazon Web Services account identifiers. To remove authorization for any Amazon Web Services account to copy or restore the cluster snapshot, set it to <code>all</code> . If you specify <code>all</code>, an Amazon Web Services account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual cluster snapshot.</p>
    #   @return [Array<String>]
    class ModifyDBClusterSnapshotAttributeMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_snapshot_attributes_result
    #   <p>Detailed information about the attributes that are associated with a cluster
    #               snapshot.</p>
    #   @return [Types::DBClusterSnapshotAttributesResult]
    class ModifyDBClusterSnapshotAttributeResult < Struct.new(
      :db_cluster_snapshot_attributes_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyDBInstance</a>.</p>
    # @!attribute db_instance_identifier
    #   <p>The instance identifier. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute db_instance_class
    #   <p>The new compute and memory capacity of the instance; for example, <code>db.r5.large</code>. Not all instance classes are available in all Amazon Web Services Regions. </p>
    #            <p>If you modify the instance class, an outage occurs during the change. The change is
    #               applied during the next maintenance window, unless <code>ApplyImmediately</code> is
    #               specified as <code>true</code> for this request. </p>
    #            <p>Default: Uses existing setting.</p>
    #   @return [String]
    # @!attribute apply_immediately
    #   <p>Specifies whether the modifications in this request and any pending modifications are
    #               asynchronously applied as soon as possible, regardless of the
    #                   <code>PreferredMaintenanceWindow</code> setting for the instance. </p>
    #            <p> If this parameter is set to <code>false</code>, changes to the instance are
    #               applied during the next maintenance window. Some parameter changes can cause an outage
    #               and are applied on the next reboot.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #               result in an outage. Changing this parameter doesn't result in an outage except in the
    #               following situation, and the change is asynchronously applied as soon as possible. If
    #               there are pending actions that cause a reboot, and the maintenance window is changed to
    #               include the current time, changing this parameter causes a reboot of the instance. If
    #               you are moving this window to the current time, there must be at least 30 minutes
    #               between the current time and end of the window to ensure that pending changes are
    #               applied.</p>
    #            <p>Default: Uses existing setting.</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Must be at least 30 minutes.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set.</p>
    #   @return [Boolean]
    # @!attribute new_db_instance_identifier
    #   <p> The new instance identifier for the instance when renaming an instance. When you change the instance identifier, an instance reboot occurs immediately if you set <code>Apply Immediately</code> to <code>true</code>. It occurs during the next maintenance window if you set <code>Apply Immediately</code> to <code>false</code>. This value is stored as a lowercase string. </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    #   @return [String]
    # @!attribute ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the instance.</p>
    #   @return [String]
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #   @return [Boolean]
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid values: 0-15</p>
    #   @return [Integer]
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB Instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html">Using Amazon
    #                   Performance Insights</a>.</p>
    #   @return [Boolean]
    # @!attribute performance_insights_kms_key_id
    #   <p>The KMS key identifier for encryption of Performance Insights
    #               data.</p>
    #            <p>The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #               for the KMS key.</p>
    #            <p>If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your
    #               default KMS key. There is a default KMS key for your
    #               Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services region.</p>
    #   @return [String]
    # @!attribute certificate_rotation_restart
    #   <p>Specifies whether the DB instance is restarted when you rotate your 
    #               SSL/TLS certificate.</p>
    #            <p>By default, the DB instance is restarted when you rotate your SSL/TLS certificate. The certificate 
    #               is not updated until the DB instance is restarted.</p>
    #            <important>
    #               <p>Set this parameter only if you are <i>not</i> using SSL/TLS to connect to the DB instance.</p>
    #            </important>
    #            <p>If you are using SSL/TLS to connect to the DB instance, see <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html">Updating Your Amazon DocumentDB TLS 
    #               Certificates</a> and 
    #               <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html">
    #                   Encrypting Data in Transit</a> in the <i>Amazon DocumentDB Developer 
    #                       Guide</i>.</p>
    #   @return [Boolean]
    class ModifyDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :apply_immediately,
      :preferred_maintenance_window,
      :auto_minor_version_upgrade,
      :new_db_instance_identifier,
      :ca_certificate_identifier,
      :copy_tags_to_snapshot,
      :promotion_tier,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :certificate_rotation_restart,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_instance
    #   <p>Detailed information about an instance. </p>
    #   @return [Types::DBInstance]
    class ModifyDBInstanceResult < Struct.new(
      :db_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyDBSubnetGroup</a>.</p>
    # @!attribute db_subnet_group_name
    #   <p>The name for the subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. </p>
    #            <p>Constraints: Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute db_subnet_group_description
    #   <p>The description for the subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the subnet group.</p>
    #   @return [Array<String>]
    class ModifyDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_subnet_group
    #   <p>Detailed information about a subnet group. </p>
    #   @return [Types::DBSubnetGroup]
    class ModifyDBSubnetGroupResult < Struct.new(
      :db_subnet_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyEventSubscription</a>.</p>
    # @!attribute subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The
    #               ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by an instance, set this parameter to <code>db-instance</code>. If this value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>
    #            </p>
    #   @return [String]
    # @!attribute event_categories
    #   <p> A list of event categories for a <code>SourceType</code> that you want to subscribe
    #               to.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription. </p>
    #   @return [Boolean]
    class ModifyEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_subscription
    #   <p>Detailed information about an event to which you have subscribed.</p>
    #   @return [Types::EventSubscription]
    class ModifyEventSubscriptionResult < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ModifyGlobalCluster</a>.</p>
    # @!attribute global_cluster_identifier
    #   <p>The identifier for the global cluster being modified. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing global cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute new_global_cluster_identifier
    #   <p>The new identifier for a global cluster when you modify a global cluster. This value is stored as a lowercase string.</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #                  <p>The first character must be a letter</p>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>Indicates if the global cluster has deletion protection enabled. The global cluster can't be deleted when deletion protection is enabled. </p>
    #   @return [Boolean]
    class ModifyGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :new_global_cluster_identifier,
      :deletion_protection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Amazon DocumentDB global cluster.</p>
    #   @return [Types::GlobalCluster]
    class ModifyGlobalClusterResult < Struct.new(
      :global_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The options that are available for an instance.</p>
    # @!attribute engine
    #   <p>The engine type of an instance.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version of an instance.</p>
    #   @return [String]
    # @!attribute db_instance_class
    #   <p>The instance class for an instance.</p>
    #   @return [String]
    # @!attribute license_model
    #   <p>The license model for an instance.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>A list of Availability Zones for an instance.</p>
    #   @return [Array<Types::AvailabilityZone>]
    # @!attribute vpc
    #   <p>Indicates whether an instance is in a virtual private cloud (VPC).</p>
    #   @return [Boolean]
    # @!attribute storage_type
    #   <p>The storage type to associate with the DB cluster</p>
    #   @return [String]
    class OrderableDBInstanceOption < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zones,
      :vpc,
      :storage_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribeOrderableDBInstanceOptions</a>.</p>
    # @!attribute orderable_db_instance_options
    #   <p>The options that are available for a particular orderable instance.</p>
    #   @return [Array<Types::OrderableDBInstanceOption>]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class OrderableDBInstanceOptionsMessage < Struct.new(
      :orderable_db_instance_options,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about an individual parameter.</p>
    # @!attribute parameter_name
    #   <p>Specifies the name of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>Specifies the value of the parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Provides a description of the parameter.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates the source of the parameter value.</p>
    #   @return [String]
    # @!attribute apply_type
    #   <p>Specifies the engine-specific parameters type.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>Specifies the valid data type for the parameter.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>Specifies the valid range of values for the parameter.</p>
    #   @return [String]
    # @!attribute is_modifiable
    #   <p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can
    #               be modified. Some parameters have security or operational implications that prevent them
    #               from being changed. </p>
    #   @return [Boolean]
    # @!attribute minimum_engine_version
    #   <p>The earliest engine version to which the parameter can apply.</p>
    #   @return [String]
    # @!attribute apply_method
    #   <p>Indicates when to apply parameter updates.</p>
    #   @return [String]
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :apply_type,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :apply_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of the log types whose configuration is still pending. These log types are in
    #             the process of being activated or deactivated.</p>
    # @!attribute log_types_to_enable
    #   <p>Log types that are in the process of being deactivated. After they are deactivated,
    #               these log types aren't exported to CloudWatch Logs.</p>
    #   @return [Array<String>]
    # @!attribute log_types_to_disable
    #   <p>Log types that are in the process of being enabled. After they are enabled, these log
    #               types are exported to Amazon CloudWatch Logs.</p>
    #   @return [Array<String>]
    class PendingCloudwatchLogsExports < Struct.new(
      :log_types_to_enable,
      :log_types_to_disable,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a pending maintenance action for a resource.</p>
    # @!attribute action
    #   <p>The type of pending maintenance action that is available for the resource.</p>
    #   @return [String]
    # @!attribute auto_applied_after_date
    #   <p>The date of the maintenance window when the action is applied. The maintenance action
    #               is applied to the resource during its first maintenance window after this date. If this
    #               date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>
    #   @return [Time]
    # @!attribute forced_apply_date
    #   <p>The date when the maintenance action is automatically applied. The maintenance action
    #               is applied to the resource on this date regardless of the maintenance window for the
    #               resource. If this date is specified, any <code>immediate</code> opt-in requests are
    #               ignored.</p>
    #   @return [Time]
    # @!attribute opt_in_status
    #   <p>Indicates the type of opt-in request that has been received for the resource.</p>
    #   @return [String]
    # @!attribute current_apply_date
    #   <p>The effective date when the pending maintenance action is applied to the
    #               resource.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description providing more detail about the maintenance action.</p>
    #   @return [String]
    class PendingMaintenanceAction < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>DescribePendingMaintenanceActions</a>.</p>
    # @!attribute pending_maintenance_actions
    #   <p>The maintenance actions to be applied.</p>
    #   @return [Array<Types::ResourcePendingMaintenanceActions>]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response
    #            includes only records beyond the marker, up to the value specified by
    #            <code>MaxRecords</code>.</p>
    #   @return [String]
    class PendingMaintenanceActionsMessage < Struct.new(
      :pending_maintenance_actions,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> One or more modified settings for an instance. These modified settings have been
    #             requested, but haven't been applied yet.</p>
    # @!attribute db_instance_class
    #   <p> Contains the new <code>DBInstanceClass</code> for the instance that will be
    #               applied or is currently being applied. </p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p> Contains the new <code>AllocatedStorage</code> size for then instance that will be
    #               applied or is currently being applied. </p>
    #   @return [Integer]
    # @!attribute master_user_password
    #   <p>Contains the pending or currently in-progress change of the master credentials for the
    #               instance.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Specifies the pending port for the instance.</p>
    #   @return [Integer]
    # @!attribute backup_retention_period
    #   <p>Specifies the pending number of days for which automated backups are retained.</p>
    #   @return [Integer]
    # @!attribute multi_az
    #   <p>Indicates that the Single-AZ instance is to change to a Multi-AZ deployment.</p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #   @return [String]
    # @!attribute license_model
    #   <p>The license model for the instance.</p>
    #            <p>Valid values: <code>license-included</code>, <code>bring-your-own-license</code>,
    #                   <code>general-public-license</code>
    #            </p>
    #   @return [String]
    # @!attribute iops
    #   <p>Specifies the new Provisioned IOPS value for the instance that will be applied or
    #               is currently being applied.</p>
    #   @return [Integer]
    # @!attribute db_instance_identifier
    #   <p> Contains the new <code>DBInstanceIdentifier</code> for the instance that will be
    #               applied or is currently being applied. </p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the instance.</p>
    #   @return [String]
    # @!attribute ca_certificate_identifier
    #   <p>Specifies the identifier of the certificate authority (CA) certificate for the DB
    #               instance.</p>
    #   @return [String]
    # @!attribute db_subnet_group_name
    #   <p>The new subnet group for the instance. </p>
    #   @return [String]
    # @!attribute pending_cloudwatch_logs_exports
    #   <p>A list of the log types whose configuration is still pending. These log types are in
    #               the process of being activated or deactivated.</p>
    #   @return [Types::PendingCloudwatchLogsExports]
    class PendingModifiedValues < Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloudwatch_logs_exports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>RebootDBInstance</a>.</p>
    # @!attribute db_instance_identifier
    #   <p>The instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBInstance</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute force_failover
    #   <p> When <code>true</code>, the reboot is conducted through a Multi-AZ failover. </p>
    #            <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
    #               Multi-AZ.</p>
    #   @return [Boolean]
    class RebootDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :force_failover,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_instance
    #   <p>Detailed information about an instance. </p>
    #   @return [Types::DBInstance]
    class RebootDBInstanceResult < Struct.new(
      :db_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>RemoveFromGlobalCluster</a>.</p>
    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier to detach from the Amazon DocumentDB global cluster. </p>
    #   @return [String]
    # @!attribute db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster that was detached from the Amazon DocumentDB global cluster. </p>
    #   @return [String]
    class RemoveFromGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :db_cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Amazon DocumentDB global cluster.</p>
    #   @return [Types::GlobalCluster]
    class RemoveFromGlobalClusterResult < Struct.new(
      :global_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>RemoveSourceIdentifierFromSubscription</a>.</p>
    # @!attribute subscription_name
    #   <p>The name of the Amazon DocumentDB event notification subscription that you want to remove a
    #               source identifier from.</p>
    #   @return [String]
    # @!attribute source_identifier
    #   <p> The source identifier to be removed from the subscription, such as the instance
    #               identifier for an instance, or the name of a security group. </p>
    #   @return [String]
    class RemoveSourceIdentifierFromSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute event_subscription
    #   <p>Detailed information about an event to which you have subscribed.</p>
    #   @return [Types::EventSubscription]
    class RemoveSourceIdentifierFromSubscriptionResult < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>RemoveTagsFromResource</a>.</p>
    # @!attribute resource_name
    #   <p>The Amazon DocumentDB resource that the tags are removed from. This value is an Amazon Resource
    #               Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #   @return [Array<String>]
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>ResetDBClusterParameterGroup</a>.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to reset.</p>
    #   @return [String]
    # @!attribute reset_all_parameters
    #   <p>A value that is set to <code>true</code> to reset all parameters in the cluster
    #               parameter group to their default values, and <code>false</code> otherwise. You can't use
    #               this parameter if there is a list of parameter names specified for the
    #                   <code>Parameters</code> parameter.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>A list of parameter names in the cluster parameter group to reset to the default
    #               values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is
    #               set to <code>true</code>.</p>
    #   @return [Array<Types::Parameter>]
    class ResetDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :reset_all_parameters,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the name of a cluster parameter group.</p>
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #   @return [String]
    class ResetDBClusterParameterGroupOutput < Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource ID was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>ApplyPendingMaintenanceAction</a>.
    #         </p>
    # @!attribute resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that has pending
    #               maintenance actions.</p>
    #   @return [String]
    # @!attribute pending_maintenance_action_details
    #   <p>A list that provides details about the pending maintenance actions
    #               for the resource.</p>
    #   @return [Array<Types::PendingMaintenanceAction>]
    class ResourcePendingMaintenanceActions < Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>RestoreDBClusterFromSnapshot</a>.</p>
    # @!attribute availability_zones
    #   <p>Provides the list of Amazon EC2 Availability Zones that instances in the restored DB
    #               cluster can be created in.</p>
    #   @return [Array<String>]
    # @!attribute db_cluster_identifier
    #   <p>The name of the cluster to create from the snapshot or cluster snapshot. This
    #               parameter isn't case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    #   @return [String]
    # @!attribute snapshot_identifier
    #   <p>The identifier for the snapshot or cluster snapshot to restore from.</p>
    #            <p>You can use either the name or the Amazon Resource Name (ARN) to specify a cluster
    #               snapshot. However, you can use only the ARN to specify a snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing snapshot.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute engine
    #   <p>The database engine to use for the new cluster.</p>
    #            <p>Default: The same as source.</p>
    #            <p>Constraint: Must be compatible with the engine of the source.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the database engine to use for the new cluster.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which the new cluster accepts connections.</p>
    #            <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>.</p>
    #            <p>Default: The same port as the original cluster.</p>
    #   @return [Integer]
    # @!attribute db_subnet_group_name
    #   <p>The name of the subnet group to use for the new cluster.</p>
    #            <p>Constraints: If provided, must match the name of an existing
    #                   <code>DBSubnetGroup</code>.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups that the new cluster will
    #               belong to.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to be assigned to the restored cluster.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier to use when restoring an encrypted cluster from a DB snapshot or cluster snapshot.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a cluster with the same Amazon Web Services account that owns the KMS encryption key used to encrypt the new cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the
    #               following occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>If the snapshot or cluster snapshot in <code>SnapshotIdentifier</code> is encrypted, then the restored cluster is encrypted using the KMS key that was used to encrypt the snapshot or the cluster snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If the snapshot or the cluster snapshot in
    #                           <code>SnapshotIdentifier</code> is not encrypted, then the restored DB
    #                       cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>A list of log types that must be enabled for exporting to Amazon CloudWatch Logs.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>
    #   @return [Boolean]
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with this DB cluster.</p>
    #            <p>
    #               <i>Type:</i> String.         <i>Required:</i> No.</p>
    #            <p>If this argument is omitted, the default DB cluster parameter group is used.
    #           If supplied, must match the name of an existing default DB cluster parameter group.
    #           The string must consist of from 1 to 255 letters, numbers or hyphens. Its first
    #           character must be a letter, and it cannot end with a hyphen or contain two consecutive
    #           hyphens.</p>
    #   @return [String]
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    #   @return [Types::ServerlessV2ScalingConfiguration]
    # @!attribute storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #   @return [String]
    class RestoreDBClusterFromSnapshotMessage < Struct.new(
      :availability_zones,
      :db_cluster_identifier,
      :snapshot_identifier,
      :engine,
      :engine_version,
      :port,
      :db_subnet_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :db_cluster_parameter_group_name,
      :serverless_v2_scaling_configuration,
      :storage_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class RestoreDBClusterFromSnapshotResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the input to <a>RestoreDBClusterToPointInTime</a>.</p>
    # @!attribute db_cluster_identifier
    #   <p>The name of the new cluster to be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_type
    #   <p>The type of restore to be performed. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>full-copy</code> - The new DB cluster is restored as a full copy of the
    #                   source DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>copy-on-write</code> - The new DB cluster is restored as a clone of the
    #                   source DB cluster.</p>
    #               </li>
    #            </ul>
    #            <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p>
    #            <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is
    #               restored as a full copy of the source DB cluster.</p>
    #   @return [String]
    # @!attribute source_db_cluster_identifier
    #   <p>The identifier of the source cluster from which to restore.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing <code>DBCluster</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_to_time
    #   <p>The date and time to restore the cluster to.</p>
    #            <p>Valid values: A time in Universal Coordinated Time (UTC) format.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the instance.</p>
    #               </li>
    #               <li>
    #                  <p>Must be specified if the <code>UseLatestRestorableTime</code> parameter is not provided.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if the <code>UseLatestRestorableTime</code> parameter is <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>2015-03-07T23:45:00Z</code>
    #            </p>
    #   @return [Time]
    # @!attribute use_latest_restorable_time
    #   <p>A value that is set to <code>true</code> to restore the cluster to the latest
    #               restorable backup time, and <code>false</code> otherwise. </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if the <code>RestoreToTime</code> parameter is
    #               provided.</p>
    #   @return [Boolean]
    # @!attribute port
    #   <p>The port number on which the new cluster accepts connections.</p>
    #            <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p>
    #            <p>Default: The default port for the engine.</p>
    #   @return [Integer]
    # @!attribute db_subnet_group_name
    #   <p>The subnet group name to use for the new cluster.</p>
    #            <p>Constraints: If provided, must match the name of an existing
    #                   <code>DBSubnetGroup</code>.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the new cluster belongs to.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to be assigned to the restored cluster.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier to use when restoring an encrypted cluster from an encrypted cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a cluster with the same Amazon Web Services account that owns the KMS encryption key used to encrypt the new cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p>
    #            <p>You can restore to a new cluster and encrypt the new cluster with an KMS key that is different from the KMS key used to encrypt the source cluster. The new DB cluster is encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>If the cluster is encrypted, then the restored cluster is encrypted using the KMS key that was used to encrypt the source cluster.</p>
    #               </li>
    #               <li>
    #                  <p>If the cluster is not encrypted, then the restored cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>DBClusterIdentifier</code> refers to a cluster that is not encrypted, then
    #               the restore request is rejected.</p>
    #   @return [String]
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>A list of log types that must be enabled for exporting to Amazon CloudWatch
    #               Logs.</p>
    #   @return [Array<String>]
    # @!attribute deletion_protection
    #   <p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>
    #   @return [Boolean]
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    #   @return [Types::ServerlessV2ScalingConfiguration]
    # @!attribute storage_type
    #   <p>The storage type to associate with the DB cluster.</p>
    #            <p>For information on storage types for Amazon DocumentDB clusters, see 
    #               Cluster storage configurations in the <i>Amazon DocumentDB Developer Guide</i>.</p>
    #            <p>Valid values for storage type - <code>standard | iopt1</code>
    #            </p>
    #            <p>Default value is <code>standard </code>
    #            </p>
    #   @return [String]
    class RestoreDBClusterToPointInTimeMessage < Struct.new(
      :db_cluster_identifier,
      :restore_type,
      :source_db_cluster_identifier,
      :restore_to_time,
      :use_latest_restorable_time,
      :port,
      :db_subnet_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :serverless_v2_scaling_configuration,
      :storage_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class RestoreDBClusterToPointInTimeResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon SNS has responded that there is a problem with the specified topic. </p>
    # @!attribute message
    #   @return [String]
    class SNSInvalidTopicFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You do not have permission to publish to the SNS topic Amazon Resource Name (ARN). </p>
    # @!attribute message
    #   @return [String]
    class SNSNoAuthorizationFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The SNS topic Amazon Resource Name (ARN) does not exist. </p>
    # @!attribute message
    #   @return [String]
    class SNSTopicArnNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies any Amazon DocumentDB Serverless properties or limits that differ between Amazon DocumentDB engine versions. 
    #             You can test the values of this attribute when deciding which Amazon DocumentDB version to use in a new or upgraded cluster. 
    #             You can also retrieve the version of an existing cluster and check whether that version supports certain Amazon DocumentDB Serverless features before you attempt to use those features.</p>
    # @!attribute min_capacity
    #   <p>The minimum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. 
    #               You can specify DCU values in half-step increments, such as 8, 8.5, 9, and so on.</p>
    #   @return [Float]
    # @!attribute max_capacity
    #   <p>The maximum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster.
    #               You can specify DCU values in half-step increments, such as 32, 32.5, 33, and so on.</p>
    #   @return [Float]
    class ServerlessV2FeaturesSupport < Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Sets the scaling configuration of an Amazon DocumentDB Serverless cluster.</p>
    # @!attribute min_capacity
    #   <p>The minimum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. 
    #               You can specify DCU values in half-step increments, such as 8, 8.5, 9, and so on.</p>
    #   @return [Float]
    # @!attribute max_capacity
    #   <p>The maximum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster.
    #               You can specify DCU values in half-step increments, such as 32, 32.5, 33, and so on.</p>
    #   @return [Float]
    class ServerlessV2ScalingConfiguration < Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Retrieves the scaling configuration for an Amazon DocumentDB Serverless cluster.</p>
    # @!attribute min_capacity
    #   <p>The minimum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. 
    #               You can specify DCU values in half-step increments, such as 8, 8.5, 9, and so on.</p>
    #   @return [Float]
    # @!attribute max_capacity
    #   <p>The maximum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. 
    #               You can specify DCU values in half-step increments, such as 32, 32.5, 33, and so on. </p>
    #   @return [Float]
    class ServerlessV2ScalingConfigurationInfo < Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have exceeded the maximum number of accounts that you can share a manual DB
    #             snapshot with. </p>
    # @!attribute message
    #   @return [String]
    class SharedSnapshotQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request would cause you to exceed the allowed number of snapshots.</p>
    # @!attribute message
    #   @return [String]
    class SnapshotQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested source could not be found. </p>
    # @!attribute message
    #   @return [String]
    class SourceNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SourceType
      db_instance = 'db-instance'
      db_parameter_group = 'db-parameter-group'
      db_security_group = 'db-security-group'
      db_snapshot = 'db-snapshot'
      db_cluster = 'db-cluster'
      db_cluster_snapshot = 'db-cluster-snapshot'
    end

    # @!attribute db_cluster_identifier
    #   <p>The identifier of the cluster to restart. Example:
    #                   <code>docdb-2019-05-28-15-24-52</code>
    #            </p>
    #   @return [String]
    class StartDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class StartDBClusterResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The identifier of the cluster to stop. Example:
    #               <code>docdb-2019-05-28-15-24-52</code>
    #            </p>
    #   @return [String]
    class StopDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute db_cluster
    #   <p>Detailed information about a cluster. </p>
    #   @return [Types::DBCluster]
    class StopDBClusterResult < Struct.new(
      :db_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request would cause you to exceed the allowed amount of storage available across
    #             all instances.</p>
    # @!attribute message
    #   @return [String]
    class StorageQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Storage of the specified <code>StorageType</code> can't be associated with the DB
    #             instance. </p>
    # @!attribute message
    #   @return [String]
    class StorageTypeNotSupportedFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Detailed information about a subnet. </p>
    # @!attribute subnet_identifier
    #   <p>Specifies the identifier of the subnet.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>Specifies the Availability Zone for the subnet.</p>
    #   @return [Types::AvailabilityZone]
    # @!attribute subnet_status
    #   <p>Specifies the status of the subnet.</p>
    #   @return [String]
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subnet is already in use in the Availability Zone.</p>
    # @!attribute message
    #   @return [String]
    class SubnetAlreadyInUse < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The provided subscription name already exists. </p>
    # @!attribute message
    #   @return [String]
    class SubscriptionAlreadyExistFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The provided category does not exist. </p>
    # @!attribute message
    #   @return [String]
    class SubscriptionCategoryNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subscription name does not exist. </p>
    # @!attribute message
    #   @return [String]
    class SubscriptionNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The identifier of the Amazon DocumentDB global database cluster to switch over. 
    #           The identifier is the unique key assigned by the user when the cluster is created. 
    #           In other words, it's the name of the global cluster.
    #           This parameter isn’t case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing global cluster (Amazon DocumentDB global database).</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    #   @return [String]
    # @!attribute target_db_cluster_identifier
    #   <p>The identifier of the secondary Amazon DocumentDB cluster to promote to the new primary for the global database cluster. 
    #               Use the Amazon Resource Name (ARN) for the identifier so that Amazon DocumentDB can locate the cluster in its Amazon Web Services region.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing secondary cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Minimum length of 1. Maximum length of 255.</p>
    #               </li>
    #            </ul>
    #            <p>Pattern: <code>[A-Za-z][0-9A-Za-z-:._]*</code>
    #            </p>
    #   @return [String]
    class SwitchoverGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :target_db_cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Amazon DocumentDB global cluster.</p>
    #   @return [Types::GlobalCluster]
    class SwitchoverGlobalClusterResult < Struct.new(
      :global_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata assigned to an Amazon DocumentDB resource consisting of a key-value pair.</p>
    # @!attribute key
    #   <p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with "<code>aws:</code>" or "<code>rds:</code>". The string can contain only the set of Unicode letters, digits, white space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #   @return [String]
    # @!attribute value
    #   <p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with "<code>aws:</code>" or "<code>rds:</code>". The string can contain only the set of Unicode letters, digits, white space, '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the output of <a>ListTagsForResource</a>.</p>
    # @!attribute tag_list
    #   <p>A list of one or more tags.</p>
    #   @return [Array<Types::Tag>]
    class TagListMessage < Struct.new(
      :tag_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The version of the database engine that an instance can be upgraded to.</p>
    # @!attribute engine
    #   <p>The name of the upgrade target database engine.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the upgrade target database engine.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The version of the database engine that an instance can be upgraded to.</p>
    #   @return [String]
    # @!attribute auto_upgrade
    #   <p>A value that indicates whether the target version is applied to any source DB instances that have <code>AutoMinorVersionUpgrade</code> set to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute is_major_version_upgrade
    #   <p>A value that indicates whether a database engine is upgraded to a major
    #               version.</p>
    #   @return [Boolean]
    class UpgradeTarget < Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Used as a response element for queries on virtual private cloud (VPC) security group
    #             membership.</p>
    # @!attribute vpc_security_group_id
    #   <p>The name of the VPC security group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #   @return [String]
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
