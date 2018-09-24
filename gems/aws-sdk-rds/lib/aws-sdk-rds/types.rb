# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  module Types

    # Data returned by the **DescribeAccountAttributes** action.
    #
    # @!attribute [rw] account_quotas
    #   A list of AccountQuota objects. Within this list, each quota has a
    #   name, a count of usage toward the quota maximum, and a maximum value
    #   for the quota.
    #   @return [Array<Types::AccountQuota>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AccountAttributesMessage AWS API Documentation
    #
    class AccountAttributesMessage < Struct.new(
      :account_quotas)
      include Aws::Structure
    end

    # Describes a quota for an AWS account, for example, the number of DB
    # instances allowed.
    #
    # @!attribute [rw] account_quota_name
    #   The name of the Amazon RDS quota for this AWS account.
    #   @return [String]
    #
    # @!attribute [rw] used
    #   The amount currently used toward the quota maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum allowed value for the quota.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AccountQuota AWS API Documentation
    #
    class AccountQuota < Struct.new(
      :account_quota_name,
      :used,
      :max)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddRoleToDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         role_arn: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to associate the IAM role with.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   Aurora DB cluster, for example
    #   `arn:aws:iam::123456789012:role/AuroraAccessRole`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBClusterMessage AWS API Documentation
    #
    class AddRoleToDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddSourceIdentifierToSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         source_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the RDS event notification subscription you want to add
    #   a source identifier to.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source to be added.
    #
    #   Constraints:
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddSourceIdentifierToSubscriptionMessage AWS API Documentation
    #
    class AddSourceIdentifierToSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddSourceIdentifierToSubscriptionResult AWS API Documentation
    #
    class AddSourceIdentifierToSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddTagsToResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         tags: [ # required
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon RDS resource that the tags are added to. This value is an
    #   Amazon Resource Name (ARN). For information about creating an ARN,
    #   see [ Constructing an RDS Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon RDS resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ApplyPendingMaintenanceActionMessage
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "String", # required
    #         apply_action: "String", # required
    #         opt_in_type: "String", # required
    #       }
    #
    # @!attribute [rw] resource_identifier
    #   The RDS Amazon Resource Name (ARN) of the resource that the pending
    #   maintenance action applies to. For information about creating an
    #   ARN, see [ Constructing an RDS Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `system-update`, `db-upgrade`
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   A value that specifies the type of opt-in request, or undoes an
    #   opt-in request. An opt-in request of type `immediate` can't be
    #   undone.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ApplyPendingMaintenanceActionMessage AWS API Documentation
    #
    class ApplyPendingMaintenanceActionMessage < Struct.new(
      :resource_identifier,
      :apply_action,
      :opt_in_type)
      include Aws::Structure
    end

    # @!attribute [rw] resource_pending_maintenance_actions
    #   Describes the pending maintenance actions for a resource.
    #   @return [Types::ResourcePendingMaintenanceActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ApplyPendingMaintenanceActionResult AWS API Documentation
    #
    class ApplyPendingMaintenanceActionResult < Struct.new(
      :resource_pending_maintenance_actions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AuthorizeDBSecurityGroupIngressMessage
    #   data as a hash:
    #
    #       {
    #         db_security_group_name: "String", # required
    #         cidrip: "String",
    #         ec2_security_group_name: "String",
    #         ec2_security_group_id: "String",
    #         ec2_security_group_owner_id: "String",
    #       }
    #
    # @!attribute [rw] db_security_group_name
    #   The name of the DB security group to add authorization to.
    #   @return [String]
    #
    # @!attribute [rw] cidrip
    #   The IP range to authorize.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   Name of the EC2 security group to authorize. For VPC DB security
    #   groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_id
    #   Id of the EC2 security group to authorize. For VPC DB security
    #   groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   AWS account number of the owner of the EC2 security group specified
    #   in the `EC2SecurityGroupName` parameter. The AWS Access Key ID is
    #   not an acceptable value. For VPC DB security groups,
    #   `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizeDBSecurityGroupIngressMessage AWS API Documentation
    #
    class AuthorizeDBSecurityGroupIngressMessage < Struct.new(
      :db_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # @!attribute [rw] db_security_group
    #   Contains the details for an Amazon RDS DB security group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSecurityGroups action.
    #   @return [Types::DBSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizeDBSecurityGroupIngressResult AWS API Documentation
    #
    class AuthorizeDBSecurityGroupIngressResult < Struct.new(
      :db_security_group)
      include Aws::Structure
    end

    # Contains Availability Zone information.
    #
    # This data type is used as an element in the following data type:
    #
    # * OrderableDBInstanceOption
    #
    # ^
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      include Aws::Structure
    end

    # Contains the available processor feature information for the DB
    # instance class of a DB instance.
    #
    # For more information, see [Configuring the Processor of the DB
    # Instance Class][1] in the <i>Amazon RDS User Guide. </i>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor
    #
    # @!attribute [rw] name
    #   The name of the processor feature. Valid names are `coreCount` and
    #   `threadsPerCore`.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for the processor feature of the DB instance
    #   class.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The allowed values for the processor feature of the DB instance
    #   class.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AvailableProcessorFeature AWS API Documentation
    #
    class AvailableProcessorFeature < Struct.new(
      :name,
      :default_value,
      :allowed_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BacktrackDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         backtrack_to: Time.now, # required
    #         force: false,
    #         use_earliest_time_on_point_in_time_unavailable: false,
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster to be backtracked. This
    #   parameter is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] backtrack_to
    #   The timestamp of the time to backtrack the DB cluster to, specified
    #   in ISO 8601 format. For more information about ISO 8601, see the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   <note markdown="1"> If the specified time is not a consistent time for the DB cluster,
    #   Aurora automatically chooses the nearest possible consistent time
    #   for the DB cluster.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must contain a valid ISO 8601 timestamp.
    #
    #   * Cannot contain a timestamp set in the future.
    #
    #   Example: `2017-07-08T18:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] force
    #   A value that, if specified, forces the DB cluster to backtrack when
    #   binary logging is enabled. Otherwise, an error occurs when binary
    #   logging is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_earliest_time_on_point_in_time_unavailable
    #   If *BacktrackTo* is set to a timestamp earlier than the earliest
    #   backtrack time, this value backtracks the DB cluster to the earliest
    #   possible backtrack time. Otherwise, an error occurs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BacktrackDBClusterMessage AWS API Documentation
    #
    class BacktrackDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :backtrack_to,
      :force,
      :use_earliest_time_on_point_in_time_unavailable)
      include Aws::Structure
    end

    # A CA certificate for an AWS account.
    #
    # @!attribute [rw] certificate_identifier
    #   The unique key that identifies a certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_type
    #   The type of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] thumbprint
    #   The thumbprint of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] valid_from
    #   The starting date from which the certificate is valid.
    #   @return [Time]
    #
    # @!attribute [rw] valid_till
    #   The final date that the certificate continues to be valid.
    #   @return [Time]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_identifier,
      :certificate_type,
      :thumbprint,
      :valid_from,
      :valid_till,
      :certificate_arn)
      include Aws::Structure
    end

    # Data returned by the **DescribeCertificates** action.
    #
    # @!attribute [rw] certificates
    #   The list of Certificate objects for the AWS account.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeCertificates request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CertificateMessage AWS API Documentation
    #
    class CertificateMessage < Struct.new(
      :certificates,
      :marker)
      include Aws::Structure
    end

    # This data type is used as a response element in the action
    # DescribeDBEngineVersions.
    #
    # @!attribute [rw] character_set_name
    #   The name of the character set.
    #   @return [String]
    #
    # @!attribute [rw] character_set_description
    #   The description of the character set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CharacterSet AWS API Documentation
    #
    class CharacterSet < Struct.new(
      :character_set_name,
      :character_set_description)
      include Aws::Structure
    end

    # The configuration setting for the log types to be enabled for export
    # to CloudWatch Logs for a specific DB instance or DB cluster.
    #
    # The `EnableLogTypes` and `DisableLogTypes` arrays determine which logs
    # will be exported (or not exported) to CloudWatch Logs. The values
    # within these arrays depend on the DB engine being used. For more
    # information, see [Publishing Database Logs to Amazon CloudWatch Logs
    # ][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #
    # @note When making an API call, you may pass CloudwatchLogsExportConfiguration
    #   data as a hash:
    #
    #       {
    #         enable_log_types: ["String"],
    #         disable_log_types: ["String"],
    #       }
    #
    # @!attribute [rw] enable_log_types
    #   The list of log types to enable.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_log_types
    #   The list of log types to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CloudwatchLogsExportConfiguration AWS API Documentation
    #
    class CloudwatchLogsExportConfiguration < Struct.new(
      :enable_log_types,
      :disable_log_types)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         source_db_cluster_parameter_group_identifier: "String", # required
    #         target_db_cluster_parameter_group_identifier: "String", # required
    #         target_db_cluster_parameter_group_description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_db_cluster_parameter_group_identifier
    #   The identifier or Amazon Resource Name (ARN) for the source DB
    #   cluster parameter group. For information about creating an ARN, see
    #   [ Constructing an ARN for Amazon RDS][1] in the *Amazon Aurora User
    #   Guide*.
    #
    #   Constraints:
    #
    #   * Must specify a valid DB cluster parameter group.
    #
    #   * If the source DB cluster parameter group is in the same AWS Region
    #     as the copy, specify a valid DB parameter group identifier, for
    #     example `my-db-cluster-param-group`, or a valid ARN.
    #
    #   * If the source DB parameter group is in a different AWS Region than
    #     the copy, specify a valid DB cluster parameter group ARN, for
    #     example
    #     `arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_identifier
    #   The identifier for the copied DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster-param-group1`
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_description
    #   A description for the copied DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterParameterGroupMessage AWS API Documentation
    #
    class CopyDBClusterParameterGroupMessage < Struct.new(
      :source_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Contains the details of an Amazon RDS DB cluster parameter group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterParameterGroups action.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterParameterGroupResult AWS API Documentation
    #
    class CopyDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyDBClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         source_db_cluster_snapshot_identifier: "String", # required
    #         target_db_cluster_snapshot_identifier: "String", # required
    #         kms_key_id: "String",
    #         pre_signed_url: "String",
    #         copy_tags: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         source_region: "String",
    #       }
    #
    # @!attribute [rw] source_db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to copy. This parameter is
    #   not case-sensitive.
    #
    #   You can't copy an encrypted, shared DB cluster snapshot from one
    #   AWS Region to another.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   * If the source snapshot is in the same AWS Region as the copy,
    #     specify a valid DB snapshot identifier.
    #
    #   * If the source snapshot is in a different AWS Region than the copy,
    #     specify a valid DB cluster snapshot ARN. For more information, go
    #     to [ Copying Snapshots Across AWS Regions][1] in the *Amazon
    #     Aurora User Guide.*
    #
    #   Example: `my-cluster-snapshot1`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html#USER_CopySnapshot.AcrossRegions
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_snapshot_identifier
    #   The identifier of the new DB cluster snapshot to create from the
    #   source DB cluster snapshot. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS
    #   key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
    #   KMS key alias for the KMS encryption key.
    #
    #   If you copy an encrypted DB cluster snapshot from your AWS account,
    #   you can specify a value for `KmsKeyId` to encrypt the copy with a
    #   new KMS encryption key. If you don't specify a value for
    #   `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted
    #   with the same KMS key as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another AWS account, then you must specify a value for `KmsKeyId`.
    #
    #   To copy an encrypted DB cluster snapshot to another AWS Region, you
    #   must set `KmsKeyId` to the KMS key ID you want to use to encrypt the
    #   copy of the DB cluster snapshot in the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in
    #   another AWS Region.
    #
    #   If you copy an unencrypted DB cluster snapshot and specify a value
    #   for the `KmsKeyId` parameter, an error is returned.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBClusterSnapshot` API action in the AWS Region that contains
    #   the source DB cluster snapshot to copy. The `PreSignedUrl` parameter
    #   must be used when copying an encrypted DB cluster snapshot from
    #   another AWS Region.
    #
    #   The pre-signed URL must be a valid request for the
    #   `CopyDBSClusterSnapshot` API action that can be executed in the
    #   source AWS Region that contains the encrypted DB cluster snapshot to
    #   be copied. The pre-signed URL request must contain the following
    #   parameter values:
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB cluster snapshot in the destination AWS
    #     Region. This is the same identifier for both the
    #     `CopyDBClusterSnapshot` action that is called in the destination
    #     AWS Region, and the action contained in the pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that the DB
    #     cluster snapshot will be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied.
    #     This identifier must be in the Amazon Resource Name (ARN) format
    #     for the source AWS Region. For example, if you are copying an
    #     encrypted DB cluster snapshot from the us-west-2 AWS Region, then
    #     your `SourceDBClusterSnapshotIdentifier` looks like the following
    #     example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [ Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   True to copy all tags from the source DB cluster snapshot to the
    #   target DB cluster snapshot, and otherwise false. The default is
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] destination_region
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterSnapshotMessage AWS API Documentation
    #
    class CopyDBClusterSnapshotMessage < Struct.new(
      :source_db_cluster_snapshot_identifier,
      :target_db_cluster_snapshot_identifier,
      :kms_key_id,
      :pre_signed_url,
      :copy_tags,
      :tags,
      :destination_region,
      :source_region)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Contains the details for an Amazon RDS DB cluster snapshot
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterSnapshots action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBClusterSnapshotResult AWS API Documentation
    #
    class CopyDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyDBParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         source_db_parameter_group_identifier: "String", # required
    #         target_db_parameter_group_identifier: "String", # required
    #         target_db_parameter_group_description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_db_parameter_group_identifier
    #   The identifier or ARN for the source DB parameter group. For
    #   information about creating an ARN, see [ Constructing an ARN for
    #   Amazon RDS][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must specify a valid DB parameter group.
    #
    #   * Must specify a valid DB parameter group identifier, for example
    #     `my-db-param-group`, or a valid ARN.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_db_parameter_group_identifier
    #   The identifier for the copied DB parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-db-parameter-group`
    #   @return [String]
    #
    # @!attribute [rw] target_db_parameter_group_description
    #   A description for the copied DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBParameterGroupMessage AWS API Documentation
    #
    class CopyDBParameterGroupMessage < Struct.new(
      :source_db_parameter_group_identifier,
      :target_db_parameter_group_identifier,
      :target_db_parameter_group_description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group
    #   Contains the details of an Amazon RDS DB parameter group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBParameterGroups action.
    #   @return [Types::DBParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBParameterGroupResult AWS API Documentation
    #
    class CopyDBParameterGroupResult < Struct.new(
      :db_parameter_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyDBSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         source_db_snapshot_identifier: "String", # required
    #         target_db_snapshot_identifier: "String", # required
    #         kms_key_id: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         copy_tags: false,
    #         pre_signed_url: "String",
    #         option_group_name: "String",
    #         source_region: "String",
    #       }
    #
    # @!attribute [rw] source_db_snapshot_identifier
    #   The identifier for the source DB snapshot.
    #
    #   If the source snapshot is in the same AWS Region as the copy,
    #   specify a valid DB snapshot identifier. For example, you might
    #   specify `rds:mysql-instance1-snapshot-20130805`.
    #
    #   If the source snapshot is in a different AWS Region than the copy,
    #   specify a valid DB snapshot ARN. For example, you might specify
    #   `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`.
    #
    #   If you are copying from a shared manual DB snapshot, this parameter
    #   must be the Amazon Resource Name (ARN) of the shared DB snapshot.
    #
    #   If you are copying an encrypted snapshot this parameter must be in
    #   the ARN format for the source AWS Region, and must match the
    #   `SourceDBSnapshotIdentifier` in the `PreSignedUrl` parameter.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   ^
    #
    #   Example: `rds:mydb-2012-04-02-00-01`
    #
    #   Example:
    #   `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`
    #   @return [String]
    #
    # @!attribute [rw] target_db_snapshot_identifier
    #   The identifier for the copy of the snapshot.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-db-snapshot`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is
    #   the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
    #   alias for the KMS encryption key.
    #
    #   If you copy an encrypted DB snapshot from your AWS account, you can
    #   specify a value for this parameter to encrypt the copy with a new
    #   KMS encryption key. If you don't specify a value for this
    #   parameter, then the copy of the DB snapshot is encrypted with the
    #   same KMS key as the source DB snapshot.
    #
    #   If you copy an encrypted DB snapshot that is shared from another AWS
    #   account, then you must specify a value for this parameter.
    #
    #   If you specify this parameter when you copy an unencrypted snapshot,
    #   the copy is encrypted.
    #
    #   If you copy an encrypted snapshot to a different AWS Region, then
    #   you must specify a KMS key for the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in
    #   another AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] copy_tags
    #   True to copy all tags from the source DB snapshot to the target DB
    #   snapshot, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBSnapshot` API action in the source AWS Region that contains
    #   the source DB snapshot to copy.
    #
    #   You must specify this parameter when you copy an encrypted DB
    #   snapshot from another AWS Region by using the Amazon RDS API. You
    #   can specify the `--source-region` option instead of this parameter
    #   when you copy an encrypted DB snapshot from another AWS Region by
    #   using the AWS CLI.
    #
    #   The presigned URL must be a valid request for the `CopyDBSnapshot`
    #   API action that can be executed in the source AWS Region that
    #   contains the encrypted DB snapshot to be copied. The presigned URL
    #   request must contain the following parameter values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted DB
    #     snapshot is copied to. This AWS Region is the same one where the
    #     `CopyDBSnapshot` action is called that contains this presigned
    #     URL.
    #
    #     For example, if you copy an encrypted DB snapshot from the
    #     us-west-2 AWS Region to the us-east-1 AWS Region, then you call
    #     the `CopyDBSnapshot` action in the us-east-1 AWS Region and
    #     provide a presigned URL that contains a call to the
    #     `CopyDBSnapshot` action in the us-west-2 AWS Region. For this
    #     example, the `DestinationRegion` in the presigned URL must be set
    #     to the us-east-1 AWS Region.
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB snapshot in the destination AWS Region.
    #     This is the same identifier for both the `CopyDBSnapshot` action
    #     that is called in the destination AWS Region, and the action
    #     contained in the presigned URL.
    #
    #   * `SourceDBSnapshotIdentifier` - The DB snapshot identifier for the
    #     encrypted snapshot to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are copying an encrypted DB snapshot from the
    #     us-west-2 AWS Region, then your `SourceDBSnapshotIdentifier` looks
    #     like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The name of an option group to associate with the copy of the
    #   snapshot.
    #
    #   Specify this option if you are copying a snapshot from one AWS
    #   Region to another, and your DB instance uses a nondefault option
    #   group. If your source DB instance uses Transparent Data Encryption
    #   for Oracle or Microsoft SQL Server, you must specify this option
    #   when copying across AWS Regions. For more information, see [Option
    #   Group Considerations][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBSnapshotMessage AWS API Documentation
    #
    class CopyDBSnapshotMessage < Struct.new(
      :source_db_snapshot_identifier,
      :target_db_snapshot_identifier,
      :kms_key_id,
      :tags,
      :copy_tags,
      :pre_signed_url,
      :option_group_name,
      :destination_region,
      :source_region)
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot
    #   Contains the details of an Amazon RDS DB snapshot.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSnapshots action.
    #   @return [Types::DBSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyDBSnapshotResult AWS API Documentation
    #
    class CopyDBSnapshotResult < Struct.new(
      :db_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyOptionGroupMessage
    #   data as a hash:
    #
    #       {
    #         source_option_group_identifier: "String", # required
    #         target_option_group_identifier: "String", # required
    #         target_option_group_description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_option_group_identifier
    #   The identifier or ARN for the source option group. For information
    #   about creating an ARN, see [ Constructing an ARN for Amazon RDS][1]
    #   in the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must specify a valid option group.
    #
    #   * If the source option group is in the same AWS Region as the copy,
    #     specify a valid option group identifier, for example
    #     `my-option-group`, or a valid ARN.
    #
    #   * If the source option group is in a different AWS Region than the
    #     copy, specify a valid option group ARN, for example
    #     `arn:aws:rds:us-west-2:123456789012:og:special-options`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_option_group_identifier
    #   The identifier for the copied option group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-option-group`
    #   @return [String]
    #
    # @!attribute [rw] target_option_group_description
    #   The description for the copied option group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyOptionGroupMessage AWS API Documentation
    #
    class CopyOptionGroupMessage < Struct.new(
      :source_option_group_identifier,
      :target_option_group_identifier,
      :target_option_group_description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] option_group
    #   @return [Types::OptionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyOptionGroupResult AWS API Documentation
    #
    class CopyOptionGroupResult < Struct.new(
      :option_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["String"],
    #         backup_retention_period: 1,
    #         character_set_name: "String",
    #         database_name: "String",
    #         db_cluster_identifier: "String", # required
    #         db_cluster_parameter_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         db_subnet_group_name: "String",
    #         engine: "String", # required
    #         engine_version: "String",
    #         port: 1,
    #         master_username: "String",
    #         master_user_password: "String",
    #         option_group_name: "String",
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         replication_source_identifier: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         pre_signed_url: "String",
    #         enable_iam_database_authentication: false,
    #         backtrack_window: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         engine_mode: "String",
    #         scaling_configuration: {
    #           min_capacity: 1,
    #           max_capacity: 1,
    #           auto_pause: false,
    #           seconds_until_auto_pause: 1,
    #         },
    #         source_region: "String",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of EC2 Availability Zones that instances in the DB cluster
    #   can be created in. For information on AWS Regions and Availability
    #   Zones, see [Choosing the Regions and Availability Zones][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. You
    #   must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified CharacterSet.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name for your database of up to 64 alpha-numeric characters. If
    #   you do not provide a name, Amazon RDS will not create a database in
    #   the DB cluster you are creating.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, `default.aurora5.6` is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this DB cluster.
    #
    #   Valid Values: `aurora` (for MySQL 5.6-compatible Aurora),
    #   `aurora-mysql` (for MySQL 5.7-compatible Aurora), and
    #   `aurora-postgresql`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`, `5.7.12`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Default: `3306` if engine is set as aurora or `5432` if set to
    #   aurora-postgresql.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified option group.
    #
    #   Permanent options can't be removed from an option group. The option
    #   group can't be removed from a DB cluster once it is associated with
    #   a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred DB Cluster Maintenance Window][1] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week. To see the time blocks available, see [ Adjusting the
    #   Preferred DB Cluster Maintenance Window][1] in the *Amazon Aurora
    #   User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB
    #   cluster if this DB cluster is created as a Read Replica.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for
    #   the KMS encryption key.
    #
    #   If an encryption key is not specified in `KmsKeyId`\:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon RDS will use the encryption key used to encrypt the
    #     source. Otherwise, Amazon RDS will use your default encryption
    #     key.
    #
    #   * If the `StorageEncrypted` parameter is true and
    #     `ReplicationSourceIdentifier` is not specified, then Amazon RDS
    #     will use your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
    #
    #   If you create a Read Replica of an encrypted DB cluster in another
    #   AWS Region, you must set `KmsKeyId` to a KMS key ID that is valid in
    #   the destination AWS Region. This key is used to encrypt the Read
    #   Replica in that AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   A URL that contains a Signature Version 4 signed request for the
    #   `CreateDBCluster` action to be called in the source AWS Region where
    #   the DB cluster is replicated from. You only need to specify
    #   `PreSignedUrl` when you are performing cross-region replication from
    #   an encrypted DB cluster.
    #
    #   The pre-signed URL must be a valid request for the `CreateDBCluster`
    #   API action that can be executed in the source AWS Region that
    #   contains the encrypted DB cluster to be copied.
    #
    #   The pre-signed URL request must contain the following parameter
    #   values:
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB cluster in the destination AWS Region.
    #     This should refer to the same KMS key for both the
    #     `CreateDBCluster` action that is called in the destination AWS
    #     Region, and the action contained in the pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that Aurora Read
    #     Replica will be created in.
    #
    #   * `ReplicationSourceIdentifier` - The DB cluster identifier for the
    #     encrypted DB cluster to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are copying an encrypted DB cluster from the
    #     us-west-2 AWS Region, then your `ReplicationSourceIdentifier`
    #     would look like Example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [ Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, or `parallelquery`.
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] destination_region
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterMessage AWS API Documentation
    #
    class CreateDBClusterMessage < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :database_name,
      :db_cluster_identifier,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :db_subnet_group_name,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :replication_source_identifier,
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :pre_signed_url,
      :enable_iam_database_authentication,
      :backtrack_window,
      :enable_cloudwatch_logs_exports,
      :engine_mode,
      :scaling_configuration,
      :destination_region,
      :source_region)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         db_parameter_group_family: "String", # required
    #         description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DBClusterParameterGroup.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The DB cluster parameter group family name. A DB cluster parameter
    #   group can be associated with one and only one DB cluster parameter
    #   group family, and can be applied only to a DB cluster running a
    #   database engine and engine version compatible with that DB cluster
    #   parameter group family.
    #
    #   **Aurora MySQL**
    #
    #   Example: `aurora5.6`, `aurora-mysql5.7`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `aurora-postgresql9.6`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterParameterGroupMessage AWS API Documentation
    #
    class CreateDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Contains the details of an Amazon RDS DB cluster parameter group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterParameterGroups action.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterParameterGroupResult AWS API Documentation
    #
    class CreateDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterResult AWS API Documentation
    #
    class CreateDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #         db_cluster_identifier: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot. This parameter is stored
    #   as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster to create a snapshot for. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DB cluster snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterSnapshotMessage AWS API Documentation
    #
    class CreateDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Contains the details for an Amazon RDS DB cluster snapshot
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterSnapshots action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterSnapshotResult AWS API Documentation
    #
    class CreateDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_name: "String",
    #         db_instance_identifier: "String", # required
    #         allocated_storage: 1,
    #         db_instance_class: "String", # required
    #         engine: "String", # required
    #         master_username: "String",
    #         master_user_password: "String",
    #         db_security_groups: ["String"],
    #         vpc_security_group_ids: ["String"],
    #         availability_zone: "String",
    #         db_subnet_group_name: "String",
    #         preferred_maintenance_window: "String",
    #         db_parameter_group_name: "String",
    #         backup_retention_period: 1,
    #         preferred_backup_window: "String",
    #         port: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         license_model: "String",
    #         iops: 1,
    #         option_group_name: "String",
    #         character_set_name: "String",
    #         publicly_accessible: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         db_cluster_identifier: "String",
    #         storage_type: "String",
    #         tde_credential_arn: "String",
    #         tde_credential_password: "String",
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         domain: "String",
    #         copy_tags_to_snapshot: false,
    #         monitoring_interval: 1,
    #         monitoring_role_arn: "String",
    #         domain_iam_role_name: "String",
    #         promotion_tier: 1,
    #         timezone: "String",
    #         enable_iam_database_authentication: false,
    #         enable_performance_insights: false,
    #         performance_insights_kms_key_id: "String",
    #         performance_insights_retention_period: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         processor_features: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
    #
    #   Type: String
    #
    #   **MySQL**
    #
    #   The name of the database to create when the DB instance is created.
    #   If this parameter is not specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **MariaDB**
    #
    #   The name of the database to create when the DB instance is created.
    #   If this parameter is not specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **PostgreSQL**
    #
    #   The name of the database to create when the DB instance is created.
    #   If this parameter is not specified, the default "postgres"
    #   database is created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 63 letters, numbers, or underscores.
    #
    #   * Must begin with a letter or an underscore. Subsequent characters
    #     can be letters, underscores, or digits (0-9).
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **Oracle**
    #
    #   The Oracle System ID (SID) of the created DB instance. If you
    #   specify `null`, the default value `ORCL` is used. You can't specify
    #   the string NULL, or any other reserved word, for `DBName`.
    #
    #   Default: `ORCL`
    #
    #   Constraints:
    #
    #   * Cannot be longer than 8 characters
    #
    #   ^
    #
    #   **SQL Server**
    #
    #   Not applicable. Must be null.
    #
    #   **Amazon Aurora**
    #
    #   The name of the database to create when the primary instance of the
    #   DB cluster is created. If this parameter is not specified, no
    #   database is created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gibibytes) to allocate for the DB
    #   instance.
    #
    #   Type: Integer
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Aurora cluster volumes automatically grow as the
    #   amount of data in your database increases, though you are only
    #   charged for the space that you use in an Aurora cluster volume.
    #
    #   **MySQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **MariaDB**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **PostgreSQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **Oracle**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 10 to 3072.
    #
    #   **SQL Server**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 20 to 16384.
    #
    #   * Provisioned IOPS storage (io1):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 100 to 16384.
    #
    #   * Magnetic storage (standard):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       1024.
    #
    #     * Web and Express editions: Must be an integer from 20 to 1024.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this instance.
    #
    #   Not every database engine is available for every AWS Region.
    #
    #   Valid Values:
    #
    #   * `aurora` (for MySQL 5.6-compatible Aurora)
    #
    #   * `aurora-mysql` (for MySQL 5.7-compatible Aurora)
    #
    #   * `aurora-postgresql`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The name for the master user.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The name for the master user is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   Constraints:
    #
    #   * Required for MariaDB.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints:
    #
    #   * Required for SQL Server.
    #
    #   * Must be 1 to 128 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **MySQL**
    #
    #   Constraints:
    #
    #   * Required for MySQL.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Oracle**
    #
    #   Constraints:
    #
    #   * Required for Oracle.
    #
    #   * Must be 1 to 30 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **PostgreSQL**
    #
    #   Constraints:
    #
    #   * Required for PostgreSQL.
    #
    #   * Must be 1 to 63 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the
    #   DB cluster. For more information, see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The EC2 Availability Zone that the DB instance is created in. For
    #   information on AWS Regions and Availability Zones, see [Regions and
    #   Availability Zones][1].
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's AWS Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The AvailabilityZone parameter can't be specified if
    #   the MultiAZ parameter is set to `true`. The specified Availability
    #   Zone must be in the same AWS Region as the current endpoint.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The time range each week during which system maintenance can occur,
    #   in Universal Coordinated Time (UTC). For more information, see
    #   [Amazon RDS Maintenance Window][1].
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance. If this argument is omitted, the default DBParameterGroup
    #   for the specified engine is used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is
    #   managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter. For more information, see [The Backup Window][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups
    #   is managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred DB Instance Maintenance Window][2] in
    #   the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the database accepts connections.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid Values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid Values: `1150-65535` except for `1434`, `3389`, `47001`,
    #   `49152`, and `49152` through `49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. You can't
    #   set the AvailabilityZone parameter if the MultiAZ parameter is set
    #   to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   For a list of valid engine versions, call DescribeDBEngineVersions.
    #
    #   The following are the database engines and links to information
    #   about the major and minor versions that are available with Amazon
    #   RDS. Not every database engine is available for every AWS Region.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The version number of the database engine to be used
    #   by the DB instance is managed by the DB cluster. For more
    #   information, see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   See [MariaDB on Amazon RDS Versions][1] in the *Amazon RDS User
    #   Guide.*
    #
    #   **Microsoft SQL Server**
    #
    #   See [Version and Feature Support on Amazon RDS][2] in the *Amazon
    #   RDS User Guide.*
    #
    #   **MySQL**
    #
    #   See [MySQL on Amazon RDS Versions][3] in the *Amazon RDS User
    #   Guide.*
    #
    #   **Oracle**
    #
    #   See [Oracle Database Engine Release Notes][4] in the *Amazon RDS
    #   User Guide.*
    #
    #   **PostgreSQL**
    #
    #   See [Supported PostgreSQL Database Versions][5] in the *Amazon RDS
    #   User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport
    #   [3]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [5]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to
    #   the DB instance during the maintenance window.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   License model information for this DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for the DB instance. For information about
    #   valid Iops values, see see [Amazon RDS Provisioned IOPS Storage to
    #   Improve Performance][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between 1 and 50 of the storage
    #   amount for the DB instance. Must also be an integer multiple of
    #   1000. For example, if the size of your DB instance is 500 GiB, then
    #   your `Iops` value can be 2000, 3000, 4000, or 5000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   Indicates that the DB instance should be associated with the
    #   specified option group.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group, and that
    #   option group can't be removed from a DB instance once it is
    #   associated with a DB instance
    #   @return [String]
    #
    # @!attribute [rw] character_set_name
    #   For supported engines, indicates that the DB instance should be
    #   associated with the specified CharacterSet.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The character set is managed by the DB cluster. For
    #   more information, see CreateDBCluster.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` is not specified, and `PubliclyAccessible` is
    #   not specified, the following applies:
    #
    #   * If the default VPC in the target region doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target region has an Internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` is not
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the subnets are part of a VPC that has an Internet gateway
    #     attached to it, the DB instance is public.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
    #
    #   For information on creating a DB cluster, see CreateDBCluster.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The encryption for DB instances is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for an encrypted DB instance.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB instance with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   instance, then you can use the KMS key alias instead of the ARN for
    #   the KM encryption key.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The KMS key identifier is managed by the DB cluster.
    #   For more information, see CreateDBCluster.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify
    #   a value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key
    #   for your AWS account. Your AWS account has a different default
    #   encryption key for each AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory Domain to create the instance in.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, go to [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you
    #   must supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB instance. The time zone parameter is
    #   currently supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following
    #   database engines:
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and
    #   otherwise false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs ][1] in the *Amazon Relational Database
    #   Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceMessage AWS API Documentation
    #
    class CreateDBInstanceMessage < Struct.new(
      :db_name,
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :engine,
      :master_username,
      :master_user_password,
      :db_security_groups,
      :vpc_security_group_ids,
      :availability_zone,
      :db_subnet_group_name,
      :preferred_maintenance_window,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :port,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :character_set_name,
      :publicly_accessible,
      :tags,
      :db_cluster_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :storage_encrypted,
      :kms_key_id,
      :domain,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :promotion_tier,
      :timezone,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enable_cloudwatch_logs_exports,
      :processor_features)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBInstanceReadReplicaMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         source_db_instance_identifier: "String", # required
    #         db_instance_class: "String",
    #         availability_zone: "String",
    #         port: 1,
    #         multi_az: false,
    #         auto_minor_version_upgrade: false,
    #         iops: 1,
    #         option_group_name: "String",
    #         publicly_accessible: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         db_subnet_group_name: "String",
    #         storage_type: "String",
    #         copy_tags_to_snapshot: false,
    #         monitoring_interval: 1,
    #         monitoring_role_arn: "String",
    #         kms_key_id: "String",
    #         pre_signed_url: "String",
    #         enable_iam_database_authentication: false,
    #         enable_performance_insights: false,
    #         performance_insights_kms_key_id: "String",
    #         performance_insights_retention_period: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         processor_features: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         use_default_processor_features: false,
    #         source_region: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier of the Read Replica. This identifier is
    #   the unique key that identifies a DB instance. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] source_db_instance_identifier
    #   The identifier of the DB instance that will act as the source for
    #   the Read Replica. Each DB instance can have up to five Read
    #   Replicas.
    #
    #   Constraints:
    #
    #   * Must be the identifier of an existing MySQL, MariaDB, or
    #     PostgreSQL DB instance.
    #
    #   * Can specify a DB instance that is a MySQL Read Replica only if the
    #     source is running MySQL 5.6.
    #
    #   * Can specify a DB instance that is a PostgreSQL DB instance only if
    #     the source is running PostgreSQL 9.3.5 or later (9.4.7 and higher
    #     for cross-region replication).
    #
    #   * The specified DB instance must have automatic backups enabled, its
    #     backup retention period must be greater than 0.
    #
    #   * If the source DB instance is in the same AWS Region as the Read
    #     Replica, specify a valid DB instance identifier.
    #
    #   * If the source DB instance is in a different AWS Region than the
    #     Read Replica, specify a valid DB instance ARN. For more
    #     information, go to [ Constructing an ARN for Amazon RDS][1] in the
    #     *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the Read Replica, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: Inherits from the source DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon EC2 Availability Zone that the Read Replica is created
    #   in.
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's AWS Region.
    #
    #   Example: `us-east-1d`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number that the DB instance uses for connections.
    #
    #   Default: Inherits from the source DB instance
    #
    #   Valid Values: `1150-65535`
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the Read Replica is in a Multi-AZ deployment.
    #
    #   You can create a Read Replica as a Multi-AZ DB instance. RDS creates
    #   a standby of your replica in another Availability Zone for failover
    #   support for the replica. Creating your Read Replica as a Multi-AZ DB
    #   instance is independent of whether the source database is a Multi-AZ
    #   DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to
    #   the Read Replica during the maintenance window.
    #
    #   Default: Inherits from the source DB instance
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The option group the DB instance is associated with. If omitted, the
    #   default option group for the engine specified is used.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address. For more information, see
    #   CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   Specifies a DB subnet group for the DB instance. The new DB instance
    #   is created in the VPC associated with the DB subnet group. If no DB
    #   subnet group is specified, then the new DB instance is not created
    #   in a VPC.
    #
    #   Constraints:
    #
    #   * Can only be specified if the source DB instance identifier
    #     specifies a DB instance in another AWS Region.
    #
    #   * If supplied, must match the name of an existing DBSubnetGroup.
    #
    #   * The specified DB subnet group must be in the same AWS Region in
    #     which the operation is running.
    #
    #   * All Read Replicas in one AWS Region that are created from the same
    #     source DB instance must either:&gt;
    #
    #     * Specify DB subnet groups from the same VPC. All these Read
    #       Replicas are created in the same VPC.
    #
    #     * Not specify a DB subnet group. All these Read Replicas are
    #       created outside of any VPC.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the Read Replica.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the Read Replica to snapshots of the Read
    #   Replica, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the Read Replica. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, go to [To create an IAM role for Amazon
    #   RDS Enhanced Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you
    #   must supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is
    #   the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
    #   alias for the KMS encryption key.
    #
    #   If you specify this parameter when you create a Read Replica from an
    #   unencrypted DB instance, the Read Replica is encrypted.
    #
    #   If you create an encrypted Read Replica in the same AWS Region as
    #   the source DB instance, then you do not have to specify a value for
    #   this parameter. The Read Replica is encrypted with the same KMS key
    #   as the source DB instance.
    #
    #   If you create an encrypted Read Replica in a different AWS Region,
    #   then you must specify a KMS key for the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in
    #   another AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CreateDBInstanceReadReplica` API action in the source AWS Region
    #   that contains the source DB instance.
    #
    #   You must specify this parameter when you create an encrypted Read
    #   Replica from another AWS Region by using the Amazon RDS API. You can
    #   specify the `--source-region` option instead of this parameter when
    #   you create an encrypted Read Replica from another AWS Region by
    #   using the AWS CLI.
    #
    #   The presigned URL must be a valid request for the
    #   `CreateDBInstanceReadReplica` API action that can be executed in the
    #   source AWS Region that contains the encrypted source DB instance.
    #   The presigned URL request must contain the following parameter
    #   values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted Read
    #     Replica is created in. This AWS Region is the same one where the
    #     `CreateDBInstanceReadReplica` action is called that contains this
    #     presigned URL.
    #
    #     For example, if you create an encrypted DB instance in the
    #     us-west-1 AWS Region, from a source DB instance in the us-east-2
    #     AWS Region, then you call the `CreateDBInstanceReadReplica` action
    #     in the us-east-1 AWS Region and provide a presigned URL that
    #     contains a call to the `CreateDBInstanceReadReplica` action in the
    #     us-west-2 AWS Region. For this example, the `DestinationRegion` in
    #     the presigned URL must be set to the us-east-1 AWS Region.
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the Read Replica in the destination AWS Region. This is
    #     the same identifier for both the `CreateDBInstanceReadReplica`
    #     action that is called in the destination AWS Region, and the
    #     action contained in the presigned URL.
    #
    #   * `SourceDBInstanceIdentifier` - The DB instance identifier for the
    #     encrypted DB instance to be replicated. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source AWS Region.
    #     For example, if you are creating an encrypted Read Replica from a
    #     DB instance in the us-west-2 AWS Region, then your
    #     `SourceDBInstanceIdentifier` looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following
    #   database engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   True to enable Performance Insights for the read replica, and
    #   otherwise false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the new DB instance is to export to CloudWatch
    #   Logs. The values in the list depend on the DB engine being used. For
    #   more information, see [Publishing Database Logs to Amazon CloudWatch
    #   Logs ][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination_region
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceReadReplicaMessage AWS API Documentation
    #
    class CreateDBInstanceReadReplicaMessage < Struct.new(
      :db_instance_identifier,
      :source_db_instance_identifier,
      :db_instance_class,
      :availability_zone,
      :port,
      :multi_az,
      :auto_minor_version_upgrade,
      :iops,
      :option_group_name,
      :publicly_accessible,
      :tags,
      :db_subnet_group_name,
      :storage_type,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :kms_key_id,
      :pre_signed_url,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :destination_region,
      :source_region)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceReadReplicaResult AWS API Documentation
    #
    class CreateDBInstanceReadReplicaResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceResult AWS API Documentation
    #
    class CreateDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "String", # required
    #         db_parameter_group_family: "String", # required
    #         description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The DB parameter group family name. A DB parameter group can be
    #   associated with one and only one DB parameter group family, and can
    #   be applied only to a DB instance running a database engine and
    #   engine version compatible with that DB parameter group family.
    #
    #   To list all of the available parameter group families, use the
    #   following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily"`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBParameterGroupMessage AWS API Documentation
    #
    class CreateDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group
    #   Contains the details of an Amazon RDS DB parameter group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBParameterGroups action.
    #   @return [Types::DBParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBParameterGroupResult AWS API Documentation
    #
    class CreateDBParameterGroupResult < Struct.new(
      :db_parameter_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBSecurityGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_security_group_name: "String", # required
    #         db_security_group_description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_security_group_name
    #   The name for the DB security group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Must not be "Default"
    #
    #   Example: `mysecuritygroup`
    #   @return [String]
    #
    # @!attribute [rw] db_security_group_description
    #   The description for the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSecurityGroupMessage AWS API Documentation
    #
    class CreateDBSecurityGroupMessage < Struct.new(
      :db_security_group_name,
      :db_security_group_description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_security_group
    #   Contains the details for an Amazon RDS DB security group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSecurityGroups action.
    #   @return [Types::DBSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSecurityGroupResult AWS API Documentation
    #
    class CreateDBSecurityGroupResult < Struct.new(
      :db_security_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_snapshot_identifier: "String", # required
    #         db_instance_identifier: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The identifier for the DB snapshot.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The identifier of the DB instance that you want to create the
    #   snapshot of.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSnapshotMessage AWS API Documentation
    #
    class CreateDBSnapshotMessage < Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot
    #   Contains the details of an Amazon RDS DB snapshot.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSnapshots action.
    #   @return [Types::DBSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSnapshotResult AWS API Documentation
    #
    class CreateDBSnapshotResult < Struct.new(
      :db_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String", # required
    #         db_subnet_group_description: "String", # required
    #         subnet_ids: ["String"], # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 letters, numbers,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 Subnet IDs for the DB subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSubnetGroupMessage AWS API Documentation
    #
    class CreateDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Contains the details of an Amazon RDS DB subnet group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSubnetGroups action.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBSubnetGroupResult AWS API Documentation
    #
    class CreateDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         sns_topic_arn: "String", # required
    #         source_type: "String",
    #         event_categories: ["String"],
    #         source_ids: ["String"],
    #         enabled: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the subscription.
    #
    #   Constraints: The name must be less than 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source that is generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group`
    #   \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a SourceType that you want to
    #   subscribe to. You can see a list of the categories for a given
    #   SourceType in the [Events][1] topic in the *Amazon RDS User Guide*
    #   or by using the **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_ids
    #   The list of identifiers of the event sources for which events are
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain
    #   only ASCII letters, digits, and hyphens; it can't end with a hyphen
    #   or contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If SourceIds are supplied, SourceType must also be provided.
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to **true** to activate the subscription, set
    #   to **false** to create the subscription but not active it.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateEventSubscriptionMessage AWS API Documentation
    #
    class CreateEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateEventSubscriptionResult AWS API Documentation
    #
    class CreateEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOptionGroupMessage
    #   data as a hash:
    #
    #       {
    #         option_group_name: "String", # required
    #         engine_name: "String", # required
    #         major_engine_version: "String", # required
    #         option_group_description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] option_group_name
    #   Specifies the name of the option group to be created.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `myoptiongroup`
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   Specifies the name of the engine that this option group should be
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   Specifies the major version of the engine that this option group
    #   should be associated with.
    #   @return [String]
    #
    # @!attribute [rw] option_group_description
    #   The description of the option group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateOptionGroupMessage AWS API Documentation
    #
    class CreateOptionGroupMessage < Struct.new(
      :option_group_name,
      :engine_name,
      :major_engine_version,
      :option_group_description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] option_group
    #   @return [Types::OptionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateOptionGroupResult AWS API Documentation
    #
    class CreateOptionGroupResult < Struct.new(
      :option_group)
      include Aws::Structure
    end

    # Contains the details of an Amazon Aurora DB cluster.
    #
    # This data type is used as a response element in the
    # DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #
    # @!attribute [rw] allocated_storage
    #   For all database engines except Amazon Aurora, `AllocatedStorage`
    #   specifies the allocated storage size in gibibytes (GiB). For Aurora,
    #   `AllocatedStorage` always returns 1, because Aurora DB cluster
    #   storage size is not fixed, but instead automatically adjusts as
    #   needed.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the DB
    #   cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic DB snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   If present, specifies the name of the character set that this
    #   cluster is associated with.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Contains the name of the initial database of this DB cluster that
    #   was provided at create time, if one was specified when the DB
    #   cluster was created. This same name is returned for the life of the
    #   DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains a user-supplied DB cluster identifier. This identifier is
    #   the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   Specifies the name of the DB cluster parameter group for the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group associated with the DB
    #   cluster, including the name, description, and subnets in the subnet
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current state of this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the progress of the operation as a percentage.
    #   @return [String]
    #
    # @!attribute [rw] earliest_restorable_time
    #   The earliest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint for the primary instance of the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The reader endpoint for the DB cluster. The reader endpoint for a DB
    #   cluster load-balances connections across the Aurora Replicas that
    #   are available in a DB cluster. As clients request new connections to
    #   the reader endpoint, Aurora distributes the connection requests
    #   among the Aurora Replicas in the DB cluster. This functionality can
    #   help balance your read workload across multiple Aurora Replicas in
    #   your DB cluster.
    #
    #   If a failover occurs, and the Aurora Replica that you are connected
    #   to is promoted to be the primary instance, your connection is
    #   dropped. To continue sending your read workload to other Aurora
    #   Replicas in the cluster, you can then reconnect to the reader
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the DB cluster has instances in multiple
    #   Availability Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   Contains the master username for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_option_group_memberships
    #   Provides the list of option group memberships for this DB cluster.
    #   @return [Array<Types::DBClusterOptionGroupStatus>]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   Contains the identifier of the source DB cluster if this DB cluster
    #   is a Read Replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_identifiers
    #   Contains one or more identifiers of the Read Replicas associated
    #   with this DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_members
    #   Provides the list of instances that make up the DB cluster.
    #   @return [Array<Types::DBClusterMember>]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of VPC security groups that the DB cluster belongs
    #   to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the AWS KMS key identifier for the
    #   encrypted DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The AWS Region-unique, immutable identifier for the DB cluster. This
    #   identifier is found in AWS CloudTrail log entries whenever the AWS
    #   KMS key for the DB cluster is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   Provides a list of the AWS Identity and Access Management (IAM)
    #   roles that are associated with the DB cluster. IAM roles that are
    #   associated with a DB cluster grant permission for the DB cluster to
    #   access other AWS services on your behalf.
    #   @return [Array<Types::DBClusterRole>]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] clone_group_id
    #   Identifies the clone group to which the DB cluster is associated.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the DB cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] earliest_backtrack_time
    #   The earliest time to which a DB cluster can be backtracked.
    #   @return [Time]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. If this value is set to 0,
    #   backtracking is disabled for the DB cluster. Otherwise, backtracking
    #   is enabled.
    #   @return [Integer]
    #
    # @!attribute [rw] backtrack_consumed_change_records
    #   The number of change records stored for Backtrack.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this DB cluster is configured to export to
    #   CloudWatch Logs.
    #
    #   Log types vary by DB engine. For information about the log types for
    #   each DB engine, see [Amazon RDS Database Log Files][1] in the
    #   *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] capacity
    #   @return [Integer]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, or `parallelquery`.
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration_info
    #   Shows the scaling configuration for an Aurora DB cluster in
    #   `serverless` DB engine mode.
    #
    #   For more information, see [Using Amazon Aurora Serverless][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #   @return [Types::ScalingConfigurationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBCluster AWS API Documentation
    #
    class DBCluster < Struct.new(
      :allocated_storage,
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :database_name,
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
      :db_cluster_option_group_memberships,
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
      :iam_database_authentication_enabled,
      :clone_group_id,
      :cluster_create_time,
      :earliest_backtrack_time,
      :backtrack_window,
      :backtrack_consumed_change_records,
      :enabled_cloudwatch_logs_exports,
      :capacity,
      :engine_mode,
      :scaling_configuration_info)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # DescribeDBClusterBacktracks action.
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains a user-supplied DB cluster identifier. This identifier is
    #   the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] backtrack_identifier
    #   Contains the backtrack identifier.
    #   @return [String]
    #
    # @!attribute [rw] backtrack_to
    #   The timestamp of the time to which the DB cluster was backtracked.
    #   @return [Time]
    #
    # @!attribute [rw] backtracked_from
    #   The timestamp of the time from which the DB cluster was backtracked.
    #   @return [Time]
    #
    # @!attribute [rw] backtrack_request_creation_time
    #   The timestamp of the time at which the backtrack was requested.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the backtrack. This property returns one of the
    #   following values:
    #
    #   * `applying` - The backtrack is currently being applied to or rolled
    #     back from the DB cluster.
    #
    #   * `completed` - The backtrack has successfully been applied to or
    #     rolled back from the DB cluster.
    #
    #   * `failed` - An error occurred while the backtrack was applied to or
    #     rolled back from the DB cluster.
    #
    #   * `pending` - The backtrack is currently pending application to or
    #     rollback from the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterBacktrack AWS API Documentation
    #
    class DBClusterBacktrack < Struct.new(
      :db_cluster_identifier,
      :backtrack_identifier,
      :backtrack_to,
      :backtracked_from,
      :backtrack_request_creation_time,
      :status)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBClusterBacktracks action.
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a subsequent
    #   DescribeDBClusterBacktracks request.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_backtracks
    #   Contains a list of backtracks for the user.
    #   @return [Array<Types::DBClusterBacktrack>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterBacktrackMessage AWS API Documentation
    #
    class DBClusterBacktrackMessage < Struct.new(
      :marker,
      :db_cluster_backtracks)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   A user-supplied DB cluster identifier. This identifier is the unique
    #   key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] pending_capacity
    #   A value that specifies the capacity that the DB cluster scales to
    #   next.
    #   @return [Integer]
    #
    # @!attribute [rw] current_capacity
    #   The current capacity of the DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] seconds_before_timeout
    #   The number of seconds before a call to
    #   `ModifyCurrentDBClusterCapacity` times out.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_action
    #   The timeout action of a call to `ModifyCurrentDBClusterCapacity`,
    #   either `ForceApplyCapacityChange` or `RollbackCapacityChange`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterCapacityInfo AWS API Documentation
    #
    class DBClusterCapacityInfo < Struct.new(
      :db_cluster_identifier,
      :pending_capacity,
      :current_capacity,
      :seconds_before_timeout,
      :timeout_action)
      include Aws::Structure
    end

    # Contains information about an instance that is part of a DB cluster.
    #
    # @!attribute [rw] db_instance_identifier
    #   Specifies the instance identifier for this member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] is_cluster_writer
    #   Value that is `true` if the cluster member is the primary instance
    #   for the DB cluster and `false` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_cluster_parameter_group_status
    #   Specifies the status of the DB cluster parameter group for this
    #   member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterMember AWS API Documentation
    #
    class DBClusterMember < Struct.new(
      :db_instance_identifier,
      :is_cluster_writer,
      :db_cluster_parameter_group_status,
      :promotion_tier)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBClusters action.
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a subsequent
    #   DescribeDBClusters request.
    #   @return [String]
    #
    # @!attribute [rw] db_clusters
    #   Contains a list of DB clusters for the user.
    #   @return [Array<Types::DBCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterMessage AWS API Documentation
    #
    class DBClusterMessage < Struct.new(
      :marker,
      :db_clusters)
      include Aws::Structure
    end

    # Contains status information for a DB cluster option group.
    #
    # @!attribute [rw] db_cluster_option_group_name
    #   Specifies the name of the DB cluster option group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the DB cluster option group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterOptionGroupStatus AWS API Documentation
    #
    class DBClusterOptionGroupStatus < Struct.new(
      :db_cluster_option_group_name,
      :status)
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB cluster parameter group.
    #
    # This data type is used as a response element in the
    # DescribeDBClusterParameterGroups action.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   Provides the name of the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   Provides the name of the DB parameter group family that this DB
    #   cluster parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides the customer-specified description for this DB cluster
    #   parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_arn
    #   The Amazon Resource Name (ARN) for the DB cluster parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterParameterGroup AWS API Documentation
    #
    class DBClusterParameterGroup < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_cluster_parameter_group_arn)
      include Aws::Structure
    end

    # Provides details about a DB cluster parameter group including the
    # parameters in the DB cluster parameter group.
    #
    # @!attribute [rw] parameters
    #   Provides a list of parameters for the DB cluster parameter group.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusterParameters request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterParameterGroupDetails AWS API Documentation
    #
    class DBClusterParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterParameterGroupNameMessage AWS API Documentation
    #
    class DBClusterParameterGroupNameMessage < Struct.new(
      :db_cluster_parameter_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameterGroups` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_groups
    #   A list of DB cluster parameter groups.
    #   @return [Array<Types::DBClusterParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterParameterGroupsMessage AWS API Documentation
    #
    class DBClusterParameterGroupsMessage < Struct.new(
      :marker,
      :db_cluster_parameter_groups)
      include Aws::Structure
    end

    # Describes an AWS Identity and Access Management (IAM) role that is
    # associated with a DB cluster.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of association between the IAM role and the DB
    #   cluster. The Status property returns one of the following values:
    #
    #   * `ACTIVE` - the IAM role ARN is associated with the DB cluster and
    #     can be used to access other AWS services on your behalf.
    #
    #   * `PENDING` - the IAM role ARN is being associated with the DB
    #     cluster.
    #
    #   * `INVALID` - the IAM role ARN is associated with the DB cluster,
    #     but the DB cluster is unable to assume the IAM role in order to
    #     access other AWS services on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterRole AWS API Documentation
    #
    class DBClusterRole < Struct.new(
      :role_arn,
      :status,
      :feature_name)
      include Aws::Structure
    end

    # Contains the details for an Amazon RDS DB cluster snapshot
    #
    # This data type is used as a response element in the
    # DescribeDBClusterSnapshots action.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the DB
    #   cluster snapshot can be restored in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   Specifies the identifier for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Specifies the DB cluster identifier of the DB cluster that this DB
    #   cluster snapshot was created from.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   Provides the time when the snapshot was taken, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] engine
    #   Specifies the name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Specifies the status of this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the DB cluster was listening on at the time
    #   of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID associated with the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the DB cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   Provides the master username for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Provides the version of the database engine for this DB cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   Provides the license model information for this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   Provides the type of the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the percentage of the estimated data that has been
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the AWS KMS key identifier for the
    #   encrypted DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_arn
    #   The Amazon Resource Name (ARN) for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_snapshot_arn
    #   If the DB cluster snapshot was copied from a source DB cluster
    #   snapshot, the Amazon Resource Name (ARN) for the source DB cluster
    #   snapshot, otherwise, a null value.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshot AWS API Documentation
    #
    class DBClusterSnapshot < Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_snapshot_arn,
      :source_db_cluster_snapshot_arn,
      :iam_database_authentication_enabled)
      include Aws::Structure
    end

    # Contains the name and values of a manual DB cluster snapshot
    # attribute.
    #
    # Manual DB cluster snapshot attributes are used to authorize other AWS
    # accounts to restore a manual DB cluster snapshot. For more
    # information, see the ModifyDBClusterSnapshotAttribute API action.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB cluster snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of AWS accounts
    #   that have permission to copy or restore the manual DB cluster
    #   snapshot. For more information, see the
    #   ModifyDBClusterSnapshotAttribute API action.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The value(s) for the manual DB cluster snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the AWS accounts that are authorized to
    #   copy or restore the manual DB cluster snapshot. If a value of `all`
    #   is in the list, then the manual DB cluster snapshot is public and
    #   available for any AWS account to copy or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshotAttribute AWS API Documentation
    #
    class DBClusterSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      include Aws::Structure
    end

    # Contains the results of a successful call to the
    # DescribeDBClusterSnapshotAttributes API action.
    #
    # Manual DB cluster snapshot attributes are used to authorize other AWS
    # accounts to copy or restore a manual DB cluster snapshot. For more
    # information, see the ModifyDBClusterSnapshotAttribute API action.
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the manual DB cluster snapshot that the attributes
    #   apply to.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_attributes
    #   The list of attributes and values for the manual DB cluster
    #   snapshot.
    #   @return [Array<Types::DBClusterSnapshotAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_snapshot_attributes)
      include Aws::Structure
    end

    # Provides a list of DB cluster snapshots for the user as the result of
    # a call to the DescribeDBClusterSnapshots action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusterSnapshots request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshots
    #   Provides a list of DB cluster snapshots for the user.
    #   @return [Array<Types::DBClusterSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshotMessage AWS API Documentation
    #
    class DBClusterSnapshotMessage < Struct.new(
      :marker,
      :db_cluster_snapshots)
      include Aws::Structure
    end

    # This data type is used as a response element in the action
    # DescribeDBEngineVersions.
    #
    # @!attribute [rw] engine
    #   The name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family for the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_description
    #   The description of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_version_description
    #   The description of the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] default_character_set
    #   The default character set for new instances of this engine version,
    #   if the `CharacterSetName` parameter of the CreateDBInstance API is
    #   not specified.
    #   @return [Types::CharacterSet]
    #
    # @!attribute [rw] supported_character_sets
    #   A list of the character sets supported by this engine for the
    #   `CharacterSetName` parameter of the `CreateDBInstance` action.
    #   @return [Array<Types::CharacterSet>]
    #
    # @!attribute [rw] valid_upgrade_target
    #   A list of engine versions that this database engine version can be
    #   upgraded to.
    #   @return [Array<Types::UpgradeTarget>]
    #
    # @!attribute [rw] supported_timezones
    #   A list of the time zones supported by this engine for the `Timezone`
    #   parameter of the `CreateDBInstance` action.
    #   @return [Array<Types::Timezone>]
    #
    # @!attribute [rw] exportable_log_types
    #   The types of logs that the database engine has available for export
    #   to CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_log_exports_to_cloudwatch_logs
    #   A value that indicates whether the engine version supports exporting
    #   the log types specified by ExportableLogTypes to CloudWatch Logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_read_replica
    #   Indicates whether the database engine version supports read
    #   replicas.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_engine_modes
    #   A list of the supported DB engine modes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBEngineVersion AWS API Documentation
    #
    class DBEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :default_character_set,
      :supported_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supported_engine_modes)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBEngineVersions action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_versions
    #   A list of `DBEngineVersion` elements.
    #   @return [Array<Types::DBEngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBEngineVersionMessage AWS API Documentation
    #
    class DBEngineVersionMessage < Struct.new(
      :marker,
      :db_engine_versions)
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB instance.
    #
    # This data type is used as a response element in the
    # DescribeDBInstances action.
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-supplied database identifier. This identifier is the
    #   unique key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_status
    #   Specifies the current state of this database.
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   Contains the master username for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use. For example, this value returns MySQL, MariaDB, or
    #   PostgreSQL information when returning values from
    #   CreateDBInstanceReadReplica since Read Replicas are only supported
    #   for these engines.
    #
    #   **MySQL, MariaDB, SQL Server, PostgreSQL**
    #
    #   Contains the name of the initial database of this instance that was
    #   provided at create time, if one was specified when the DB instance
    #   was created. This same name is returned for the life of the DB
    #   instance.
    #
    #   Type: String
    #
    #   **Oracle**
    #
    #   Contains the Oracle System ID (SID) of the created DB instance. Not
    #   shown when the returned parameters do not apply to an Oracle DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size specified in gibibytes.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_create_time
    #   Provides the date and time the DB instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic DB snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] db_security_groups
    #   Provides List of DB security group elements containing only
    #   `DBSecurityGroup.Name` and `DBSecurityGroup.Status` subelements.
    #   @return [Array<Types::DBSecurityGroupMembership>]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of VPC security group elements that the DB instance
    #   belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] db_parameter_groups
    #   Provides the list of DB parameter groups applied to this DB
    #   instance.
    #   @return [Array<Types::DBParameterGroupStatus>]
    #
    # @!attribute [rw] availability_zone
    #   Specifies the name of the Availability Zone the DB instance is
    #   located in.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group associated with the DB
    #   instance, including the name, description, and subnets in the subnet
    #   group.
    #   @return [Types::DBSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Specifies that changes to the DB instance are pending. This element
    #   is only included when changes are pending. Specific changes are
    #   identified by subelements.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version patches are applied automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_source_db_instance_identifier
    #   Contains the identifier of the source DB instance if this DB
    #   instance is a Read Replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_db_instance_identifiers
    #   Contains one or more identifiers of the Read Replicas associated
    #   with this DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] read_replica_db_cluster_identifiers
    #   Contains one or more identifiers of Aurora DB clusters to which the
    #   RDS DB instance is replicated as a Read Replica. For example, when
    #   you create an Aurora Read Replica of an RDS MySQL DB instance, the
    #   Aurora MySQL DB cluster for the Aurora Read Replica is shown. This
    #   output does not contain information about cross region Aurora Read
    #   Replicas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_model
    #   License model information for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the Provisioned IOPS (I/O operations per second) value.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_memberships
    #   Provides the list of option group memberships for this DB instance.
    #   @return [Array<Types::OptionGroupMembership>]
    #
    # @!attribute [rw] character_set_name
    #   If present, specifies the name of the character set that this
    #   instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   If present, specifies the name of the secondary Availability Zone
    #   for a DB instance with multi-AZ support.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] status_infos
    #   The status of a Read Replica. If the instance is not a Read Replica,
    #   this is blank.
    #   @return [Array<Types::DBInstanceStatusInfo>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type associated with DB instance.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the instance is associated for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_port
    #   Specifies the port that the DB instance listens on. If the DB
    #   instance is part of a DB cluster, this can be a different port than
    #   the DB cluster port.
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_identifier
    #   If the DB instance is a member of a DB cluster, contains the name of
    #   the DB cluster that the DB instance is a member of.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the AWS KMS key identifier for the
    #   encrypted DB instance.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The AWS Region-unique, immutable identifier for the DB instance.
    #   This identifier is found in AWS CloudTrail log entries whenever the
    #   AWS KMS key for the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory Domain membership records associated with the
    #   DB instance.
    #   @return [Array<Types::DomainMembership>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether tags are copied from the DB instance to snapshots
    #   of the DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] enhanced_monitoring_resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log
    #   stream that receives the Enhanced Monitoring metrics data for the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send Enhanced
    #   Monitoring metrics to Amazon CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB instance. In most cases, the `Timezone`
    #   element is empty. `Timezone` content appears only for Microsoft SQL
    #   Server DB instances that were created with a time zone specified.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #
    #   IAM database authentication can be enabled for the following
    #   database engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher. To enable IAM database authentication for
    #     Aurora, see DBCluster Type.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_enabled
    #   True if Performance Insights is enabled for the DB instance, and
    #   otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this DB instance is configured to export to
    #   CloudWatch Logs.
    #
    #   Log types vary by DB engine. For information about the log types for
    #   each DB engine, see [Amazon RDS Database Log Files][1] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstance AWS API Documentation
    #
    class DBInstance < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :master_username,
      :db_name,
      :endpoint,
      :allocated_storage,
      :instance_create_time,
      :preferred_backup_window,
      :backup_retention_period,
      :db_security_groups,
      :vpc_security_groups,
      :db_parameter_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :read_replica_source_db_instance_identifier,
      :read_replica_db_instance_identifiers,
      :read_replica_db_cluster_identifiers,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :secondary_availability_zone,
      :publicly_accessible,
      :status_infos,
      :storage_type,
      :tde_credential_arn,
      :db_instance_port,
      :db_cluster_identifier,
      :storage_encrypted,
      :kms_key_id,
      :dbi_resource_id,
      :ca_certificate_identifier,
      :domain_memberships,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :enhanced_monitoring_resource_arn,
      :monitoring_role_arn,
      :promotion_tier,
      :db_instance_arn,
      :timezone,
      :iam_database_authentication_enabled,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enabled_cloudwatch_logs_exports,
      :processor_features)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBInstances action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] db_instances
    #   A list of DBInstance instances.
    #   @return [Array<Types::DBInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceMessage AWS API Documentation
    #
    class DBInstanceMessage < Struct.new(
      :marker,
      :db_instances)
      include Aws::Structure
    end

    # Provides a list of status information for a DB instance.
    #
    # @!attribute [rw] status_type
    #   This value is currently "read replication."
    #   @return [String]
    #
    # @!attribute [rw] normal
    #   Boolean value that is true if the instance is operating normally, or
    #   false if the instance is in an error state.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the DB instance. For a StatusType of read replica, the
    #   values can be replicating, replication stop point set, replication
    #   stop point reached, error, stopped, or terminated.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Details of the error if there is an error for the instance. If the
    #   instance is not in an error state, this value is blank.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceStatusInfo AWS API Documentation
    #
    class DBInstanceStatusInfo < Struct.new(
      :status_type,
      :normal,
      :status,
      :message)
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB parameter group.
    #
    # This data type is used as a response element in the
    # DescribeDBParameterGroups action.
    #
    # @!attribute [rw] db_parameter_group_name
    #   Provides the name of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   Provides the name of the DB parameter group family that this DB
    #   parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides the customer-specified description for this DB parameter
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_arn
    #   The Amazon Resource Name (ARN) for the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroup AWS API Documentation
    #
    class DBParameterGroup < Struct.new(
      :db_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_parameter_group_arn)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBParameters action.
    #
    # @!attribute [rw] parameters
    #   A list of Parameter values.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupDetails AWS API Documentation
    #
    class DBParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # ModifyDBParameterGroup or ResetDBParameterGroup action.
    #
    # @!attribute [rw] db_parameter_group_name
    #   Provides the name of the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupNameMessage AWS API Documentation
    #
    class DBParameterGroupNameMessage < Struct.new(
      :db_parameter_group_name)
      include Aws::Structure
    end

    # The status of the DB parameter group.
    #
    # This data type is used as a response element in the following actions:
    #
    # * CreateDBInstance
    #
    # * CreateDBInstanceReadReplica
    #
    # * DeleteDBInstance
    #
    # * ModifyDBInstance
    #
    # * RebootDBInstance
    #
    # * RestoreDBInstanceFromDBSnapshot
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DP parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupStatus AWS API Documentation
    #
    class DBParameterGroupStatus < Struct.new(
      :db_parameter_group_name,
      :parameter_apply_status)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBParameterGroups action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_groups
    #   A list of DBParameterGroup instances.
    #   @return [Array<Types::DBParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupsMessage AWS API Documentation
    #
    class DBParameterGroupsMessage < Struct.new(
      :marker,
      :db_parameter_groups)
      include Aws::Structure
    end

    # Contains the details for an Amazon RDS DB security group.
    #
    # This data type is used as a response element in the
    # DescribeDBSecurityGroups action.
    #
    # @!attribute [rw] owner_id
    #   Provides the AWS ID of the owner of a specific DB security group.
    #   @return [String]
    #
    # @!attribute [rw] db_security_group_name
    #   Specifies the name of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] db_security_group_description
    #   Provides the description of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VpcId of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_groups
    #   Contains a list of EC2SecurityGroup elements.
    #   @return [Array<Types::EC2SecurityGroup>]
    #
    # @!attribute [rw] ip_ranges
    #   Contains a list of IPRange elements.
    #   @return [Array<Types::IPRange>]
    #
    # @!attribute [rw] db_security_group_arn
    #   The Amazon Resource Name (ARN) for the DB security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroup AWS API Documentation
    #
    class DBSecurityGroup < Struct.new(
      :owner_id,
      :db_security_group_name,
      :db_security_group_description,
      :vpc_id,
      :ec2_security_groups,
      :ip_ranges,
      :db_security_group_arn)
      include Aws::Structure
    end

    # This data type is used as a response element in the following actions:
    #
    # * ModifyDBInstance
    #
    # * RebootDBInstance
    #
    # * RestoreDBInstanceFromDBSnapshot
    #
    # * RestoreDBInstanceToPointInTime
    #
    # @!attribute [rw] db_security_group_name
    #   The name of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupMembership AWS API Documentation
    #
    class DBSecurityGroupMembership < Struct.new(
      :db_security_group_name,
      :status)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBSecurityGroups action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DBSecurityGroup instances.
    #   @return [Array<Types::DBSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupMessage AWS API Documentation
    #
    class DBSecurityGroupMessage < Struct.new(
      :marker,
      :db_security_groups)
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB snapshot.
    #
    # This data type is used as a response element in the
    # DescribeDBSnapshots action.
    #
    # @!attribute [rw] db_snapshot_identifier
    #   Specifies the identifier for the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   Specifies the DB instance identifier of the DB instance this DB
    #   snapshot was created from.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   Provides the time when the snapshot was taken, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] engine
    #   Specifies the name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Specifies the status of this DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine was listening on at the
    #   time of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   Specifies the name of the Availability Zone the DB instance was
    #   located in at the time of the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID associated with the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] instance_create_time
    #   Specifies the time when the snapshot was taken, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   Provides the master username for the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Specifies the version of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   License model information for the restored DB instance.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   Provides the type of the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the Provisioned IOPS (I/O operations per second) value of
    #   the DB instance at the time of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   Provides the option group name for the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   The percentage of the estimated data that has been transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] source_region
    #   The AWS Region that the DB snapshot was created in or copied from.
    #   @return [String]
    #
    # @!attribute [rw] source_db_snapshot_identifier
    #   The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
    #   copied from. It only has value in case of cross-customer or
    #   cross-region copy.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type associated with DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the DB snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `Encrypted` is true, the AWS KMS key identifier for the encrypted
    #   DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_snapshot_arn
    #   The Amazon Resource Name (ARN) for the DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB snapshot. In most cases, the `Timezone`
    #   element is empty. `Timezone` content appears only for snapshots
    #   taken from Microsoft SQL Server DB instances that were created with
    #   a time zone specified.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance when the DB snapshot was
    #   created.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshot AWS API Documentation
    #
    class DBSnapshot < Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :iops,
      :option_group_name,
      :percent_progress,
      :source_region,
      :source_db_snapshot_identifier,
      :storage_type,
      :tde_credential_arn,
      :encrypted,
      :kms_key_id,
      :db_snapshot_arn,
      :timezone,
      :iam_database_authentication_enabled,
      :processor_features)
      include Aws::Structure
    end

    # Contains the name and values of a manual DB snapshot attribute
    #
    # Manual DB snapshot attributes are used to authorize other AWS accounts
    # to restore a manual DB snapshot. For more information, see the
    # ModifyDBSnapshotAttribute API.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of AWS accounts
    #   that have permission to copy or restore the manual DB cluster
    #   snapshot. For more information, see the ModifyDBSnapshotAttribute
    #   API action.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The value or values for the manual DB snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the AWS accounts that are authorized to
    #   copy or restore the manual DB snapshot. If a value of `all` is in
    #   the list, then the manual DB snapshot is public and available for
    #   any AWS account to copy or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotAttribute AWS API Documentation
    #
    class DBSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      include Aws::Structure
    end

    # Contains the results of a successful call to the
    # DescribeDBSnapshotAttributes API action.
    #
    # Manual DB snapshot attributes are used to authorize other AWS accounts
    # to copy or restore a manual DB snapshot. For more information, see the
    # ModifyDBSnapshotAttribute API action.
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The identifier of the manual DB snapshot that the attributes apply
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] db_snapshot_attributes
    #   The list of attributes and values for the manual DB snapshot.
    #   @return [Array<Types::DBSnapshotAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotAttributesResult AWS API Documentation
    #
    class DBSnapshotAttributesResult < Struct.new(
      :db_snapshot_identifier,
      :db_snapshot_attributes)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBSnapshots action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_snapshots
    #   A list of DBSnapshot instances.
    #   @return [Array<Types::DBSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotMessage AWS API Documentation
    #
    class DBSnapshotMessage < Struct.new(
      :marker,
      :db_snapshots)
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB subnet group.
    #
    # This data type is used as a response element in the
    # DescribeDBSubnetGroups action.
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   Provides the description of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VpcId of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   Provides the status of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   Contains a list of Subnet elements.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] db_subnet_group_arn
    #   The Amazon Resource Name (ARN) for the DB subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroup AWS API Documentation
    #
    class DBSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeDBSubnetGroups action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_groups
    #   A list of DBSubnetGroup instances.
    #   @return [Array<Types::DBSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupMessage AWS API Documentation
    #
    class DBSubnetGroupMessage < Struct.new(
      :marker,
      :db_subnet_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         skip_final_snapshot: false,
    #         final_db_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the DB cluster to be deleted. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing DBClusterIdentifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final DB cluster snapshot is created before the
    #   DB cluster is deleted. If `true` is specified, no DB cluster
    #   snapshot is created. If `false` is specified, a DB cluster snapshot
    #   is created before the DB cluster is deleted.
    #
    #   <note markdown="1"> You must specify a `FinalDBSnapshotIdentifier` parameter if
    #   `SkipFinalSnapshot` is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the `SkipFinalShapshot`
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterMessage AWS API Documentation
    #
    class DeleteDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB cluster parameter group.
    #
    #   * You can't delete a default DB cluster parameter group.
    #
    #   * Cannot be associated with any DB clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterParameterGroupMessage AWS API Documentation
    #
    class DeleteDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterResult AWS API Documentation
    #
    class DeleteDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to delete.
    #
    #   Constraints: Must be the name of an existing DB cluster snapshot in
    #   the `available` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterSnapshotMessage AWS API Documentation
    #
    class DeleteDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Contains the details for an Amazon RDS DB cluster snapshot
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterSnapshots action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterSnapshotResult AWS API Documentation
    #
    class DeleteDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         skip_final_snapshot: false,
    #         final_db_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier for the DB instance to be deleted. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final DB snapshot is created before the DB
    #   instance is deleted. If `true` is specified, no DBSnapshot is
    #   created. If `false` is specified, a DB snapshot is created before
    #   the DB instance is deleted.
    #
    #   Note that when a DB instance is in a failure state and has a status
    #   of 'failed', 'incompatible-restore', or
    #   'incompatible-network', it can only be deleted when the
    #   SkipFinalSnapshot parameter is set to "true".
    #
    #   Specify `true` when deleting a Read Replica.
    #
    #   <note markdown="1"> The FinalDBSnapshotIdentifier parameter must be specified if
    #   SkipFinalSnapshot is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The DBSnapshotIdentifier of the new DBSnapshot created when
    #   SkipFinalSnapshot is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the SkipFinalShapshot
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Cannot be specified when deleting a Read Replica.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceMessage AWS API Documentation
    #
    class DeleteDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceResult AWS API Documentation
    #
    class DeleteDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB parameter group
    #
    #   * You can't delete a default DB parameter group
    #
    #   * Cannot be associated with any DB instances
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBParameterGroupMessage AWS API Documentation
    #
    class DeleteDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBSecurityGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_security_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_security_group_name
    #   The name of the DB security group to delete.
    #
    #   <note markdown="1"> You can't delete the default DB security group.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Must not be "Default"
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSecurityGroupMessage AWS API Documentation
    #
    class DeleteDBSecurityGroupMessage < Struct.new(
      :db_security_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The DBSnapshot identifier.
    #
    #   Constraints: Must be the name of an existing DB snapshot in the
    #   `available` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSnapshotMessage AWS API Documentation
    #
    class DeleteDBSnapshotMessage < Struct.new(
      :db_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot
    #   Contains the details of an Amazon RDS DB snapshot.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSnapshots action.
    #   @return [Types::DBSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSnapshotResult AWS API Documentation
    #
    class DeleteDBSnapshotResult < Struct.new(
      :db_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the database subnet group to delete.
    #
    #   <note markdown="1"> You can't delete the default subnet group.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSubnetGroupMessage AWS API Documentation
    #
    class DeleteDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the RDS event notification subscription you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteEventSubscriptionMessage AWS API Documentation
    #
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteEventSubscriptionResult AWS API Documentation
    #
    class DeleteEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteOptionGroupMessage
    #   data as a hash:
    #
    #       {
    #         option_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to be deleted.
    #
    #   <note markdown="1"> You can't delete default option groups.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteOptionGroupMessage AWS API Documentation
    #
    class DeleteOptionGroupMessage < Struct.new(
      :option_group_name)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeAccountAttributesMessage AWS API Documentation
    #
    class DescribeAccountAttributesMessage < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeCertificatesMessage
    #   data as a hash:
    #
    #       {
    #         certificate_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] certificate_identifier
    #   The user-supplied certificate identifier. If this parameter is
    #   specified, information for only the identified certificate is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing CertificateIdentifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeCertificates request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeCertificatesMessage AWS API Documentation
    #
    class DescribeCertificatesMessage < Struct.new(
      :certificate_identifier,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBClusterBacktracksMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         backtrack_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster to be described. This
    #   parameter is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] backtrack_identifier
    #   If specified, this value is the backtrack identifier of the
    #   backtrack to be described.
    #
    #   Constraints:
    #
    #   * Must contain a valid universally unique identifier (UUID). For
    #     more information about UUIDs, see [A Universally Unique Identifier
    #     (UUID) URN Namespace][1].
    #
    #   ^
    #
    #   Example: `123e4567-e89b-12d3-a456-426655440000`
    #
    #
    #
    #   [1]: http://www.ietf.org/rfc/rfc4122.txt
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB clusters to describe.
    #   Supported filters include the following:
    #
    #   * `db-cluster-backtrack-id` - Accepts backtrack identifiers. The
    #     results list includes information about only the backtracks
    #     identified by these identifiers.
    #
    #   * `db-cluster-backtrack-status` - Accepts any of the following
    #     backtrack status values:
    #
    #     * `applying`
    #
    #     * `completed`
    #
    #     * `failed`
    #
    #     * `pending`
    #
    #     The results list includes information about only the backtracks
    #     identified by these values. For more information about backtrack
    #     status values, see DBClusterBacktrack.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusterBacktracks request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterBacktracksMessage AWS API Documentation
    #
    class DescribeDBClusterBacktracksMessage < Struct.new(
      :db_cluster_identifier,
      :backtrack_identifier,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBClusterParameterGroupsMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameterGroups` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterParameterGroupsMessage AWS API Documentation
    #
    class DescribeDBClusterParameterGroupsMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBClusterParametersMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         source: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return
    #   parameter details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A value that indicates to return only parameters for a specific
    #   source. Parameter sources can be `engine`, `service`, or `customer`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterParametersMessage AWS API Documentation
    #
    class DescribeDBClusterParametersMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBClusterSnapshotAttributesMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to describe the
    #   attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   DescribeDBClusterSnapshotAttributes API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   AWS accounts to copy or restore a manual DB cluster snapshot. For
    #   more information, see the ModifyDBClusterSnapshotAttribute API
    #   action.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBClusterSnapshotsMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         db_cluster_snapshot_identifier: "String",
    #         snapshot_type: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #         include_shared: false,
    #         include_public: false,
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The ID of the DB cluster to retrieve the list of DB cluster
    #   snapshots for. This parameter can't be used in conjunction with the
    #   `DBClusterSnapshotIdentifier` parameter. This parameter is not
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   A specific DB cluster snapshot identifier to describe. This
    #   parameter can't be used in conjunction with the
    #   `DBClusterIdentifier` parameter. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing
    #     DBClusterSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the
    #     `SnapshotType` parameter must also be specified.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of DB cluster snapshots to be returned. You can specify one
    #   of the following values:
    #
    #   * `automated` - Return all DB cluster snapshots that have been
    #     automatically taken by Amazon RDS for my AWS account.
    #
    #   * `manual` - Return all DB cluster snapshots that have been taken by
    #     my AWS account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to my AWS account.
    #
    #   * `public` - Return all DB cluster snapshots that have been marked
    #     as public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated
    #   and manual DB cluster snapshots are returned. You can include shared
    #   DB cluster snapshots with these results by setting the
    #   `IncludeShared` parameter to `true`. You can include public DB
    #   cluster snapshots with these results by setting the `IncludePublic`
    #   parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The
    #   `IncludePublic` parameter doesn't apply when `SnapshotType` is set
    #   to `shared`. The `IncludeShared` parameter doesn't apply when
    #   `SnapshotType` is set to `public`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterSnapshots` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] include_shared
    #   True to include shared manual DB cluster snapshots from other AWS
    #   accounts that this AWS account has been given permission to copy or
    #   restore, and otherwise false. The default is `false`.
    #
    #   You can give an AWS account permission to restore a manual DB
    #   cluster snapshot from another AWS account by the
    #   ModifyDBClusterSnapshotAttribute API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   True to include manual DB cluster snapshots that are public and can
    #   be copied or restored by any AWS account, and otherwise false. The
    #   default is `false`. The default is false.
    #
    #   You can share a manual DB cluster snapshot as public by using the
    #   ModifyDBClusterSnapshotAttribute API action.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotsMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotsMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBClustersMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The user-supplied DB cluster identifier. If this parameter is
    #   specified, information from only the specific DB cluster is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBClusterIdentifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB clusters identified by these ARNs.
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusters request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClustersMessage AWS API Documentation
    #
    class DescribeDBClustersMessage < Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBEngineVersionsMessage
    #   data as a hash:
    #
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         db_parameter_group_family: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #         default_only: false,
    #         list_supported_character_sets: false,
    #         list_supported_timezones: false,
    #       }
    #
    # @!attribute [rw] engine
    #   The database engine to return.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version to return.
    #
    #   Example: `5.1.49`
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of a specific DB parameter group family to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBParameterGroupFamily.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so that the following results
    #   can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   Indicates that only the default version of the specified engine or
    #   engine and major version combination is returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_character_sets
    #   If this parameter is specified and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_timezones
    #   If this parameter is specified and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBEngineVersionsMessage AWS API Documentation
    #
    class DescribeDBEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      :default_only,
      :list_supported_character_sets,
      :list_supported_timezones)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBInstancesMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The user-supplied instance identifier. If this parameter is
    #   specified, information from only the specific DB instance is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances associated with the DB clusters
    #     identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances identified by these ARNs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBInstances` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBInstancesMessage AWS API Documentation
    #
    class DescribeDBInstancesMessage < Struct.new(
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # This data type is used as a response element to DescribeDBLogFiles.
    #
    # @!attribute [rw] log_file_name
    #   The name of the log file for the specified DB instance.
    #   @return [String]
    #
    # @!attribute [rw] last_written
    #   A POSIX timestamp when the last log entry was written.
    #   @return [Integer]
    #
    # @!attribute [rw] size
    #   The size, in bytes, of the log file for the specified DB instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBLogFilesDetails AWS API Documentation
    #
    class DescribeDBLogFilesDetails < Struct.new(
      :log_file_name,
      :last_written,
      :size)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBLogFilesMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         filename_contains: "String",
    #         file_last_written: 1,
    #         file_size: 1,
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The customer-assigned name of the DB instance that contains the log
    #   files you want to list.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filename_contains
    #   Filters the available log files for log file names that contain the
    #   specified string.
    #   @return [String]
    #
    # @!attribute [rw] file_last_written
    #   Filters the available log files for files written since the
    #   specified date, in POSIX timestamp format with milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] file_size
    #   Filters the available log files for files larger than the specified
    #   size.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The pagination token provided in the previous request. If this
    #   parameter is specified the response includes only records beyond the
    #   marker, up to MaxRecords.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBLogFilesMessage AWS API Documentation
    #
    class DescribeDBLogFilesMessage < Struct.new(
      :db_instance_identifier,
      :filename_contains,
      :file_last_written,
      :file_size,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # The response from a call to DescribeDBLogFiles.
    #
    # @!attribute [rw] describe_db_log_files
    #   The DB log files returned.
    #   @return [Array<Types::DescribeDBLogFilesDetails>]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a subsequent
    #   DescribeDBLogFiles request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBLogFilesResponse AWS API Documentation
    #
    class DescribeDBLogFilesResponse < Struct.new(
      :describe_db_log_files,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBParameterGroupsMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBParameterGroups` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBParameterGroupsMessage AWS API Documentation
    #
    class DescribeDBParameterGroupsMessage < Struct.new(
      :db_parameter_group_name,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBParametersMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "String", # required
    #         source: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The parameter types to return.
    #
    #   Default: All parameter types returned
    #
    #   Valid Values: `user | system | engine-default`
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBParameters` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBParametersMessage AWS API Documentation
    #
    class DescribeDBParametersMessage < Struct.new(
      :db_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBSecurityGroupsMessage
    #   data as a hash:
    #
    #       {
    #         db_security_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_security_group_name
    #   The name of the DB security group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBSecurityGroups` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSecurityGroupsMessage AWS API Documentation
    #
    class DescribeDBSecurityGroupsMessage < Struct.new(
      :db_security_group_name,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBSnapshotAttributesMessage
    #   data as a hash:
    #
    #       {
    #         db_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The identifier for the DB snapshot to describe the attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBSnapshotAttributesMessage < Struct.new(
      :db_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   DescribeDBSnapshotAttributes API action.
    #
    #   Manual DB snapshot attributes are used to authorize other AWS
    #   accounts to copy or restore a manual DB snapshot. For more
    #   information, see the ModifyDBSnapshotAttribute API action.
    #   @return [Types::DBSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBSnapshotAttributesResult < Struct.new(
      :db_snapshot_attributes_result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBSnapshotsMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String",
    #         db_snapshot_identifier: "String",
    #         snapshot_type: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #         include_shared: false,
    #         include_public: false,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The ID of the DB instance to retrieve the list of DB snapshots for.
    #   This parameter can't be used in conjunction with
    #   `DBSnapshotIdentifier`. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This parameter can't
    #   be used in conjunction with `DBInstanceIdentifier`. This value is
    #   stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the
    #     `SnapshotType` parameter must also be specified.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of snapshots to be returned. You can specify one of the
    #   following values:
    #
    #   * `automated` - Return all DB snapshots that have been automatically
    #     taken by Amazon RDS for my AWS account.
    #
    #   * `manual` - Return all DB snapshots that have been taken by my AWS
    #     account.
    #
    #   * `shared` - Return all manual DB snapshots that have been shared to
    #     my AWS account.
    #
    #   * `public` - Return all DB snapshots that have been marked as
    #     public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated
    #   and manual snapshots are returned. Shared and public DB snapshots
    #   are not included in the returned results by default. You can include
    #   shared snapshots with these results by setting the `IncludeShared`
    #   parameter to `true`. You can include public snapshots with these
    #   results by setting the `IncludePublic` parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The
    #   `IncludePublic` parameter doesn't apply when `SnapshotType` is set
    #   to `shared`. The `IncludeShared` parameter doesn't apply when
    #   `SnapshotType` is set to `public`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBSnapshots` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] include_shared
    #   True to include shared manual DB snapshots from other AWS accounts
    #   that this AWS account has been given permission to copy or restore,
    #   and otherwise false. The default is `false`.
    #
    #   You can give an AWS account permission to restore a manual DB
    #   snapshot from another AWS account by using the
    #   ModifyDBSnapshotAttribute API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   True to include manual DB snapshots that are public and can be
    #   copied or restored by any AWS account, and otherwise false. The
    #   default is false.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotsMessage AWS API Documentation
    #
    class DescribeDBSnapshotsMessage < Struct.new(
      :db_instance_identifier,
      :db_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBSubnetGroupsMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBSubnetGroups request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSubnetGroupsMessage AWS API Documentation
    #
    class DescribeDBSubnetGroupsMessage < Struct.new(
      :db_subnet_group_name,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEngineDefaultClusterParametersMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_family: "String", # required
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB cluster parameter group family to return engine
    #   parameter information for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultClusterParameters` request. If this parameter
    #   is specified, the response includes only records beyond the marker,
    #   up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultClusterParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultClusterParametersMessage < Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Contains the result of a successful invocation of the
    #   DescribeEngineDefaultParameters action.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultClusterParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultClusterParametersResult < Struct.new(
      :engine_defaults)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEngineDefaultParametersMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_family: "String", # required
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultParametersMessage < Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Contains the result of a successful invocation of the
    #   DescribeEngineDefaultParameters action.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEngineDefaultParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultParametersResult < Struct.new(
      :engine_defaults)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventCategoriesMessage
    #   data as a hash:
    #
    #       {
    #         source_type: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_type
    #   The type of source that is generating the events.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventCategoriesMessage AWS API Documentation
    #
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventSubscriptionsMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the RDS event notification subscription you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventSubscriptionsMessage AWS API Documentation
    #
    class DescribeEventSubscriptionsMessage < Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventsMessage
    #   data as a hash:
    #
    #       {
    #         source_identifier: "String",
    #         source_type: "db-instance", # accepts db-instance, db-parameter-group, db-security-group, db-snapshot, db-cluster, db-cluster-snapshot
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         duration: 1,
    #         event_categories: ["String"],
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If SourceIdentifier is supplied, SourceType must also be provided.
    #
    #   * If the source type is `DBInstance`, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is `DBSecurityGroup`, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBParameterGroup`, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must
    #     be supplied.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The event source to retrieve events for. If no value is specified,
    #   all events are returned.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    #   @return [Integer]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous DescribeEvents
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by
    #   `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOptionGroupOptionsMessage
    #   data as a hash:
    #
    #       {
    #         engine_name: "String", # required
    #         major_engine_version: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] engine_name
    #   A required parameter. Options available for the given engine name
    #   are described.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   If specified, filters the results to include only options for the
    #   specified major engine version.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOptionGroupOptionsMessage AWS API Documentation
    #
    class DescribeOptionGroupOptionsMessage < Struct.new(
      :engine_name,
      :major_engine_version,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOptionGroupsMessage
    #   data as a hash:
    #
    #       {
    #         option_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         marker: "String",
    #         max_records: 1,
    #         engine_name: "String",
    #         major_engine_version: "String",
    #       }
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to describe. Cannot be supplied
    #   together with EngineName or MajorEngineVersion.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOptionGroups request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] engine_name
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine version. If specified, then
    #   EngineName must also be specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOptionGroupsMessage AWS API Documentation
    #
    class DescribeOptionGroupsMessage < Struct.new(
      :option_group_name,
      :filters,
      :marker,
      :max_records,
      :engine_name,
      :major_engine_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOrderableDBInstanceOptionsMessage
    #   data as a hash:
    #
    #       {
    #         engine: "String", # required
    #         engine_version: "String",
    #         db_instance_class: "String",
    #         license_model: "String",
    #         vpc: false,
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] engine
    #   The name of the engine to retrieve DB instance options for.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version filter value. Specify this parameter to show only
    #   the available offerings matching the specified engine version.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings matching the specified DB instance
    #   class.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model filter value. Specify this parameter to show only
    #   the available offerings matching the specified license model.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The VPC filter value. Specify this parameter to show only the
    #   available VPC or non-VPC offerings.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeOrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class DescribeOrderableDBInstanceOptionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :vpc,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePendingMaintenanceActionsMessage
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         marker: "String",
    #         max_records: 1,
    #       }
    #
    # @!attribute [rw] resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     pending maintenance actions for the DB clusters identified by
    #     these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list will only include pending maintenance
    #     actions for the DB instances identified by these ARNs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribePendingMaintenanceActions` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to a number of records specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribePendingMaintenanceActionsMessage AWS API Documentation
    #
    class DescribePendingMaintenanceActionsMessage < Struct.new(
      :resource_identifier,
      :filters,
      :marker,
      :max_records)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReservedDBInstancesMessage
    #   data as a hash:
    #
    #       {
    #         reserved_db_instance_id: "String",
    #         reserved_db_instances_offering_id: "String",
    #         db_instance_class: "String",
    #         duration: "String",
    #         product_description: "String",
    #         offering_type: "String",
    #         multi_az: false,
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_db_instance_id
    #   The reserved DB instance identifier filter value. Specify this
    #   parameter to show only the reservation that matches the specified
    #   reservation ID.
    #   @return [String]
    #
    # @!attribute [rw] reserved_db_instances_offering_id
    #   The offering identifier filter value. Specify this parameter to show
    #   only purchased reservations matching the specified offering
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only those reservations matching the specified DB instances class.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration filter value, specified in years or seconds. Specify
    #   this parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The product description filter value. Specify this parameter to show
    #   only those reservations matching the specified product description.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   The Multi-AZ filter value. Specify this parameter to show only those
    #   reservations matching the specified Multi-AZ parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so that the following results
    #   can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeReservedDBInstancesMessage AWS API Documentation
    #
    class DescribeReservedDBInstancesMessage < Struct.new(
      :reserved_db_instance_id,
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :duration,
      :product_description,
      :offering_type,
      :multi_az,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReservedDBInstancesOfferingsMessage
    #   data as a hash:
    #
    #       {
    #         reserved_db_instances_offering_id: "String",
    #         db_instance_class: "String",
    #         duration: "String",
    #         product_description: "String",
    #         offering_type: "String",
    #         multi_az: false,
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_db_instances_offering_id
    #   The offering identifier filter value. Specify this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings matching the specified DB instance
    #   class.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Duration filter value, specified in years or seconds. Specify this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   Product description filter value. Specify this parameter to show
    #   only the available offerings that contain the specified product
    #   description.
    #
    #   <note markdown="1"> The results show offerings that partially match the filter value.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   The Multi-AZ filter value. Specify this parameter to show only the
    #   available offerings matching the specified Multi-AZ parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so that the following results
    #   can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeReservedDBInstancesOfferingsMessage AWS API Documentation
    #
    class DescribeReservedDBInstancesOfferingsMessage < Struct.new(
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :duration,
      :product_description,
      :offering_type,
      :multi_az,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSourceRegionsMessage
    #   data as a hash:
    #
    #       {
    #         region_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] region_name
    #   The source AWS Region name. For example, `us-east-1`.
    #
    #   Constraints:
    #
    #   * Must specify a valid AWS Region name.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeSourceRegions request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeSourceRegionsMessage AWS API Documentation
    #
    class DescribeSourceRegionsMessage < Struct.new(
      :region_name,
      :max_records,
      :marker,
      :filters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeValidDBInstanceModificationsMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The customer identifier or the ARN of your DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeValidDBInstanceModificationsMessage AWS API Documentation
    #
    class DescribeValidDBInstanceModificationsMessage < Struct.new(
      :db_instance_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] valid_db_instance_modifications_message
    #   Information about valid modifications that you can make to your DB
    #   instance. Contains the result of a successful call to the
    #   DescribeValidDBInstanceModifications action. You can use this
    #   information when you call ModifyDBInstance.
    #   @return [Types::ValidDBInstanceModificationsMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeValidDBInstanceModificationsResult AWS API Documentation
    #
    class DescribeValidDBInstanceModificationsResult < Struct.new(
      :valid_db_instance_modifications_message)
      include Aws::Structure
    end

    # An Active Directory Domain membership record associated with the DB
    # instance.
    #
    # @!attribute [rw] domain
    #   The identifier of the Active Directory Domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance's Active Directory Domain membership,
    #   such as joined, pending-join, failed etc).
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   The fully qualified domain name of the Active Directory Domain.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_name
    #   The name of the IAM role to be used when making API calls to the
    #   Directory Service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DomainMembership AWS API Documentation
    #
    class DomainMembership < Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name)
      include Aws::Structure
    end

    # A range of double values.
    #
    # @!attribute [rw] from
    #   The minimum value in the range.
    #   @return [Float]
    #
    # @!attribute [rw] to
    #   The maximum value in the range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DoubleRange AWS API Documentation
    #
    class DoubleRange < Struct.new(
      :from,
      :to)
      include Aws::Structure
    end

    # This data type is used as a response element to
    # DownloadDBLogFilePortion.
    #
    # @!attribute [rw] log_file_data
    #   Entries from the specified log file.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a subsequent
    #   DownloadDBLogFilePortion request.
    #   @return [String]
    #
    # @!attribute [rw] additional_data_pending
    #   Boolean value that if true, indicates there is more data to be
    #   downloaded.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DownloadDBLogFilePortionDetails AWS API Documentation
    #
    class DownloadDBLogFilePortionDetails < Struct.new(
      :log_file_data,
      :marker,
      :additional_data_pending)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DownloadDBLogFilePortionMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         log_file_name: "String", # required
    #         marker: "String",
    #         number_of_lines: 1,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The customer-assigned name of the DB instance that contains the log
    #   files you want to list.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] log_file_name
    #   The name of the log file to be downloaded.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token provided in the previous request or "0". If
    #   the Marker parameter is specified the response includes only records
    #   beyond the marker until the end of the file or up to NumberOfLines.
    #   @return [String]
    #
    # @!attribute [rw] number_of_lines
    #   The number of lines to download. If the number of lines specified
    #   results in a file over 1 MB in size, the file is truncated at 1 MB
    #   in size.
    #
    #   If the NumberOfLines parameter is specified, then the block of lines
    #   returned can be from the beginning or the end of the log file,
    #   depending on the value of the Marker parameter.
    #
    #   * If neither Marker or NumberOfLines are specified, the entire log
    #     file is returned up to a maximum of 10000 lines, starting with the
    #     most recent log entries first.
    #
    #   * If NumberOfLines is specified and Marker is not specified, then
    #     the most recent lines from the end of the log file are returned.
    #
    #   * If Marker is specified as "0", then the specified number of
    #     lines from the beginning of the log file are returned.
    #
    #   * You can download the log file in blocks of lines by specifying the
    #     size of the block using the NumberOfLines parameter, and by
    #     specifying a value of "0" for the Marker parameter in your first
    #     request. Include the Marker value returned in the response as the
    #     Marker value for the next request, continuing until the
    #     AdditionalDataPending response element returns false.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DownloadDBLogFilePortionMessage AWS API Documentation
    #
    class DownloadDBLogFilePortionMessage < Struct.new(
      :db_instance_identifier,
      :log_file_name,
      :marker,
      :number_of_lines)
      include Aws::Structure
    end

    # This data type is used as a response element in the following actions:
    #
    # * AuthorizeDBSecurityGroupIngress
    #
    # * DescribeDBSecurityGroups
    #
    # * RevokeDBSecurityGroupIngress
    #
    # @!attribute [rw] status
    #   Provides the status of the EC2 security group. Status can be
    #   "authorizing", "authorized", "revoking", and "revoked".
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   Specifies the name of the EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_id
    #   Specifies the id of the EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   Specifies the AWS ID of the owner of the EC2 security group
    #   specified in the `EC2SecurityGroupName` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EC2SecurityGroup AWS API Documentation
    #
    class EC2SecurityGroup < Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # This data type is used as a response element in the following actions:
    #
    # * CreateDBInstance
    #
    # * DescribeDBInstances
    #
    # * DeleteDBInstance
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeEngineDefaultParameters action.
    #
    # @!attribute [rw] db_parameter_group_family
    #   Specifies the name of the DB parameter group family that the engine
    #   default parameters apply to.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous EngineDefaults
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by `MaxRecords`
    #   .
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Contains a list of engine default parameters.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EngineDefaults AWS API Documentation
    #
    class EngineDefaults < Struct.new(
      :db_parameter_group_family,
      :marker,
      :parameters)
      include Aws::Structure
    end

    # This data type is used as a response element in the DescribeEvents
    # action.
    #
    # @!attribute [rw] source_identifier
    #   Provides the identifier for the source of the event.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies the source type for this event.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Provides the text of this event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   Specifies the category for the event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] date
    #   Specifies the date and time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) for the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      :source_arn)
      include Aws::Structure
    end

    # Contains the results of a successful invocation of the
    # DescribeEventCategories action.
    #
    # @!attribute [rw] source_type
    #   The source type that the returned categories belong to
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The event categories for the specified source type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventCategoriesMap AWS API Documentation
    #
    class EventCategoriesMap < Struct.new(
      :source_type,
      :event_categories)
      include Aws::Structure
    end

    # Data returned from the **DescribeEventCategories** action.
    #
    # @!attribute [rw] event_categories_map_list
    #   A list of EventCategoriesMap data types.
    #   @return [Array<Types::EventCategoriesMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventCategoriesMessage AWS API Documentation
    #
    class EventCategoriesMessage < Struct.new(
      :event_categories_map_list)
      include Aws::Structure
    end

    # Contains the results of a successful invocation of the
    # DescribeEventSubscriptions action.
    #
    # @!attribute [rw] customer_aws_id
    #   The AWS customer account associated with the RDS event notification
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] cust_subscription_id
    #   The RDS event notification subscription Id.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The topic ARN of the RDS event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the RDS event notification subscription.
    #
    #   Constraints:
    #
    #   Can be one of the following: creating \| modifying \| deleting \|
    #   active \| no-permission \| topic-not-exist
    #
    #   The status "no-permission" indicates that RDS no longer has
    #   permission to post to the SNS topic. The status "topic-not-exist"
    #   indicates that the topic was deleted after the subscription was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_creation_time
    #   The time the RDS event notification subscription was created.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type for the RDS event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] source_ids_list
    #   A list of source IDs for the RDS event notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_categories_list
    #   A list of event categories for the RDS event notification
    #   subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value indicating if the subscription is enabled. True
    #   indicates the subscription is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_subscription_arn
    #   The Amazon Resource Name (ARN) for the event subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventSubscription AWS API Documentation
    #
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
      :event_subscription_arn)
      include Aws::Structure
    end

    # Data returned by the **DescribeEventSubscriptions** action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions_list
    #   A list of EventSubscriptions data types.
    #   @return [Array<Types::EventSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventSubscriptionsMessage AWS API Documentation
    #
    class EventSubscriptionsMessage < Struct.new(
      :marker,
      :event_subscriptions_list)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the DescribeEvents
    # action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous Events request.
    #   If this parameter is specified, the response includes only records
    #   beyond the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of Event instances.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      include Aws::Structure
    end

    # @note When making an API call, you may pass FailoverDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         target_db_instance_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   A DB cluster identifier to force a failover for. This parameter is
    #   not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] target_db_instance_identifier
    #   The name of the instance to promote to the primary instance.
    #
    #   You must specify the instance identifier for an Aurora Replica in
    #   the DB cluster. For example, `mydbcluster-replica1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverDBClusterMessage AWS API Documentation
    #
    class FailoverDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverDBClusterResult AWS API Documentation
    #
    class FailoverDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # A filter name and value pair that is used to return a more specific
    # list of results from a describe operation. Filters can be used to
    # match a set of resources by specific criteria, such as IDs. The
    # filters supported by a describe operation are documented with the
    # describe operation.
    #
    # <note markdown="1"> Currently, wildcards are not supported in filters.
    #
    #  </note>
    #
    # The following actions can be filtered:
    #
    # * DescribeDBClusterBacktracks
    #
    # * DescribeDBClusters
    #
    # * DescribeDBInstances
    #
    # * DescribePendingMaintenanceActions
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more filter values. Filter values are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # DescribeDBSecurityGroups action.
    #
    # @!attribute [rw] status
    #   Specifies the status of the IP range. Status can be "authorizing",
    #   "authorized", "revoking", and "revoked".
    #   @return [String]
    #
    # @!attribute [rw] cidrip
    #   Specifies the IP range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/IPRange AWS API Documentation
    #
    class IPRange < Struct.new(
      :status,
      :cidrip)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon RDS resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN). For information about creating an ARN,
    #   see [ Constructing an ARN for Amazon RDS][1] in the *Amazon RDS User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_name,
      :filters)
      include Aws::Structure
    end

    # The minimum DB engine version required for each corresponding allowed
    # value for an option setting.
    #
    # @!attribute [rw] allowed_value
    #   The allowed value for an option setting.
    #   @return [String]
    #
    # @!attribute [rw] minimum_engine_version
    #   The minimum DB engine version required for the allowed value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/MinimumEngineVersionPerAllowedValue AWS API Documentation
    #
    class MinimumEngineVersionPerAllowedValue < Struct.new(
      :allowed_value,
      :minimum_engine_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyCurrentDBClusterCapacityMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         capacity: 1,
    #         seconds_before_timeout: 1,
    #         timeout_action: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The DB cluster capacity.
    #
    #   Constraints:
    #
    #   * Value must be `2`, `4`, `8`, `16`, `32`, `64`, `128`, or `256`.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] seconds_before_timeout
    #   The amount of time, in seconds, that Aurora Serverless tries to find
    #   a scaling point to perform seamless scaling before enforcing the
    #   timeout action. The default is 300.
    #
    #   * Value must be from 10 through 600.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_action
    #   The action to take when the timeout is reached, either
    #   `ForceApplyCapacityChange` or `RollbackCapacityChange`.
    #
    #   `ForceApplyCapacityChange`, the default, sets the capacity to the
    #   specified value as soon as possible.
    #
    #   `RollbackCapacityChange` ignores the capacity change if a scaling
    #   point is not found in the timeout period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyCurrentDBClusterCapacityMessage AWS API Documentation
    #
    class ModifyCurrentDBClusterCapacityMessage < Struct.new(
      :db_cluster_identifier,
      :capacity,
      :seconds_before_timeout,
      :timeout_action)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         new_db_cluster_identifier: "String",
    #         apply_immediately: false,
    #         backup_retention_period: 1,
    #         db_cluster_parameter_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         port: 1,
    #         master_user_password: "String",
    #         option_group_name: "String",
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         enable_iam_database_authentication: false,
    #         backtrack_window: 1,
    #         cloudwatch_logs_export_configuration: {
    #           enable_log_types: ["String"],
    #           disable_log_types: ["String"],
    #         },
    #         engine_version: "String",
    #         scaling_configuration: {
    #           min_capacity: 1,
    #           max_capacity: 1,
    #           auto_pause: false,
    #           seconds_until_auto_pause: 1,
    #         },
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * The first character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   A value that specifies whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB cluster. If this parameter is set to `false`, changes to the
    #   DB cluster are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter only affects the
    #   `EnableIAMDatabaseAuthentication`, `MasterUserPassword`, and
    #   `NewDBClusterIdentifier` values. If you set the `ApplyImmediately`
    #   parameter value to false, then changes to the
    #   `EnableIAMDatabaseAuthentication`, `MasterUserPassword`, and
    #   `NewDBClusterIdentifier` values are applied during the next
    #   maintenance window. All other changes are applied immediately,
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. You
    #   must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to use for the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the DB cluster will belong to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   The new password for the master database user. This password can
    #   contain any printable ASCII character except "/", """, or
    #   "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified option group. Changing this parameter doesn't result
    #   in an outage except in the following case, and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request. If the parameter change
    #   results in an option group that enables OEM, this change can cause a
    #   brief (sub-second) period during which new connections are rejected
    #   but existing connections are not interrupted.
    #
    #   Permanent options can't be removed from an option group. The option
    #   group can't be removed from a DB cluster once it is associated with
    #   a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred DB Cluster Maintenance Window][1] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week. To see the time blocks available, see [ Adjusting the
    #   Preferred DB Cluster Maintenance Window][1] in the *Amazon Aurora
    #   User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB cluster.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless the
    #   ApplyImmediately parameter is set to true.
    #
    #   For a list of valid engine versions, see CreateDBCluster, or call
    #   DescribeDBEngineVersions.
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   The scaling properties of the DB cluster. You can only modify
    #   scaling properties for DB clusters in `serverless` DB engine mode.
    #   @return [Types::ScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterMessage AWS API Documentation
    #
    class ModifyDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :new_db_cluster_identifier,
      :apply_immediately,
      :backup_retention_period,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :port,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :enable_iam_database_authentication,
      :backtrack_window,
      :cloudwatch_logs_export_configuration,
      :engine_version,
      :scaling_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         parameters: [ # required
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #             apply_method: "immediate", # accepts immediate, pending-reboot
    #             supported_engine_modes: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters in the DB cluster parameter group to modify.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterParameterGroupMessage AWS API Documentation
    #
    class ModifyDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterResult AWS API Documentation
    #
    class ModifyDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBClusterSnapshotAttributeMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #         attribute_name: "String", # required
    #         values_to_add: ["String"],
    #         values_to_remove: ["String"],
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to modify the attributes
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the DB cluster snapshot attribute to modify.
    #
    #   To manage authorization for other AWS accounts to copy or restore a
    #   manual DB cluster snapshot, set this value to `restore`.
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of DB cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual DB
    #   cluster snapshot, set this list to include one or more AWS account
    #   IDs, or `all` to make the manual DB cluster snapshot restorable by
    #   any AWS account. Do not add the `all` value for any manual DB
    #   cluster snapshots that contain private information that you don't
    #   want available to all AWS accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of DB cluster snapshot attributes to remove from the
    #   attribute specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual DB cluster snapshot, set this list to include one or more AWS
    #   account identifiers, or `all` to remove authorization for any AWS
    #   account to copy or restore the DB cluster snapshot. If you specify
    #   `all`, an AWS account whose account ID is explicitly added to the
    #   `restore` attribute can still copy or restore a manual DB cluster
    #   snapshot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterSnapshotAttributeMessage AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   DescribeDBClusterSnapshotAttributes API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   AWS accounts to copy or restore a manual DB cluster snapshot. For
    #   more information, see the ModifyDBClusterSnapshotAttribute API
    #   action.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         allocated_storage: 1,
    #         db_instance_class: "String",
    #         db_subnet_group_name: "String",
    #         db_security_groups: ["String"],
    #         vpc_security_group_ids: ["String"],
    #         apply_immediately: false,
    #         master_user_password: "String",
    #         db_parameter_group_name: "String",
    #         backup_retention_period: 1,
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         multi_az: false,
    #         engine_version: "String",
    #         allow_major_version_upgrade: false,
    #         auto_minor_version_upgrade: false,
    #         license_model: "String",
    #         iops: 1,
    #         option_group_name: "String",
    #         new_db_instance_identifier: "String",
    #         storage_type: "String",
    #         tde_credential_arn: "String",
    #         tde_credential_password: "String",
    #         ca_certificate_identifier: "String",
    #         domain: "String",
    #         copy_tags_to_snapshot: false,
    #         monitoring_interval: 1,
    #         db_port_number: 1,
    #         publicly_accessible: false,
    #         monitoring_role_arn: "String",
    #         domain_iam_role_name: "String",
    #         promotion_tier: 1,
    #         enable_iam_database_authentication: false,
    #         enable_performance_insights: false,
    #         performance_insights_kms_key_id: "String",
    #         performance_insights_retention_period: 1,
    #         cloudwatch_logs_export_configuration: {
    #           enable_log_types: ["String"],
    #           disable_log_types: ["String"],
    #         },
    #         processor_features: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         use_default_processor_features: false,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The new amount of storage (in gibibytes) to allocate for the DB
    #   instance.
    #
    #   For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must
    #   be at least 10% greater than the current value. Values that are not
    #   at least 10% greater than the existing value are rounded up so that
    #   they are 10% greater than the current value.
    #
    #   For the valid values for allocated storage for each engine, see
    #   CreateDBInstance.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The new compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC. If your DB
    #   instance is not in a VPC, you can also use this parameter to move
    #   your DB instance into a VPC. For more information, see [Updating the
    #   VPC for a DB Instance][1] in the *Amazon RDS User Guide.*
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   specify `true` for the `ApplyImmediately` parameter.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetGroup`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to authorize on this DB instance.
    #   Changing this setting doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DBSecurityGroups.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to authorize on this DB instance.
    #   This change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VpcSecurityGroupIds.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the DB instance are
    #   applied during the next maintenance window. Some parameter changes
    #   can cause an outage and are applied on the next call to
    #   RebootDBInstance, or the next failure reboot. Review the table of
    #   parameters in [Modifying a DB Instance and Using the Apply
    #   Immediately Parameter][1] in the *Amazon RDS User Guide.* to see the
    #   impact that setting `ApplyImmediately` to `true` or `false` has for
    #   each modified parameter and to determine when the changes are
    #   applied.
    #
    #   Default: `false`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_password
    #   The new password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Changing this parameter doesn't result in an outage and the change
    #   is asynchronously applied as soon as possible. Between the time of
    #   the request and the completion of the request, the
    #   `MasterUserPassword` element exists in the `PendingModifiedValues`
    #   element of the operation response.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the
    #   DB cluster. For more information, see ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   <note markdown="1"> Amazon RDS API actions never return the password, so this action
    #   provides a way to regain access to a primary instance user if the
    #   password is lost. This includes restoring privileges that might have
    #   been accidentally revoked.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to apply to the DB instance.
    #   Changing this setting doesn't result in an outage. The parameter
    #   group name itself is changed immediately, but the actual parameter
    #   changes are not applied until you reboot the instance without
    #   failover. The db instance will NOT be rebooted automatically and the
    #   parameter changes will NOT be applied during the next maintenance
    #   window.
    #
    #   Default: Uses existing setting
    #
    #   Constraints: The DB parameter group must be in the same DB parameter
    #   group family as this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days to retain automated backups. Setting this
    #   parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   Changing this parameter can result in an outage if you change from 0
    #   to a non-zero value or from a non-zero value to 0. These changes are
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request. If
    #   you change the parameter from one non-zero value to another non-zero
    #   value, the change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is
    #   managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Can be specified for a MySQL Read Replica only if the source is
    #     running MySQL 5.6
    #
    #   * Can be specified for a PostgreSQL Read Replica only if the source
    #     is running PostgreSQL 9.3.5
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod` parameter. Changing this parameter doesn't
    #   result in an outage and the change is asynchronously applied as soon
    #   as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups
    #   is managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * Must be in the format hh24:mi-hh24:mi
    #
    #   * Must be in Universal Time Coordinated (UTC)
    #
    #   * Must not conflict with the preferred maintenance window
    #
    #   * Must be at least 30 minutes
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage, except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there
    #   are pending actions that cause a reboot, and the maintenance window
    #   is changed to include the current time, then changing this parameter
    #   will cause a reboot of the DB instance. If moving this window to the
    #   current time, there must be at least 30 minutes between the current
    #   time and end of the window to ensure pending changes are applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. Changing this
    #   parameter doesn't result in an outage and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to upgrade to. Changing
    #   this parameter results in an outage and the change is applied during
    #   the next maintenance window unless the `ApplyImmediately` parameter
    #   is set to `true` for this request.
    #
    #   For major version upgrades, if a nondefault DB parameter group is
    #   currently in use, a new DB parameter group in the DB parameter group
    #   family for the new engine version must be specified. The new DB
    #   parameter group can be the default for that DB parameter group
    #   family.
    #
    #   For information about valid engine versions, see CreateDBInstance,
    #   or call DescribeDBEngineVersions.
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints: This parameter must be set to true when specifying a
    #   value for the EngineVersion parameter that is a different major
    #   version than the DB instance's current version.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to
    #   the DB instance during the maintenance window. Changing this
    #   parameter doesn't result in an outage except in the following case
    #   and the change is asynchronously applied as soon as possible. An
    #   outage will result if this parameter is set to `true` during the
    #   maintenance window, and a newer minor version is available, and RDS
    #   has enabled auto patching for that engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   The license model for the DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The new Provisioned IOPS (I/O operations per second) value for the
    #   RDS instance.
    #
    #   Changing this setting doesn't result in an outage and the change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request. If
    #   you are migrating from Provisioned IOPS to standard storage, set
    #   this value to 0. The DB instance will require a reboot for the
    #   change in storage type to take effect.
    #
    #   If you choose to migrate your DB instance from using standard
    #   storage to using Provisioned IOPS, or from using Provisioned IOPS to
    #   using standard storage, the process can take time. The duration of
    #   the migration depends on several factors such as database load,
    #   storage size, storage type (standard or Provisioned IOPS), amount of
    #   IOPS provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might
    #   experience performance degradation. While the migration takes place,
    #   nightly backups for the instance are suspended. No other Amazon RDS
    #   operations can take place for the instance, including modifying the
    #   instance, rebooting the instance, deleting the instance, creating a
    #   Read Replica for the instance, and creating a DB snapshot of the
    #   instance.
    #
    #   Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value
    #   supplied must be at least 10% greater than the current value. Values
    #   that are not at least 10% greater than the existing value are
    #   rounded up so that they are 10% greater than the current value.
    #
    #   Default: Uses existing setting
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   Indicates that the DB instance should be associated with the
    #   specified option group. Changing this parameter doesn't result in
    #   an outage except in the following case and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request. If the parameter change
    #   results in an option group that enables OEM, this change can cause a
    #   brief (sub-second) period during which new connections are rejected
    #   but existing connections are not interrupted.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group, and that
    #   option group can't be removed from a DB instance once it is
    #   associated with a DB instance
    #   @return [String]
    #
    # @!attribute [rw] new_db_instance_identifier
    #   The new DB instance identifier for the DB instance when renaming a
    #   DB instance. When you change the DB instance identifier, an instance
    #   reboot will occur immediately if you set `Apply Immediately` to
    #   true, or will occur during the next maintenance window if `Apply
    #   Immediately` to false. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   If you specify Provisioned IOPS (`io1`), you must also include a
    #   value for the `Iops` parameter.
    #
    #   If you choose to migrate your DB instance from using standard
    #   storage to using Provisioned IOPS, or from using Provisioned IOPS to
    #   using standard storage, the process can take time. The duration of
    #   the migration depends on several factors such as database load,
    #   storage size, storage type (standard or Provisioned IOPS), amount of
    #   IOPS provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might
    #   experience performance degradation. While the migration takes place,
    #   nightly backups for the instance are suspended. No other Amazon RDS
    #   operations can take place for the instance, including modifying the
    #   instance, rebooting the instance, deleting the instance, creating a
    #   Read Replica for the instance, and creating a DB snapshot of the
    #   instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The Active Directory Domain to move the instance to. Specify `none`
    #   to remove the instance from its current domain. The domain must be
    #   created prior to this operation. Currently only a Microsoft SQL
    #   Server instance can be created in a Active Directory Domain.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #   @return [Integer]
    #
    # @!attribute [rw] db_port_number
    #   The port number on which the database accepts connections.
    #
    #   The value of the `DBPortNumber` parameter must not match any of the
    #   port values specified for options in the option group for the DB
    #   instance.
    #
    #   Your database will restart when you change the `DBPortNumber` value
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid Values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid Values: `1150-65535` except for `1434`, `3389`, `47001`,
    #   `49152`, and `49152` through `49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   Boolean value that indicates if the DB instance has a publicly
    #   resolvable DNS name. Set to `True` to make the DB instance
    #   Internet-facing with a publicly resolvable DNS name, which resolves
    #   to a public IP address. Set to `False` to make the DB instance
    #   internal with a DNS name that resolves to a private IP address.
    #
    #   `PubliclyAccessible` only applies to DB instances in a VPC. The DB
    #   instance must be part of a public subnet and `PubliclyAccessible`
    #   must be true in order for it to be publicly accessible.
    #
    #   Changes to the `PubliclyAccessible` parameter are applied
    #   immediately regardless of the value of the `ApplyImmediately`
    #   parameter.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, go to [To create an IAM role for Amazon
    #   RDS Enhanced Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you
    #   must supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following
    #   database engines
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and
    #   otherwise false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #   @return [Integer]
    #
    # @!attribute [rw] cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB instance.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBInstanceMessage AWS API Documentation
    #
    class ModifyDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :db_subnet_group_name,
      :db_security_groups,
      :vpc_security_group_ids,
      :apply_immediately,
      :master_user_password,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :allow_major_version_upgrade,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :new_db_instance_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :ca_certificate_identifier,
      :domain,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :db_port_number,
      :publicly_accessible,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :promotion_tier,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :cloudwatch_logs_export_configuration,
      :processor_features,
      :use_default_processor_features)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBInstanceResult AWS API Documentation
    #
    class ModifyDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "String", # required
    #         parameters: [ # required
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #             apply_method: "immediate", # accepts immediate, pending-reboot
    #             supported_engine_modes: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An array of parameter names, values, and the apply method for the
    #   parameter update. At least one parameter name, value, and apply
    #   method must be supplied; subsequent arguments are optional. A
    #   maximum of 20 parameters can be modified in a single request.
    #
    #   Valid Values (for the application method): `immediate |
    #   pending-reboot`
    #
    #   <note markdown="1"> You can use the immediate value with dynamic parameters only. You
    #   can use the pending-reboot value for both dynamic and static
    #   parameters, and changes are applied when you reboot the DB instance
    #   without failover.
    #
    #    </note>
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBParameterGroupMessage AWS API Documentation
    #
    class ModifyDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBSnapshotAttributeMessage
    #   data as a hash:
    #
    #       {
    #         db_snapshot_identifier: "String", # required
    #         attribute_name: "String", # required
    #         values_to_add: ["String"],
    #         values_to_remove: ["String"],
    #       }
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The identifier for the DB snapshot to modify the attributes for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the DB snapshot attribute to modify.
    #
    #   To manage authorization for other AWS accounts to copy or restore a
    #   manual DB snapshot, set this value to `restore`.
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of DB snapshot attributes to add to the attribute specified
    #   by `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual
    #   snapshot, set this list to include one or more AWS account IDs, or
    #   `all` to make the manual DB snapshot restorable by any AWS account.
    #   Do not add the `all` value for any manual DB snapshots that contain
    #   private information that you don't want available to all AWS
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of DB snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual snapshot, set this list to include one or more AWS account
    #   identifiers, or `all` to remove authorization for any AWS account to
    #   copy or restore the DB snapshot. If you specify `all`, an AWS
    #   account whose account ID is explicitly added to the `restore`
    #   attribute can still copy or restore the manual DB snapshot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotAttributeMessage AWS API Documentation
    #
    class ModifyDBSnapshotAttributeMessage < Struct.new(
      :db_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove)
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   DescribeDBSnapshotAttributes API action.
    #
    #   Manual DB snapshot attributes are used to authorize other AWS
    #   accounts to copy or restore a manual DB snapshot. For more
    #   information, see the ModifyDBSnapshotAttribute API action.
    #   @return [Types::DBSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBSnapshotAttributeResult < Struct.new(
      :db_snapshot_attributes_result)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_snapshot_identifier: "String", # required
    #         engine_version: "String",
    #         option_group_name: "String",
    #       }
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The identifier of the DB snapshot to modify.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version to upgrade the DB snapshot to.
    #
    #   The following are the database engines and engine versions that are
    #   available when you upgrade a DB snapshot.
    #
    #   **MySQL**
    #
    #   * `5.5.46` (supported for 5.1 DB snapshots)
    #
    #   ^
    #
    #   **Oracle**
    #
    #   * `12.1.0.2.v8` (supported for 12.1.0.1 DB snapshots)
    #
    #   * `11.2.0.4.v12` (supported for 11.2.0.2 DB snapshots)
    #
    #   * `11.2.0.4.v11` (supported for 11.2.0.3 DB snapshots)
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The option group to identify with the upgraded DB snapshot.
    #
    #   You can specify this parameter when you upgrade an Oracle DB
    #   snapshot. The same option group considerations apply when upgrading
    #   a DB snapshot as when upgrading a DB instance. For more information,
    #   see [Option Group Considerations][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotMessage AWS API Documentation
    #
    class ModifyDBSnapshotMessage < Struct.new(
      :db_snapshot_identifier,
      :engine_version,
      :option_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot
    #   Contains the details of an Amazon RDS DB snapshot.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSnapshots action.
    #   @return [Types::DBSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotResult AWS API Documentation
    #
    class ModifyDBSnapshotResult < Struct.new(
      :db_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String", # required
    #         db_subnet_group_description: "String",
    #         subnet_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 subnet IDs for the DB subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSubnetGroupMessage AWS API Documentation
    #
    class ModifyDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Contains the details of an Amazon RDS DB subnet group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSubnetGroups action.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSubnetGroupResult AWS API Documentation
    #
    class ModifyDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         sns_topic_arn: "String",
    #         source_type: "String",
    #         event_categories: ["String"],
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the RDS event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source that is generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a SourceType that you want to
    #   subscribe to. You can see a list of the categories for a given
    #   SourceType in the [Events][1] topic in the *Amazon RDS User Guide*
    #   or by using the **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyEventSubscriptionMessage AWS API Documentation
    #
    class ModifyEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyEventSubscriptionResult AWS API Documentation
    #
    class ModifyEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyOptionGroupMessage
    #   data as a hash:
    #
    #       {
    #         option_group_name: "String", # required
    #         options_to_include: [
    #           {
    #             option_name: "String", # required
    #             port: 1,
    #             option_version: "String",
    #             db_security_group_memberships: ["String"],
    #             vpc_security_group_memberships: ["String"],
    #             option_settings: [
    #               {
    #                 name: "String",
    #                 value: "String",
    #                 default_value: "String",
    #                 description: "String",
    #                 apply_type: "String",
    #                 data_type: "String",
    #                 allowed_values: "String",
    #                 is_modifiable: false,
    #                 is_collection: false,
    #               },
    #             ],
    #           },
    #         ],
    #         options_to_remove: ["String"],
    #         apply_immediately: false,
    #       }
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to be modified.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group, and that
    #   option group can't be removed from a DB instance once it is
    #   associated with a DB instance
    #   @return [String]
    #
    # @!attribute [rw] options_to_include
    #   Options in this list are added to the option group or, if already
    #   present, the specified configuration is used to update the existing
    #   configuration.
    #   @return [Array<Types::OptionConfiguration>]
    #
    # @!attribute [rw] options_to_remove
    #   Options in this list are removed from the option group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates whether the changes should be applied immediately, or
    #   during the next maintenance window for each instance associated with
    #   the option group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyOptionGroupMessage AWS API Documentation
    #
    class ModifyOptionGroupMessage < Struct.new(
      :option_group_name,
      :options_to_include,
      :options_to_remove,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] option_group
    #   @return [Types::OptionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyOptionGroupResult AWS API Documentation
    #
    class ModifyOptionGroupResult < Struct.new(
      :option_group)
      include Aws::Structure
    end

    # Option details.
    #
    # @!attribute [rw] option_name
    #   The name of the option.
    #   @return [String]
    #
    # @!attribute [rw] option_description
    #   The description of the option.
    #   @return [String]
    #
    # @!attribute [rw] persistent
    #   Indicate if this option is persistent.
    #   @return [Boolean]
    #
    # @!attribute [rw] permanent
    #   Indicate if this option is permanent.
    #   @return [Boolean]
    #
    # @!attribute [rw] port
    #   If required, the port configured for this option to use.
    #   @return [Integer]
    #
    # @!attribute [rw] option_version
    #   The version of the option.
    #   @return [String]
    #
    # @!attribute [rw] option_settings
    #   The option settings for this option.
    #   @return [Array<Types::OptionSetting>]
    #
    # @!attribute [rw] db_security_group_memberships
    #   If the option requires access to a port, then this DB security group
    #   allows access to the port.
    #   @return [Array<Types::DBSecurityGroupMembership>]
    #
    # @!attribute [rw] vpc_security_group_memberships
    #   If the option requires access to a port, then this VPC security
    #   group allows access to the port.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Option AWS API Documentation
    #
    class Option < Struct.new(
      :option_name,
      :option_description,
      :persistent,
      :permanent,
      :port,
      :option_version,
      :option_settings,
      :db_security_group_memberships,
      :vpc_security_group_memberships)
      include Aws::Structure
    end

    # A list of all available options
    #
    # @note When making an API call, you may pass OptionConfiguration
    #   data as a hash:
    #
    #       {
    #         option_name: "String", # required
    #         port: 1,
    #         option_version: "String",
    #         db_security_group_memberships: ["String"],
    #         vpc_security_group_memberships: ["String"],
    #         option_settings: [
    #           {
    #             name: "String",
    #             value: "String",
    #             default_value: "String",
    #             description: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             is_collection: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] option_name
    #   The configuration of options to include in a group.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The optional port for the option.
    #   @return [Integer]
    #
    # @!attribute [rw] option_version
    #   The version for the option.
    #   @return [String]
    #
    # @!attribute [rw] db_security_group_memberships
    #   A list of DBSecurityGroupMemebrship name strings used for this
    #   option.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_memberships
    #   A list of VpcSecurityGroupMemebrship name strings used for this
    #   option.
    #   @return [Array<String>]
    #
    # @!attribute [rw] option_settings
    #   The option settings to include in an option group.
    #   @return [Array<Types::OptionSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionConfiguration AWS API Documentation
    #
    class OptionConfiguration < Struct.new(
      :option_name,
      :port,
      :option_version,
      :db_security_group_memberships,
      :vpc_security_group_memberships,
      :option_settings)
      include Aws::Structure
    end

    # @!attribute [rw] option_group_name
    #   Specifies the name of the option group.
    #   @return [String]
    #
    # @!attribute [rw] option_group_description
    #   Provides a description of the option group.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   Indicates the name of the engine that this option group can be
    #   applied to.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   Indicates the major engine version associated with this option
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Indicates what options are available in the option group.
    #   @return [Array<Types::Option>]
    #
    # @!attribute [rw] allows_vpc_and_non_vpc_instance_memberships
    #   Indicates whether this option group can be applied to both VPC and
    #   non-VPC instances. The value `true` indicates the option group can
    #   be applied to both VPC and non-VPC instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   If **AllowsVpcAndNonVpcInstanceMemberships** is `false`, this field
    #   is blank. If **AllowsVpcAndNonVpcInstanceMemberships** is `true` and
    #   this field is blank, then this option group can be applied to both
    #   VPC and non-VPC instances. If this field contains a value, then this
    #   option group can only be applied to instances that are in the VPC
    #   indicated by this field.
    #   @return [String]
    #
    # @!attribute [rw] option_group_arn
    #   The Amazon Resource Name (ARN) for the option group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroup AWS API Documentation
    #
    class OptionGroup < Struct.new(
      :option_group_name,
      :option_group_description,
      :engine_name,
      :major_engine_version,
      :options,
      :allows_vpc_and_non_vpc_instance_memberships,
      :vpc_id,
      :option_group_arn)
      include Aws::Structure
    end

    # Provides information on the option groups the DB instance is a member
    # of.
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group that the instance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance's option group membership. Valid
    #   values are: `in-sync`, `pending-apply`, `pending-removal`,
    #   `pending-maintenance-apply`, `pending-maintenance-removal`,
    #   `applying`, `removing`, and `failed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupMembership AWS API Documentation
    #
    class OptionGroupMembership < Struct.new(
      :option_group_name,
      :status)
      include Aws::Structure
    end

    # Available option.
    #
    # @!attribute [rw] name
    #   The name of the option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the option.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The name of the engine that this option can be applied to.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   Indicates the major engine version that the option is available for.
    #   @return [String]
    #
    # @!attribute [rw] minimum_required_minor_engine_version
    #   The minimum required engine version for the option to be applied.
    #   @return [String]
    #
    # @!attribute [rw] port_required
    #   Specifies whether the option requires a port.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_port
    #   If the option requires a port, specifies the default port for the
    #   option.
    #   @return [Integer]
    #
    # @!attribute [rw] options_depended_on
    #   The options that are prerequisites for this option.
    #   @return [Array<String>]
    #
    # @!attribute [rw] options_conflicts_with
    #   The options that conflict with this option.
    #   @return [Array<String>]
    #
    # @!attribute [rw] persistent
    #   Persistent options can't be removed from an option group while DB
    #   instances are associated with the option group. If you disassociate
    #   all DB instances from the option group, your can remove the
    #   persistent option from the option group.
    #   @return [Boolean]
    #
    # @!attribute [rw] permanent
    #   Permanent options can never be removed from an option group. An
    #   option group containing a permanent option can't be removed from a
    #   DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] requires_auto_minor_engine_version_upgrade
    #   If true, you must enable the Auto Minor Version Upgrade setting for
    #   your DB instance before you can use this option. You can enable Auto
    #   Minor Version Upgrade when you first create your DB instance, or by
    #   modifying your DB instance later.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_only
    #   If true, you can only use this option with a DB instance that is in
    #   a VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_option_version_downgrade
    #   If true, you can change the option to an earlier version of the
    #   option. This only applies to options that have different versions
    #   available.
    #   @return [Boolean]
    #
    # @!attribute [rw] option_group_option_settings
    #   The option settings that are available (and the default value) for
    #   each option in an option group.
    #   @return [Array<Types::OptionGroupOptionSetting>]
    #
    # @!attribute [rw] option_group_option_versions
    #   The versions that are available for the option.
    #   @return [Array<Types::OptionVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupOption AWS API Documentation
    #
    class OptionGroupOption < Struct.new(
      :name,
      :description,
      :engine_name,
      :major_engine_version,
      :minimum_required_minor_engine_version,
      :port_required,
      :default_port,
      :options_depended_on,
      :options_conflicts_with,
      :persistent,
      :permanent,
      :requires_auto_minor_engine_version_upgrade,
      :vpc_only,
      :supports_option_version_downgrade,
      :option_group_option_settings,
      :option_group_option_versions)
      include Aws::Structure
    end

    # Option group option settings are used to display settings available
    # for each option with their default values and other information. These
    # values are used with the DescribeOptionGroupOptions action.
    #
    # @!attribute [rw] setting_name
    #   The name of the option group option.
    #   @return [String]
    #
    # @!attribute [rw] setting_description
    #   The description of the option group option.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for the option group option.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   The DB engine specific parameter type for the option group option.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   Indicates the acceptable values for the option group option.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Boolean value where true indicates that this option group option can
    #   be changed from the default value.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_required
    #   Boolean value where true indicates that a value must be specified
    #   for this option setting of the option group option.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version_per_allowed_value
    #   The minimum DB engine version required for the corresponding allowed
    #   value for this option setting.
    #   @return [Array<Types::MinimumEngineVersionPerAllowedValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupOptionSetting AWS API Documentation
    #
    class OptionGroupOptionSetting < Struct.new(
      :setting_name,
      :setting_description,
      :default_value,
      :apply_type,
      :allowed_values,
      :is_modifiable,
      :is_required,
      :minimum_engine_version_per_allowed_value)
      include Aws::Structure
    end

    # @!attribute [rw] option_group_options
    #   List of available option group options.
    #   @return [Array<Types::OptionGroupOption>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupOptionsMessage AWS API Documentation
    #
    class OptionGroupOptionsMessage < Struct.new(
      :option_group_options,
      :marker)
      include Aws::Structure
    end

    # List of option groups.
    #
    # @!attribute [rw] option_groups_list
    #   List of option groups.
    #   @return [Array<Types::OptionGroup>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroups AWS API Documentation
    #
    class OptionGroups < Struct.new(
      :option_groups_list,
      :marker)
      include Aws::Structure
    end

    # Option settings are the actual settings being applied or configured
    # for that option. It is used when you modify an option group or
    # describe option groups. For example, the NATIVE\_NETWORK\_ENCRYPTION
    # option has a setting called SQLNET.ENCRYPTION\_SERVER that can have
    # several different values.
    #
    # @note When making an API call, you may pass OptionSetting
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         value: "String",
    #         default_value: "String",
    #         description: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         is_collection: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the option that has settings that you can set.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The current value of the option setting.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the option setting.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the option setting.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   The DB engine specific parameter type.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the option setting.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The allowed values of the option setting.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   A Boolean value that, when true, indicates the option setting can be
    #   modified from the default.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_collection
    #   Indicates if the option setting is part of a collection.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionSetting AWS API Documentation
    #
    class OptionSetting < Struct.new(
      :name,
      :value,
      :default_value,
      :description,
      :apply_type,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :is_collection)
      include Aws::Structure
    end

    # The version for an option. Option group option versions are returned
    # by the DescribeOptionGroupOptions action.
    #
    # @!attribute [rw] version
    #   The version of the option.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   True if the version is the default version of the option, and
    #   otherwise false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionVersion AWS API Documentation
    #
    class OptionVersion < Struct.new(
      :version,
      :is_default)
      include Aws::Structure
    end

    # Contains a list of available options for a DB instance.
    #
    # This data type is used as a response element in the
    # DescribeOrderableDBInstanceOptions action.
    #
    # @!attribute [rw] engine
    #   The engine type of a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version of a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones for a DB instance.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] multi_az_capable
    #   Indicates whether a DB instance is Multi-AZ capable.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_capable
    #   Indicates whether a DB instance can have a Read Replica.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc
    #   Indicates whether a DB instance is in a VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_storage_encryption
    #   Indicates whether a DB instance supports encrypted storage.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_type
    #   Indicates the storage type for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] supports_iops
    #   Indicates whether a DB instance supports provisioned IOPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_enhanced_monitoring
    #   Indicates whether a DB instance supports Enhanced Monitoring at
    #   intervals from 1 to 60 seconds.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_iam_database_authentication
    #   Indicates whether a DB instance supports IAM database
    #   authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_performance_insights
    #   True if a DB instance supports Performance Insights, otherwise
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] min_storage_size
    #   Minimum storage size for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] max_storage_size
    #   Maximum storage size for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] min_iops_per_db_instance
    #   Minimum total provisioned IOPS for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] max_iops_per_db_instance
    #   Maximum total provisioned IOPS for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] min_iops_per_gib
    #   Minimum provisioned IOPS per GiB for a DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] max_iops_per_gib
    #   Maximum provisioned IOPS per GiB for a DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] available_processor_features
    #   A list of the available processor features for the DB instance class
    #   of a DB instance.
    #   @return [Array<Types::AvailableProcessorFeature>]
    #
    # @!attribute [rw] supported_engine_modes
    #   A list of the supported DB engine modes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OrderableDBInstanceOption AWS API Documentation
    #
    class OrderableDBInstanceOption < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zones,
      :multi_az_capable,
      :read_replica_capable,
      :vpc,
      :supports_storage_encryption,
      :storage_type,
      :supports_iops,
      :supports_enhanced_monitoring,
      :supports_iam_database_authentication,
      :supports_performance_insights,
      :min_storage_size,
      :max_storage_size,
      :min_iops_per_db_instance,
      :max_iops_per_db_instance,
      :min_iops_per_gib,
      :max_iops_per_gib,
      :available_processor_features,
      :supported_engine_modes)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeOrderableDBInstanceOptions action.
    #
    # @!attribute [rw] orderable_db_instance_options
    #   An OrderableDBInstanceOption structure containing information about
    #   orderable options for the DB instance.
    #   @return [Array<Types::OrderableDBInstanceOption>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   OrderableDBInstanceOptions request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class OrderableDBInstanceOptionsMessage < Struct.new(
      :orderable_db_instance_options,
      :marker)
      include Aws::Structure
    end

    # This data type is used as a request parameter in the
    # ModifyDBParameterGroup and ResetDBParameterGroup actions.
    #
    # This data type is used as a response element in the
    # DescribeEngineDefaultParameters and DescribeDBParameters actions.
    #
    # @note When making an API call, you may pass Parameter
    #   data as a hash:
    #
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #         supported_engine_modes: ["String"],
    #       }
    #
    # @!attribute [rw] parameter_name
    #   Specifies the name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   Specifies the value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides a description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates the source of the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   Specifies the engine specific parameters type.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Specifies the valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   Specifies the valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] apply_method
    #   Indicates when to apply parameter updates.
    #   @return [String]
    #
    # @!attribute [rw] supported_engine_modes
    #   The valid DB engine modes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Parameter AWS API Documentation
    #
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
      :supported_engine_modes)
      include Aws::Structure
    end

    # A list of the log types whose configuration is still pending. In other
    # words, these log types are in the process of being activated or
    # deactivated.
    #
    # @!attribute [rw] log_types_to_enable
    #   Log types that are in the process of being deactivated. After they
    #   are deactivated, these log types aren't exported to CloudWatch
    #   Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_types_to_disable
    #   Log types that are in the process of being enabled. After they are
    #   enabled, these log types are exported to CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PendingCloudwatchLogsExports AWS API Documentation
    #
    class PendingCloudwatchLogsExports < Struct.new(
      :log_types_to_enable,
      :log_types_to_disable)
      include Aws::Structure
    end

    # Provides information about a pending maintenance action for a
    # resource.
    #
    # @!attribute [rw] action
    #   The type of pending maintenance action that is available for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] auto_applied_after_date
    #   The date of the maintenance window when the action is applied. The
    #   maintenance action is applied to the resource during its first
    #   maintenance window after this date. If this date is specified, any
    #   `next-maintenance` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] forced_apply_date
    #   The date when the maintenance action is automatically applied. The
    #   maintenance action is applied to the resource on this date
    #   regardless of the maintenance window for the resource. If this date
    #   is specified, any `immediate` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] opt_in_status
    #   Indicates the type of opt-in request that has been received for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   The effective date when the pending maintenance action is applied to
    #   the resource. This date takes into account opt-in requests received
    #   from the ApplyPendingMaintenanceAction API, the
    #   `AutoAppliedAfterDate`, and the `ForcedApplyDate`. This value is
    #   blank if an opt-in request has not been received and nothing has
    #   been specified as `AutoAppliedAfterDate` or `ForcedApplyDate`.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description providing more detail about the maintenance action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PendingMaintenanceAction AWS API Documentation
    #
    class PendingMaintenanceAction < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description)
      include Aws::Structure
    end

    # Data returned from the **DescribePendingMaintenanceActions** action.
    #
    # @!attribute [rw] pending_maintenance_actions
    #   A list of the pending maintenance actions for the resource.
    #   @return [Array<Types::ResourcePendingMaintenanceActions>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribePendingMaintenanceActions` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to a number of records specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PendingMaintenanceActionsMessage AWS API Documentation
    #
    class PendingMaintenanceActionsMessage < Struct.new(
      :pending_maintenance_actions,
      :marker)
      include Aws::Structure
    end

    # This data type is used as a response element in the ModifyDBInstance
    # action.
    #
    # @!attribute [rw] db_instance_class
    #   Contains the new `DBInstanceClass` for the DB instance that will be
    #   applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Contains the new `AllocatedStorage` size for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   Contains the pending or currently-in-progress change of the master
    #   credentials for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the pending port for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the pending number of days for which automated backups are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Indicates that the Single-AZ DB instance is to change to a Multi-AZ
    #   deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for the DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the new Provisioned IOPS value for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains the new `DBInstanceIdentifier` for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Specifies the identifier of the CA certificate for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] pending_cloudwatch_logs_exports
    #   A list of the log types whose configuration is still pending. In
    #   other words, these log types are in the process of being activated
    #   or deactivated.
    #   @return [Types::PendingCloudwatchLogsExports]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PendingModifiedValues AWS API Documentation
    #
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
      :processor_features)
      include Aws::Structure
    end

    # Contains the processor features of a DB instance class.
    #
    # To specify the number of CPU cores, use the `coreCount` feature name
    # for the `Name` parameter. To specify the number of threads per core,
    # use the `threadsPerCore` feature name for the `Name` parameter.
    #
    # You can set the processor features of the DB instance class for a DB
    # instance when you call one of the following actions:
    #
    # * CreateDBInstance
    #
    # * ModifyDBInstance
    #
    # * RestoreDBInstanceFromDBSnapshot
    #
    # * RestoreDBInstanceFromS3
    #
    # * RestoreDBInstanceToPointInTime
    #
    # You can view the valid processor values for a particular instance
    # class by calling the DescribeOrderableDBInstanceOptions action and
    # specifying the instance class for the `DBInstanceClass` parameter.
    #
    # In addition, you can use the following actions for DB instance class
    # processor information:
    #
    # * DescribeDBInstances
    #
    # * DescribeDBSnapshots
    #
    # * DescribeValidDBInstanceModifications
    #
    # For more information, see [Configuring the Processor of the DB
    # Instance Class][1] in the <i>Amazon RDS User Guide. </i>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor
    #
    # @note When making an API call, you may pass ProcessorFeature
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the processor feature. Valid names are `coreCount` and
    #   `threadsPerCore`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a processor feature name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ProcessorFeature AWS API Documentation
    #
    class ProcessorFeature < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PromoteReadReplicaDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster Read Replica to promote. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster Read Replica.
    #
    #   ^
    #
    #   Example: `my-cluster-replica1`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaDBClusterMessage AWS API Documentation
    #
    class PromoteReadReplicaDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaDBClusterResult AWS API Documentation
    #
    class PromoteReadReplicaDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PromoteReadReplicaMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         backup_retention_period: 1,
    #         preferred_backup_window: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Read Replica DB instance.
    #
    #   ^
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days to retain automated backups. Setting this
    #   parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 8
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred Maintenance Window][1] in the *Amazon
    #   RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaMessage AWS API Documentation
    #
    class PromoteReadReplicaMessage < Struct.new(
      :db_instance_identifier,
      :backup_retention_period,
      :preferred_backup_window)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaResult AWS API Documentation
    #
    class PromoteReadReplicaResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PurchaseReservedDBInstancesOfferingMessage
    #   data as a hash:
    #
    #       {
    #         reserved_db_instances_offering_id: "String", # required
    #         reserved_db_instance_id: "String",
    #         db_instance_count: 1,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] reserved_db_instances_offering_id
    #   The ID of the Reserved DB instance offering to purchase.
    #
    #   Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
    #   @return [String]
    #
    # @!attribute [rw] reserved_db_instance_id
    #   Customer-specified identifier to track this reservation.
    #
    #   Example: myreservationID
    #   @return [String]
    #
    # @!attribute [rw] db_instance_count
    #   The number of instances to reserve.
    #
    #   Default: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PurchaseReservedDBInstancesOfferingMessage AWS API Documentation
    #
    class PurchaseReservedDBInstancesOfferingMessage < Struct.new(
      :reserved_db_instances_offering_id,
      :reserved_db_instance_id,
      :db_instance_count,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] reserved_db_instance
    #   This data type is used as a response element in the
    #   DescribeReservedDBInstances and PurchaseReservedDBInstancesOffering
    #   actions.
    #   @return [Types::ReservedDBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PurchaseReservedDBInstancesOfferingResult AWS API Documentation
    #
    class PurchaseReservedDBInstancesOfferingResult < Struct.new(
      :reserved_db_instance)
      include Aws::Structure
    end

    # A range of integer values.
    #
    # @!attribute [rw] from
    #   The minimum value in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The maximum value in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] step
    #   The step value for the range. For example, if you have a range of
    #   5,000 to 10,000, with a step value of 1,000, the valid values start
    #   at 5,000 and step up by 1,000. Even though 7,500 is within the
    #   range, it isn't a valid value for the range. The valid values are
    #   5,000, 6,000, 7,000, 8,000...
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Range AWS API Documentation
    #
    class Range < Struct.new(
      :from,
      :to,
      :step)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         force_failover: false,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] force_failover
    #   When `true`, the reboot is conducted through a MultiAZ failover.
    #
    #   Constraint: You can't specify `true` if the instance is not
    #   configured for MultiAZ.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBInstanceMessage AWS API Documentation
    #
    class RebootDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :force_failover)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBInstanceResult AWS API Documentation
    #
    class RebootDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # DescribeReservedDBInstances and DescribeReservedDBInstancesOfferings
    # actions.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveRoleFromDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         role_arn: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to disassociate the IAM role from.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to disassociate from
    #   the Aurora DB cluster, for example
    #   `arn:aws:iam::123456789012:role/AuroraAccessRole`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBClusterMessage AWS API Documentation
    #
    class RemoveRoleFromDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveSourceIdentifierFromSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         source_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the RDS event notification subscription you want to
    #   remove a source identifier from.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   The source identifier to be removed from the subscription, such as
    #   the **DB instance identifier** for a DB instance or the name of a
    #   security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveSourceIdentifierFromSubscriptionMessage AWS API Documentation
    #
    class RemoveSourceIdentifierFromSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveSourceIdentifierFromSubscriptionResult AWS API Documentation
    #
    class RemoveSourceIdentifierFromSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTagsFromResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon RDS resource that the tags are removed from. This value
    #   is an Amazon Resource Name (ARN). For information about creating an
    #   ARN, see [ Constructing an ARN for Amazon RDS][1] in the *Amazon RDS
    #   User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key (name) of the tag to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveTagsFromResourceMessage AWS API Documentation
    #
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # DescribeReservedDBInstances and PurchaseReservedDBInstancesOffering
    # actions.
    #
    # @!attribute [rw] reserved_db_instance_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_db_instances_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class for the reserved DB instance.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration of the reservation in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this reserved DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly price charged for this reserved DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_count
    #   The number of reserved DB instances.
    #   @return [Integer]
    #
    # @!attribute [rw] product_description
    #   The description of the reserved DB instance.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type of this reserved DB instance.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Indicates if the reservation applies to Multi-AZ deployments.
    #   @return [Boolean]
    #
    # @!attribute [rw] state
    #   The state of the reserved DB instance.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved DB instance.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] reserved_db_instance_arn
    #   The Amazon Resource Name (ARN) for the reserved DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstance AWS API Documentation
    #
    class ReservedDBInstance < Struct.new(
      :reserved_db_instance_id,
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :db_instance_count,
      :product_description,
      :offering_type,
      :multi_az,
      :state,
      :recurring_charges,
      :reserved_db_instance_arn)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeReservedDBInstances action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] reserved_db_instances
    #   A list of reserved DB instances.
    #   @return [Array<Types::ReservedDBInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstanceMessage AWS API Documentation
    #
    class ReservedDBInstanceMessage < Struct.new(
      :marker,
      :reserved_db_instances)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # DescribeReservedDBInstancesOfferings action.
    #
    # @!attribute [rw] reserved_db_instances_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class for the reserved DB instance.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the offering in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly price charged for this offering.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved DB instance offering.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The database engine used by the offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Indicates if the offering applies to Multi-AZ deployments.
    #   @return [Boolean]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved DB instance.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstancesOffering AWS API Documentation
    #
    class ReservedDBInstancesOffering < Struct.new(
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :product_description,
      :offering_type,
      :multi_az,
      :recurring_charges)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeReservedDBInstancesOfferings action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] reserved_db_instances_offerings
    #   A list of reserved DB instance offerings.
    #   @return [Array<Types::ReservedDBInstancesOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstancesOfferingMessage AWS API Documentation
    #
    class ReservedDBInstancesOfferingMessage < Struct.new(
      :marker,
      :reserved_db_instances_offerings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         reset_all_parameters: false,
    #         parameters: [
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #             apply_method: "immediate", # accepts immediate, pending-reboot
    #             supported_engine_modes: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the DB
    #   cluster parameter group to their default values, and `false`
    #   otherwise. You can't use this parameter if there is a list of
    #   parameter names specified for the `Parameters` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of parameter names in the DB cluster parameter group to reset
    #   to the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResetDBClusterParameterGroupMessage AWS API Documentation
    #
    class ResetDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :reset_all_parameters,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetDBParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "String", # required
    #         reset_all_parameters: false,
    #         parameters: [
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #             apply_method: "immediate", # accepts immediate, pending-reboot
    #             supported_engine_modes: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DBParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   Specifies whether (`true`) or not (`false`) to reset all parameters
    #   in the DB parameter group to default values.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   To reset the entire DB parameter group, specify the
    #   `DBParameterGroup` name and `ResetAllParameters` parameters. To
    #   reset specific parameters, provide a list of the following:
    #   `ParameterName` and `ApplyMethod`. A maximum of 20 parameters can be
    #   modified in a single request.
    #
    #   **MySQL**
    #
    #   Valid Values (for Apply method): `immediate` \| `pending-reboot`
    #
    #   You can use the immediate value with dynamic parameters only. You
    #   can use the `pending-reboot` value for both dynamic and static
    #   parameters, and changes are applied when DB instance reboots.
    #
    #   **MariaDB**
    #
    #   Valid Values (for Apply method): `immediate` \| `pending-reboot`
    #
    #   You can use the immediate value with dynamic parameters only. You
    #   can use the `pending-reboot` value for both dynamic and static
    #   parameters, and changes are applied when DB instance reboots.
    #
    #   **Oracle**
    #
    #   Valid Values (for Apply method): `pending-reboot`
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResetDBParameterGroupMessage AWS API Documentation
    #
    class ResetDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :reset_all_parameters,
      :parameters)
      include Aws::Structure
    end

    # Describes the pending maintenance actions for a resource.
    #
    # @!attribute [rw] resource_identifier
    #   The ARN of the resource that has pending maintenance actions.
    #   @return [String]
    #
    # @!attribute [rw] pending_maintenance_action_details
    #   A list that provides details about the pending maintenance actions
    #   for the resource.
    #   @return [Array<Types::PendingMaintenanceAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResourcePendingMaintenanceActions AWS API Documentation
    #
    class ResourcePendingMaintenanceActions < Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDBClusterFromS3Message
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["String"],
    #         backup_retention_period: 1,
    #         character_set_name: "String",
    #         database_name: "String",
    #         db_cluster_identifier: "String", # required
    #         db_cluster_parameter_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         db_subnet_group_name: "String",
    #         engine: "String", # required
    #         engine_version: "String",
    #         port: 1,
    #         master_username: "String", # required
    #         master_user_password: "String", # required
    #         option_group_name: "String",
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         enable_iam_database_authentication: false,
    #         source_engine: "String", # required
    #         source_engine_version: "String", # required
    #         s3_bucket_name: "String", # required
    #         s3_prefix: "String",
    #         s3_ingestion_role_arn: "String", # required
    #         backtrack_window: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of EC2 Availability Zones that instances in the restored DB
    #   cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups of the restored DB
    #   cluster are retained. You must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   A value that indicates that the restored DB cluster should be
    #   associated with the specified CharacterSet.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name for the restored DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to create from the source data in the
    #   Amazon S3 bucket. This parameter is isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with the
    #   restored DB cluster. If this argument is omitted,
    #   `default.aurora5.6` is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the restored DB
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with the restored DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for the restored DB
    #   cluster.
    #
    #   Valid Values: `aurora`, `aurora-postgresql`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the instances in the restored DB cluster
    #   accept connections.
    #
    #   Default: `3306`
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the restored DB cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   A value that indicates that the restored DB cluster should be
    #   associated with the specified option group.
    #
    #   Permanent options can't be removed from an option group. An option
    #   group can't be removed from a DB cluster once it is associated with
    #   a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred Maintenance Window][1] in the *Amazon
    #   Aurora User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week. To see the time blocks available, see [ Adjusting the
    #   Preferred Maintenance Window][1] in the *Amazon Aurora User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the restored DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for
    #   the KM encryption key.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify
    #   a value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key
    #   for your AWS account. Your AWS account has a different default
    #   encryption key for each AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] source_engine
    #   The identifier for the database engine that was backed up to create
    #   the files stored in the Amazon S3 bucket.
    #
    #   Valid values: `mysql`
    #   @return [String]
    #
    # @!attribute [rw] source_engine_version
    #   The version of the database that the backup files were created from.
    #
    #   MySQL version 5.5 and 5.6 are supported.
    #
    #   Example: `5.6.22`
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket that contains the data used to
    #   create the Amazon Aurora DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The prefix for all of the file names that contain the data used to
    #   create the Amazon Aurora DB cluster. If you do not specify a
    #   **SourceS3Prefix** value, then the Amazon Aurora DB cluster is
    #   created by using all of the files in the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_ingestion_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that authorizes Amazon RDS to access the
    #   Amazon S3 bucket on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromS3Message AWS API Documentation
    #
    class RestoreDBClusterFromS3Message < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :database_name,
      :db_cluster_identifier,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :db_subnet_group_name,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :enable_iam_database_authentication,
      :source_engine,
      :source_engine_version,
      :s3_bucket_name,
      :s3_prefix,
      :s3_ingestion_role_arn,
      :backtrack_window,
      :enable_cloudwatch_logs_exports)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromS3Result AWS API Documentation
    #
    class RestoreDBClusterFromS3Result < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDBClusterFromSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["String"],
    #         db_cluster_identifier: "String", # required
    #         snapshot_identifier: "String", # required
    #         engine: "String", # required
    #         engine_version: "String",
    #         port: 1,
    #         db_subnet_group_name: "String",
    #         database_name: "String",
    #         option_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         kms_key_id: "String",
    #         enable_iam_database_authentication: false,
    #         backtrack_window: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         engine_mode: "String",
    #         scaling_configuration: {
    #           min_capacity: 1,
    #           max_capacity: 1,
    #           auto_pause: false,
    #           seconds_until_auto_pause: 1,
    #         },
    #       }
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the
    #   restored DB cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to create from the DB snapshot or DB
    #   cluster snapshot. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier for the DB snapshot or DB cluster snapshot to restore
    #   from.
    #
    #   You can use either the name or the Amazon Resource Name (ARN) to
    #   specify a DB cluster snapshot. However, you can use only the ARN to
    #   specify a DB snapshot.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Snapshot.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use for the new DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name for the restored DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to use for the restored DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster will belong
    #   to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for
    #   the KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is encrypted, then the restored DB cluster is encrypted using the
    #     KMS key that was used to encrypt the DB snapshot or DB cluster
    #     snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is not encrypted, then the restored DB cluster is not encrypted.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs ][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, or `parallelquery`.
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #   @return [Types::ScalingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromSnapshotMessage AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotMessage < Struct.new(
      :availability_zones,
      :db_cluster_identifier,
      :snapshot_identifier,
      :engine,
      :engine_version,
      :port,
      :db_subnet_group_name,
      :database_name,
      :option_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_iam_database_authentication,
      :backtrack_window,
      :enable_cloudwatch_logs_exports,
      :engine_mode,
      :scaling_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromSnapshotResult AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDBClusterToPointInTimeMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         restore_type: "String",
    #         source_db_cluster_identifier: "String", # required
    #         restore_to_time: Time.now,
    #         use_latest_restorable_time: false,
    #         port: 1,
    #         db_subnet_group_name: "String",
    #         option_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         kms_key_id: "String",
    #         enable_iam_database_authentication: false,
    #         backtrack_window: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the new DB cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] restore_type
    #   The type of restore to be performed. You can specify one of the
    #   following values:
    #
    #   * `full-copy` - The new DB cluster is restored as a full copy of the
    #     source DB cluster.
    #
    #   * `copy-on-write` - The new DB cluster is restored as a clone of the
    #     source DB cluster.
    #
    #   Constraints: You can't specify `copy-on-write` if the engine
    #   version of the source DB cluster is earlier than 1.11.
    #
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   The identifier of the source DB cluster from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] restore_to_time
    #   The date and time to restore the DB cluster to.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time
    #   (UTC) format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Must be specified if `UseLatestRestorableTime` parameter is not
    #     provided
    #
    #   * Cannot be specified if `UseLatestRestorableTime` parameter is true
    #
    #   * Cannot be specified if `RestoreType` parameter is `copy-on-write`
    #
    #   Example: `2015-03-07T23:45:00Z`
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   A value that is set to `true` to restore the DB cluster to the
    #   latest restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if `RestoreToTime` parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: A value from `1150-65535`.
    #
    #   Default: The default port for the engine.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group for the new DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for
    #   the KMS encryption key.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with a KMS key that is different than the KMS key used to encrypt
    #   the source DB cluster. The new DB cluster is encrypted with the KMS
    #   key identified by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the KMS key that was used to encrypt the source DB
    #     cluster.
    #
    #   * If the DB cluster is not encrypted, then the restored DB cluster
    #     is not encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that is not
    #   encrypted, then the restore request is rejected.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterToPointInTimeMessage AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeMessage < Struct.new(
      :db_cluster_identifier,
      :restore_type,
      :source_db_cluster_identifier,
      :restore_to_time,
      :use_latest_restorable_time,
      :port,
      :db_subnet_group_name,
      :option_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_iam_database_authentication,
      :backtrack_window,
      :enable_cloudwatch_logs_exports)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterToPointInTimeResult AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDBInstanceFromDBSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         db_snapshot_identifier: "String", # required
    #         db_instance_class: "String",
    #         port: 1,
    #         availability_zone: "String",
    #         db_subnet_group_name: "String",
    #         multi_az: false,
    #         publicly_accessible: false,
    #         auto_minor_version_upgrade: false,
    #         license_model: "String",
    #         db_name: "String",
    #         engine: "String",
    #         iops: 1,
    #         option_group_name: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         storage_type: "String",
    #         tde_credential_arn: "String",
    #         tde_credential_password: "String",
    #         domain: "String",
    #         copy_tags_to_snapshot: false,
    #         domain_iam_role_name: "String",
    #         enable_iam_database_authentication: false,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         processor_features: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         use_default_processor_features: false,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   Name of the DB instance to create from the DB snapshot. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 numbers, letters, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #   @return [String]
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The identifier for the DB snapshot to restore from.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBSnapshot.
    #
    #   * If you are restoring from a shared manual DB snapshot, the
    #     `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example, `db.m4.large`. Not all DB instance classes are available in
    #   all AWS Regions, or for all database engines. For the full list of
    #   DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the database accepts connections.
    #
    #   Default: The same port as the original DB instance
    #
    #   Constraints: Value must be `1150-65535`
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #
    #   Example: `us-east-1a`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address. For more information, see
    #   CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to
    #   the DB instance during the maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   License model information for the restored DB instance.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The database name for the restored DB instance.
    #
    #   <note markdown="1"> This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
    #   engines.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new instance.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source. For
    #   example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6
    #   snapshot.
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the amount of provisioned IOPS for the DB instance,
    #   expressed in I/O operations per second. If this parameter is not
    #   specified, the IOPS value is taken from the backup. If this
    #   parameter is set to 0, the new instance is converted to a non-PIOPS
    #   instance. The conversion takes additional time, though your DB
    #   instance is available for connections before the conversion starts.
    #
    #   The provisioned IOPS value must follow the requirements for your
    #   database engine. For more information, see [Amazon RDS Provisioned
    #   IOPS Storage to Improve Performance][1] in the *Amazon RDS User
    #   Guide.*
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to be used for the restored DB
    #   instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group, and that
    #   option group can't be removed from a DB instance once it is
    #   associated with a DB instance
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory Domain to restore the instance in.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the restored DB instance to snapshots of
    #   the DB instance, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following
    #   database engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromDBSnapshotMessage AWS API Documentation
    #
    class RestoreDBInstanceFromDBSnapshotMessage < Struct.new(
      :db_instance_identifier,
      :db_snapshot_identifier,
      :db_instance_class,
      :port,
      :availability_zone,
      :db_subnet_group_name,
      :multi_az,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :license_model,
      :db_name,
      :engine,
      :iops,
      :option_group_name,
      :tags,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :domain,
      :copy_tags_to_snapshot,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromDBSnapshotResult AWS API Documentation
    #
    class RestoreDBInstanceFromDBSnapshotResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDBInstanceFromS3Message
    #   data as a hash:
    #
    #       {
    #         db_name: "String",
    #         db_instance_identifier: "String", # required
    #         allocated_storage: 1,
    #         db_instance_class: "String", # required
    #         engine: "String", # required
    #         master_username: "String",
    #         master_user_password: "String",
    #         db_security_groups: ["String"],
    #         vpc_security_group_ids: ["String"],
    #         availability_zone: "String",
    #         db_subnet_group_name: "String",
    #         preferred_maintenance_window: "String",
    #         db_parameter_group_name: "String",
    #         backup_retention_period: 1,
    #         preferred_backup_window: "String",
    #         port: 1,
    #         multi_az: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         license_model: "String",
    #         iops: 1,
    #         option_group_name: "String",
    #         publicly_accessible: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         storage_type: "String",
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         copy_tags_to_snapshot: false,
    #         monitoring_interval: 1,
    #         monitoring_role_arn: "String",
    #         enable_iam_database_authentication: false,
    #         source_engine: "String", # required
    #         source_engine_version: "String", # required
    #         s3_bucket_name: "String", # required
    #         s3_prefix: "String",
    #         s3_ingestion_role_arn: "String", # required
    #         enable_performance_insights: false,
    #         performance_insights_kms_key_id: "String",
    #         performance_insights_retention_period: 1,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         processor_features: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         use_default_processor_features: false,
    #       }
    #
    # @!attribute [rw] db_name
    #   The name of the database to create when the DB instance is created.
    #   Follow the naming rules specified in CreateDBInstance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to allocate initially for the
    #   DB instance. Follow the allocation rules specified in
    #   CreateDBInstance.
    #
    #   <note markdown="1"> Be sure to allocate enough memory for your new DB instance so that
    #   the restore operation can succeed. You can also allocate additional
    #   memory for future growth.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Importing from Amazon S3 is not supported on the db.t2.micro DB
    #   instance class.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid Values: `mysql`
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The name for the master user.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups to associate with this DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that the DB instance is created in. For
    #   information about AWS Regions and Availability Zones, see [Regions
    #   and Availability Zones][1] in the *Amazon RDS User Guide.*
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's AWS Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The AvailabilityZone parameter can't be specified if
    #   the MultiAZ parameter is set to `true`. The specified Availability
    #   Zone must be in the same AWS Region as the current endpoint.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The time range each week during which system maintenance can occur,
    #   in Universal Coordinated Time (UTC). For more information, see
    #   [Amazon RDS Maintenance Window][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred backup window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance. If this argument is omitted, the default parameter group
    #   for the specified engine is used.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. For more
    #   information, see CreateDBInstance.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The time range each day during which automated backups are created
    #   if automated backups are enabled. For more information, see [The
    #   Backup Window][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the database accepts connections.
    #
    #   Type: Integer
    #
    #   Valid Values: `1150`-`65535`
    #
    #   Default: `3306`
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the DB instance is a Multi-AZ deployment. If
    #   MultiAZ is set to `true`, you can't set the AvailabilityZone
    #   parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use. Choose the latest
    #   minor version of your database engine. For information about engine
    #   versions, see CreateDBInstance, or call DescribeDBEngineVersions.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   True to indicate that minor engine upgrades are applied
    #   automatically to the DB instance during the maintenance window, and
    #   otherwise false.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   The license model for this DB instance. Use
    #   `general-public-license`.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to allocate initially for the DB instance. For information about
    #   valid Iops values, see see [Amazon RDS Provisioned IOPS Storage to
    #   Improve Performance][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to associate with this DB instance. If
    #   this argument is omitted, the default option group for the specified
    #   engine is used.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address. For more information, see
    #   CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with this DB instance. For more
    #   information, see [Tagging Amazon RDS Resources][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard` \| `gp2` \| `io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified; otherwise
    #   `standard`
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the new DB instance is encrypted or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for an encrypted DB instance.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB instance with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   instance, then you can use the KMS key alias instead of the ARN for
    #   the KM encryption key.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify
    #   a value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key
    #   for your AWS account. Your AWS account has a different default
    #   encryption key for each AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false.
    #
    #   Default: false.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: 0, 1, 5, 10, 15, 30, 60
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, see [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you
    #   must supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] source_engine
    #   The name of the engine of your source database.
    #
    #   Valid Values: `mysql`
    #   @return [String]
    #
    # @!attribute [rw] source_engine_version
    #   The engine version of your source database.
    #
    #   Valid Values: `5.6`
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of your Amazon S3 bucket that contains your database backup
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The prefix of your Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_ingestion_role_arn
    #   An AWS Identity and Access Management (IAM) role to allow Amazon RDS
    #   to access your Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and
    #   otherwise false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), the KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromS3Message AWS API Documentation
    #
    class RestoreDBInstanceFromS3Message < Struct.new(
      :db_name,
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :engine,
      :master_username,
      :master_user_password,
      :db_security_groups,
      :vpc_security_group_ids,
      :availability_zone,
      :db_subnet_group_name,
      :preferred_maintenance_window,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :port,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :publicly_accessible,
      :tags,
      :storage_type,
      :storage_encrypted,
      :kms_key_id,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :enable_iam_database_authentication,
      :source_engine,
      :source_engine_version,
      :s3_bucket_name,
      :s3_prefix,
      :s3_ingestion_role_arn,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromS3Result AWS API Documentation
    #
    class RestoreDBInstanceFromS3Result < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreDBInstanceToPointInTimeMessage
    #   data as a hash:
    #
    #       {
    #         source_db_instance_identifier: "String", # required
    #         target_db_instance_identifier: "String", # required
    #         restore_time: Time.now,
    #         use_latest_restorable_time: false,
    #         db_instance_class: "String",
    #         port: 1,
    #         availability_zone: "String",
    #         db_subnet_group_name: "String",
    #         multi_az: false,
    #         publicly_accessible: false,
    #         auto_minor_version_upgrade: false,
    #         license_model: "String",
    #         db_name: "String",
    #         engine: "String",
    #         iops: 1,
    #         option_group_name: "String",
    #         copy_tags_to_snapshot: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         storage_type: "String",
    #         tde_credential_arn: "String",
    #         tde_credential_password: "String",
    #         domain: "String",
    #         domain_iam_role_name: "String",
    #         enable_iam_database_authentication: false,
    #         enable_cloudwatch_logs_exports: ["String"],
    #         processor_features: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         use_default_processor_features: false,
    #       }
    #
    # @!attribute [rw] source_db_instance_identifier
    #   The identifier of the source DB instance from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] target_db_instance_identifier
    #   The name of the new DB instance to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] restore_time
    #   The date and time to restore from.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time
    #   (UTC) format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Cannot be specified if UseLatestRestorableTime parameter is true
    #
    #   Example: `2009-09-07T23:45:00Z`
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   Specifies whether (`true`) or not (`false`) the DB instance is
    #   restored from the latest backup time.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if RestoreTime parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example, `db.m4.large`. Not all DB instance classes are available in
    #   all AWS Regions, or for all database engines. For the full list of
    #   DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the database accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to true.
    #
    #   Example: `us-east-1a`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address. For more information, see
    #   CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to
    #   the DB instance during the maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   License model information for the restored DB instance.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The database name for the restored DB instance.
    #
    #   <note markdown="1"> This parameter is not used for the MySQL or MariaDB engines.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new instance.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for the DB instance.
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #   **SQL Server**
    #
    #   Setting the IOPS value for the SQL Server database engine is not
    #   supported.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to be used for the restored DB
    #   instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group, and that
    #   option group can't be removed from a DB instance once it is
    #   associated with a DB instance
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the restored DB instance to snapshots of
    #   the DB instance, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory Domain to restore the instance in.
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following
    #   database engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceToPointInTimeMessage AWS API Documentation
    #
    class RestoreDBInstanceToPointInTimeMessage < Struct.new(
      :source_db_instance_identifier,
      :target_db_instance_identifier,
      :restore_time,
      :use_latest_restorable_time,
      :db_instance_class,
      :port,
      :availability_zone,
      :db_subnet_group_name,
      :multi_az,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :license_model,
      :db_name,
      :engine,
      :iops,
      :option_group_name,
      :copy_tags_to_snapshot,
      :tags,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :domain,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceToPointInTimeResult AWS API Documentation
    #
    class RestoreDBInstanceToPointInTimeResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeDBSecurityGroupIngressMessage
    #   data as a hash:
    #
    #       {
    #         db_security_group_name: "String", # required
    #         cidrip: "String",
    #         ec2_security_group_name: "String",
    #         ec2_security_group_id: "String",
    #         ec2_security_group_owner_id: "String",
    #       }
    #
    # @!attribute [rw] db_security_group_name
    #   The name of the DB security group to revoke ingress from.
    #   @return [String]
    #
    # @!attribute [rw] cidrip
    #   The IP range to revoke access from. Must be a valid CIDR range. If
    #   `CIDRIP` is specified, `EC2SecurityGroupName`, `EC2SecurityGroupId`
    #   and `EC2SecurityGroupOwnerId` can't be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the EC2 security group to revoke access from. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_id
    #   The id of the EC2 security group to revoke access from. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS Account Number of the owner of the EC2 security group
    #   specified in the `EC2SecurityGroupName` parameter. The AWS Access
    #   Key ID is not an acceptable value. For VPC DB security groups,
    #   `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RevokeDBSecurityGroupIngressMessage AWS API Documentation
    #
    class RevokeDBSecurityGroupIngressMessage < Struct.new(
      :db_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # @!attribute [rw] db_security_group
    #   Contains the details for an Amazon RDS DB security group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSecurityGroups action.
    #   @return [Types::DBSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RevokeDBSecurityGroupIngressResult AWS API Documentation
    #
    class RevokeDBSecurityGroupIngressResult < Struct.new(
      :db_security_group)
      include Aws::Structure
    end

    # Contains the scaling configuration of an Aurora Serverless DB cluster.
    #
    # For more information, see [Using Amazon Aurora Serverless][1] in the
    # *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #
    # @note When making an API call, you may pass ScalingConfiguration
    #   data as a hash:
    #
    #       {
    #         min_capacity: 1,
    #         max_capacity: 1,
    #         auto_pause: false,
    #         seconds_until_auto_pause: 1,
    #       }
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity for an Aurora DB cluster in `serverless` DB
    #   engine mode.
    #
    #   Valid capacity values are `2`, `4`, `8`, `16`, `32`, `64`, `128`,
    #   and `256`.
    #
    #   The minimum capacity must be less than or equal to the maximum
    #   capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity for an Aurora DB cluster in `serverless` DB
    #   engine mode.
    #
    #   Valid capacity values are `2`, `4`, `8`, `16`, `32`, `64`, `128`,
    #   and `256`.
    #
    #   The maximum capacity must be greater than or equal to the minimum
    #   capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_pause
    #   A value that specifies whether to allow or disallow automatic pause
    #   for an Aurora DB cluster in `serverless` DB engine mode. A DB
    #   cluster can be paused only when it's idle (it has no connections).
    #
    #   <note markdown="1"> If a DB cluster is paused for more than seven days, the DB cluster
    #   might be backed up with a snapshot. In this case, the DB cluster is
    #   restored when there is a request to connect to it.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] seconds_until_auto_pause
    #   The time, in seconds, before an Aurora DB cluster in `serverless`
    #   mode is paused.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ScalingConfiguration AWS API Documentation
    #
    class ScalingConfiguration < Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause)
      include Aws::Structure
    end

    # Shows the scaling configuration for an Aurora DB cluster in
    # `serverless` DB engine mode.
    #
    # For more information, see [Using Amazon Aurora Serverless][1] in the
    # *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #
    # @!attribute [rw] min_capacity
    #   The maximum capacity for the Aurora DB cluster in `serverless` DB
    #   engine mode.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity for an Aurora DB cluster in `serverless` DB
    #   engine mode.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_pause
    #   A value that indicates whether automatic pause is allowed for the
    #   Aurora DB cluster in `serverless` DB engine mode.
    #   @return [Boolean]
    #
    # @!attribute [rw] seconds_until_auto_pause
    #   The remaining amount of time, in seconds, before the Aurora DB
    #   cluster in `serverless` mode is paused. A DB cluster can be paused
    #   only when it's idle (it has no connections).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ScalingConfigurationInfo AWS API Documentation
    #
    class ScalingConfigurationInfo < Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause)
      include Aws::Structure
    end

    # Contains an AWS Region name as the result of a successful call to the
    # DescribeSourceRegions action.
    #
    # @!attribute [rw] region_name
    #   The name of the source AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for the source AWS Region endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the source AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceRegion AWS API Documentation
    #
    class SourceRegion < Struct.new(
      :region_name,
      :endpoint,
      :status)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeSourceRegions action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] source_regions
    #   A list of SourceRegion instances that contains each source AWS
    #   Region that the current AWS Region can get a Read Replica or a DB
    #   snapshot from.
    #   @return [Array<Types::SourceRegion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceRegionMessage AWS API Documentation
    #
    class SourceRegionMessage < Struct.new(
      :marker,
      :source_regions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the Amazon Aurora DB cluster to be
    #   started. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBClusterMessage AWS API Documentation
    #
    class StartDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBClusterResult AWS API Documentation
    #
    class StartDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The user-supplied instance identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceMessage AWS API Documentation
    #
    class StartDBInstanceMessage < Struct.new(
      :db_instance_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceResult AWS API Documentation
    #
    class StartDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the Amazon Aurora DB cluster to be
    #   stopped. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBClusterMessage AWS API Documentation
    #
    class StopDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters, StopDBCluster, and StartDBCluster actions.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBClusterResult AWS API Documentation
    #
    class StopDBClusterResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         db_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The user-supplied instance identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_snapshot_identifier
    #   The user-supplied instance identifier of the DB Snapshot created
    #   immediately before the DB instance is stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstanceMessage AWS API Documentation
    #
    class StopDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :db_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstanceResult AWS API Documentation
    #
    class StopDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # DescribeDBSubnetGroups action.
    #
    # @!attribute [rw] subnet_identifier
    #   Specifies the identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Contains Availability Zone information.
    #
    #   This data type is used as an element in the following data type:
    #
    #   * OrderableDBInstanceOption
    #
    #   ^
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   Specifies the status of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      include Aws::Structure
    end

    # Metadata assigned to an Amazon RDS resource consisting of a key-value
    # pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   A key is the required name of the tag. The string value can be from
    #   1 to 128 Unicode characters in length and can't be prefixed with
    #   "aws:" or "rds:". The string can only contain only the set of
    #   Unicode letters, digits, white-space, '\_', '.', '/', '=',
    #   '+', '-' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value is the optional value of the tag. The string value can be
    #   from 1 to 256 Unicode characters in length and can't be prefixed
    #   with "aws:" or "rds:". The string can only contain only the set
    #   of Unicode letters, digits, white-space, '\_', '.', '/',
    #   '=', '+', '-' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   List of tags returned by the ListTagsForResource operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/TagListMessage AWS API Documentation
    #
    class TagListMessage < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # A time zone associated with a DBInstance or a DBSnapshot. This data
    # type is an element in the response to the DescribeDBInstances, the
    # DescribeDBSnapshots, and the DescribeDBEngineVersions actions.
    #
    # @!attribute [rw] timezone_name
    #   The name of the time zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Timezone AWS API Documentation
    #
    class Timezone < Struct.new(
      :timezone_name)
      include Aws::Structure
    end

    # The version of the database engine that a DB instance can be upgraded
    # to.
    #
    # @!attribute [rw] engine
    #   The name of the upgrade target database engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the upgrade target database engine.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The version of the database engine that a DB instance can be
    #   upgraded to.
    #   @return [String]
    #
    # @!attribute [rw] auto_upgrade
    #   A value that indicates whether the target version is applied to any
    #   source DB instances that have AutoMinorVersionUpgrade set to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_major_version_upgrade
    #   A value that indicates whether a database engine is upgraded to a
    #   major version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/UpgradeTarget AWS API Documentation
    #
    class UpgradeTarget < Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade)
      include Aws::Structure
    end

    # Information about valid modifications that you can make to your DB
    # instance. Contains the result of a successful call to the
    # DescribeValidDBInstanceModifications action. You can use this
    # information when you call ModifyDBInstance.
    #
    # @!attribute [rw] storage
    #   Valid storage options for your DB instance.
    #   @return [Array<Types::ValidStorageOptions>]
    #
    # @!attribute [rw] valid_processor_features
    #   Valid processor features for your DB instance.
    #   @return [Array<Types::AvailableProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ValidDBInstanceModificationsMessage AWS API Documentation
    #
    class ValidDBInstanceModificationsMessage < Struct.new(
      :storage,
      :valid_processor_features)
      include Aws::Structure
    end

    # Information about valid modifications that you can make to your DB
    # instance. Contains the result of a successful call to the
    # DescribeValidDBInstanceModifications action.
    #
    # @!attribute [rw] storage_type
    #   The valid storage types for your DB instance. For example, gp2, io1.
    #   @return [String]
    #
    # @!attribute [rw] storage_size
    #   The valid range of storage in gibibytes. For example, 100 to 16384.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] provisioned_iops
    #   The valid range of provisioned IOPS. For example, 1000-20000.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] iops_to_storage_ratio
    #   The valid range of Provisioned IOPS to gibibytes of storage
    #   multiplier. For example, 3-10, which means that provisioned IOPS can
    #   be between 3 and 10 times storage.
    #   @return [Array<Types::DoubleRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ValidStorageOptions AWS API Documentation
    #
    class ValidStorageOptions < Struct.new(
      :storage_type,
      :storage_size,
      :provisioned_iops,
      :iops_to_storage_ratio)
      include Aws::Structure
    end

    # This data type is used as a response element for queries on VPC
    # security group membership.
    #
    # @!attribute [rw] vpc_security_group_id
    #   The name of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status)
      include Aws::Structure
    end

  end
end
