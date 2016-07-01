# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module RDS
    module Types

      # Data returned by the **DescribeAccountAttributes** action.
      class AccountAttributesMessage < Aws::Structure.new(
        :account_quotas)

        # @!attribute [rw] account_quotas
        #   A list of AccountQuota objects. Within this list, each quota has a
        #   name, a count of usage toward the quota maximum, and a maximum value
        #   for the quota.
        #   @return [Array<Types::AccountQuota>]

      end

      # Describes a quota for an AWS account, for example, the number of DB
      # instances allowed.
      class AccountQuota < Aws::Structure.new(
        :account_quota_name,
        :used,
        :max)

        # @!attribute [rw] account_quota_name
        #   The name of the Amazon RDS quota for this AWS account.
        #   @return [String]

        # @!attribute [rw] used
        #   The amount currently used toward the quota maximum.
        #   @return [Integer]

        # @!attribute [rw] max
        #   The maximum allowed value for the quota.
        #   @return [Integer]

      end

      # @note When making an API call, pass AddSourceIdentifierToSubscriptionMessage
      #   data as a hash:
      #
      #       {
      #         subscription_name: "String", # required
      #         source_identifier: "String", # required
      #       }
      class AddSourceIdentifierToSubscriptionMessage < Aws::Structure.new(
        :subscription_name,
        :source_identifier)

        # @!attribute [rw] subscription_name
        #   The name of the RDS event notification subscription you want to add
        #   a source identifier to.
        #   @return [String]

        # @!attribute [rw] source_identifier
        #   The identifier of the event source to be added. An identifier must
        #   begin with a letter and must contain only ASCII letters, digits, and
        #   hyphens; it cannot end with a hyphen or contain two consecutive
        #   hyphens.
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

      end

      class AddSourceIdentifierToSubscriptionResult < Aws::Structure.new(
        :event_subscription)

        # @!attribute [rw] event_subscription
        #   Contains the results of a successful invocation of the
        #   DescribeEventSubscriptions action.
        #   @return [Types::EventSubscription]

      end

      # @note When making an API call, pass AddTagsToResourceMessage
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
      class AddTagsToResourceMessage < Aws::Structure.new(
        :resource_name,
        :tags)

        # @!attribute [rw] resource_name
        #   The Amazon RDS resource the tags will be added to. This value is an
        #   Amazon Resource Name (ARN). For information about creating an ARN,
        #   see [ Constructing an RDS Amazon Resource Name (ARN)][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags to be assigned to the Amazon RDS resource.
        #   @return [Array<Types::Tag>]

      end

      # @note When making an API call, pass ApplyPendingMaintenanceActionMessage
      #   data as a hash:
      #
      #       {
      #         resource_identifier: "String", # required
      #         apply_action: "String", # required
      #         opt_in_type: "String", # required
      #       }
      class ApplyPendingMaintenanceActionMessage < Aws::Structure.new(
        :resource_identifier,
        :apply_action,
        :opt_in_type)

        # @!attribute [rw] resource_identifier
        #   The RDS Amazon Resource Name (ARN) of the resource that the pending
        #   maintenance action applies to. For information about creating an
        #   ARN, see [ Constructing an RDS Amazon Resource Name (ARN)][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] apply_action
        #   The pending maintenance action to apply to this resource.
        #
        #   Valid values: `system-update`, `db-upgrade`
        #   @return [String]

        # @!attribute [rw] opt_in_type
        #   A value that specifies the type of opt-in request, or undoes an
        #   opt-in request. An opt-in request of type `immediate` cannot be
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

      end

      class ApplyPendingMaintenanceActionResult < Aws::Structure.new(
        :resource_pending_maintenance_actions)

        # @!attribute [rw] resource_pending_maintenance_actions
        #   Describes the pending maintenance actions for a resource.
        #   @return [Types::ResourcePendingMaintenanceActions]

      end

      # @note When making an API call, pass AuthorizeDBSecurityGroupIngressMessage
      #   data as a hash:
      #
      #       {
      #         db_security_group_name: "String", # required
      #         cidrip: "String",
      #         ec2_security_group_name: "String",
      #         ec2_security_group_id: "String",
      #         ec2_security_group_owner_id: "String",
      #       }
      class AuthorizeDBSecurityGroupIngressMessage < Aws::Structure.new(
        :db_security_group_name,
        :cidrip,
        :ec2_security_group_name,
        :ec2_security_group_id,
        :ec2_security_group_owner_id)

        # @!attribute [rw] db_security_group_name
        #   The name of the DB security group to add authorization to.
        #   @return [String]

        # @!attribute [rw] cidrip
        #   The IP range to authorize.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_name
        #   Name of the EC2 security group to authorize. For VPC DB security
        #   groups, `EC2SecurityGroupId` must be provided. Otherwise,
        #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
        #   `EC2SecurityGroupId` must be provided.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_id
        #   Id of the EC2 security group to authorize. For VPC DB security
        #   groups, `EC2SecurityGroupId` must be provided. Otherwise,
        #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
        #   `EC2SecurityGroupId` must be provided.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_owner_id
        #   AWS account number of the owner of the EC2 security group specified
        #   in the `EC2SecurityGroupName` parameter. The AWS Access Key ID is
        #   not an acceptable value. For VPC DB security groups,
        #   `EC2SecurityGroupId` must be provided. Otherwise,
        #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
        #   `EC2SecurityGroupId` must be provided.
        #   @return [String]

      end

      class AuthorizeDBSecurityGroupIngressResult < Aws::Structure.new(
        :db_security_group)

        # @!attribute [rw] db_security_group
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * DescribeDBSecurityGroups
        #
        #   * AuthorizeDBSecurityGroupIngress
        #
        #   * CreateDBSecurityGroup
        #
        #   * RevokeDBSecurityGroupIngress
        #
        #   This data type is used as a response element in the
        #   DescribeDBSecurityGroups action.
        #   @return [Types::DBSecurityGroup]

      end

      # Contains Availability Zone information.
      #
      # This data type is used as an element in the following data type:
      #
      # * OrderableDBInstanceOption
      #
      # ^
      class AvailabilityZone < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the availability zone.
        #   @return [String]

      end

      # A CA certificate for an AWS account.
      class Certificate < Aws::Structure.new(
        :certificate_identifier,
        :certificate_type,
        :thumbprint,
        :valid_from,
        :valid_till)

        # @!attribute [rw] certificate_identifier
        #   The unique key that identifies a certificate.
        #   @return [String]

        # @!attribute [rw] certificate_type
        #   The type of the certificate.
        #   @return [String]

        # @!attribute [rw] thumbprint
        #   The thumbprint of the certificate.
        #   @return [String]

        # @!attribute [rw] valid_from
        #   The starting date from which the certificate is valid.
        #   @return [Time]

        # @!attribute [rw] valid_till
        #   The final date that the certificate continues to be valid.
        #   @return [Time]

      end

      # Data returned by the **DescribeCertificates** action.
      class CertificateMessage < Aws::Structure.new(
        :certificates,
        :marker)

        # @!attribute [rw] certificates
        #   The list of Certificate objects for the AWS account.
        #   @return [Array<Types::Certificate>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeCertificates request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords` .
        #   @return [String]

      end

      # This data type is used as a response element in the action
      # DescribeDBEngineVersions.
      class CharacterSet < Aws::Structure.new(
        :character_set_name,
        :character_set_description)

        # @!attribute [rw] character_set_name
        #   The name of the character set.
        #   @return [String]

        # @!attribute [rw] character_set_description
        #   The description of the character set.
        #   @return [String]

      end

      # @note When making an API call, pass CopyDBClusterSnapshotMessage
      #   data as a hash:
      #
      #       {
      #         source_db_cluster_snapshot_identifier: "String", # required
      #         target_db_cluster_snapshot_identifier: "String", # required
      #         tags: [
      #           {
      #             key: "String",
      #             value: "String",
      #           },
      #         ],
      #       }
      class CopyDBClusterSnapshotMessage < Aws::Structure.new(
        :source_db_cluster_snapshot_identifier,
        :target_db_cluster_snapshot_identifier,
        :tags)

        # @!attribute [rw] source_db_cluster_snapshot_identifier
        #   The identifier of the DB cluster snapshot to copy. This parameter is
        #   not case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #
        #   Example: `my-cluster-snapshot1`
        #   @return [String]

        # @!attribute [rw] target_db_cluster_snapshot_identifier
        #   The identifier of the new DB cluster snapshot to create from the
        #   source DB cluster snapshot. This parameter is not case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #
        #   Example: `my-cluster-snapshot2`
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CopyDBClusterSnapshotResult < Aws::Structure.new(
        :db_cluster_snapshot)

        # @!attribute [rw] db_cluster_snapshot
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBClusterSnapshot
        #
        #   * DeleteDBClusterSnapshot
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusterSnapshots action.
        #   @return [Types::DBClusterSnapshot]

      end

      # @note When making an API call, pass CopyDBParameterGroupMessage
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
      class CopyDBParameterGroupMessage < Aws::Structure.new(
        :source_db_parameter_group_identifier,
        :target_db_parameter_group_identifier,
        :target_db_parameter_group_description,
        :tags)

        # @!attribute [rw] source_db_parameter_group_identifier
        #   The identifier or ARN for the source DB parameter group. For
        #   information about creating an ARN, see [ Constructing an RDS Amazon
        #   Resource Name (ARN)][1].
        #
        #   Constraints:
        #
        #   * Must specify a valid DB parameter group.
        #
        #   * If the source DB parameter group is in the same region as the
        #     copy, specify a valid DB parameter group identifier, for example
        #     `my-db-param-group`, or a valid ARN.
        #
        #   * If the source DB parameter group is in a different region than the
        #     copy, specify a valid DB parameter group ARN, for example
        #     `arn:aws:rds:us-west-2:123456789012:pg:special-parameters`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] target_db_parameter_group_identifier
        #   The identifier for the copied DB parameter group.
        #
        #   Constraints:
        #
        #   * Cannot be null, empty, or blank
        #
        #   * Must contain from 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-db-parameter-group`
        #   @return [String]

        # @!attribute [rw] target_db_parameter_group_description
        #   A description for the copied DB parameter group.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CopyDBParameterGroupResult < Aws::Structure.new(
        :db_parameter_group)

        # @!attribute [rw] db_parameter_group
        #   Contains the result of a successful invocation of the
        #   CreateDBParameterGroup action.
        #
        #   This data type is used as a request parameter in the
        #   DeleteDBParameterGroup action, and as a response element in the
        #   DescribeDBParameterGroups action.
        #   @return [Types::DBParameterGroup]

      end

      # @note When making an API call, pass CopyDBSnapshotMessage
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
      #       }
      class CopyDBSnapshotMessage < Aws::Structure.new(
        :source_db_snapshot_identifier,
        :target_db_snapshot_identifier,
        :kms_key_id,
        :tags,
        :copy_tags)

        # @!attribute [rw] source_db_snapshot_identifier
        #   The identifier for the source DB snapshot.
        #
        #   If you are copying from a shared manual DB snapshot, this must be
        #   the ARN of the shared DB snapshot.
        #
        #   Constraints:
        #
        #   * Must specify a valid system snapshot in the \"available\" state.
        #
        #   * If the source snapshot is in the same region as the copy, specify
        #     a valid DB snapshot identifier.
        #
        #   * If the source snapshot is in a different region than the copy,
        #     specify a valid DB snapshot ARN. For more information, go to [
        #     Copying a DB Snapshot][1].
        #
        #   Example: `rds:mydb-2012-04-02-00-01`
        #
        #   Example:
        #   `arn:aws:rds:rr-regn-1:123456789012:snapshot:mysql-instance1-snapshot-20130805`
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html
        #   @return [String]

        # @!attribute [rw] target_db_snapshot_identifier
        #   The identifier for the copied snapshot.
        #
        #   Constraints:
        #
        #   * Cannot be null, empty, or blank
        #
        #   * Must contain from 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-db-snapshot`
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   The AWS Key Management Service (AWS KMS) key identifier for an
        #   encrypted DB snapshot. The KMS key identifier is the Amazon Resource
        #   Name (ARN) or the KMS key alias for the KMS encryption key.
        #
        #   If you copy an unencrypted DB snapshot and specify a value for the
        #   `KmsKeyId` parameter, Amazon RDS encrypts the target DB snapshot
        #   using the specified KMS encryption key.
        #
        #   If you copy an encrypted DB snapshot from your AWS account, you can
        #   specify a value for `KmsKeyId` to encrypt the copy with a new KMS
        #   encryption key. If you don\'t specify a value for `KmsKeyId` then
        #   the copy of the DB snapshot is encrypted with the same KMS key as
        #   the source DB snapshot.
        #
        #   If you copy an encrypted DB snapshot that is shared from another AWS
        #   account, then you must specify a value for `KmsKeyId`.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] copy_tags
        #   True to copy all tags from the source DB snapshot to the target DB
        #   snapshot; otherwise false. The default is false.
        #   @return [Boolean]

      end

      class CopyDBSnapshotResult < Aws::Structure.new(
        :db_snapshot)

        # @!attribute [rw] db_snapshot
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBSnapshot
        #
        #   * DeleteDBSnapshot
        #
        #   This data type is used as a response element in the
        #   DescribeDBSnapshots action.
        #   @return [Types::DBSnapshot]

      end

      # @note When making an API call, pass CopyOptionGroupMessage
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
      class CopyOptionGroupMessage < Aws::Structure.new(
        :source_option_group_identifier,
        :target_option_group_identifier,
        :target_option_group_description,
        :tags)

        # @!attribute [rw] source_option_group_identifier
        #   The identifier or ARN for the source option group. For information
        #   about creating an ARN, see [ Constructing an RDS Amazon Resource
        #   Name (ARN)][1].
        #
        #   Constraints:
        #
        #   * Must specify a valid option group.
        #
        #   * If the source option group is in the same region as the copy,
        #     specify a valid option group identifier, for example
        #     `my-option-group`, or a valid ARN.
        #
        #   * If the source option group is in a different region than the copy,
        #     specify a valid option group ARN, for example
        #     `arn:aws:rds:us-west-2:123456789012:og:special-options`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] target_option_group_identifier
        #   The identifier for the copied option group.
        #
        #   Constraints:
        #
        #   * Cannot be null, empty, or blank
        #
        #   * Must contain from 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-option-group`
        #   @return [String]

        # @!attribute [rw] target_option_group_description
        #   The description for the copied option group.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CopyOptionGroupResult < Aws::Structure.new(
        :option_group)

        # @!attribute [rw] option_group
        #   @return [Types::OptionGroup]

      end

      # @note When making an API call, pass CreateDBClusterMessage
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
      #         replication_source_identifier: "String",
      #         tags: [
      #           {
      #             key: "String",
      #             value: "String",
      #           },
      #         ],
      #         storage_encrypted: false,
      #         kms_key_id: "String",
      #       }
      class CreateDBClusterMessage < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] availability_zones
        #   A list of EC2 Availability Zones that instances in the DB cluster
        #   can be created in. For information on regions and Availability
        #   Zones, see [Regions and Availability Zones][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
        #   @return [Array<String>]

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

        # @!attribute [rw] character_set_name
        #   A value that indicates that the DB cluster should be associated with
        #   the specified CharacterSet.
        #   @return [String]

        # @!attribute [rw] database_name
        #   The name for your database of up to 8 alpha-numeric characters. If
        #   you do not provide a name, Amazon RDS will not create a database in
        #   the DB cluster you are creating.
        #   @return [String]

        # @!attribute [rw] db_cluster_identifier
        #   The DB cluster identifier. This parameter is stored as a lowercase
        #   string.
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

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group to associate with this DB
        #   cluster. If this argument is omitted, `default.aurora5.6` for the
        #   specified engine will be used.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] vpc_security_group_ids
        #   A list of EC2 VPC security groups to associate with this DB cluster.
        #   @return [Array<String>]

        # @!attribute [rw] db_subnet_group_name
        #   A DB subnet group to associate with this DB cluster.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] engine
        #   The name of the database engine to be used for this DB cluster.
        #
        #   Valid Values: `aurora`
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The version number of the database engine to use.
        #
        #   **Aurora**
        #
        #   Example: `5.6.10a`
        #   @return [String]

        # @!attribute [rw] port
        #   The port number on which the instances in the DB cluster accept
        #   connections.
        #
        #   Default: `3306`
        #   @return [Integer]

        # @!attribute [rw] master_username
        #   The name of the master user for the client DB cluster.
        #
        #   Constraints:
        #
        #   * Must be 1 to 16 alphanumeric characters.
        #
        #   * First character must be a letter.
        #
        #   * Cannot be a reserved word for the chosen database engine.
        #   @return [String]

        # @!attribute [rw] master_user_password
        #   The password for the master database user. This password can contain
        #   any printable ASCII character except \"/\", \"\"\", or \"@\".
        #
        #   Constraints: Must contain from 8 to 41 characters.
        #   @return [String]

        # @!attribute [rw] option_group_name
        #   A value that indicates that the DB cluster should be associated with
        #   the specified option group.
        #
        #   Permanent options cannot be removed from an option group. The option
        #   group cannot be removed from a DB cluster once it is associated with
        #   a DB cluster.
        #   @return [String]

        # @!attribute [rw] preferred_backup_window
        #   The daily time range during which automated backups are created if
        #   automated backups are enabled using the `BackupRetentionPeriod`
        #   parameter.
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region. To see the time blocks available, see [
        #   Adjusting the Preferred Maintenance Window][1] in the *Amazon RDS
        #   User Guide.*
        #
        #   Constraints:
        #
        #   * Must be in the format `hh24:mi-hh24:mi`.
        #
        #   * Times should be in Universal Coordinated Time (UTC).
        #
        #   * Must not conflict with the preferred maintenance window.
        #
        #   * Must be at least 30 minutes.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

        # @!attribute [rw] preferred_maintenance_window
        #   The weekly time range during which system maintenance can occur, in
        #   Universal Coordinated Time (UTC).
        #
        #   Format: `ddd:hh24:mi-ddd:hh24:mi`
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region, occurring on a random day of the week. To see
        #   the time blocks available, see [ Adjusting the Preferred Maintenance
        #   Window][1] in the *Amazon RDS User Guide.*
        #
        #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
        #
        #   Constraints: Minimum 30-minute window.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

        # @!attribute [rw] replication_source_identifier
        #   The Amazon Resource Name (ARN) of the source DB cluster if this DB
        #   cluster is created as a Read Replica.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] storage_encrypted
        #   Specifies whether the DB cluster is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier for an encrypted DB cluster.
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
        #   encryption key for each AWS region.
        #   @return [String]

      end

      # @note When making an API call, pass CreateDBClusterParameterGroupMessage
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
      class CreateDBClusterParameterGroupMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name,
        :db_parameter_group_family,
        :description,
        :tags)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   <note markdown="1"> This value is stored as a lowercase string.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] db_parameter_group_family
        #   The DB cluster parameter group family name. A DB cluster parameter
        #   group can be associated with one and only one DB cluster parameter
        #   group family, and can be applied only to a DB cluster running a
        #   database engine and engine version compatible with that DB cluster
        #   parameter group family.
        #   @return [String]

        # @!attribute [rw] description
        #   The description for the DB cluster parameter group.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateDBClusterParameterGroupResult < Aws::Structure.new(
        :db_cluster_parameter_group)

        # @!attribute [rw] db_cluster_parameter_group
        #   Contains the result of a successful invocation of the
        #   CreateDBClusterParameterGroup action.
        #
        #   This data type is used as a request parameter in the
        #   DeleteDBClusterParameterGroup action, and as a response element in
        #   the DescribeDBClusterParameterGroups action.
        #   @return [Types::DBClusterParameterGroup]

      end

      class CreateDBClusterResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # @note When making an API call, pass CreateDBClusterSnapshotMessage
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
      class CreateDBClusterSnapshotMessage < Aws::Structure.new(
        :db_cluster_snapshot_identifier,
        :db_cluster_identifier,
        :tags)

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   The identifier of the DB cluster snapshot. This parameter is stored
        #   as a lowercase string.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #
        #   Example: `my-cluster1-snapshot1`
        #   @return [String]

        # @!attribute [rw] db_cluster_identifier
        #   The identifier of the DB cluster to create a snapshot for. This
        #   parameter is not case-sensitive.
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

        # @!attribute [rw] tags
        #   The tags to be assigned to the DB cluster snapshot.
        #   @return [Array<Types::Tag>]

      end

      class CreateDBClusterSnapshotResult < Aws::Structure.new(
        :db_cluster_snapshot)

        # @!attribute [rw] db_cluster_snapshot
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBClusterSnapshot
        #
        #   * DeleteDBClusterSnapshot
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusterSnapshots action.
        #   @return [Types::DBClusterSnapshot]

      end

      # @note When making an API call, pass CreateDBInstanceMessage
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
      #       }
      class CreateDBInstanceMessage < Aws::Structure.new(
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
        :promotion_tier)

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
        #   * Must contain 1 to 64 alphanumeric characters
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
        #   * Must contain 1 to 64 alphanumeric characters
        #
        #   * Cannot be a word reserved by the specified database engine
        #
        #   **PostgreSQL**
        #
        #   The name of the database to create when the DB instance is created.
        #   If this parameter is not specified, the default \"postgres\"
        #   database is created in the DB instance.
        #
        #   Constraints:
        #
        #   * Must contain 1 to 63 alphanumeric characters
        #
        #   * Must begin with a letter or an underscore. Subsequent characters
        #     can be letters, underscores, or digits (0-9).
        #
        #   * Cannot be a word reserved by the specified database engine
        #
        #   **Oracle**
        #
        #   The Oracle System ID (SID) of the created DB instance.
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
        #   * Must contain 1 to 64 alphanumeric characters
        #
        #   * Cannot be a word reserved by the specified database engine
        #   @return [String]

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier. This parameter is stored as a lowercase
        #   string.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens (1 to
        #     15 for SQL Server).
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #
        #   Example: `mydbinstance`
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   The amount of storage (in gigabytes) to be initially allocated for
        #   the database instance.
        #
        #   Type: Integer
        #
        #   **MySQL**
        #
        #   Constraints: Must be an integer from 5 to 6144.
        #
        #   **MariaDB**
        #
        #   Constraints: Must be an integer from 5 to 6144.
        #
        #   **PostgreSQL**
        #
        #   Constraints: Must be an integer from 5 to 6144.
        #
        #   **Oracle**
        #
        #   Constraints: Must be an integer from 10 to 6144.
        #
        #   **SQL Server**
        #
        #   Constraints: Must be an integer from 200 to 4096 (Standard Edition
        #   and Enterprise Edition) or from 20 to 4096 (Express Edition and Web
        #   Edition)
        #   @return [Integer]

        # @!attribute [rw] db_instance_class
        #   The compute and memory capacity of the DB instance.
        #
        #   Valid Values: `db.t1.micro | db.m1.small | db.m1.medium |
        #   db.m1.large | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge |
        #   db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge |
        #   db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge |
        #   db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge |
        #   db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro |
        #   db.t2.small | db.t2.medium | db.t2.large`
        #   @return [String]

        # @!attribute [rw] engine
        #   The name of the database engine to be used for this instance.
        #
        #   Valid Values: `MySQL` \| `mariadb` \| `oracle-se1` \| `oracle-se` \|
        #   `oracle-ee` \| `sqlserver-ee` \| `sqlserver-se` \| `sqlserver-ex` \|
        #   `sqlserver-web` \| `postgres` \| `aurora`
        #
        #   Not every database engine is available for every AWS region.
        #   @return [String]

        # @!attribute [rw] master_username
        #   The name of master user for the client DB instance.
        #
        #   **MySQL**
        #
        #   Constraints:
        #
        #   * Must be 1 to 16 alphanumeric characters.
        #
        #   * First character must be a letter.
        #
        #   * Cannot be a reserved word for the chosen database engine.
        #
        #   **MariaDB**
        #
        #   Constraints:
        #
        #   * Must be 1 to 16 alphanumeric characters.
        #
        #   * Cannot be a reserved word for the chosen database engine.
        #
        #   Type: String
        #
        #   **Oracle**
        #
        #   Constraints:
        #
        #   * Must be 1 to 30 alphanumeric characters.
        #
        #   * First character must be a letter.
        #
        #   * Cannot be a reserved word for the chosen database engine.
        #
        #   **SQL Server**
        #
        #   Constraints:
        #
        #   * Must be 1 to 128 alphanumeric characters.
        #
        #   * First character must be a letter.
        #
        #   * Cannot be a reserved word for the chosen database engine.
        #
        #   **PostgreSQL**
        #
        #   Constraints:
        #
        #   * Must be 1 to 63 alphanumeric characters.
        #
        #   * First character must be a letter.
        #
        #   * Cannot be a reserved word for the chosen database engine.
        #   @return [String]

        # @!attribute [rw] master_user_password
        #   The password for the master database user. Can be any printable
        #   ASCII character except \"/\", \"\"\", or \"@\".
        #
        #   Type: String
        #
        #   **MySQL**
        #
        #   Constraints: Must contain from 8 to 41 characters.
        #
        #   **MariaDB**
        #
        #   Constraints: Must contain from 8 to 41 characters.
        #
        #   **Oracle**
        #
        #   Constraints: Must contain from 8 to 30 characters.
        #
        #   **SQL Server**
        #
        #   Constraints: Must contain from 8 to 128 characters.
        #
        #   **PostgreSQL**
        #
        #   Constraints: Must contain from 8 to 128 characters.
        #
        #   **Amazon Aurora**
        #
        #   Constraints: Must contain from 8 to 41 characters.
        #   @return [String]

        # @!attribute [rw] db_security_groups
        #   A list of DB security groups to associate with this DB instance.
        #
        #   Default: The default DB security group for the database engine.
        #   @return [Array<String>]

        # @!attribute [rw] vpc_security_group_ids
        #   A list of EC2 VPC security groups to associate with this DB
        #   instance.
        #
        #   Default: The default EC2 VPC security group for the DB subnet
        #   group\'s VPC.
        #   @return [Array<String>]

        # @!attribute [rw] availability_zone
        #   The EC2 Availability Zone that the database instance will be created
        #   in. For information on regions and Availability Zones, see [Regions
        #   and Availability Zones][1].
        #
        #   Default: A random, system-chosen Availability Zone in the
        #   endpoint\'s region.
        #
        #   Example: `us-east-1d`
        #
        #   Constraint: The AvailabilityZone parameter cannot be specified if
        #   the MultiAZ parameter is set to `true`. The specified Availability
        #   Zone must be in the same region as the current endpoint.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
        #   @return [String]

        # @!attribute [rw] db_subnet_group_name
        #   A DB subnet group to associate with this DB instance.
        #
        #   If there is no DB subnet group, then it is a non-VPC DB instance.
        #   @return [String]

        # @!attribute [rw] preferred_maintenance_window
        #   The weekly time range during which system maintenance can occur, in
        #   Universal Coordinated Time (UTC). For more information, see [DB
        #   Instance Maintenance][1].
        #
        #   Format: `ddd:hh24:mi-ddd:hh24:mi`
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region, occurring on a random day of the week. To see
        #   the time blocks available, see [ Adjusting the Preferred Maintenance
        #   Window][2] in the *Amazon RDS User Guide.*
        #
        #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
        #
        #   Constraints: Minimum 30-minute window.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBMaintenance.html
        #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DB parameter group to associate with this DB
        #   instance. If this argument is omitted, the default DBParameterGroup
        #   for the specified engine will be used.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] backup_retention_period
        #   The number of days for which automated backups are retained. Setting
        #   this parameter to a positive number enables backups. Setting this
        #   parameter to 0 disables automated backups.
        #
        #   Default: 1
        #
        #   Constraints:
        #
        #   * Must be a value from 0 to 35
        #
        #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
        #   @return [Integer]

        # @!attribute [rw] preferred_backup_window
        #   The daily time range during which automated backups are created if
        #   automated backups are enabled, using the `BackupRetentionPeriod`
        #   parameter. For more information, see [DB Instance Backups][1].
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region. To see the time blocks available, see [
        #   Adjusting the Preferred Maintenance Window][2] in the *Amazon RDS
        #   User Guide.*
        #
        #   Constraints:
        #
        #   * Must be in the format `hh24:mi-hh24:mi`.
        #
        #   * Times should be in Universal Coordinated Time (UTC).
        #
        #   * Must not conflict with the preferred maintenance window.
        #
        #   * Must be at least 30 minutes.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.BackingUpAndRestoringAmazonRDSInstances.html
        #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

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

        # @!attribute [rw] multi_az
        #   Specifies if the DB instance is a Multi-AZ deployment. You cannot
        #   set the AvailabilityZone parameter if the MultiAZ parameter is set
        #   to true. Do not set this value if you want a Multi-AZ deployment for
        #   a SQL Server DB instance. Multi-AZ for SQL Server is set using the
        #   Mirroring option in an option group.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   The version number of the database engine to use.
        #
        #   The following are the database engines and major and minor versions
        #   that are available with Amazon RDS. Not every database engine is
        #   available for every AWS region.
        #
        #   **Amazon Aurora**
        #
        #   * **Version 5.6 (only available in AWS regions ap-northeast-1,
        #     ap-northeast-2, ap-southeast-2, eu-west-1, us-east-1,
        #     us-west-2):** ` 5.6.10a`
        #
        #   ^
        #
        #   **MariaDB**
        #
        #   * **Version 10.0 (available in all AWS regions):** ` 10.0.17 |
        #     10.0.24`
        #
        #   ^
        #
        #   **Microsoft SQL Server Enterprise Edition (sqlserver-ee)**
        #
        #   * **Version 11.00 (available in all AWS regions):** `
        #     11.00.2100.60.v1 | 11.00.5058.0.v1 | 11.00.6020.0.v1`
        #
        #   * **Version 10.50 (available in all AWS regions):** `
        #     10.50.2789.0.v1 | 10.50.6000.34.v1 | 10.50.6529.0.v1`
        #
        #   **Microsoft SQL Server Express Edition (sqlserver-ex)**
        #
        #   * **Version 12.00 (available in all AWS regions):** `
        #     12.00.4422.0.v1`
        #
        #   * **Version 11.00 (available in all AWS regions):** `
        #     11.00.2100.60.v1 | 11.00.5058.0.v1 | 11.00.6020.0.v1`
        #
        #   * **Version 10.50 (available in all AWS regions):** `
        #     10.50.2789.0.v1 | 10.50.6000.34.v1 | 10.50.6529.0.v1`
        #
        #   **Microsoft SQL Server Standard Edition (sqlserver-se)**
        #
        #   * **Version 12.00 (available in all AWS regions):** `
        #     12.00.4422.0.v1`
        #
        #   * **Version 11.00 (available in all AWS regions):** `
        #     11.00.2100.60.v1 | 11.00.5058.0.v1 | 11.00.6020.0.v1`
        #
        #   * **Version 10.50 (available in all AWS regions):** `
        #     10.50.2789.0.v1 | 10.50.6000.34.v1 | 10.50.6529.0.v1`
        #
        #   **Microsoft SQL Server Web Edition (sqlserver-web)**
        #
        #   * **Version 12.00 (available in all AWS regions):** `
        #     12.00.4422.0.v1`
        #
        #   * **Version 11.00 (available in all AWS regions):** `
        #     11.00.2100.60.v1 | 11.00.5058.0.v1 | 11.00.6020.0.v1`
        #
        #   * **Version 10.50 (available in all AWS regions):** `
        #     10.50.2789.0.v1 | 10.50.6000.34.v1 | 10.50.6529.0.v1`
        #
        #   **MySQL**
        #
        #   * **Version 5.7 (available in all AWS regions):** ` 5.7.10 | 5.7.11`
        #
        #   * **Version 5.6 (available in all AWS regions except
        #     ap-northeast-2):** ` 5.6.19a | 5.6.19b | 5.6.21 | 5.6.21b |
        #     5.6.22`
        #
        #   * **Version 5.6 (available in all AWS regions):** ` 5.6.23 | 5.6.27
        #     | 5.6.29`
        #
        #   * **Version 5.5 (available in all AWS regions except eu-central-1,
        #     ap-northeast-2):** ` 5.5.40 | 5.5.40a`
        #
        #   * **Version 5.5 (available in all AWS regions except
        #     ap-northeast-2):** ` 5.5.40b | 5.5.41`
        #
        #   * **Version 5.5 (available in all AWS regions):** ` 5.5.42 | 5.5.46`
        #
        #   * **Version 5.1 (available in all AWS regions except eu-central-1,
        #     ap-northeast-2):** ` 5.1.73a | 5.1.73b`
        #
        #   **Oracle Database Enterprise Edition (oracle-ee)**
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     ap-northeast-2):** ` 12.1.0.1.v1 | 12.1.0.1.v2`
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     ap-northeast-2, us-gov-west-1):** ` 12.1.0.1.v3 | 12.1.0.1.v4`
        #
        #   * **Version 12.1 (available in all AWS regions):** ` 12.1.0.2.v1`
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     us-gov-west-1):** ` 12.1.0.2.v2 | 12.1.0.2.v3`
        #
        #   * **Version 11.2 (available in all AWS regions except eu-central-1,
        #     ap-northeast-2):** ` 11.2.0.2.v3 | 11.2.0.2.v4 | 11.2.0.2.v5 |
        #     11.2.0.2.v6 | 11.2.0.2.v7`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     ap-northeast-2):** ` 11.2.0.3.v1 | 11.2.0.3.v2 | 11.2.0.3.v3`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     ap-northeast-2, us-gov-west-1):** ` 11.2.0.3.v4`
        #
        #   * **Version 11.2 (available in all AWS regions):** ` 11.2.0.4.v1 |
        #     11.2.0.4.v3 | 11.2.0.4.v4`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     us-gov-west-1):** ` 11.2.0.4.v5 | 11.2.0.4.v6 | 11.2.0.4.v7`
        #
        #   **Oracle Database Standard Edition (oracle-se)**
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     ap-northeast-2):** ` 12.1.0.1.v1 | 12.1.0.1.v2`
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     ap-northeast-2, us-gov-west-1):** ` 12.1.0.1.v3 | 12.1.0.1.v4`
        #
        #   * **Version 11.2 (available in all AWS regions except eu-central-1,
        #     ap-northeast-2):** ` 11.2.0.2.v3 | 11.2.0.2.v4 | 11.2.0.2.v5 |
        #     11.2.0.2.v6 | 11.2.0.2.v7`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     ap-northeast-2):** ` 11.2.0.3.v1 | 11.2.0.3.v2 | 11.2.0.3.v3`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     ap-northeast-2, us-gov-west-1):** ` 11.2.0.3.v4`
        #
        #   * **Version 11.2 (available in all AWS regions):** ` 11.2.0.4.v1 |
        #     11.2.0.4.v3 | 11.2.0.4.v4`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     us-gov-west-1):** ` 11.2.0.4.v5 | 11.2.0.4.v6 | 11.2.0.4.v7`
        #
        #   **Oracle Database Standard Edition One (oracle-se1)**
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     ap-northeast-2):** ` 12.1.0.1.v1 | 12.1.0.1.v2`
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     ap-northeast-2, us-gov-west-1):** ` 12.1.0.1.v3 | 12.1.0.1.v4`
        #
        #   * **Version 11.2 (available in all AWS regions except eu-central-1,
        #     ap-northeast-2):** ` 11.2.0.2.v3 | 11.2.0.2.v4 | 11.2.0.2.v5 |
        #     11.2.0.2.v6 | 11.2.0.2.v7`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     ap-northeast-2):** ` 11.2.0.3.v1 | 11.2.0.3.v2 | 11.2.0.3.v3`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     ap-northeast-2, us-gov-west-1):** ` 11.2.0.3.v4`
        #
        #   * **Version 11.2 (available in all AWS regions):** ` 11.2.0.4.v1 |
        #     11.2.0.4.v3 | 11.2.0.4.v4`
        #
        #   * **Version 11.2 (available in all AWS regions except
        #     us-gov-west-1):** ` 11.2.0.4.v5 | 11.2.0.4.v6 | 11.2.0.4.v7`
        #
        #   **Oracle Database Standard Edition Two (oracle-se2)**
        #
        #   * **Version 12.1 (available in all AWS regions except
        #     us-gov-west-1):** ` 12.1.0.2.v2 | 12.1.0.2.v3`
        #
        #   ^
        #
        #   **PostgreSQL**
        #
        #   * **Version 9.5 (available in all AWS regions except
        #     us-gov-west-1):** ` 9.5.2`
        #
        #   * **Version 9.4 (available in all AWS regions):** ` 9.4.1 | 9.4.4 |
        #     9.4.5`
        #
        #   * **Version 9.4 (available in all AWS regions except
        #     us-gov-west-1):** ` 9.4.7`
        #
        #   * **Version 9.3 (available in all AWS regions except eu-central-1,
        #     ap-northeast-2):** ` 9.3.1 | 9.3.2`
        #
        #   * **Version 9.3 (available in all AWS regions except
        #     ap-northeast-2):** ` 9.3.10 | 9.3.3 | 9.3.5 | 9.3.6 | 9.3.9`
        #
        #   * **Version 9.3 (available in all AWS regions except ap-northeast-2,
        #     us-gov-west-1):** ` 9.3.12`
        #   @return [String]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor engine upgrades will be applied automatically
        #   to the DB instance during the maintenance window.
        #
        #   Default: `true`
        #   @return [Boolean]

        # @!attribute [rw] license_model
        #   License model information for this DB instance.
        #
        #   Valid values: `license-included` \| `bring-your-own-license` \|
        #   `general-public-license`
        #   @return [String]

        # @!attribute [rw] iops
        #   The amount of Provisioned IOPS (input/output operations per second)
        #   to be initially allocated for the DB instance.
        #
        #   Constraints: Must be a multiple between 3 and 10 of the storage
        #   amount for the DB instance. Must also be an integer multiple of
        #   1000. For example, if the size of your DB instance is 500 GB, then
        #   your `Iops` value can be 2000, 3000, 4000, or 5000.
        #   @return [Integer]

        # @!attribute [rw] option_group_name
        #   Indicates that the DB instance should be associated with the
        #   specified option group.
        #
        #   Permanent options, such as the TDE option for Oracle Advanced
        #   Security TDE, cannot be removed from an option group, and that
        #   option group cannot be removed from a DB instance once it is
        #   associated with a DB instance
        #   @return [String]

        # @!attribute [rw] character_set_name
        #   For supported engines, indicates that the DB instance should be
        #   associated with the specified CharacterSet.
        #   @return [String]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the DB instance. A value of
        #   true specifies an Internet-facing instance with a publicly
        #   resolvable DNS name, which resolves to a public IP address. A value
        #   of false specifies an internal instance with a DNS name that
        #   resolves to a private IP address.
        #
        #   Default: The default behavior varies depending on whether a VPC has
        #   been requested or not. The following list shows the default behavior
        #   in each case.
        #
        #   * **Default VPC:** true
        #
        #   * **VPC:** false
        #
        #   If no DB subnet group has been specified as part of the request and
        #   the PubliclyAccessible value has not been set, the DB instance will
        #   be publicly accessible. If a specific DB subnet group has been
        #   specified as part of the request and the PubliclyAccessible value
        #   has not been set, the DB instance will be private.
        #   @return [Boolean]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] db_cluster_identifier
        #   The identifier of the DB cluster that the instance will belong to.
        #
        #   For information on creating a DB cluster, see CreateDBCluster.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] storage_type
        #   Specifies the storage type to be associated with the DB instance.
        #
        #   Valid values: `standard | gp2 | io1`
        #
        #   If you specify `io1`, you must also include a value for the `Iops`
        #   parameter.
        #
        #   Default: `io1` if the `Iops` parameter is specified; otherwise
        #   `standard`
        #   @return [String]

        # @!attribute [rw] tde_credential_arn
        #   The ARN from the Key Store with which to associate the instance for
        #   TDE encryption.
        #   @return [String]

        # @!attribute [rw] tde_credential_password
        #   The password for the given ARN from the Key Store in order to access
        #   the device.
        #   @return [String]

        # @!attribute [rw] storage_encrypted
        #   Specifies whether the DB instance is encrypted.
        #
        #   Default: false
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier for an encrypted DB instance.
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
        #   encryption key for each AWS region.
        #   @return [String]

        # @!attribute [rw] domain
        #   Specify the Active Directory Domain to create the instance in.
        #   @return [String]

        # @!attribute [rw] copy_tags_to_snapshot
        #   True to copy all tags from the DB instance to snapshots of the DB
        #   instance; otherwise false. The default is false.
        #   @return [Boolean]

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

        # @!attribute [rw] monitoring_role_arn
        #   The ARN for the IAM role that permits RDS to send enhanced
        #   monitoring metrics to CloudWatch Logs. For example,
        #   `arn:aws:iam:123456789012:role/emaccess`. For information on
        #   creating a monitoring role, go to [To create an IAM role for Amazon
        #   RDS Enhanced Monitoring][1].
        #
        #   If `MonitoringInterval` is set to a value other than 0, then you
        #   must supply a `MonitoringRoleArn` value.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
        #   @return [String]

        # @!attribute [rw] domain_iam_role_name
        #   Specify the name of the IAM role to be used when making API calls to
        #   the Directory Service.
        #   @return [String]

        # @!attribute [rw] promotion_tier
        #   A value that specifies the order in which an Aurora Replica is
        #   promoted to the primary instance after a failure of the existing
        #   primary instance. For more information, see [ Fault Tolerance for an
        #   Aurora DB Cluster][1].
        #
        #   Default: 1
        #
        #   Valid Values: 0 - 15
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance
        #   @return [Integer]

      end

      # @note When making an API call, pass CreateDBInstanceReadReplicaMessage
      #   data as a hash:
      #
      #       {
      #         db_instance_identifier: "String", # required
      #         source_db_instance_identifier: "String", # required
      #         db_instance_class: "String",
      #         availability_zone: "String",
      #         port: 1,
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
      #       }
      class CreateDBInstanceReadReplicaMessage < Aws::Structure.new(
        :db_instance_identifier,
        :source_db_instance_identifier,
        :db_instance_class,
        :availability_zone,
        :port,
        :auto_minor_version_upgrade,
        :iops,
        :option_group_name,
        :publicly_accessible,
        :tags,
        :db_subnet_group_name,
        :storage_type,
        :copy_tags_to_snapshot,
        :monitoring_interval,
        :monitoring_role_arn)

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier of the Read Replica. This identifier is
        #   the unique key that identifies a DB instance. This parameter is
        #   stored as a lowercase string.
        #   @return [String]

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
        #   * Can specify a DB instance that is a PostgreSQL Read Replica only
        #     if the source is running PostgreSQL 9.3.5.
        #
        #   * The specified DB instance must have automatic backups enabled, its
        #     backup retention period must be greater than 0.
        #
        #   * If the source DB instance is in the same region as the Read
        #     Replica, specify a valid DB instance identifier.
        #
        #   * If the source DB instance is in a different region than the Read
        #     Replica, specify a valid DB instance ARN. For more information, go
        #     to [ Constructing a Amazon RDS Amazon Resource Name (ARN)][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The compute and memory capacity of the Read Replica.
        #
        #   Valid Values: `db.m1.small | db.m1.medium | db.m1.large |
        #   db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge |
        #   db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge |
        #   db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge |
        #   db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge |
        #   db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small |
        #   db.t2.medium | db.t2.large`
        #
        #   Default: Inherits from the source DB instance.
        #   @return [String]

        # @!attribute [rw] availability_zone
        #   The Amazon EC2 Availability Zone that the Read Replica will be
        #   created in.
        #
        #   Default: A random, system-chosen Availability Zone in the
        #   endpoint\'s region.
        #
        #   Example: `us-east-1d`
        #   @return [String]

        # @!attribute [rw] port
        #   The port number that the DB instance uses for connections.
        #
        #   Default: Inherits from the source DB instance
        #
        #   Valid Values: `1150-65535`
        #   @return [Integer]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor engine upgrades will be applied automatically
        #   to the Read Replica during the maintenance window.
        #
        #   Default: Inherits from the source DB instance
        #   @return [Boolean]

        # @!attribute [rw] iops
        #   The amount of Provisioned IOPS (input/output operations per second)
        #   to be initially allocated for the DB instance.
        #   @return [Integer]

        # @!attribute [rw] option_group_name
        #   The option group the DB instance will be associated with. If
        #   omitted, the default option group for the engine specified will be
        #   used.
        #   @return [String]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the DB instance. A value of
        #   true specifies an Internet-facing instance with a publicly
        #   resolvable DNS name, which resolves to a public IP address. A value
        #   of false specifies an internal instance with a DNS name that
        #   resolves to a private IP address.
        #
        #   Default: The default behavior varies depending on whether a VPC has
        #   been requested or not. The following list shows the default behavior
        #   in each case.
        #
        #   * **Default VPC:**true
        #
        #   * **VPC:**false
        #
        #   If no DB subnet group has been specified as part of the request and
        #   the PubliclyAccessible value has not been set, the DB instance will
        #   be publicly accessible. If a specific DB subnet group has been
        #   specified as part of the request and the PubliclyAccessible value
        #   has not been set, the DB instance will be private.
        #   @return [Boolean]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] db_subnet_group_name
        #   Specifies a DB subnet group for the DB instance. The new DB instance
        #   will be created in the VPC associated with the DB subnet group. If
        #   no DB subnet group is specified, then the new DB instance is not
        #   created in a VPC.
        #
        #   Constraints:
        #
        #   * Can only be specified if the source DB instance identifier
        #     specifies a DB instance in another region.
        #
        #   * The specified DB subnet group must be in the same region in which
        #     the operation is running.
        #
        #   * All Read Replicas in one region that are created from the same
        #     source DB instance must either:&gt;
        #
        #     * Specify DB subnet groups from the same VPC. All these Read
        #       Replicas will be created in the same VPC.
        #
        #     * Not specify a DB subnet group. All these Read Replicas will be
        #       created outside of any VPC.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] storage_type
        #   Specifies the storage type to be associated with the Read Replica.
        #
        #   Valid values: `standard | gp2 | io1`
        #
        #   If you specify `io1`, you must also include a value for the `Iops`
        #   parameter.
        #
        #   Default: `io1` if the `Iops` parameter is specified; otherwise
        #   `standard`
        #   @return [String]

        # @!attribute [rw] copy_tags_to_snapshot
        #   True to copy all tags from the Read Replica to snapshots of the Read
        #   Replica; otherwise false. The default is false.
        #   @return [Boolean]

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

        # @!attribute [rw] monitoring_role_arn
        #   The ARN for the IAM role that permits RDS to send enhanced
        #   monitoring metrics to CloudWatch Logs. For example,
        #   `arn:aws:iam:123456789012:role/emaccess`. For information on
        #   creating a monitoring role, go to [To create an IAM role for Amazon
        #   RDS Enhanced Monitoring][1].
        #
        #   If `MonitoringInterval` is set to a value other than 0, then you
        #   must supply a `MonitoringRoleArn` value.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
        #   @return [String]

      end

      class CreateDBInstanceReadReplicaResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      class CreateDBInstanceResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # @note When making an API call, pass CreateDBParameterGroupMessage
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
      class CreateDBParameterGroupMessage < Aws::Structure.new(
        :db_parameter_group_name,
        :db_parameter_group_family,
        :description,
        :tags)

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DB parameter group.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   <note markdown="1"> This value is stored as a lowercase string.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] db_parameter_group_family
        #   The DB parameter group family name. A DB parameter group can be
        #   associated with one and only one DB parameter group family, and can
        #   be applied only to a DB instance running a database engine and
        #   engine version compatible with that DB parameter group family.
        #   @return [String]

        # @!attribute [rw] description
        #   The description for the DB parameter group.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateDBParameterGroupResult < Aws::Structure.new(
        :db_parameter_group)

        # @!attribute [rw] db_parameter_group
        #   Contains the result of a successful invocation of the
        #   CreateDBParameterGroup action.
        #
        #   This data type is used as a request parameter in the
        #   DeleteDBParameterGroup action, and as a response element in the
        #   DescribeDBParameterGroups action.
        #   @return [Types::DBParameterGroup]

      end

      # @note When making an API call, pass CreateDBSecurityGroupMessage
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
      class CreateDBSecurityGroupMessage < Aws::Structure.new(
        :db_security_group_name,
        :db_security_group_description,
        :tags)

        # @!attribute [rw] db_security_group_name
        #   The name for the DB security group. This value is stored as a
        #   lowercase string.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   * Must not be \"Default\"
        #
        #   * Cannot contain spaces
        #
        #   Example: `mysecuritygroup`
        #   @return [String]

        # @!attribute [rw] db_security_group_description
        #   The description for the DB security group.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateDBSecurityGroupResult < Aws::Structure.new(
        :db_security_group)

        # @!attribute [rw] db_security_group
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * DescribeDBSecurityGroups
        #
        #   * AuthorizeDBSecurityGroupIngress
        #
        #   * CreateDBSecurityGroup
        #
        #   * RevokeDBSecurityGroupIngress
        #
        #   This data type is used as a response element in the
        #   DescribeDBSecurityGroups action.
        #   @return [Types::DBSecurityGroup]

      end

      # @note When making an API call, pass CreateDBSnapshotMessage
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
      class CreateDBSnapshotMessage < Aws::Structure.new(
        :db_snapshot_identifier,
        :db_instance_identifier,
        :tags)

        # @!attribute [rw] db_snapshot_identifier
        #   The identifier for the DB snapshot.
        #
        #   Constraints:
        #
        #   * Cannot be null, empty, or blank
        #
        #   * Must contain from 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-snapshot-id`
        #   @return [String]

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier. This is the unique key that identifies a
        #   DB instance.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateDBSnapshotResult < Aws::Structure.new(
        :db_snapshot)

        # @!attribute [rw] db_snapshot
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBSnapshot
        #
        #   * DeleteDBSnapshot
        #
        #   This data type is used as a response element in the
        #   DescribeDBSnapshots action.
        #   @return [Types::DBSnapshot]

      end

      # @note When making an API call, pass CreateDBSubnetGroupMessage
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
      class CreateDBSubnetGroupMessage < Aws::Structure.new(
        :db_subnet_group_name,
        :db_subnet_group_description,
        :subnet_ids,
        :tags)

        # @!attribute [rw] db_subnet_group_name
        #   The name for the DB subnet group. This value is stored as a
        #   lowercase string.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters.
        #   Cannot contain periods, underscores, spaces, or hyphens. Must not be
        #   `default`.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] db_subnet_group_description
        #   The description for the DB subnet group.
        #   @return [String]

        # @!attribute [rw] subnet_ids
        #   The EC2 Subnet IDs for the DB subnet group.
        #   @return [Array<String>]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateDBSubnetGroupResult < Aws::Structure.new(
        :db_subnet_group)

        # @!attribute [rw] db_subnet_group
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBSubnetGroup
        #
        #   * ModifyDBSubnetGroup
        #
        #   * DescribeDBSubnetGroups
        #
        #   * DeleteDBSubnetGroup
        #
        #   This data type is used as a response element in the
        #   DescribeDBSubnetGroups action.
        #   @return [Types::DBSubnetGroup]

      end

      # @note When making an API call, pass CreateEventSubscriptionMessage
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
      class CreateEventSubscriptionMessage < Aws::Structure.new(
        :subscription_name,
        :sns_topic_arn,
        :source_type,
        :event_categories,
        :source_ids,
        :enabled,
        :tags)

        # @!attribute [rw] subscription_name
        #   The name of the subscription.
        #
        #   Constraints: The name must be less than 255 characters.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   The Amazon Resource Name (ARN) of the SNS topic created for event
        #   notification. The ARN is created by Amazon SNS when you create a
        #   topic and subscribe to it.
        #   @return [String]

        # @!attribute [rw] source_type
        #   The type of source that will be generating the events. For example,
        #   if you want to be notified of events generated by a DB instance, you
        #   would set this parameter to db-instance. if this value is not
        #   specified, all events are returned.
        #
        #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group`
        #   \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
        #   @return [String]

        # @!attribute [rw] event_categories
        #   A list of event categories for a SourceType that you want to
        #   subscribe to. You can see a list of the categories for a given
        #   SourceType in the [Events][1] topic in the Amazon RDS User Guide or
        #   by using the **DescribeEventCategories** action.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
        #   @return [Array<String>]

        # @!attribute [rw] source_ids
        #   The list of identifiers of the event sources for which events will
        #   be returned. If not specified, then all sources are included in the
        #   response. An identifier must begin with a letter and must contain
        #   only ASCII letters, digits, and hyphens; it cannot end with a hyphen
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

        # @!attribute [rw] enabled
        #   A Boolean value; set to **true** to activate the subscription, set
        #   to **false** to create the subscription but not active it.
        #   @return [Boolean]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateEventSubscriptionResult < Aws::Structure.new(
        :event_subscription)

        # @!attribute [rw] event_subscription
        #   Contains the results of a successful invocation of the
        #   DescribeEventSubscriptions action.
        #   @return [Types::EventSubscription]

      end

      # @note When making an API call, pass CreateOptionGroupMessage
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
      class CreateOptionGroupMessage < Aws::Structure.new(
        :option_group_name,
        :engine_name,
        :major_engine_version,
        :option_group_description,
        :tags)

        # @!attribute [rw] option_group_name
        #   Specifies the name of the option group to be created.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `myoptiongroup`
        #   @return [String]

        # @!attribute [rw] engine_name
        #   Specifies the name of the engine that this option group should be
        #   associated with.
        #   @return [String]

        # @!attribute [rw] major_engine_version
        #   Specifies the major version of the engine that this option group
        #   should be associated with.
        #   @return [String]

        # @!attribute [rw] option_group_description
        #   The description of the option group.
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class CreateOptionGroupResult < Aws::Structure.new(
        :option_group)

        # @!attribute [rw] option_group
        #   @return [Types::OptionGroup]

      end

      # Contains the result of a successful invocation of the following
      # actions:
      #
      # * CreateDBCluster
      #
      # * DeleteDBCluster
      #
      # * FailoverDBCluster
      #
      # * ModifyDBCluster
      #
      # * RestoreDBClusterFromSnapshot
      #
      # * RestoreDBClusterToPointInTime
      #
      # This data type is used as a response element in the DescribeDBClusters
      # action.
      class DBCluster < Aws::Structure.new(
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
        :db_cluster_resource_id)

        # @!attribute [rw] allocated_storage
        #   Specifies the allocated storage size in gigabytes (GB).
        #   @return [Integer]

        # @!attribute [rw] availability_zones
        #   Provides the list of EC2 Availability Zones that instances in the DB
        #   cluster can be created in.
        #   @return [Array<String>]

        # @!attribute [rw] backup_retention_period
        #   Specifies the number of days for which automatic DB snapshots are
        #   retained.
        #   @return [Integer]

        # @!attribute [rw] character_set_name
        #   If present, specifies the name of the character set that this
        #   cluster is associated with.
        #   @return [String]

        # @!attribute [rw] database_name
        #   Contains the name of the initial database of this DB cluster that
        #   was provided at create time, if one was specified when the DB
        #   cluster was created. This same name is returned for the life of the
        #   DB cluster.
        #   @return [String]

        # @!attribute [rw] db_cluster_identifier
        #   Contains a user-supplied DB cluster identifier. This identifier is
        #   the unique key that identifies a DB cluster.
        #   @return [String]

        # @!attribute [rw] db_cluster_parameter_group
        #   Specifies the name of the DB cluster parameter group for the DB
        #   cluster.
        #   @return [String]

        # @!attribute [rw] db_subnet_group
        #   Specifies information on the subnet group associated with the DB
        #   cluster, including the name, description, and subnets in the subnet
        #   group.
        #   @return [String]

        # @!attribute [rw] status
        #   Specifies the current state of this DB cluster.
        #   @return [String]

        # @!attribute [rw] percent_progress
        #   Specifies the progress of the operation as a percentage.
        #   @return [String]

        # @!attribute [rw] earliest_restorable_time
        #   Specifies the earliest time to which a database can be restored with
        #   point-in-time restore.
        #   @return [Time]

        # @!attribute [rw] endpoint
        #   Specifies the connection endpoint for the primary instance of the DB
        #   cluster.
        #   @return [String]

        # @!attribute [rw] engine
        #   Provides the name of the database engine to be used for this DB
        #   cluster.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   Indicates the database engine version.
        #   @return [String]

        # @!attribute [rw] latest_restorable_time
        #   Specifies the latest time to which a database can be restored with
        #   point-in-time restore.
        #   @return [Time]

        # @!attribute [rw] port
        #   Specifies the port that the database engine is listening on.
        #   @return [Integer]

        # @!attribute [rw] master_username
        #   Contains the master username for the DB cluster.
        #   @return [String]

        # @!attribute [rw] db_cluster_option_group_memberships
        #   Provides the list of option group memberships for this DB cluster.
        #   @return [Array<Types::DBClusterOptionGroupStatus>]

        # @!attribute [rw] preferred_backup_window
        #   Specifies the daily time range during which automated backups are
        #   created if automated backups are enabled, as determined by the
        #   `BackupRetentionPeriod`.
        #   @return [String]

        # @!attribute [rw] preferred_maintenance_window
        #   Specifies the weekly time range during which system maintenance can
        #   occur, in Universal Coordinated Time (UTC).
        #   @return [String]

        # @!attribute [rw] replication_source_identifier
        #   Contains the identifier of the source DB cluster if this DB cluster
        #   is a Read Replica.
        #   @return [String]

        # @!attribute [rw] read_replica_identifiers
        #   Contains one or more identifiers of the Read Replicas associated
        #   with this DB cluster.
        #   @return [Array<String>]

        # @!attribute [rw] db_cluster_members
        #   Provides the list of instances that make up the DB cluster.
        #   @return [Array<Types::DBClusterMember>]

        # @!attribute [rw] vpc_security_groups
        #   Provides a list of VPC security groups that the DB cluster belongs
        #   to.
        #   @return [Array<Types::VpcSecurityGroupMembership>]

        # @!attribute [rw] hosted_zone_id
        #   Specifies the ID that Amazon Route 53 assigns when you create a
        #   hosted zone.
        #   @return [String]

        # @!attribute [rw] storage_encrypted
        #   Specifies whether the DB cluster is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   If `StorageEncrypted` is true, the KMS key identifier for the
        #   encrypted DB cluster.
        #   @return [String]

        # @!attribute [rw] db_cluster_resource_id
        #   The region-unique, immutable identifier for the DB cluster. This
        #   identifier is found in AWS CloudTrail log entries whenever the KMS
        #   key for the DB cluster is accessed.
        #   @return [String]

      end

      # Contains information about an instance that is part of a DB cluster.
      class DBClusterMember < Aws::Structure.new(
        :db_instance_identifier,
        :is_cluster_writer,
        :db_cluster_parameter_group_status,
        :promotion_tier)

        # @!attribute [rw] db_instance_identifier
        #   Specifies the instance identifier for this member of the DB cluster.
        #   @return [String]

        # @!attribute [rw] is_cluster_writer
        #   Value that is `true` if the cluster member is the primary instance
        #   for the DB cluster and `false` otherwise.
        #   @return [Boolean]

        # @!attribute [rw] db_cluster_parameter_group_status
        #   Specifies the status of the DB cluster parameter group for this
        #   member of the DB cluster.
        #   @return [String]

        # @!attribute [rw] promotion_tier
        #   A value that specifies the order in which an Aurora Replica is
        #   promoted to the primary instance after a failure of the existing
        #   primary instance. For more information, see [ Fault Tolerance for an
        #   Aurora DB Cluster][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance
        #   @return [Integer]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBClusters action.
      class DBClusterMessage < Aws::Structure.new(
        :marker,
        :db_clusters)

        # @!attribute [rw] marker
        #   A pagination token that can be used in a subsequent
        #   DescribeDBClusters request.
        #   @return [String]

        # @!attribute [rw] db_clusters
        #   Contains a list of DB clusters for the user.
        #   @return [Array<Types::DBCluster>]

      end

      # Contains status information for a DB cluster option group.
      class DBClusterOptionGroupStatus < Aws::Structure.new(
        :db_cluster_option_group_name,
        :status)

        # @!attribute [rw] db_cluster_option_group_name
        #   Specifies the name of the DB cluster option group.
        #   @return [String]

        # @!attribute [rw] status
        #   Specifies the status of the DB cluster option group.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # CreateDBClusterParameterGroup action.
      #
      # This data type is used as a request parameter in the
      # DeleteDBClusterParameterGroup action, and as a response element in the
      # DescribeDBClusterParameterGroups action.
      class DBClusterParameterGroup < Aws::Structure.new(
        :db_cluster_parameter_group_name,
        :db_parameter_group_family,
        :description)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   Provides the name of the DB cluster parameter group.
        #   @return [String]

        # @!attribute [rw] db_parameter_group_family
        #   Provides the name of the DB parameter group family that this DB
        #   cluster parameter group is compatible with.
        #   @return [String]

        # @!attribute [rw] description
        #   Provides the customer-specified description for this DB cluster
        #   parameter group.
        #   @return [String]

      end

      # Provides details about a DB cluster parameter group including the
      # parameters in the DB cluster parameter group.
      class DBClusterParameterGroupDetails < Aws::Structure.new(
        :parameters,
        :marker)

        # @!attribute [rw] parameters
        #   Provides a list of parameters for the DB cluster parameter group.
        #   @return [Array<Types::Parameter>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeDBClusterParameters request. If this parameter is specified,
        #   the response includes only records beyond the marker, up to the
        #   value specified by `MaxRecords` .
        #   @return [String]

      end

      class DBClusterParameterGroupNameMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   <note markdown="1"> This value is stored as a lowercase string.
        #
        #    </note>
        #   @return [String]

      end

      class DBClusterParameterGroupsMessage < Aws::Structure.new(
        :marker,
        :db_cluster_parameter_groups)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBClusterParameterGroups` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_cluster_parameter_groups
        #   A list of DB cluster parameter groups.
        #   @return [Array<Types::DBClusterParameterGroup>]

      end

      # Contains the result of a successful invocation of the following
      # actions:
      #
      # * CreateDBClusterSnapshot
      #
      # * DeleteDBClusterSnapshot
      #
      # This data type is used as a response element in the
      # DescribeDBClusterSnapshots action.
      class DBClusterSnapshot < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] availability_zones
        #   Provides the list of EC2 Availability Zones that instances in the DB
        #   cluster snapshot can be restored in.
        #   @return [Array<String>]

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   Specifies the identifier for the DB cluster snapshot.
        #   @return [String]

        # @!attribute [rw] db_cluster_identifier
        #   Specifies the DB cluster identifier of the DB cluster that this DB
        #   cluster snapshot was created from.
        #   @return [String]

        # @!attribute [rw] snapshot_create_time
        #   Provides the time when the snapshot was taken, in Universal
        #   Coordinated Time (UTC).
        #   @return [Time]

        # @!attribute [rw] engine
        #   Specifies the name of the database engine.
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   Specifies the allocated storage size in gigabytes (GB).
        #   @return [Integer]

        # @!attribute [rw] status
        #   Specifies the status of this DB cluster snapshot.
        #   @return [String]

        # @!attribute [rw] port
        #   Specifies the port that the DB cluster was listening on at the time
        #   of the snapshot.
        #   @return [Integer]

        # @!attribute [rw] vpc_id
        #   Provides the VPC ID associated with the DB cluster snapshot.
        #   @return [String]

        # @!attribute [rw] cluster_create_time
        #   Specifies the time when the DB cluster was created, in Universal
        #   Coordinated Time (UTC).
        #   @return [Time]

        # @!attribute [rw] master_username
        #   Provides the master username for the DB cluster snapshot.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   Provides the version of the database engine for this DB cluster
        #   snapshot.
        #   @return [String]

        # @!attribute [rw] license_model
        #   Provides the license model information for this DB cluster snapshot.
        #   @return [String]

        # @!attribute [rw] snapshot_type
        #   Provides the type of the DB cluster snapshot.
        #   @return [String]

        # @!attribute [rw] percent_progress
        #   Specifies the percentage of the estimated data that has been
        #   transferred.
        #   @return [Integer]

        # @!attribute [rw] storage_encrypted
        #   Specifies whether the DB cluster snapshot is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   If `StorageEncrypted` is true, the KMS key identifier for the
        #   encrypted DB cluster snapshot.
        #   @return [String]

      end

      # Contains the name and values of a manual DB cluster snapshot
      # attribute.
      #
      # Manual DB cluster snapshot attributes are used to authorize other AWS
      # accounts to restore a manual DB cluster snapshot. For more
      # information, see the ModifyDBClusterSnapshotAttribute API action.
      class DBClusterSnapshotAttribute < Aws::Structure.new(
        :attribute_name,
        :attribute_values)

        # @!attribute [rw] attribute_name
        #   The name of the manual DB cluster snapshot attribute.
        #
        #   The attribute named `restore` refers to the list of AWS accounts
        #   that have permission to copy or restore the manual DB cluster
        #   snapshot. For more information, see the
        #   ModifyDBClusterSnapshotAttribute API action.
        #   @return [String]

        # @!attribute [rw] attribute_values
        #   The value(s) for the manual DB cluster snapshot attribute.
        #
        #   If the `AttributeName` field is set to `restore`, then this element
        #   returns a list of IDs of the AWS accounts that are authorized to
        #   copy or restore the manual DB cluster snapshot. If a value of `all`
        #   is in the list, then the manual DB cluster snapshot is public and
        #   available for any AWS account to copy or restore.
        #   @return [Array<String>]

      end

      # Contains the results of a successful call to the
      # DescribeDBClusterSnapshotAttributes API action.
      #
      # Manual DB cluster snapshot attributes are used to authorize other AWS
      # accounts to copy or restore a manual DB cluster snapshot. For more
      # information, see the ModifyDBClusterSnapshotAttribute API action.
      class DBClusterSnapshotAttributesResult < Aws::Structure.new(
        :db_cluster_snapshot_identifier,
        :db_cluster_snapshot_attributes)

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   The identifier of the manual DB cluster snapshot that the attributes
        #   apply to.
        #   @return [String]

        # @!attribute [rw] db_cluster_snapshot_attributes
        #   The list of attributes and values for the manual DB cluster
        #   snapshot.
        #   @return [Array<Types::DBClusterSnapshotAttribute>]

      end

      # Provides a list of DB cluster snapshots for the user as the result of
      # a call to the DescribeDBClusterSnapshots action.
      class DBClusterSnapshotMessage < Aws::Structure.new(
        :marker,
        :db_cluster_snapshots)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeDBClusterSnapshots request. If this parameter is specified,
        #   the response includes only records beyond the marker, up to the
        #   value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_cluster_snapshots
        #   Provides a list of DB cluster snapshots for the user.
        #   @return [Array<Types::DBClusterSnapshot>]

      end

      # This data type is used as a response element in the action
      # DescribeDBEngineVersions.
      class DBEngineVersion < Aws::Structure.new(
        :engine,
        :engine_version,
        :db_parameter_group_family,
        :db_engine_description,
        :db_engine_version_description,
        :default_character_set,
        :supported_character_sets,
        :valid_upgrade_target)

        # @!attribute [rw] engine
        #   The name of the database engine.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The version number of the database engine.
        #   @return [String]

        # @!attribute [rw] db_parameter_group_family
        #   The name of the DB parameter group family for the database engine.
        #   @return [String]

        # @!attribute [rw] db_engine_description
        #   The description of the database engine.
        #   @return [String]

        # @!attribute [rw] db_engine_version_description
        #   The description of the database engine version.
        #   @return [String]

        # @!attribute [rw] default_character_set
        #   The default character set for new instances of this engine version,
        #   if the `CharacterSetName` parameter of the CreateDBInstance API is
        #   not specified.
        #   @return [Types::CharacterSet]

        # @!attribute [rw] supported_character_sets
        #   A list of the character sets supported by this engine for the
        #   `CharacterSetName` parameter of the CreateDBInstance API.
        #   @return [Array<Types::CharacterSet>]

        # @!attribute [rw] valid_upgrade_target
        #   A list of engine versions that this database engine version can be
        #   upgraded to.
        #   @return [Array<Types::UpgradeTarget>]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBEngineVersions action.
      class DBEngineVersionMessage < Aws::Structure.new(
        :marker,
        :db_engine_versions)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_engine_versions
        #   A list of `DBEngineVersion` elements.
        #   @return [Array<Types::DBEngineVersion>]

      end

      # Contains the result of a successful invocation of the following
      # actions:
      #
      # * CreateDBInstance
      #
      # * DeleteDBInstance
      #
      # * ModifyDBInstance
      #
      # This data type is used as a response element in the
      # DescribeDBInstances action.
      class DBInstance < Aws::Structure.new(
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
        :promotion_tier)

        # @!attribute [rw] db_instance_identifier
        #   Contains a user-supplied database identifier. This identifier is the
        #   unique key that identifies a DB instance.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   Contains the name of the compute and memory capacity class of the DB
        #   instance.
        #   @return [String]

        # @!attribute [rw] engine
        #   Provides the name of the database engine to be used for this DB
        #   instance.
        #   @return [String]

        # @!attribute [rw] db_instance_status
        #   Specifies the current state of this database.
        #   @return [String]

        # @!attribute [rw] master_username
        #   Contains the master username for the DB instance.
        #   @return [String]

        # @!attribute [rw] db_name
        #   The meaning of this parameter differs according to the database
        #   engine you use. For example, this value returns MySQL, MariaDB, or
        #   PostgreSQL information when returning values from
        #   CreateDBInstanceReadReplica since Read Replicas are only supported
        #   for these engines.
        #
        #   **MySQL, MariaDB, SQL Server, PostgreSQL, Amazon Aurora**
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

        # @!attribute [rw] endpoint
        #   Specifies the connection endpoint.
        #   @return [Types::Endpoint]

        # @!attribute [rw] allocated_storage
        #   Specifies the allocated storage size specified in gigabytes.
        #   @return [Integer]

        # @!attribute [rw] instance_create_time
        #   Provides the date and time the DB instance was created.
        #   @return [Time]

        # @!attribute [rw] preferred_backup_window
        #   Specifies the daily time range during which automated backups are
        #   created if automated backups are enabled, as determined by the
        #   `BackupRetentionPeriod`.
        #   @return [String]

        # @!attribute [rw] backup_retention_period
        #   Specifies the number of days for which automatic DB snapshots are
        #   retained.
        #   @return [Integer]

        # @!attribute [rw] db_security_groups
        #   Provides List of DB security group elements containing only
        #   `DBSecurityGroup.Name` and `DBSecurityGroup.Status` subelements.
        #   @return [Array<Types::DBSecurityGroupMembership>]

        # @!attribute [rw] vpc_security_groups
        #   Provides List of VPC security group elements that the DB instance
        #   belongs to.
        #   @return [Array<Types::VpcSecurityGroupMembership>]

        # @!attribute [rw] db_parameter_groups
        #   Provides the list of DB parameter groups applied to this DB
        #   instance.
        #   @return [Array<Types::DBParameterGroupStatus>]

        # @!attribute [rw] availability_zone
        #   Specifies the name of the Availability Zone the DB instance is
        #   located in.
        #   @return [String]

        # @!attribute [rw] db_subnet_group
        #   Specifies information on the subnet group associated with the DB
        #   instance, including the name, description, and subnets in the subnet
        #   group.
        #   @return [Types::DBSubnetGroup]

        # @!attribute [rw] preferred_maintenance_window
        #   Specifies the weekly time range during which system maintenance can
        #   occur, in Universal Coordinated Time (UTC).
        #   @return [String]

        # @!attribute [rw] pending_modified_values
        #   Specifies that changes to the DB instance are pending. This element
        #   is only included when changes are pending. Specific changes are
        #   identified by subelements.
        #   @return [Types::PendingModifiedValues]

        # @!attribute [rw] latest_restorable_time
        #   Specifies the latest time to which a database can be restored with
        #   point-in-time restore.
        #   @return [Time]

        # @!attribute [rw] multi_az
        #   Specifies if the DB instance is a Multi-AZ deployment.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   Indicates the database engine version.
        #   @return [String]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor version patches are applied automatically.
        #   @return [Boolean]

        # @!attribute [rw] read_replica_source_db_instance_identifier
        #   Contains the identifier of the source DB instance if this DB
        #   instance is a Read Replica.
        #   @return [String]

        # @!attribute [rw] read_replica_db_instance_identifiers
        #   Contains one or more identifiers of the Read Replicas associated
        #   with this DB instance.
        #   @return [Array<String>]

        # @!attribute [rw] license_model
        #   License model information for this DB instance.
        #   @return [String]

        # @!attribute [rw] iops
        #   Specifies the Provisioned IOPS (I/O operations per second) value.
        #   @return [Integer]

        # @!attribute [rw] option_group_memberships
        #   Provides the list of option group memberships for this DB instance.
        #   @return [Array<Types::OptionGroupMembership>]

        # @!attribute [rw] character_set_name
        #   If present, specifies the name of the character set that this
        #   instance is associated with.
        #   @return [String]

        # @!attribute [rw] secondary_availability_zone
        #   If present, specifies the name of the secondary Availability Zone
        #   for a DB instance with multi-AZ support.
        #   @return [String]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the DB instance. A value of
        #   true specifies an Internet-facing instance with a publicly
        #   resolvable DNS name, which resolves to a public IP address. A value
        #   of false specifies an internal instance with a DNS name that
        #   resolves to a private IP address.
        #
        #   Default: The default behavior varies depending on whether a VPC has
        #   been requested or not. The following list shows the default behavior
        #   in each case.
        #
        #   * **Default VPC:**true
        #
        #   * **VPC:**false
        #
        #   If no DB subnet group has been specified as part of the request and
        #   the PubliclyAccessible value has not been set, the DB instance will
        #   be publicly accessible. If a specific DB subnet group has been
        #   specified as part of the request and the PubliclyAccessible value
        #   has not been set, the DB instance will be private.
        #   @return [Boolean]

        # @!attribute [rw] status_infos
        #   The status of a Read Replica. If the instance is not a Read Replica,
        #   this will be blank.
        #   @return [Array<Types::DBInstanceStatusInfo>]

        # @!attribute [rw] storage_type
        #   Specifies the storage type associated with DB instance.
        #   @return [String]

        # @!attribute [rw] tde_credential_arn
        #   The ARN from the Key Store with which the instance is associated for
        #   TDE encryption.
        #   @return [String]

        # @!attribute [rw] db_instance_port
        #   Specifies the port that the DB instance listens on. If the DB
        #   instance is part of a DB cluster, this can be a different port than
        #   the DB cluster port.
        #   @return [Integer]

        # @!attribute [rw] db_cluster_identifier
        #   If the DB instance is a member of a DB cluster, contains the name of
        #   the DB cluster that the DB instance is a member of.
        #   @return [String]

        # @!attribute [rw] storage_encrypted
        #   Specifies whether the DB instance is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   If `StorageEncrypted` is true, the KMS key identifier for the
        #   encrypted DB instance.
        #   @return [String]

        # @!attribute [rw] dbi_resource_id
        #   The region-unique, immutable identifier for the DB instance. This
        #   identifier is found in AWS CloudTrail log entries whenever the KMS
        #   key for the DB instance is accessed.
        #   @return [String]

        # @!attribute [rw] ca_certificate_identifier
        #   The identifier of the CA certificate for this DB instance.
        #   @return [String]

        # @!attribute [rw] domain_memberships
        #   The Active Directory Domain membership records associated with the
        #   DB instance.
        #   @return [Array<Types::DomainMembership>]

        # @!attribute [rw] copy_tags_to_snapshot
        #   Specifies whether tags are copied from the DB instance to snapshots
        #   of the DB instance.
        #   @return [Boolean]

        # @!attribute [rw] monitoring_interval
        #   The interval, in seconds, between points when Enhanced Monitoring
        #   metrics are collected for the DB instance.
        #   @return [Integer]

        # @!attribute [rw] enhanced_monitoring_resource_arn
        #   The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log
        #   stream that receives the Enhanced Monitoring metrics data for the DB
        #   instance.
        #   @return [String]

        # @!attribute [rw] monitoring_role_arn
        #   The ARN for the IAM role that permits RDS to send Enhanced
        #   Monitoring metrics to CloudWatch Logs.
        #   @return [String]

        # @!attribute [rw] promotion_tier
        #   A value that specifies the order in which an Aurora Replica is
        #   promoted to the primary instance after a failure of the existing
        #   primary instance. For more information, see [ Fault Tolerance for an
        #   Aurora DB Cluster][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance
        #   @return [Integer]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBInstances action.
      class DBInstanceMessage < Aws::Structure.new(
        :marker,
        :db_instances)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords` .
        #   @return [String]

        # @!attribute [rw] db_instances
        #   A list of DBInstance instances.
        #   @return [Array<Types::DBInstance>]

      end

      # Provides a list of status information for a DB instance.
      class DBInstanceStatusInfo < Aws::Structure.new(
        :status_type,
        :normal,
        :status,
        :message)

        # @!attribute [rw] status_type
        #   This value is currently \"read replication.\"
        #   @return [String]

        # @!attribute [rw] normal
        #   Boolean value that is true if the instance is operating normally, or
        #   false if the instance is in an error state.
        #   @return [Boolean]

        # @!attribute [rw] status
        #   Status of the DB instance. For a StatusType of read replica, the
        #   values can be replicating, error, stopped, or terminated.
        #   @return [String]

        # @!attribute [rw] message
        #   Details of the error if there is an error for the instance. If the
        #   instance is not in an error state, this value is blank.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # CreateDBParameterGroup action.
      #
      # This data type is used as a request parameter in the
      # DeleteDBParameterGroup action, and as a response element in the
      # DescribeDBParameterGroups action.
      class DBParameterGroup < Aws::Structure.new(
        :db_parameter_group_name,
        :db_parameter_group_family,
        :description)

        # @!attribute [rw] db_parameter_group_name
        #   Provides the name of the DB parameter group.
        #   @return [String]

        # @!attribute [rw] db_parameter_group_family
        #   Provides the name of the DB parameter group family that this DB
        #   parameter group is compatible with.
        #   @return [String]

        # @!attribute [rw] description
        #   Provides the customer-specified description for this DB parameter
        #   group.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBParameters action.
      class DBParameterGroupDetails < Aws::Structure.new(
        :parameters,
        :marker)

        # @!attribute [rw] parameters
        #   A list of Parameter values.
        #   @return [Array<Types::Parameter>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # ModifyDBParameterGroup or ResetDBParameterGroup action.
      class DBParameterGroupNameMessage < Aws::Structure.new(
        :db_parameter_group_name)

        # @!attribute [rw] db_parameter_group_name
        #   Provides the name of the DB parameter group.
        #   @return [String]

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
      class DBParameterGroupStatus < Aws::Structure.new(
        :db_parameter_group_name,
        :parameter_apply_status)

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DP parameter group.
        #   @return [String]

        # @!attribute [rw] parameter_apply_status
        #   The status of parameter updates.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBParameterGroups action.
      class DBParameterGroupsMessage < Aws::Structure.new(
        :marker,
        :db_parameter_groups)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_parameter_groups
        #   A list of DBParameterGroup instances.
        #   @return [Array<Types::DBParameterGroup>]

      end

      # Contains the result of a successful invocation of the following
      # actions:
      #
      # * DescribeDBSecurityGroups
      #
      # * AuthorizeDBSecurityGroupIngress
      #
      # * CreateDBSecurityGroup
      #
      # * RevokeDBSecurityGroupIngress
      #
      # This data type is used as a response element in the
      # DescribeDBSecurityGroups action.
      class DBSecurityGroup < Aws::Structure.new(
        :owner_id,
        :db_security_group_name,
        :db_security_group_description,
        :vpc_id,
        :ec2_security_groups,
        :ip_ranges)

        # @!attribute [rw] owner_id
        #   Provides the AWS ID of the owner of a specific DB security group.
        #   @return [String]

        # @!attribute [rw] db_security_group_name
        #   Specifies the name of the DB security group.
        #   @return [String]

        # @!attribute [rw] db_security_group_description
        #   Provides the description of the DB security group.
        #   @return [String]

        # @!attribute [rw] vpc_id
        #   Provides the VpcId of the DB security group.
        #   @return [String]

        # @!attribute [rw] ec2_security_groups
        #   Contains a list of EC2SecurityGroup elements.
        #   @return [Array<Types::EC2SecurityGroup>]

        # @!attribute [rw] ip_ranges
        #   Contains a list of IPRange elements.
        #   @return [Array<Types::IPRange>]

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
      class DBSecurityGroupMembership < Aws::Structure.new(
        :db_security_group_name,
        :status)

        # @!attribute [rw] db_security_group_name
        #   The name of the DB security group.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the DB security group.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBSecurityGroups action.
      class DBSecurityGroupMessage < Aws::Structure.new(
        :marker,
        :db_security_groups)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_security_groups
        #   A list of DBSecurityGroup instances.
        #   @return [Array<Types::DBSecurityGroup>]

      end

      # Contains the result of a successful invocation of the following
      # actions:
      #
      # * CreateDBSnapshot
      #
      # * DeleteDBSnapshot
      #
      # This data type is used as a response element in the
      # DescribeDBSnapshots action.
      class DBSnapshot < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] db_snapshot_identifier
        #   Specifies the identifier for the DB snapshot.
        #   @return [String]

        # @!attribute [rw] db_instance_identifier
        #   Specifies the DB instance identifier of the DB instance this DB
        #   snapshot was created from.
        #   @return [String]

        # @!attribute [rw] snapshot_create_time
        #   Provides the time when the snapshot was taken, in Universal
        #   Coordinated Time (UTC).
        #   @return [Time]

        # @!attribute [rw] engine
        #   Specifies the name of the database engine.
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   Specifies the allocated storage size in gigabytes (GB).
        #   @return [Integer]

        # @!attribute [rw] status
        #   Specifies the status of this DB snapshot.
        #   @return [String]

        # @!attribute [rw] port
        #   Specifies the port that the database engine was listening on at the
        #   time of the snapshot.
        #   @return [Integer]

        # @!attribute [rw] availability_zone
        #   Specifies the name of the Availability Zone the DB instance was
        #   located in at the time of the DB snapshot.
        #   @return [String]

        # @!attribute [rw] vpc_id
        #   Provides the VPC ID associated with the DB snapshot.
        #   @return [String]

        # @!attribute [rw] instance_create_time
        #   Specifies the time when the snapshot was taken, in Universal
        #   Coordinated Time (UTC).
        #   @return [Time]

        # @!attribute [rw] master_username
        #   Provides the master username for the DB snapshot.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   Specifies the version of the database engine.
        #   @return [String]

        # @!attribute [rw] license_model
        #   License model information for the restored DB instance.
        #   @return [String]

        # @!attribute [rw] snapshot_type
        #   Provides the type of the DB snapshot.
        #   @return [String]

        # @!attribute [rw] iops
        #   Specifies the Provisioned IOPS (I/O operations per second) value of
        #   the DB instance at the time of the snapshot.
        #   @return [Integer]

        # @!attribute [rw] option_group_name
        #   Provides the option group name for the DB snapshot.
        #   @return [String]

        # @!attribute [rw] percent_progress
        #   The percentage of the estimated data that has been transferred.
        #   @return [Integer]

        # @!attribute [rw] source_region
        #   The region that the DB snapshot was created in or copied from.
        #   @return [String]

        # @!attribute [rw] source_db_snapshot_identifier
        #   The DB snapshot Arn that the DB snapshot was copied from. It only
        #   has value in case of cross customer or cross region copy.
        #   @return [String]

        # @!attribute [rw] storage_type
        #   Specifies the storage type associated with DB Snapshot.
        #   @return [String]

        # @!attribute [rw] tde_credential_arn
        #   The ARN from the Key Store with which to associate the instance for
        #   TDE encryption.
        #   @return [String]

        # @!attribute [rw] encrypted
        #   Specifies whether the DB snapshot is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   If `Encrypted` is true, the KMS key identifier for the encrypted DB
        #   snapshot.
        #   @return [String]

      end

      # Contains the name and values of a manual DB snapshot attribute
      #
      # Manual DB snapshot attributes are used to authorize other AWS accounts
      # to restore a manual DB snapshot. For more information, see the
      # ModifyDBSnapshotAttribute API.
      class DBSnapshotAttribute < Aws::Structure.new(
        :attribute_name,
        :attribute_values)

        # @!attribute [rw] attribute_name
        #   The name of the manual DB snapshot attribute.
        #
        #   The attribute named `restore` refers to the list of AWS accounts
        #   that have permission to copy or restore the manual DB cluster
        #   snapshot. For more information, see the ModifyDBSnapshotAttribute
        #   API action.
        #   @return [String]

        # @!attribute [rw] attribute_values
        #   The value or values for the manual DB snapshot attribute.
        #
        #   If the `AttributeName` field is set to `restore`, then this element
        #   returns a list of IDs of the AWS accounts that are authorized to
        #   copy or restore the manual DB snapshot. If a value of `all` is in
        #   the list, then the manual DB snapshot is public and available for
        #   any AWS account to copy or restore.
        #   @return [Array<String>]

      end

      # Contains the results of a successful call to the
      # DescribeDBSnapshotAttributes API action.
      #
      # Manual DB snapshot attributes are used to authorize other AWS accounts
      # to copy or restore a manual DB snapshot. For more information, see the
      # ModifyDBSnapshotAttribute API action.
      class DBSnapshotAttributesResult < Aws::Structure.new(
        :db_snapshot_identifier,
        :db_snapshot_attributes)

        # @!attribute [rw] db_snapshot_identifier
        #   The identifier of the manual DB snapshot that the attributes apply
        #   to.
        #   @return [String]

        # @!attribute [rw] db_snapshot_attributes
        #   The list of attributes and values for the manual DB snapshot.
        #   @return [Array<Types::DBSnapshotAttribute>]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBSnapshots action.
      class DBSnapshotMessage < Aws::Structure.new(
        :marker,
        :db_snapshots)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_snapshots
        #   A list of DBSnapshot instances.
        #   @return [Array<Types::DBSnapshot>]

      end

      # Contains the result of a successful invocation of the following
      # actions:
      #
      # * CreateDBSubnetGroup
      #
      # * ModifyDBSubnetGroup
      #
      # * DescribeDBSubnetGroups
      #
      # * DeleteDBSubnetGroup
      #
      # This data type is used as a response element in the
      # DescribeDBSubnetGroups action.
      class DBSubnetGroup < Aws::Structure.new(
        :db_subnet_group_name,
        :db_subnet_group_description,
        :vpc_id,
        :subnet_group_status,
        :subnets)

        # @!attribute [rw] db_subnet_group_name
        #   The name of the DB subnet group.
        #   @return [String]

        # @!attribute [rw] db_subnet_group_description
        #   Provides the description of the DB subnet group.
        #   @return [String]

        # @!attribute [rw] vpc_id
        #   Provides the VpcId of the DB subnet group.
        #   @return [String]

        # @!attribute [rw] subnet_group_status
        #   Provides the status of the DB subnet group.
        #   @return [String]

        # @!attribute [rw] subnets
        #   Contains a list of Subnet elements.
        #   @return [Array<Types::Subnet>]

      end

      # Contains the result of a successful invocation of the
      # DescribeDBSubnetGroups action.
      class DBSubnetGroupMessage < Aws::Structure.new(
        :marker,
        :db_subnet_groups)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] db_subnet_groups
        #   A list of DBSubnetGroup instances.
        #   @return [Array<Types::DBSubnetGroup>]

      end

      # @note When making an API call, pass DeleteDBClusterMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_identifier: "String", # required
      #         skip_final_snapshot: false,
      #         final_db_snapshot_identifier: "String",
      #       }
      class DeleteDBClusterMessage < Aws::Structure.new(
        :db_cluster_identifier,
        :skip_final_snapshot,
        :final_db_snapshot_identifier)

        # @!attribute [rw] db_cluster_identifier
        #   The DB cluster identifier for the DB cluster to be deleted. This
        #   parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

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
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

      end

      # @note When making an API call, pass DeleteDBClusterParameterGroupMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_parameter_group_name: "String", # required
      #       }
      class DeleteDBClusterParameterGroupMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group.
        #
        #   Constraints:
        #
        #   * Must be the name of an existing DB cluster parameter group.
        #
        #   * You cannot delete a default DB cluster parameter group.
        #
        #   * Cannot be associated with any DB clusters.
        #   @return [String]

      end

      class DeleteDBClusterResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # @note When making an API call, pass DeleteDBClusterSnapshotMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_snapshot_identifier: "String", # required
      #       }
      class DeleteDBClusterSnapshotMessage < Aws::Structure.new(
        :db_cluster_snapshot_identifier)

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   The identifier of the DB cluster snapshot to delete.
        #
        #   Constraints: Must be the name of an existing DB cluster snapshot in
        #   the `available` state.
        #   @return [String]

      end

      class DeleteDBClusterSnapshotResult < Aws::Structure.new(
        :db_cluster_snapshot)

        # @!attribute [rw] db_cluster_snapshot
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBClusterSnapshot
        #
        #   * DeleteDBClusterSnapshot
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusterSnapshots action.
        #   @return [Types::DBClusterSnapshot]

      end

      # @note When making an API call, pass DeleteDBInstanceMessage
      #   data as a hash:
      #
      #       {
      #         db_instance_identifier: "String", # required
      #         skip_final_snapshot: false,
      #         final_db_snapshot_identifier: "String",
      #       }
      class DeleteDBInstanceMessage < Aws::Structure.new(
        :db_instance_identifier,
        :skip_final_snapshot,
        :final_db_snapshot_identifier)

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier for the DB instance to be deleted. This
        #   parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] skip_final_snapshot
        #   Determines whether a final DB snapshot is created before the DB
        #   instance is deleted. If `true` is specified, no DBSnapshot is
        #   created. If `false` is specified, a DB snapshot is created before
        #   the DB instance is deleted.
        #
        #   Note that when a DB instance is in a failure state and has a status
        #   of \'failed\', \'incompatible-restore\', or
        #   \'incompatible-network\', it can only be deleted when the
        #   SkipFinalSnapshot parameter is set to \"true\".
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
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   * Cannot be specified when deleting a Read Replica.
        #   @return [String]

      end

      class DeleteDBInstanceResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # @note When making an API call, pass DeleteDBParameterGroupMessage
      #   data as a hash:
      #
      #       {
      #         db_parameter_group_name: "String", # required
      #       }
      class DeleteDBParameterGroupMessage < Aws::Structure.new(
        :db_parameter_group_name)

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DB parameter group.
        #
        #   Constraints:
        #
        #   * Must be the name of an existing DB parameter group
        #
        #   * You cannot delete a default DB parameter group
        #
        #   * Cannot be associated with any DB instances
        #   @return [String]

      end

      # @note When making an API call, pass DeleteDBSecurityGroupMessage
      #   data as a hash:
      #
      #       {
      #         db_security_group_name: "String", # required
      #       }
      class DeleteDBSecurityGroupMessage < Aws::Structure.new(
        :db_security_group_name)

        # @!attribute [rw] db_security_group_name
        #   The name of the DB security group to delete.
        #
        #   <note markdown="1"> You cannot delete the default DB security group.
        #
        #    </note>
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   * Must not be \"Default\"
        #
        #   * Cannot contain spaces
        #   @return [String]

      end

      # @note When making an API call, pass DeleteDBSnapshotMessage
      #   data as a hash:
      #
      #       {
      #         db_snapshot_identifier: "String", # required
      #       }
      class DeleteDBSnapshotMessage < Aws::Structure.new(
        :db_snapshot_identifier)

        # @!attribute [rw] db_snapshot_identifier
        #   The DBSnapshot identifier.
        #
        #   Constraints: Must be the name of an existing DB snapshot in the
        #   `available` state.
        #   @return [String]

      end

      class DeleteDBSnapshotResult < Aws::Structure.new(
        :db_snapshot)

        # @!attribute [rw] db_snapshot
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBSnapshot
        #
        #   * DeleteDBSnapshot
        #
        #   This data type is used as a response element in the
        #   DescribeDBSnapshots action.
        #   @return [Types::DBSnapshot]

      end

      # @note When making an API call, pass DeleteDBSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         db_subnet_group_name: "String", # required
      #       }
      class DeleteDBSubnetGroupMessage < Aws::Structure.new(
        :db_subnet_group_name)

        # @!attribute [rw] db_subnet_group_name
        #   The name of the database subnet group to delete.
        #
        #   <note markdown="1"> You cannot delete the default subnet group.
        #
        #    </note>
        #
        #   Constraints:
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

      end

      # @note When making an API call, pass DeleteEventSubscriptionMessage
      #   data as a hash:
      #
      #       {
      #         subscription_name: "String", # required
      #       }
      class DeleteEventSubscriptionMessage < Aws::Structure.new(
        :subscription_name)

        # @!attribute [rw] subscription_name
        #   The name of the RDS event notification subscription you want to
        #   delete.
        #   @return [String]

      end

      class DeleteEventSubscriptionResult < Aws::Structure.new(
        :event_subscription)

        # @!attribute [rw] event_subscription
        #   Contains the results of a successful invocation of the
        #   DescribeEventSubscriptions action.
        #   @return [Types::EventSubscription]

      end

      # @note When making an API call, pass DeleteOptionGroupMessage
      #   data as a hash:
      #
      #       {
      #         option_group_name: "String", # required
      #       }
      class DeleteOptionGroupMessage < Aws::Structure.new(
        :option_group_name)

        # @!attribute [rw] option_group_name
        #   The name of the option group to be deleted.
        #
        #   <note markdown="1"> You cannot delete default option groups.
        #
        #    </note>
        #   @return [String]

      end

      # @api private
      class DescribeAccountAttributesMessage < Aws::EmptyStructure; end

      # @note When making an API call, pass DescribeCertificatesMessage
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
      class DescribeCertificatesMessage < Aws::Structure.new(
        :certificate_identifier,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] certificate_identifier
        #   The user-supplied certificate identifier. If this parameter is
        #   specified, information for only the identified certificate is
        #   returned. This parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeCertificates request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBClusterParameterGroupsMessage
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
      class DescribeDBClusterParameterGroupsMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of a specific DB cluster parameter group to return details
        #   for.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBClusterParameterGroups` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBClusterParametersMessage
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
      class DescribeDBClusterParametersMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name,
        :source,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of a specific DB cluster parameter group to return
        #   parameter details for.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] source
        #   A value that indicates to return only parameters for a specific
        #   source. Parameter sources can be `engine`, `service`, or `customer`.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBClusterParameters` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBClusterSnapshotAttributesMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_snapshot_identifier: "String", # required
      #       }
      class DescribeDBClusterSnapshotAttributesMessage < Aws::Structure.new(
        :db_cluster_snapshot_identifier)

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   The identifier for the DB cluster snapshot to describe the
        #   attributes for.
        #   @return [String]

      end

      class DescribeDBClusterSnapshotAttributesResult < Aws::Structure.new(
        :db_cluster_snapshot_attributes_result)

        # @!attribute [rw] db_cluster_snapshot_attributes_result
        #   Contains the results of a successful call to the
        #   DescribeDBClusterSnapshotAttributes API action.
        #
        #   Manual DB cluster snapshot attributes are used to authorize other
        #   AWS accounts to copy or restore a manual DB cluster snapshot. For
        #   more information, see the ModifyDBClusterSnapshotAttribute API
        #   action.
        #   @return [Types::DBClusterSnapshotAttributesResult]

      end

      # @note When making an API call, pass DescribeDBClusterSnapshotsMessage
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
      class DescribeDBClusterSnapshotsMessage < Aws::Structure.new(
        :db_cluster_identifier,
        :db_cluster_snapshot_identifier,
        :snapshot_type,
        :filters,
        :max_records,
        :marker,
        :include_shared,
        :include_public)

        # @!attribute [rw] db_cluster_identifier
        #   The ID of the DB cluster to retrieve the list of DB cluster
        #   snapshots for. This parameter cannot be used in conjunction with the
        #   `DBClusterSnapshotIdentifier` parameter. This parameter is not
        #   case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   A specific DB cluster snapshot identifier to describe. This
        #   parameter cannot be used in conjunction with the
        #   `DBClusterIdentifier` parameter. This value is stored as a lowercase
        #   string.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   * If this identifier is for an automated snapshot, the
        #     `SnapshotType` parameter must also be specified.
        #   @return [String]

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
        #   If you don\'t specify a `SnapshotType` value, then both automated
        #   and manual DB cluster snapshots are returned. You can include shared
        #   DB cluster snapshots with these results by setting the
        #   `IncludeShared` parameter to `true`. You can include public DB
        #   cluster snapshots with these results by setting the `IncludePublic`
        #   parameter to `true`.
        #
        #   The `IncludeShared` and `IncludePublic` parameters don\'t apply for
        #   `SnapshotType` values of `manual` or `automated`. The
        #   `IncludePublic` parameter doesn\'t apply when `SnapshotType` is set
        #   to `shared`. The `IncludeShared` parameter doesn\'t apply when
        #   `SnapshotType` is set to `public`.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBClusterSnapshots` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] include_shared
        #   Set this value to `true` to include shared manual DB cluster
        #   snapshots from other AWS accounts that this AWS account has been
        #   given permission to copy or restore, otherwise set this value to
        #   `false`. The default is `false`.
        #
        #   You can give an AWS account permission to restore a manual DB
        #   cluster snapshot from another AWS account by the
        #   ModifyDBClusterSnapshotAttribute API action.
        #   @return [Boolean]

        # @!attribute [rw] include_public
        #   Set this value to `true` to include manual DB cluster snapshots that
        #   are public and can be copied or restored by any AWS account,
        #   otherwise set this value to `false`. The default is `false`. The
        #   default is false.
        #
        #   You can share a manual DB cluster snapshot as public by using the
        #   ModifyDBClusterSnapshotAttribute API action.
        #   @return [Boolean]

      end

      # @note When making an API call, pass DescribeDBClustersMessage
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
      class DescribeDBClustersMessage < Aws::Structure.new(
        :db_cluster_identifier,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_cluster_identifier
        #   The user-supplied DB cluster identifier. If this parameter is
        #   specified, information from only the specific DB cluster is
        #   returned. This parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeDBClusters request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBEngineVersionsMessage
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
      #       }
      class DescribeDBEngineVersionsMessage < Aws::Structure.new(
        :engine,
        :engine_version,
        :db_parameter_group_family,
        :filters,
        :max_records,
        :marker,
        :default_only,
        :list_supported_character_sets)

        # @!attribute [rw] engine
        #   The database engine to return.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The database engine version to return.
        #
        #   Example: `5.1.49`
        #   @return [String]

        # @!attribute [rw] db_parameter_group_family
        #   The name of a specific DB parameter group family to return details
        #   for.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filters
        #   Not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] default_only
        #   Indicates that only the default version of the specified engine or
        #   engine and major version combination is returned.
        #   @return [Boolean]

        # @!attribute [rw] list_supported_character_sets
        #   If this parameter is specified, and if the requested engine supports
        #   the CharacterSetName parameter for CreateDBInstance, the response
        #   includes a list of supported character sets for each engine version.
        #   @return [Boolean]

      end

      # @note When making an API call, pass DescribeDBInstancesMessage
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
      class DescribeDBInstancesMessage < Aws::Structure.new(
        :db_instance_identifier,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_instance_identifier
        #   The user-supplied instance identifier. If this parameter is
        #   specified, information from only the specific DB instance is
        #   returned. This parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBInstances` request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

      end

      # This data type is used as a response element to DescribeDBLogFiles.
      class DescribeDBLogFilesDetails < Aws::Structure.new(
        :log_file_name,
        :last_written,
        :size)

        # @!attribute [rw] log_file_name
        #   The name of the log file for the specified DB instance.
        #   @return [String]

        # @!attribute [rw] last_written
        #   A POSIX timestamp when the last log entry was written.
        #   @return [Integer]

        # @!attribute [rw] size
        #   The size, in bytes, of the log file for the specified DB instance.
        #   @return [Integer]

      end

      # @note When making an API call, pass DescribeDBLogFilesMessage
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
      class DescribeDBLogFilesMessage < Aws::Structure.new(
        :db_instance_identifier,
        :filename_contains,
        :file_last_written,
        :file_size,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_instance_identifier
        #   The customer-assigned name of the DB instance that contains the log
        #   files you want to list.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filename_contains
        #   Filters the available log files for log file names that contain the
        #   specified string.
        #   @return [String]

        # @!attribute [rw] file_last_written
        #   Filters the available log files for files written since the
        #   specified date, in POSIX timestamp format with milliseconds.
        #   @return [Integer]

        # @!attribute [rw] file_size
        #   Filters the available log files for files larger than the specified
        #   size.
        #   @return [Integer]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

        # @!attribute [rw] max_records
        #   The maximum number of records to include in the response. If more
        #   records exist than the specified MaxRecords value, a pagination
        #   token called a marker is included in the response so that the
        #   remaining results can be retrieved.
        #   @return [Integer]

        # @!attribute [rw] marker
        #   The pagination token provided in the previous request. If this
        #   parameter is specified the response includes only records beyond the
        #   marker, up to MaxRecords.
        #   @return [String]

      end

      # The response from a call to DescribeDBLogFiles.
      class DescribeDBLogFilesResponse < Aws::Structure.new(
        :describe_db_log_files,
        :marker)

        # @!attribute [rw] describe_db_log_files
        #   The DB log files returned.
        #   @return [Array<Types::DescribeDBLogFilesDetails>]

        # @!attribute [rw] marker
        #   A pagination token that can be used in a subsequent
        #   DescribeDBLogFiles request.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBParameterGroupsMessage
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
      class DescribeDBParameterGroupsMessage < Aws::Structure.new(
        :db_parameter_group_name,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_parameter_group_name
        #   The name of a specific DB parameter group to return details for.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBParameterGroups` request. If this parameter is specified,
        #   the response includes only records beyond the marker, up to the
        #   value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBParametersMessage
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
      class DescribeDBParametersMessage < Aws::Structure.new(
        :db_parameter_group_name,
        :source,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_parameter_group_name
        #   The name of a specific DB parameter group to return details for.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] source
        #   The parameter types to return.
        #
        #   Default: All parameter types returned
        #
        #   Valid Values: `user | system | engine-default`
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBParameters` request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBSecurityGroupsMessage
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
      class DescribeDBSecurityGroupsMessage < Aws::Structure.new(
        :db_security_group_name,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_security_group_name
        #   The name of the DB security group to return details for.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBSecurityGroups` request. If this parameter is specified,
        #   the response includes only records beyond the marker, up to the
        #   value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeDBSnapshotAttributesMessage
      #   data as a hash:
      #
      #       {
      #         db_snapshot_identifier: "String", # required
      #       }
      class DescribeDBSnapshotAttributesMessage < Aws::Structure.new(
        :db_snapshot_identifier)

        # @!attribute [rw] db_snapshot_identifier
        #   The identifier for the DB snapshot to describe the attributes for.
        #   @return [String]

      end

      class DescribeDBSnapshotAttributesResult < Aws::Structure.new(
        :db_snapshot_attributes_result)

        # @!attribute [rw] db_snapshot_attributes_result
        #   Contains the results of a successful call to the
        #   DescribeDBSnapshotAttributes API action.
        #
        #   Manual DB snapshot attributes are used to authorize other AWS
        #   accounts to copy or restore a manual DB snapshot. For more
        #   information, see the ModifyDBSnapshotAttribute API action.
        #   @return [Types::DBSnapshotAttributesResult]

      end

      # @note When making an API call, pass DescribeDBSnapshotsMessage
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
      class DescribeDBSnapshotsMessage < Aws::Structure.new(
        :db_instance_identifier,
        :db_snapshot_identifier,
        :snapshot_type,
        :filters,
        :max_records,
        :marker,
        :include_shared,
        :include_public)

        # @!attribute [rw] db_instance_identifier
        #   The ID of the DB instance to retrieve the list of DB snapshots for.
        #   This parameter cannot be used in conjunction with
        #   `DBSnapshotIdentifier`. This parameter is not case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] db_snapshot_identifier
        #   A specific DB snapshot identifier to describe. This parameter cannot
        #   be used in conjunction with `DBInstanceIdentifier`. This value is
        #   stored as a lowercase string.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #
        #   * If this identifier is for an automated snapshot, the
        #     `SnapshotType` parameter must also be specified.
        #   @return [String]

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
        #   If you don\'t specify a `SnapshotType` value, then both automated
        #   and manual snapshots are returned. You can include shared snapshots
        #   with these results by setting the `IncludeShared` parameter to
        #   `true`. You can include public snapshots with these results by
        #   setting the `IncludePublic` parameter to `true`.
        #
        #   The `IncludeShared` and `IncludePublic` parameters don\'t apply for
        #   `SnapshotType` values of `manual` or `automated`. The
        #   `IncludePublic` parameter doesn\'t apply when `SnapshotType` is set
        #   to `shared`. The `IncludeShared` parameter doesn\'t apply when
        #   `SnapshotType` is set to `public`.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeDBSnapshots` request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] include_shared
        #   Set this value to `true` to include shared manual DB snapshots from
        #   other AWS accounts that this AWS account has been given permission
        #   to copy or restore, otherwise set this value to `false`. The default
        #   is `false`.
        #
        #   You can give an AWS account permission to restore a manual DB
        #   snapshot from another AWS account by using the
        #   ModifyDBSnapshotAttribute API action.
        #   @return [Boolean]

        # @!attribute [rw] include_public
        #   Set this value to `true` to include manual DB snapshots that are
        #   public and can be copied or restored by any AWS account, otherwise
        #   set this value to `false`. The default is `false`.
        #
        #   You can share a manual DB snapshot as public by using the
        #   ModifyDBSnapshotAttribute API.
        #   @return [Boolean]

      end

      # @note When making an API call, pass DescribeDBSubnetGroupsMessage
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
      class DescribeDBSubnetGroupsMessage < Aws::Structure.new(
        :db_subnet_group_name,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_subnet_group_name
        #   The name of the DB subnet group to return details for.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeDBSubnetGroups request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeEngineDefaultClusterParametersMessage
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
      class DescribeEngineDefaultClusterParametersMessage < Aws::Structure.new(
        :db_parameter_group_family,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_parameter_group_family
        #   The name of the DB cluster parameter group family to return engine
        #   parameter information for.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeEngineDefaultClusterParameters` request. If this parameter
        #   is specified, the response includes only records beyond the marker,
        #   up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeEngineDefaultClusterParametersResult < Aws::Structure.new(
        :engine_defaults)

        # @!attribute [rw] engine_defaults
        #   Contains the result of a successful invocation of the
        #   DescribeEngineDefaultParameters action.
        #   @return [Types::EngineDefaults]

      end

      # @note When making an API call, pass DescribeEngineDefaultParametersMessage
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
      class DescribeEngineDefaultParametersMessage < Aws::Structure.new(
        :db_parameter_group_family,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] db_parameter_group_family
        #   The name of the DB parameter group family.
        #   @return [String]

        # @!attribute [rw] filters
        #   Not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribeEngineDefaultParameters` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeEngineDefaultParametersResult < Aws::Structure.new(
        :engine_defaults)

        # @!attribute [rw] engine_defaults
        #   Contains the result of a successful invocation of the
        #   DescribeEngineDefaultParameters action.
        #   @return [Types::EngineDefaults]

      end

      # @note When making an API call, pass DescribeEventCategoriesMessage
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
      class DescribeEventCategoriesMessage < Aws::Structure.new(
        :source_type,
        :filters)

        # @!attribute [rw] source_type
        #   The type of source that will be generating the events.
        #
        #   Valid values: db-instance \| db-parameter-group \| db-security-group
        #   \| db-snapshot
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

      end

      # @note When making an API call, pass DescribeEventSubscriptionsMessage
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
      class DescribeEventSubscriptionsMessage < Aws::Structure.new(
        :subscription_name,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] subscription_name
        #   The name of the RDS event notification subscription you want to
        #   describe.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeOrderableDBInstanceOptions request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords` .
        #   @return [String]

      end

      # @note When making an API call, pass DescribeEventsMessage
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
      class DescribeEventsMessage < Aws::Structure.new(
        :source_identifier,
        :source_type,
        :start_time,
        :end_time,
        :duration,
        :event_categories,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] source_identifier
        #   The identifier of the event source for which events will be
        #   returned. If not specified, then all sources are included in the
        #   response.
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

        # @!attribute [rw] source_type
        #   The event source to retrieve events for. If no value is specified,
        #   all events are returned.
        #   @return [String]

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

        # @!attribute [rw] duration
        #   The number of minutes to retrieve events for.
        #
        #   Default: 60
        #   @return [Integer]

        # @!attribute [rw] event_categories
        #   A list of event categories that trigger notifications for a event
        #   notification subscription.
        #   @return [Array<String>]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous DescribeEvents
        #   request. If this parameter is specified, the response includes only
        #   records beyond the marker, up to the value specified by
        #   `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeOptionGroupOptionsMessage
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
      class DescribeOptionGroupOptionsMessage < Aws::Structure.new(
        :engine_name,
        :major_engine_version,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] engine_name
        #   A required parameter. Options available for the given engine name
        #   will be described.
        #   @return [String]

        # @!attribute [rw] major_engine_version
        #   If specified, filters the results to include only options for the
        #   specified major engine version.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeOptionGroupsMessage
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
      class DescribeOptionGroupsMessage < Aws::Structure.new(
        :option_group_name,
        :filters,
        :marker,
        :max_records,
        :engine_name,
        :major_engine_version)

        # @!attribute [rw] option_group_name
        #   The name of the option group to describe. Cannot be supplied
        #   together with EngineName or MajorEngineVersion.
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeOptionGroups request. If this parameter is specified, the
        #   response includes only records beyond the marker, up to the value
        #   specified by `MaxRecords`.
        #   @return [String]

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

        # @!attribute [rw] engine_name
        #   Filters the list of option groups to only include groups associated
        #   with a specific database engine.
        #   @return [String]

        # @!attribute [rw] major_engine_version
        #   Filters the list of option groups to only include groups associated
        #   with a specific database engine version. If specified, then
        #   EngineName must also be specified.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeOrderableDBInstanceOptionsMessage
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
      class DescribeOrderableDBInstanceOptionsMessage < Aws::Structure.new(
        :engine,
        :engine_version,
        :db_instance_class,
        :license_model,
        :vpc,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] engine
        #   The name of the engine to retrieve DB instance options for.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The engine version filter value. Specify this parameter to show only
        #   the available offerings matching the specified engine version.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The DB instance class filter value. Specify this parameter to show
        #   only the available offerings matching the specified DB instance
        #   class.
        #   @return [String]

        # @!attribute [rw] license_model
        #   The license model filter value. Specify this parameter to show only
        #   the available offerings matching the specified license model.
        #   @return [String]

        # @!attribute [rw] vpc
        #   The VPC filter value. Specify this parameter to show only the
        #   available VPC or non-VPC offerings.
        #   @return [Boolean]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeOrderableDBInstanceOptions request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords` .
        #   @return [String]

      end

      # @note When making an API call, pass DescribePendingMaintenanceActionsMessage
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
      class DescribePendingMaintenanceActionsMessage < Aws::Structure.new(
        :resource_identifier,
        :filters,
        :marker,
        :max_records)

        # @!attribute [rw] resource_identifier
        #   The ARN of a resource to return pending maintenance actions for.
        #   @return [String]

        # @!attribute [rw] filters
        #   A filter that specifies one or more resources to return pending
        #   maintenance actions for.
        #
        #   Supported filters:
        #
        #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
        #     Amazon Resource Names (ARNs). The results list will only include
        #     pending maintenance actions for the DB instances identified by
        #     these ARNs.
        #
        #   ^
        #   @return [Array<Types::Filter>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribePendingMaintenanceActions` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to a number of records specified by `MaxRecords`.
        #   @return [String]

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

      end

      # @note When making an API call, pass DescribeReservedDBInstancesMessage
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
      class DescribeReservedDBInstancesMessage < Aws::Structure.new(
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

        # @!attribute [rw] reserved_db_instance_id
        #   The reserved DB instance identifier filter value. Specify this
        #   parameter to show only the reservation that matches the specified
        #   reservation ID.
        #   @return [String]

        # @!attribute [rw] reserved_db_instances_offering_id
        #   The offering identifier filter value. Specify this parameter to show
        #   only purchased reservations matching the specified offering
        #   identifier.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The DB instance class filter value. Specify this parameter to show
        #   only those reservations matching the specified DB instances class.
        #   @return [String]

        # @!attribute [rw] duration
        #   The duration filter value, specified in years or seconds. Specify
        #   this parameter to show only reservations for this duration.
        #
        #   Valid Values: `1 | 3 | 31536000 | 94608000`
        #   @return [String]

        # @!attribute [rw] product_description
        #   The product description filter value. Specify this parameter to show
        #   only those reservations matching the specified product description.
        #   @return [String]

        # @!attribute [rw] offering_type
        #   The offering type filter value. Specify this parameter to show only
        #   the available offerings matching the specified offering type.
        #
        #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
        #   @return [String]

        # @!attribute [rw] multi_az
        #   The Multi-AZ filter value. Specify this parameter to show only those
        #   reservations matching the specified Multi-AZ parameter.
        #   @return [Boolean]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeReservedDBInstancesOfferingsMessage
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
      class DescribeReservedDBInstancesOfferingsMessage < Aws::Structure.new(
        :reserved_db_instances_offering_id,
        :db_instance_class,
        :duration,
        :product_description,
        :offering_type,
        :multi_az,
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] reserved_db_instances_offering_id
        #   The offering identifier filter value. Specify this parameter to show
        #   only the available offering that matches the specified reservation
        #   identifier.
        #
        #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The DB instance class filter value. Specify this parameter to show
        #   only the available offerings matching the specified DB instance
        #   class.
        #   @return [String]

        # @!attribute [rw] duration
        #   Duration filter value, specified in years or seconds. Specify this
        #   parameter to show only reservations for this duration.
        #
        #   Valid Values: `1 | 3 | 31536000 | 94608000`
        #   @return [String]

        # @!attribute [rw] product_description
        #   Product description filter value. Specify this parameter to show
        #   only the available offerings matching the specified product
        #   description.
        #   @return [String]

        # @!attribute [rw] offering_type
        #   The offering type filter value. Specify this parameter to show only
        #   the available offerings matching the specified offering type.
        #
        #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
        #   @return [String]

        # @!attribute [rw] multi_az
        #   The Multi-AZ filter value. Specify this parameter to show only the
        #   available offerings matching the specified Multi-AZ parameter.
        #   @return [Boolean]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # An Active Directory Domain membership record associated with the DB
      # instance.
      class DomainMembership < Aws::Structure.new(
        :domain,
        :status,
        :fqdn,
        :iam_role_name)

        # @!attribute [rw] domain
        #   The identifier of the Active Directory Domain.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the DB instance\'s Active Directory Domain membership,
        #   such as joined, pending-join, failed etc).
        #   @return [String]

        # @!attribute [rw] fqdn
        #   The fully qualified domain name of the Active Directory Domain.
        #   @return [String]

        # @!attribute [rw] iam_role_name
        #   The name of the IAM role to be used when making API calls to the
        #   Directory Service.
        #   @return [String]

      end

      # This data type is used as a response element to
      # DownloadDBLogFilePortion.
      class DownloadDBLogFilePortionDetails < Aws::Structure.new(
        :log_file_data,
        :marker,
        :additional_data_pending)

        # @!attribute [rw] log_file_data
        #   Entries from the specified log file.
        #   @return [String]

        # @!attribute [rw] marker
        #   A pagination token that can be used in a subsequent
        #   DownloadDBLogFilePortion request.
        #   @return [String]

        # @!attribute [rw] additional_data_pending
        #   Boolean value that if true, indicates there is more data to be
        #   downloaded.
        #   @return [Boolean]

      end

      # @note When making an API call, pass DownloadDBLogFilePortionMessage
      #   data as a hash:
      #
      #       {
      #         db_instance_identifier: "String", # required
      #         log_file_name: "String", # required
      #         marker: "String",
      #         number_of_lines: 1,
      #       }
      class DownloadDBLogFilePortionMessage < Aws::Structure.new(
        :db_instance_identifier,
        :log_file_name,
        :marker,
        :number_of_lines)

        # @!attribute [rw] db_instance_identifier
        #   The customer-assigned name of the DB instance that contains the log
        #   files you want to list.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] log_file_name
        #   The name of the log file to be downloaded.
        #   @return [String]

        # @!attribute [rw] marker
        #   The pagination token provided in the previous request or \"0\". If
        #   the Marker parameter is specified the response includes only records
        #   beyond the marker until the end of the file or up to NumberOfLines.
        #   @return [String]

        # @!attribute [rw] number_of_lines
        #   The number of lines to download. If the number of lines specified
        #   results in a file over 1 MB in size, the file will be truncated at 1
        #   MB in size.
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
        #   * If Marker is specified as \"0\", then the specified number of
        #     lines from the beginning of the log file are returned.
        #
        #   * You can download the log file in blocks of lines by specifying the
        #     size of the block using the NumberOfLines parameter, and by
        #     specifying a value of \"0\" for the Marker parameter in your first
        #     request. Include the Marker value returned in the response as the
        #     Marker value for the next request, continuing until the
        #     AdditionalDataPending response element returns false.
        #   @return [Integer]

      end

      # This data type is used as a response element in the following actions:
      #
      # * AuthorizeDBSecurityGroupIngress
      #
      # * DescribeDBSecurityGroups
      #
      # * RevokeDBSecurityGroupIngress
      class EC2SecurityGroup < Aws::Structure.new(
        :status,
        :ec2_security_group_name,
        :ec2_security_group_id,
        :ec2_security_group_owner_id)

        # @!attribute [rw] status
        #   Provides the status of the EC2 security group. Status can be
        #   \"authorizing\", \"authorized\", \"revoking\", and \"revoked\".
        #   @return [String]

        # @!attribute [rw] ec2_security_group_name
        #   Specifies the name of the EC2 security group.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_id
        #   Specifies the id of the EC2 security group.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_owner_id
        #   Specifies the AWS ID of the owner of the EC2 security group
        #   specified in the `EC2SecurityGroupName` field.
        #   @return [String]

      end

      # This data type is used as a response element in the following actions:
      #
      # * CreateDBInstance
      #
      # * DescribeDBInstances
      #
      # * DeleteDBInstance
      class Endpoint < Aws::Structure.new(
        :address,
        :port,
        :hosted_zone_id)

        # @!attribute [rw] address
        #   Specifies the DNS address of the DB instance.
        #   @return [String]

        # @!attribute [rw] port
        #   Specifies the port that the database engine is listening on.
        #   @return [Integer]

        # @!attribute [rw] hosted_zone_id
        #   Specifies the ID that Amazon Route 53 assigns when you create a
        #   hosted zone.
        #   @return [String]

      end

      # Contains the result of a successful invocation of the
      # DescribeEngineDefaultParameters action.
      class EngineDefaults < Aws::Structure.new(
        :db_parameter_group_family,
        :marker,
        :parameters)

        # @!attribute [rw] db_parameter_group_family
        #   Specifies the name of the DB parameter group family that the engine
        #   default parameters apply to.
        #   @return [String]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous EngineDefaults
        #   request. If this parameter is specified, the response includes only
        #   records beyond the marker, up to the value specified by `MaxRecords`
        #   .
        #   @return [String]

        # @!attribute [rw] parameters
        #   Contains a list of engine default parameters.
        #   @return [Array<Types::Parameter>]

      end

      # This data type is used as a response element in the DescribeEvents
      # action.
      class Event < Aws::Structure.new(
        :source_identifier,
        :source_type,
        :message,
        :event_categories,
        :date)

        # @!attribute [rw] source_identifier
        #   Provides the identifier for the source of the event.
        #   @return [String]

        # @!attribute [rw] source_type
        #   Specifies the source type for this event.
        #   @return [String]

        # @!attribute [rw] message
        #   Provides the text of this event.
        #   @return [String]

        # @!attribute [rw] event_categories
        #   Specifies the category for the event.
        #   @return [Array<String>]

        # @!attribute [rw] date
        #   Specifies the date and time of the event.
        #   @return [Time]

      end

      # Contains the results of a successful invocation of the
      # DescribeEventCategories action.
      class EventCategoriesMap < Aws::Structure.new(
        :source_type,
        :event_categories)

        # @!attribute [rw] source_type
        #   The source type that the returned categories belong to
        #   @return [String]

        # @!attribute [rw] event_categories
        #   The event categories for the specified source type
        #   @return [Array<String>]

      end

      # Data returned from the **DescribeEventCategories** action.
      class EventCategoriesMessage < Aws::Structure.new(
        :event_categories_map_list)

        # @!attribute [rw] event_categories_map_list
        #   A list of EventCategoriesMap data types.
        #   @return [Array<Types::EventCategoriesMap>]

      end

      # Contains the results of a successful invocation of the
      # DescribeEventSubscriptions action.
      class EventSubscription < Aws::Structure.new(
        :customer_aws_id,
        :cust_subscription_id,
        :sns_topic_arn,
        :status,
        :subscription_creation_time,
        :source_type,
        :source_ids_list,
        :event_categories_list,
        :enabled)

        # @!attribute [rw] customer_aws_id
        #   The AWS customer account associated with the RDS event notification
        #   subscription.
        #   @return [String]

        # @!attribute [rw] cust_subscription_id
        #   The RDS event notification subscription Id.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   The topic ARN of the RDS event notification subscription.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the RDS event notification subscription.
        #
        #   Constraints:
        #
        #   Can be one of the following: creating \| modifying \| deleting \|
        #   active \| no-permission \| topic-not-exist
        #
        #   The status \"no-permission\" indicates that RDS no longer has
        #   permission to post to the SNS topic. The status \"topic-not-exist\"
        #   indicates that the topic was deleted after the subscription was
        #   created.
        #   @return [String]

        # @!attribute [rw] subscription_creation_time
        #   The time the RDS event notification subscription was created.
        #   @return [String]

        # @!attribute [rw] source_type
        #   The source type for the RDS event notification subscription.
        #   @return [String]

        # @!attribute [rw] source_ids_list
        #   A list of source IDs for the RDS event notification subscription.
        #   @return [Array<String>]

        # @!attribute [rw] event_categories_list
        #   A list of event categories for the RDS event notification
        #   subscription.
        #   @return [Array<String>]

        # @!attribute [rw] enabled
        #   A Boolean value indicating if the subscription is enabled. True
        #   indicates the subscription is enabled.
        #   @return [Boolean]

      end

      # Data returned by the **DescribeEventSubscriptions** action.
      class EventSubscriptionsMessage < Aws::Structure.new(
        :marker,
        :event_subscriptions_list)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   DescribeOrderableDBInstanceOptions request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] event_subscriptions_list
        #   A list of EventSubscriptions data types.
        #   @return [Array<Types::EventSubscription>]

      end

      # Contains the result of a successful invocation of the DescribeEvents
      # action.
      class EventsMessage < Aws::Structure.new(
        :marker,
        :events)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous Events request.
        #   If this parameter is specified, the response includes only records
        #   beyond the marker, up to the value specified by `MaxRecords` .
        #   @return [String]

        # @!attribute [rw] events
        #   A list of Event instances.
        #   @return [Array<Types::Event>]

      end

      # @note When making an API call, pass FailoverDBClusterMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_identifier: "String",
      #       }
      class FailoverDBClusterMessage < Aws::Structure.new(
        :db_cluster_identifier)

        # @!attribute [rw] db_cluster_identifier
        #   A DB cluster identifier to force a failover for. This parameter is
        #   not case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

      end

      class FailoverDBClusterResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # This type is not currently supported.
      # @note When making an API call, pass Filter
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       }
      class Filter < Aws::Structure.new(
        :name,
        :values)

        # @!attribute [rw] name
        #   This parameter is not currently supported.
        #   @return [String]

        # @!attribute [rw] values
        #   This parameter is not currently supported.
        #   @return [Array<String>]

      end

      # This data type is used as a response element in the
      # DescribeDBSecurityGroups action.
      class IPRange < Aws::Structure.new(
        :status,
        :cidrip)

        # @!attribute [rw] status
        #   Specifies the status of the IP range. Status can be \"authorizing\",
        #   \"authorized\", \"revoking\", and \"revoked\".
        #   @return [String]

        # @!attribute [rw] cidrip
        #   Specifies the IP range.
        #   @return [String]

      end

      # @note When making an API call, pass ListTagsForResourceMessage
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
      class ListTagsForResourceMessage < Aws::Structure.new(
        :resource_name,
        :filters)

        # @!attribute [rw] resource_name
        #   The Amazon RDS resource with tags to be listed. This value is an
        #   Amazon Resource Name (ARN). For information about creating an ARN,
        #   see [ Constructing an RDS Amazon Resource Name (ARN)][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] filters
        #   This parameter is not currently supported.
        #   @return [Array<Types::Filter>]

      end

      # @note When making an API call, pass ModifyDBClusterMessage
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
      #       }
      class ModifyDBClusterMessage < Aws::Structure.new(
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
        :preferred_maintenance_window)

        # @!attribute [rw] db_cluster_identifier
        #   The DB cluster identifier for the cluster being modified. This
        #   parameter is not case-sensitive.
        #
        #   Constraints:
        #
        #   * Must be the identifier for an existing DB cluster.
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] new_db_cluster_identifier
        #   The new DB cluster identifier for the DB cluster when renaming a DB
        #   cluster. This value is stored as a lowercase string.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-cluster2`
        #   @return [String]

        # @!attribute [rw] apply_immediately
        #   A value that specifies whether the modifications in this request and
        #   any pending modifications are asynchronously applied as soon as
        #   possible, regardless of the `PreferredMaintenanceWindow` setting for
        #   the DB cluster. If this parameter is set to `false`, changes to the
        #   DB cluster are applied during the next maintenance window.
        #
        #   The `ApplyImmediately` parameter only affects the
        #   `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set
        #   the `ApplyImmediately` parameter value to false, then changes to the
        #   `NewDBClusterIdentifier` and `MasterUserPassword` values are applied
        #   during the next maintenance window. All other changes are applied
        #   immediately, regardless of the value of the `ApplyImmediately`
        #   parameter.
        #
        #   Default: `false`
        #   @return [Boolean]

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

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group to use for the DB
        #   cluster.
        #   @return [String]

        # @!attribute [rw] vpc_security_group_ids
        #   A lst of VPC security groups that the DB cluster will belong to.
        #   @return [Array<String>]

        # @!attribute [rw] port
        #   The port number on which the DB cluster accepts connections.
        #
        #   Constraints: Value must be `1150-65535`
        #
        #   Default: The same port as the original DB cluster.
        #   @return [Integer]

        # @!attribute [rw] master_user_password
        #   The new password for the master database user. This password can
        #   contain any printable ASCII character except \"/\", \"\"\", or
        #   \"@\".
        #
        #   Constraints: Must contain from 8 to 41 characters.
        #   @return [String]

        # @!attribute [rw] option_group_name
        #   A value that indicates that the DB cluster should be associated with
        #   the specified option group. Changing this parameter does not result
        #   in an outage except in the following case, and the change is applied
        #   during the next maintenance window unless the `ApplyImmediately`
        #   parameter is set to `true` for this request. If the parameter change
        #   results in an option group that enables OEM, this change can cause a
        #   brief (sub-second) period during which new connections are rejected
        #   but existing connections are not interrupted.
        #
        #   Permanent options cannot be removed from an option group. The option
        #   group cannot be removed from a DB cluster once it is associated with
        #   a DB cluster.
        #   @return [String]

        # @!attribute [rw] preferred_backup_window
        #   The daily time range during which automated backups are created if
        #   automated backups are enabled, using the `BackupRetentionPeriod`
        #   parameter.
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region. To see the time blocks available, see [
        #   Adjusting the Preferred Maintenance Window][1] in the *Amazon RDS
        #   User Guide.*
        #
        #   Constraints:
        #
        #   * Must be in the format `hh24:mi-hh24:mi`.
        #
        #   * Times should be in Universal Coordinated Time (UTC).
        #
        #   * Must not conflict with the preferred maintenance window.
        #
        #   * Must be at least 30 minutes.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

        # @!attribute [rw] preferred_maintenance_window
        #   The weekly time range during which system maintenance can occur, in
        #   Universal Coordinated Time (UTC).
        #
        #   Format: `ddd:hh24:mi-ddd:hh24:mi`
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region, occurring on a random day of the week. To see
        #   the time blocks available, see [ Adjusting the Preferred Maintenance
        #   Window][1] in the *Amazon RDS User Guide.*
        #
        #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
        #
        #   Constraints: Minimum 30-minute window.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

      end

      # @note When making an API call, pass ModifyDBClusterParameterGroupMessage
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
      #           },
      #         ],
      #       }
      class ModifyDBClusterParameterGroupMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name,
        :parameters)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group to modify.
        #   @return [String]

        # @!attribute [rw] parameters
        #   A list of parameters in the DB cluster parameter group to modify.
        #   @return [Array<Types::Parameter>]

      end

      class ModifyDBClusterResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # @note When making an API call, pass ModifyDBClusterSnapshotAttributeMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_snapshot_identifier: "String", # required
      #         attribute_name: "String", # required
      #         values_to_add: ["String"],
      #         values_to_remove: ["String"],
      #       }
      class ModifyDBClusterSnapshotAttributeMessage < Aws::Structure.new(
        :db_cluster_snapshot_identifier,
        :attribute_name,
        :values_to_add,
        :values_to_remove)

        # @!attribute [rw] db_cluster_snapshot_identifier
        #   The identifier for the DB cluster snapshot to modify the attributes
        #   for.
        #   @return [String]

        # @!attribute [rw] attribute_name
        #   The name of the DB cluster snapshot attribute to modify.
        #
        #   To manage authorization for other AWS accounts to copy or restore a
        #   manual DB cluster snapshot, set this value to `restore`.
        #   @return [String]

        # @!attribute [rw] values_to_add
        #   A list of DB cluster snapshot attributes to add to the attribute
        #   specified by `AttributeName`.
        #
        #   To authorize other AWS accounts to copy or restore a manual DB
        #   cluster snapshot, set this list to include one or more AWS account
        #   IDs, or `all` to make the manual DB cluster snapshot restorable by
        #   any AWS account. Do not add the `all` value for any manual DB
        #   cluster snapshots that contain private information that you don\'t
        #   want available to all AWS accounts.
        #   @return [Array<String>]

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

      end

      class ModifyDBClusterSnapshotAttributeResult < Aws::Structure.new(
        :db_cluster_snapshot_attributes_result)

        # @!attribute [rw] db_cluster_snapshot_attributes_result
        #   Contains the results of a successful call to the
        #   DescribeDBClusterSnapshotAttributes API action.
        #
        #   Manual DB cluster snapshot attributes are used to authorize other
        #   AWS accounts to copy or restore a manual DB cluster snapshot. For
        #   more information, see the ModifyDBClusterSnapshotAttribute API
        #   action.
        #   @return [Types::DBClusterSnapshotAttributesResult]

      end

      # @note When making an API call, pass ModifyDBInstanceMessage
      #   data as a hash:
      #
      #       {
      #         db_instance_identifier: "String", # required
      #         allocated_storage: 1,
      #         db_instance_class: "String",
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
      #       }
      class ModifyDBInstanceMessage < Aws::Structure.new(
        :db_instance_identifier,
        :allocated_storage,
        :db_instance_class,
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
        :promotion_tier)

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier. This value is stored as a lowercase
        #   string.
        #
        #   Constraints:
        #
        #   * Must be the identifier for an existing DB instance
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   The new storage capacity of the RDS instance. Changing this setting
        #   does not result in an outage and the change is applied during the
        #   next maintenance window unless `ApplyImmediately` is set to `true`
        #   for this request.
        #
        #   **MySQL**
        #
        #   Default: Uses existing setting
        #
        #   Valid Values: 5-6144
        #
        #   Constraints: Value supplied must be at least 10% greater than the
        #   current value. Values that are not at least 10% greater than the
        #   existing value are rounded up so that they are 10% greater than the
        #   current value.
        #
        #   Type: Integer
        #
        #   **MariaDB**
        #
        #   Default: Uses existing setting
        #
        #   Valid Values: 5-6144
        #
        #   Constraints: Value supplied must be at least 10% greater than the
        #   current value. Values that are not at least 10% greater than the
        #   existing value are rounded up so that they are 10% greater than the
        #   current value.
        #
        #   Type: Integer
        #
        #   **PostgreSQL**
        #
        #   Default: Uses existing setting
        #
        #   Valid Values: 5-6144
        #
        #   Constraints: Value supplied must be at least 10% greater than the
        #   current value. Values that are not at least 10% greater than the
        #   existing value are rounded up so that they are 10% greater than the
        #   current value.
        #
        #   Type: Integer
        #
        #   **Oracle**
        #
        #   Default: Uses existing setting
        #
        #   Valid Values: 10-6144
        #
        #   Constraints: Value supplied must be at least 10% greater than the
        #   current value. Values that are not at least 10% greater than the
        #   existing value are rounded up so that they are 10% greater than the
        #   current value.
        #
        #   **SQL Server**
        #
        #   Cannot be modified.
        #
        #   If you choose to migrate your DB instance from using standard
        #   storage to using Provisioned IOPS, or from using Provisioned IOPS to
        #   using standard storage, the process can take time. The duration of
        #   the migration depends on several factors such as database load,
        #   storage size, storage type (standard or Provisioned IOPS), amount of
        #   IOPS provisioned (if any), and the number of prior scale storage
        #   operations. Typical migration times are under 24 hours, but the
        #   process can take up to several days in some cases. During the
        #   migration, the DB instance will be available for use, but might
        #   experience performance degradation. While the migration takes place,
        #   nightly backups for the instance will be suspended. No other Amazon
        #   RDS operations can take place for the instance, including modifying
        #   the instance, rebooting the instance, deleting the instance,
        #   creating a Read Replica for the instance, and creating a DB snapshot
        #   of the instance.
        #   @return [Integer]

        # @!attribute [rw] db_instance_class
        #   The new compute and memory capacity of the DB instance. To determine
        #   the instance classes that are available for a particular DB engine,
        #   use the DescribeOrderableDBInstanceOptions action.
        #
        #   Passing a value for this setting causes an outage during the change
        #   and is applied during the next maintenance window, unless
        #   `ApplyImmediately` is specified as `true` for this request.
        #
        #   Default: Uses existing setting
        #
        #   Valid Values: `db.t1.micro | db.m1.small | db.m1.medium |
        #   db.m1.large | db.m1.xlarge | db.m2.xlarge | db.m2.2xlarge |
        #   db.m2.4xlarge | db.m3.medium | db.m3.large | db.m3.xlarge |
        #   db.m3.2xlarge | db.m4.large | db.m4.xlarge | db.m4.2xlarge |
        #   db.m4.4xlarge | db.m4.10xlarge | db.r3.large | db.r3.xlarge |
        #   db.r3.2xlarge | db.r3.4xlarge | db.r3.8xlarge | db.t2.micro |
        #   db.t2.small | db.t2.medium | db.t2.large`
        #   @return [String]

        # @!attribute [rw] db_security_groups
        #   A list of DB security groups to authorize on this DB instance.
        #   Changing this setting does not result in an outage and the change is
        #   asynchronously applied as soon as possible.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [Array<String>]

        # @!attribute [rw] vpc_security_group_ids
        #   A list of EC2 VPC security groups to authorize on this DB instance.
        #   This change is asynchronously applied as soon as possible.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [Array<String>]

        # @!attribute [rw] apply_immediately
        #   Specifies whether the modifications in this request and any pending
        #   modifications are asynchronously applied as soon as possible,
        #   regardless of the `PreferredMaintenanceWindow` setting for the DB
        #   instance.
        #
        #   If this parameter is set to `false`, changes to the DB instance are
        #   applied during the next maintenance window. Some parameter changes
        #   can cause an outage and will be applied on the next call to
        #   RebootDBInstance, or the next failure reboot. Review the table of
        #   parameters in [Modifying a DB Instance and Using the Apply
        #   Immediately Parameter][1] to see the impact that setting
        #   `ApplyImmediately` to `true` or `false` has for each modified
        #   parameter and to determine when the changes will be applied.
        #
        #   Default: `false`
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
        #   @return [Boolean]

        # @!attribute [rw] master_user_password
        #   The new password for the DB instance master user. Can be any
        #   printable ASCII character except \"/\", \"\"\", or \"@\".
        #
        #   Changing this parameter does not result in an outage and the change
        #   is asynchronously applied as soon as possible. Between the time of
        #   the request and the completion of the request, the
        #   `MasterUserPassword` element exists in the `PendingModifiedValues`
        #   element of the operation response.
        #
        #   Default: Uses existing setting
        #
        #   Constraints: Must be 8 to 41 alphanumeric characters (MySQL,
        #   MariaDB, and Amazon Aurora), 8 to 30 alphanumeric characters
        #   (Oracle), or 8 to 128 alphanumeric characters (SQL Server).
        #
        #   <note markdown="1"> Amazon RDS API actions never return the password, so this action
        #   provides a way to regain access to a primary instance user if the
        #   password is lost. This includes restoring privileges that might have
        #   been accidentally revoked.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DB parameter group to apply to the DB instance.
        #   Changing this setting does not result in an outage. The parameter
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

        # @!attribute [rw] preferred_backup_window
        #   The daily time range during which automated backups are created if
        #   automated backups are enabled, as determined by the
        #   `BackupRetentionPeriod` parameter. Changing this parameter does not
        #   result in an outage and the change is asynchronously applied as soon
        #   as possible.
        #
        #   Constraints:
        #
        #   * Must be in the format hh24:mi-hh24:mi
        #
        #   * Times should be in Universal Time Coordinated (UTC)
        #
        #   * Must not conflict with the preferred maintenance window
        #
        #   * Must be at least 30 minutes
        #   @return [String]

        # @!attribute [rw] preferred_maintenance_window
        #   The weekly time range (in UTC) during which system maintenance can
        #   occur, which might result in an outage. Changing this parameter does
        #   not result in an outage, except in the following situation, and the
        #   change is asynchronously applied as soon as possible. If there are
        #   pending actions that cause a reboot, and the maintenance window is
        #   changed to include the current time, then changing this parameter
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

        # @!attribute [rw] multi_az
        #   Specifies if the DB instance is a Multi-AZ deployment. Changing this
        #   parameter does not result in an outage and the change is applied
        #   during the next maintenance window unless the `ApplyImmediately`
        #   parameter is set to `true` for this request.
        #
        #   Constraints: Cannot be specified if the DB instance is a Read
        #   Replica. This parameter cannot be used with SQL Server DB instances.
        #   Multi-AZ for SQL Server DB instances is set using the Mirroring
        #   option in an option group associated with the DB instance.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   The version number of the database engine to upgrade to. Changing
        #   this parameter results in an outage and the change is applied during
        #   the next maintenance window unless the `ApplyImmediately` parameter
        #   is set to `true` for this request.
        #
        #   For major version upgrades, if a non-default DB parameter group is
        #   currently in use, a new DB parameter group in the DB parameter group
        #   family for the new engine version must be specified. The new DB
        #   parameter group can be the default for that DB parameter group
        #   family.
        #
        #   For a list of valid engine versions, see CreateDBInstance.
        #   @return [String]

        # @!attribute [rw] allow_major_version_upgrade
        #   Indicates that major version upgrades are allowed. Changing this
        #   parameter does not result in an outage and the change is
        #   asynchronously applied as soon as possible.
        #
        #   Constraints: This parameter must be set to true when specifying a
        #   value for the EngineVersion parameter that is a different major
        #   version than the DB instance\'s current version.
        #   @return [Boolean]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor version upgrades will be applied automatically
        #   to the DB instance during the maintenance window. Changing this
        #   parameter does not result in an outage except in the following case
        #   and the change is asynchronously applied as soon as possible. An
        #   outage will result if this parameter is set to `true` during the
        #   maintenance window, and a newer minor version is available, and RDS
        #   has enabled auto patching for that engine version.
        #   @return [Boolean]

        # @!attribute [rw] iops
        #   The new Provisioned IOPS (I/O operations per second) value for the
        #   RDS instance. Changing this setting does not result in an outage and
        #   the change is applied during the next maintenance window unless the
        #   `ApplyImmediately` parameter is set to `true` for this request.
        #
        #   Default: Uses existing setting
        #
        #   Constraints: Value supplied must be at least 10% greater than the
        #   current value. Values that are not at least 10% greater than the
        #   existing value are rounded up so that they are 10% greater than the
        #   current value. If you are migrating from Provisioned IOPS to
        #   standard storage, set this value to 0. The DB instance will require
        #   a reboot for the change in storage type to take effect.
        #
        #   **SQL Server**
        #
        #   Setting the IOPS value for the SQL Server database engine is not
        #   supported.
        #
        #   Type: Integer
        #
        #   If you choose to migrate your DB instance from using standard
        #   storage to using Provisioned IOPS, or from using Provisioned IOPS to
        #   using standard storage, the process can take time. The duration of
        #   the migration depends on several factors such as database load,
        #   storage size, storage type (standard or Provisioned IOPS), amount of
        #   IOPS provisioned (if any), and the number of prior scale storage
        #   operations. Typical migration times are under 24 hours, but the
        #   process can take up to several days in some cases. During the
        #   migration, the DB instance will be available for use, but might
        #   experience performance degradation. While the migration takes place,
        #   nightly backups for the instance will be suspended. No other Amazon
        #   RDS operations can take place for the instance, including modifying
        #   the instance, rebooting the instance, deleting the instance,
        #   creating a Read Replica for the instance, and creating a DB snapshot
        #   of the instance.
        #   @return [Integer]

        # @!attribute [rw] option_group_name
        #   Indicates that the DB instance should be associated with the
        #   specified option group. Changing this parameter does not result in
        #   an outage except in the following case and the change is applied
        #   during the next maintenance window unless the `ApplyImmediately`
        #   parameter is set to `true` for this request. If the parameter change
        #   results in an option group that enables OEM, this change can cause a
        #   brief (sub-second) period during which new connections are rejected
        #   but existing connections are not interrupted.
        #
        #   Permanent options, such as the TDE option for Oracle Advanced
        #   Security TDE, cannot be removed from an option group, and that
        #   option group cannot be removed from a DB instance once it is
        #   associated with a DB instance
        #   @return [String]

        # @!attribute [rw] new_db_instance_identifier
        #   The new DB instance identifier for the DB instance when renaming a
        #   DB instance. When you change the DB instance identifier, an instance
        #   reboot will occur immediately if you set `Apply Immediately` to
        #   true, or will occur during the next maintenance window if `Apply
        #   Immediately` to false. This value is stored as a lowercase string.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] storage_type
        #   Specifies the storage type to be associated with the DB instance.
        #
        #   Valid values: `standard | gp2 | io1`
        #
        #   If you specify `io1`, you must also include a value for the `Iops`
        #   parameter.
        #
        #   Default: `io1` if the `Iops` parameter is specified; otherwise
        #   `standard`
        #   @return [String]

        # @!attribute [rw] tde_credential_arn
        #   The ARN from the Key Store with which to associate the instance for
        #   TDE encryption.
        #   @return [String]

        # @!attribute [rw] tde_credential_password
        #   The password for the given ARN from the Key Store in order to access
        #   the device.
        #   @return [String]

        # @!attribute [rw] ca_certificate_identifier
        #   Indicates the certificate that needs to be associated with the
        #   instance.
        #   @return [String]

        # @!attribute [rw] domain
        #   Specify the Active Directory Domain to move the instance to.
        #
        #   The specified Active Directory Domain must be created prior to this
        #   operation. Currently only a SQL Server instance can be created in a
        #   Active Directory Domain.
        #   @return [String]

        # @!attribute [rw] copy_tags_to_snapshot
        #   True to copy all tags from the DB instance to snapshots of the DB
        #   instance; otherwise false. The default is false.
        #   @return [Boolean]

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

        # @!attribute [rw] monitoring_role_arn
        #   The ARN for the IAM role that permits RDS to send enhanced
        #   monitoring metrics to CloudWatch Logs. For example,
        #   `arn:aws:iam:123456789012:role/emaccess`. For information on
        #   creating a monitoring role, go to [To create an IAM role for Amazon
        #   RDS Enhanced Monitoring][1].
        #
        #   If `MonitoringInterval` is set to a value other than 0, then you
        #   must supply a `MonitoringRoleArn` value.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
        #   @return [String]

        # @!attribute [rw] domain_iam_role_name
        #   Specify the name of the IAM role to be used when making API calls to
        #   the Directory Service.
        #   @return [String]

        # @!attribute [rw] promotion_tier
        #   A value that specifies the order in which an Aurora Replica is
        #   promoted to the primary instance after a failure of the existing
        #   primary instance. For more information, see [ Fault Tolerance for an
        #   Aurora DB Cluster][1].
        #
        #   Default: 1
        #
        #   Valid Values: 0 - 15
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance
        #   @return [Integer]

      end

      class ModifyDBInstanceResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # @note When making an API call, pass ModifyDBParameterGroupMessage
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
      #           },
      #         ],
      #       }
      class ModifyDBParameterGroupMessage < Aws::Structure.new(
        :db_parameter_group_name,
        :parameters)

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DB parameter group.
        #
        #   Constraints:
        #
        #   * Must be the name of an existing DB parameter group
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

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

      end

      # @note When making an API call, pass ModifyDBSnapshotAttributeMessage
      #   data as a hash:
      #
      #       {
      #         db_snapshot_identifier: "String", # required
      #         attribute_name: "String", # required
      #         values_to_add: ["String"],
      #         values_to_remove: ["String"],
      #       }
      class ModifyDBSnapshotAttributeMessage < Aws::Structure.new(
        :db_snapshot_identifier,
        :attribute_name,
        :values_to_add,
        :values_to_remove)

        # @!attribute [rw] db_snapshot_identifier
        #   The identifier for the DB snapshot to modify the attributes for.
        #   @return [String]

        # @!attribute [rw] attribute_name
        #   The name of the DB snapshot attribute to modify.
        #
        #   To manage authorization for other AWS accounts to copy or restore a
        #   manual DB snapshot, set this value to `restore`.
        #   @return [String]

        # @!attribute [rw] values_to_add
        #   A list of DB snapshot attributes to add to the attribute specified
        #   by `AttributeName`.
        #
        #   To authorize other AWS accounts to copy or restore a manual
        #   snapshot, set this list to include one or more AWS account IDs, or
        #   `all` to make the manual DB snapshot restorable by any AWS account.
        #   Do not add the `all` value for any manual DB snapshots that contain
        #   private information that you don\'t want available to all AWS
        #   accounts.
        #   @return [Array<String>]

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

      end

      class ModifyDBSnapshotAttributeResult < Aws::Structure.new(
        :db_snapshot_attributes_result)

        # @!attribute [rw] db_snapshot_attributes_result
        #   Contains the results of a successful call to the
        #   DescribeDBSnapshotAttributes API action.
        #
        #   Manual DB snapshot attributes are used to authorize other AWS
        #   accounts to copy or restore a manual DB snapshot. For more
        #   information, see the ModifyDBSnapshotAttribute API action.
        #   @return [Types::DBSnapshotAttributesResult]

      end

      # @note When making an API call, pass ModifyDBSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         db_subnet_group_name: "String", # required
      #         db_subnet_group_description: "String",
      #         subnet_ids: ["String"], # required
      #       }
      class ModifyDBSubnetGroupMessage < Aws::Structure.new(
        :db_subnet_group_name,
        :db_subnet_group_description,
        :subnet_ids)

        # @!attribute [rw] db_subnet_group_name
        #   The name for the DB subnet group. This value is stored as a
        #   lowercase string.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] db_subnet_group_description
        #   The description for the DB subnet group.
        #   @return [String]

        # @!attribute [rw] subnet_ids
        #   The EC2 subnet IDs for the DB subnet group.
        #   @return [Array<String>]

      end

      class ModifyDBSubnetGroupResult < Aws::Structure.new(
        :db_subnet_group)

        # @!attribute [rw] db_subnet_group
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBSubnetGroup
        #
        #   * ModifyDBSubnetGroup
        #
        #   * DescribeDBSubnetGroups
        #
        #   * DeleteDBSubnetGroup
        #
        #   This data type is used as a response element in the
        #   DescribeDBSubnetGroups action.
        #   @return [Types::DBSubnetGroup]

      end

      # @note When making an API call, pass ModifyEventSubscriptionMessage
      #   data as a hash:
      #
      #       {
      #         subscription_name: "String", # required
      #         sns_topic_arn: "String",
      #         source_type: "String",
      #         event_categories: ["String"],
      #         enabled: false,
      #       }
      class ModifyEventSubscriptionMessage < Aws::Structure.new(
        :subscription_name,
        :sns_topic_arn,
        :source_type,
        :event_categories,
        :enabled)

        # @!attribute [rw] subscription_name
        #   The name of the RDS event notification subscription.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   The Amazon Resource Name (ARN) of the SNS topic created for event
        #   notification. The ARN is created by Amazon SNS when you create a
        #   topic and subscribe to it.
        #   @return [String]

        # @!attribute [rw] source_type
        #   The type of source that will be generating the events. For example,
        #   if you want to be notified of events generated by a DB instance, you
        #   would set this parameter to db-instance. if this value is not
        #   specified, all events are returned.
        #
        #   Valid values: db-instance \| db-parameter-group \| db-security-group
        #   \| db-snapshot
        #   @return [String]

        # @!attribute [rw] event_categories
        #   A list of event categories for a SourceType that you want to
        #   subscribe to. You can see a list of the categories for a given
        #   SourceType in the [Events][1] topic in the Amazon RDS User Guide or
        #   by using the **DescribeEventCategories** action.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
        #   @return [Array<String>]

        # @!attribute [rw] enabled
        #   A Boolean value; set to **true** to activate the subscription.
        #   @return [Boolean]

      end

      class ModifyEventSubscriptionResult < Aws::Structure.new(
        :event_subscription)

        # @!attribute [rw] event_subscription
        #   Contains the results of a successful invocation of the
        #   DescribeEventSubscriptions action.
        #   @return [Types::EventSubscription]

      end

      # @note When making an API call, pass ModifyOptionGroupMessage
      #   data as a hash:
      #
      #       {
      #         option_group_name: "String", # required
      #         options_to_include: [
      #           {
      #             option_name: "String", # required
      #             port: 1,
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
      class ModifyOptionGroupMessage < Aws::Structure.new(
        :option_group_name,
        :options_to_include,
        :options_to_remove,
        :apply_immediately)

        # @!attribute [rw] option_group_name
        #   The name of the option group to be modified.
        #
        #   Permanent options, such as the TDE option for Oracle Advanced
        #   Security TDE, cannot be removed from an option group, and that
        #   option group cannot be removed from a DB instance once it is
        #   associated with a DB instance
        #   @return [String]

        # @!attribute [rw] options_to_include
        #   Options in this list are added to the option group or, if already
        #   present, the specified configuration is used to update the existing
        #   configuration.
        #   @return [Array<Types::OptionConfiguration>]

        # @!attribute [rw] options_to_remove
        #   Options in this list are removed from the option group.
        #   @return [Array<String>]

        # @!attribute [rw] apply_immediately
        #   Indicates whether the changes should be applied immediately, or
        #   during the next maintenance window for each instance associated with
        #   the option group.
        #   @return [Boolean]

      end

      class ModifyOptionGroupResult < Aws::Structure.new(
        :option_group)

        # @!attribute [rw] option_group
        #   @return [Types::OptionGroup]

      end

      # Option details.
      class Option < Aws::Structure.new(
        :option_name,
        :option_description,
        :persistent,
        :permanent,
        :port,
        :option_settings,
        :db_security_group_memberships,
        :vpc_security_group_memberships)

        # @!attribute [rw] option_name
        #   The name of the option.
        #   @return [String]

        # @!attribute [rw] option_description
        #   The description of the option.
        #   @return [String]

        # @!attribute [rw] persistent
        #   Indicate if this option is persistent.
        #   @return [Boolean]

        # @!attribute [rw] permanent
        #   Indicate if this option is permanent.
        #   @return [Boolean]

        # @!attribute [rw] port
        #   If required, the port configured for this option to use.
        #   @return [Integer]

        # @!attribute [rw] option_settings
        #   The option settings for this option.
        #   @return [Array<Types::OptionSetting>]

        # @!attribute [rw] db_security_group_memberships
        #   If the option requires access to a port, then this DB security group
        #   allows access to the port.
        #   @return [Array<Types::DBSecurityGroupMembership>]

        # @!attribute [rw] vpc_security_group_memberships
        #   If the option requires access to a port, then this VPC security
        #   group allows access to the port.
        #   @return [Array<Types::VpcSecurityGroupMembership>]

      end

      # A list of all available options
      # @note When making an API call, pass OptionConfiguration
      #   data as a hash:
      #
      #       {
      #         option_name: "String", # required
      #         port: 1,
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
      class OptionConfiguration < Aws::Structure.new(
        :option_name,
        :port,
        :db_security_group_memberships,
        :vpc_security_group_memberships,
        :option_settings)

        # @!attribute [rw] option_name
        #   The configuration of options to include in a group.
        #   @return [String]

        # @!attribute [rw] port
        #   The optional port for the option.
        #   @return [Integer]

        # @!attribute [rw] db_security_group_memberships
        #   A list of DBSecurityGroupMemebrship name strings used for this
        #   option.
        #   @return [Array<String>]

        # @!attribute [rw] vpc_security_group_memberships
        #   A list of VpcSecurityGroupMemebrship name strings used for this
        #   option.
        #   @return [Array<String>]

        # @!attribute [rw] option_settings
        #   The option settings to include in an option group.
        #   @return [Array<Types::OptionSetting>]

      end

      class OptionGroup < Aws::Structure.new(
        :option_group_name,
        :option_group_description,
        :engine_name,
        :major_engine_version,
        :options,
        :allows_vpc_and_non_vpc_instance_memberships,
        :vpc_id)

        # @!attribute [rw] option_group_name
        #   Specifies the name of the option group.
        #   @return [String]

        # @!attribute [rw] option_group_description
        #   Provides a description of the option group.
        #   @return [String]

        # @!attribute [rw] engine_name
        #   Indicates the name of the engine that this option group can be
        #   applied to.
        #   @return [String]

        # @!attribute [rw] major_engine_version
        #   Indicates the major engine version associated with this option
        #   group.
        #   @return [String]

        # @!attribute [rw] options
        #   Indicates what options are available in the option group.
        #   @return [Array<Types::Option>]

        # @!attribute [rw] allows_vpc_and_non_vpc_instance_memberships
        #   Indicates whether this option group can be applied to both VPC and
        #   non-VPC instances. The value `true` indicates the option group can
        #   be applied to both VPC and non-VPC instances.
        #   @return [Boolean]

        # @!attribute [rw] vpc_id
        #   If **AllowsVpcAndNonVpcInstanceMemberships** is `false`, this field
        #   is blank. If **AllowsVpcAndNonVpcInstanceMemberships** is `true` and
        #   this field is blank, then this option group can be applied to both
        #   VPC and non-VPC instances. If this field contains a value, then this
        #   option group can only be applied to instances that are in the VPC
        #   indicated by this field.
        #   @return [String]

      end

      # Provides information on the option groups the DB instance is a member
      # of.
      class OptionGroupMembership < Aws::Structure.new(
        :option_group_name,
        :status)

        # @!attribute [rw] option_group_name
        #   The name of the option group that the instance belongs to.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the DB instance\'s option group membership. Valid
        #   values are: `in-sync`, `pending-apply`, `pending-removal`,
        #   `pending-maintenance-apply`, `pending-maintenance-removal`,
        #   `applying`, `removing`, and `failed`.
        #   @return [String]

      end

      # Available option.
      class OptionGroupOption < Aws::Structure.new(
        :name,
        :description,
        :engine_name,
        :major_engine_version,
        :minimum_required_minor_engine_version,
        :port_required,
        :default_port,
        :options_depended_on,
        :persistent,
        :permanent,
        :option_group_option_settings)

        # @!attribute [rw] name
        #   The name of the option.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the option.
        #   @return [String]

        # @!attribute [rw] engine_name
        #   The name of the engine that this option can be applied to.
        #   @return [String]

        # @!attribute [rw] major_engine_version
        #   Indicates the major engine version that the option is available for.
        #   @return [String]

        # @!attribute [rw] minimum_required_minor_engine_version
        #   The minimum required engine version for the option to be applied.
        #   @return [String]

        # @!attribute [rw] port_required
        #   Specifies whether the option requires a port.
        #   @return [Boolean]

        # @!attribute [rw] default_port
        #   If the option requires a port, specifies the default port for the
        #   option.
        #   @return [Integer]

        # @!attribute [rw] options_depended_on
        #   List of all options that are prerequisites for this option.
        #   @return [Array<String>]

        # @!attribute [rw] persistent
        #   A persistent option cannot be removed from the option group once the
        #   option group is used, but this option can be removed from the db
        #   instance while modifying the related data and assigning another
        #   option group without this option.
        #   @return [Boolean]

        # @!attribute [rw] permanent
        #   A permanent option cannot be removed from the option group once the
        #   option group is used, and it cannot be removed from the db instance
        #   after assigning an option group with this permanent option.
        #   @return [Boolean]

        # @!attribute [rw] option_group_option_settings
        #   Specifies the option settings that are available (and the default
        #   value) for each option in an option group.
        #   @return [Array<Types::OptionGroupOptionSetting>]

      end

      # Option group option settings are used to display settings available
      # for each option with their default values and other information. These
      # values are used with the DescribeOptionGroupOptions action.
      class OptionGroupOptionSetting < Aws::Structure.new(
        :setting_name,
        :setting_description,
        :default_value,
        :apply_type,
        :allowed_values,
        :is_modifiable)

        # @!attribute [rw] setting_name
        #   The name of the option group option.
        #   @return [String]

        # @!attribute [rw] setting_description
        #   The description of the option group option.
        #   @return [String]

        # @!attribute [rw] default_value
        #   The default value for the option group option.
        #   @return [String]

        # @!attribute [rw] apply_type
        #   The DB engine specific parameter type for the option group option.
        #   @return [String]

        # @!attribute [rw] allowed_values
        #   Indicates the acceptable values for the option group option.
        #   @return [String]

        # @!attribute [rw] is_modifiable
        #   Boolean value where true indicates that this option group option can
        #   be changed from the default value.
        #   @return [Boolean]

      end

      class OptionGroupOptionsMessage < Aws::Structure.new(
        :option_group_options,
        :marker)

        # @!attribute [rw] option_group_options
        #   List of available option group options.
        #   @return [Array<Types::OptionGroupOption>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # List of option groups.
      class OptionGroups < Aws::Structure.new(
        :option_groups_list,
        :marker)

        # @!attribute [rw] option_groups_list
        #   List of option groups.
        #   @return [Array<Types::OptionGroup>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # Option settings are the actual settings being applied or configured
      # for that option. It is used when you modify an option group or
      # describe option groups. For example, the NATIVE\_NETWORK\_ENCRYPTION
      # option has a setting called SQLNET.ENCRYPTION\_SERVER that can have
      # several different values.
      # @note When making an API call, pass OptionSetting
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
      class OptionSetting < Aws::Structure.new(
        :name,
        :value,
        :default_value,
        :description,
        :apply_type,
        :data_type,
        :allowed_values,
        :is_modifiable,
        :is_collection)

        # @!attribute [rw] name
        #   The name of the option that has settings that you can set.
        #   @return [String]

        # @!attribute [rw] value
        #   The current value of the option setting.
        #   @return [String]

        # @!attribute [rw] default_value
        #   The default value of the option setting.
        #   @return [String]

        # @!attribute [rw] description
        #   The description of the option setting.
        #   @return [String]

        # @!attribute [rw] apply_type
        #   The DB engine specific parameter type.
        #   @return [String]

        # @!attribute [rw] data_type
        #   The data type of the option setting.
        #   @return [String]

        # @!attribute [rw] allowed_values
        #   The allowed values of the option setting.
        #   @return [String]

        # @!attribute [rw] is_modifiable
        #   A Boolean value that, when true, indicates the option setting can be
        #   modified from the default.
        #   @return [Boolean]

        # @!attribute [rw] is_collection
        #   Indicates if the option setting is part of a collection.
        #   @return [Boolean]

      end

      # Contains a list of available options for a DB instance
      #
      # This data type is used as a response element in the
      # DescribeOrderableDBInstanceOptions action.
      class OrderableDBInstanceOption < Aws::Structure.new(
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
        :supports_enhanced_monitoring)

        # @!attribute [rw] engine
        #   The engine type of the orderable DB instance.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The engine version of the orderable DB instance.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The DB instance class for the orderable DB instance.
        #   @return [String]

        # @!attribute [rw] license_model
        #   The license model for the orderable DB instance.
        #   @return [String]

        # @!attribute [rw] availability_zones
        #   A list of Availability Zones for the orderable DB instance.
        #   @return [Array<Types::AvailabilityZone>]

        # @!attribute [rw] multi_az_capable
        #   Indicates whether this orderable DB instance is multi-AZ capable.
        #   @return [Boolean]

        # @!attribute [rw] read_replica_capable
        #   Indicates whether this orderable DB instance can have a Read
        #   Replica.
        #   @return [Boolean]

        # @!attribute [rw] vpc
        #   Indicates whether this is a VPC orderable DB instance.
        #   @return [Boolean]

        # @!attribute [rw] supports_storage_encryption
        #   Indicates whether this orderable DB instance supports encrypted
        #   storage.
        #   @return [Boolean]

        # @!attribute [rw] storage_type
        #   Indicates the storage type for this orderable DB instance.
        #   @return [String]

        # @!attribute [rw] supports_iops
        #   Indicates whether this orderable DB instance supports provisioned
        #   IOPS.
        #   @return [Boolean]

        # @!attribute [rw] supports_enhanced_monitoring
        #   Indicates whether the DB instance supports enhanced monitoring at
        #   intervals from 1 to 60 seconds.
        #   @return [Boolean]

      end

      # Contains the result of a successful invocation of the
      # DescribeOrderableDBInstanceOptions action.
      class OrderableDBInstanceOptionsMessage < Aws::Structure.new(
        :orderable_db_instance_options,
        :marker)

        # @!attribute [rw] orderable_db_instance_options
        #   An OrderableDBInstanceOption structure containing information about
        #   orderable options for the DB instance.
        #   @return [Array<Types::OrderableDBInstanceOption>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   OrderableDBInstanceOptions request. If this parameter is specified,
        #   the response includes only records beyond the marker, up to the
        #   value specified by `MaxRecords` .
        #   @return [String]

      end

      # This data type is used as a request parameter in the
      # ModifyDBParameterGroup and ResetDBParameterGroup actions.
      #
      # This data type is used as a response element in the
      # DescribeEngineDefaultParameters and DescribeDBParameters actions.
      # @note When making an API call, pass Parameter
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
      #       }
      class Parameter < Aws::Structure.new(
        :parameter_name,
        :parameter_value,
        :description,
        :source,
        :apply_type,
        :data_type,
        :allowed_values,
        :is_modifiable,
        :minimum_engine_version,
        :apply_method)

        # @!attribute [rw] parameter_name
        #   Specifies the name of the parameter.
        #   @return [String]

        # @!attribute [rw] parameter_value
        #   Specifies the value of the parameter.
        #   @return [String]

        # @!attribute [rw] description
        #   Provides a description of the parameter.
        #   @return [String]

        # @!attribute [rw] source
        #   Indicates the source of the parameter value.
        #   @return [String]

        # @!attribute [rw] apply_type
        #   Specifies the engine specific parameters type.
        #   @return [String]

        # @!attribute [rw] data_type
        #   Specifies the valid data type for the parameter.
        #   @return [String]

        # @!attribute [rw] allowed_values
        #   Specifies the valid range of values for the parameter.
        #   @return [String]

        # @!attribute [rw] is_modifiable
        #   Indicates whether (`true`) or not (`false`) the parameter can be
        #   modified. Some parameters have security or operational implications
        #   that prevent them from being changed.
        #   @return [Boolean]

        # @!attribute [rw] minimum_engine_version
        #   The earliest engine version to which the parameter can apply.
        #   @return [String]

        # @!attribute [rw] apply_method
        #   Indicates when to apply parameter updates.
        #   @return [String]

      end

      # Provides information about a pending maintenance action for a
      # resource.
      class PendingMaintenanceAction < Aws::Structure.new(
        :action,
        :auto_applied_after_date,
        :forced_apply_date,
        :opt_in_status,
        :current_apply_date,
        :description)

        # @!attribute [rw] action
        #   The type of pending maintenance action that is available for the
        #   resource.
        #   @return [String]

        # @!attribute [rw] auto_applied_after_date
        #   The date of the maintenance window when the action will be applied.
        #   The maintenance action will be applied to the resource during its
        #   first maintenance window after this date. If this date is specified,
        #   any `next-maintenance` opt-in requests are ignored.
        #   @return [Time]

        # @!attribute [rw] forced_apply_date
        #   The date when the maintenance action will be automatically applied.
        #   The maintenance action will be applied to the resource on this date
        #   regardless of the maintenance window for the resource. If this date
        #   is specified, any `immediate` opt-in requests are ignored.
        #   @return [Time]

        # @!attribute [rw] opt_in_status
        #   Indicates the type of opt-in request that has been received for the
        #   resource.
        #   @return [String]

        # @!attribute [rw] current_apply_date
        #   The effective date when the pending maintenance action will be
        #   applied to the resource. This date takes into account opt-in
        #   requests received from the ApplyPendingMaintenanceAction API, the
        #   `AutoAppliedAfterDate`, and the `ForcedApplyDate`. This value is
        #   blank if an opt-in request has not been received and nothing has
        #   been specified as `AutoAppliedAfterDate` or `ForcedApplyDate`.
        #   @return [Time]

        # @!attribute [rw] description
        #   A description providing more detail about the maintenance action.
        #   @return [String]

      end

      # Data returned from the **DescribePendingMaintenanceActions** action.
      class PendingMaintenanceActionsMessage < Aws::Structure.new(
        :pending_maintenance_actions,
        :marker)

        # @!attribute [rw] pending_maintenance_actions
        #   A list of the pending maintenance actions for the resource.
        #   @return [Array<Types::ResourcePendingMaintenanceActions>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous
        #   `DescribePendingMaintenanceActions` request. If this parameter is
        #   specified, the response includes only records beyond the marker, up
        #   to a number of records specified by `MaxRecords`.
        #   @return [String]

      end

      # This data type is used as a response element in the ModifyDBInstance
      # action.
      class PendingModifiedValues < Aws::Structure.new(
        :db_instance_class,
        :allocated_storage,
        :master_user_password,
        :port,
        :backup_retention_period,
        :multi_az,
        :engine_version,
        :iops,
        :db_instance_identifier,
        :storage_type,
        :ca_certificate_identifier)

        # @!attribute [rw] db_instance_class
        #   Contains the new `DBInstanceClass` for the DB instance that will be
        #   applied or is in progress.
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   Contains the new `AllocatedStorage` size for the DB instance that
        #   will be applied or is in progress.
        #   @return [Integer]

        # @!attribute [rw] master_user_password
        #   Contains the pending or in-progress change of the master credentials
        #   for the DB instance.
        #   @return [String]

        # @!attribute [rw] port
        #   Specifies the pending port for the DB instance.
        #   @return [Integer]

        # @!attribute [rw] backup_retention_period
        #   Specifies the pending number of days for which automated backups are
        #   retained.
        #   @return [Integer]

        # @!attribute [rw] multi_az
        #   Indicates that the Single-AZ DB instance is to change to a Multi-AZ
        #   deployment.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   Indicates the database engine version.
        #   @return [String]

        # @!attribute [rw] iops
        #   Specifies the new Provisioned IOPS value for the DB instance that
        #   will be applied or is being applied.
        #   @return [Integer]

        # @!attribute [rw] db_instance_identifier
        #   Contains the new `DBInstanceIdentifier` for the DB instance that
        #   will be applied or is in progress.
        #   @return [String]

        # @!attribute [rw] storage_type
        #   Specifies the storage type to be associated with the DB instance.
        #   @return [String]

        # @!attribute [rw] ca_certificate_identifier
        #   Specifies the identifier of the CA certificate for the DB instance.
        #   @return [String]

      end

      # @note When making an API call, pass PromoteReadReplicaDBClusterMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_identifier: "String", # required
      #       }
      class PromoteReadReplicaDBClusterMessage < Aws::Structure.new(
        :db_cluster_identifier)

        # @!attribute [rw] db_cluster_identifier
        #   The identifier of the DB cluster Read Replica to promote. This
        #   parameter is not case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #
        #   Example: `my-cluster-replica1`
        #   @return [String]

      end

      class PromoteReadReplicaDBClusterResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # @note When making an API call, pass PromoteReadReplicaMessage
      #   data as a hash:
      #
      #       {
      #         db_instance_identifier: "String", # required
      #         backup_retention_period: 1,
      #         preferred_backup_window: "String",
      #       }
      class PromoteReadReplicaMessage < Aws::Structure.new(
        :db_instance_identifier,
        :backup_retention_period,
        :preferred_backup_window)

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier. This value is stored as a lowercase
        #   string.
        #
        #   Constraints:
        #
        #   * Must be the identifier for an existing Read Replica DB instance
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `mydbinstance`
        #   @return [String]

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

        # @!attribute [rw] preferred_backup_window
        #   The daily time range during which automated backups are created if
        #   automated backups are enabled, using the `BackupRetentionPeriod`
        #   parameter.
        #
        #   Default: A 30-minute window selected at random from an 8-hour block
        #   of time per region. To see the time blocks available, see [
        #   Adjusting the Preferred Maintenance Window][1] in the *Amazon RDS
        #   User Guide.*
        #
        #   Constraints:
        #
        #   * Must be in the format `hh24:mi-hh24:mi`.
        #
        #   * Times should be in Universal Coordinated Time (UTC).
        #
        #   * Must not conflict with the preferred maintenance window.
        #
        #   * Must be at least 30 minutes.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
        #   @return [String]

      end

      class PromoteReadReplicaResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # @note When making an API call, pass PurchaseReservedDBInstancesOfferingMessage
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
      class PurchaseReservedDBInstancesOfferingMessage < Aws::Structure.new(
        :reserved_db_instances_offering_id,
        :reserved_db_instance_id,
        :db_instance_count,
        :tags)

        # @!attribute [rw] reserved_db_instances_offering_id
        #   The ID of the Reserved DB instance offering to purchase.
        #
        #   Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706
        #   @return [String]

        # @!attribute [rw] reserved_db_instance_id
        #   Customer-specified identifier to track this reservation.
        #
        #   Example: myreservationID
        #   @return [String]

        # @!attribute [rw] db_instance_count
        #   The number of instances to reserve.
        #
        #   Default: `1`
        #   @return [Integer]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      class PurchaseReservedDBInstancesOfferingResult < Aws::Structure.new(
        :reserved_db_instance)

        # @!attribute [rw] reserved_db_instance
        #   This data type is used as a response element in the
        #   DescribeReservedDBInstances and PurchaseReservedDBInstancesOffering
        #   actions.
        #   @return [Types::ReservedDBInstance]

      end

      # @note When making an API call, pass RebootDBInstanceMessage
      #   data as a hash:
      #
      #       {
      #         db_instance_identifier: "String", # required
      #         force_failover: false,
      #       }
      class RebootDBInstanceMessage < Aws::Structure.new(
        :db_instance_identifier,
        :force_failover)

        # @!attribute [rw] db_instance_identifier
        #   The DB instance identifier. This parameter is stored as a lowercase
        #   string.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] force_failover
        #   When `true`, the reboot will be conducted through a MultiAZ
        #   failover.
        #
        #   Constraint: You cannot specify `true` if the instance is not
        #   configured for MultiAZ.
        #   @return [Boolean]

      end

      class RebootDBInstanceResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # This data type is used as a response element in the
      # DescribeReservedDBInstances and DescribeReservedDBInstancesOfferings
      # actions.
      class RecurringCharge < Aws::Structure.new(
        :recurring_charge_amount,
        :recurring_charge_frequency)

        # @!attribute [rw] recurring_charge_amount
        #   The amount of the recurring charge.
        #   @return [Float]

        # @!attribute [rw] recurring_charge_frequency
        #   The frequency of the recurring charge.
        #   @return [String]

      end

      # @note When making an API call, pass RemoveSourceIdentifierFromSubscriptionMessage
      #   data as a hash:
      #
      #       {
      #         subscription_name: "String", # required
      #         source_identifier: "String", # required
      #       }
      class RemoveSourceIdentifierFromSubscriptionMessage < Aws::Structure.new(
        :subscription_name,
        :source_identifier)

        # @!attribute [rw] subscription_name
        #   The name of the RDS event notification subscription you want to
        #   remove a source identifier from.
        #   @return [String]

        # @!attribute [rw] source_identifier
        #   The source identifier to be removed from the subscription, such as
        #   the **DB instance identifier** for a DB instance or the name of a
        #   security group.
        #   @return [String]

      end

      class RemoveSourceIdentifierFromSubscriptionResult < Aws::Structure.new(
        :event_subscription)

        # @!attribute [rw] event_subscription
        #   Contains the results of a successful invocation of the
        #   DescribeEventSubscriptions action.
        #   @return [Types::EventSubscription]

      end

      # @note When making an API call, pass RemoveTagsFromResourceMessage
      #   data as a hash:
      #
      #       {
      #         resource_name: "String", # required
      #         tag_keys: ["String"], # required
      #       }
      class RemoveTagsFromResourceMessage < Aws::Structure.new(
        :resource_name,
        :tag_keys)

        # @!attribute [rw] resource_name
        #   The Amazon RDS resource the tags will be removed from. This value is
        #   an Amazon Resource Name (ARN). For information about creating an
        #   ARN, see [ Constructing an RDS Amazon Resource Name (ARN)][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.ARN
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   The tag key (name) of the tag to be removed.
        #   @return [Array<String>]

      end

      # This data type is used as a response element in the
      # DescribeReservedDBInstances and PurchaseReservedDBInstancesOffering
      # actions.
      class ReservedDBInstance < Aws::Structure.new(
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
        :recurring_charges)

        # @!attribute [rw] reserved_db_instance_id
        #   The unique identifier for the reservation.
        #   @return [String]

        # @!attribute [rw] reserved_db_instances_offering_id
        #   The offering identifier.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The DB instance class for the reserved DB instance.
        #   @return [String]

        # @!attribute [rw] start_time
        #   The time the reservation started.
        #   @return [Time]

        # @!attribute [rw] duration
        #   The duration of the reservation in seconds.
        #   @return [Integer]

        # @!attribute [rw] fixed_price
        #   The fixed price charged for this reserved DB instance.
        #   @return [Float]

        # @!attribute [rw] usage_price
        #   The hourly price charged for this reserved DB instance.
        #   @return [Float]

        # @!attribute [rw] currency_code
        #   The currency code for the reserved DB instance.
        #   @return [String]

        # @!attribute [rw] db_instance_count
        #   The number of reserved DB instances.
        #   @return [Integer]

        # @!attribute [rw] product_description
        #   The description of the reserved DB instance.
        #   @return [String]

        # @!attribute [rw] offering_type
        #   The offering type of this reserved DB instance.
        #   @return [String]

        # @!attribute [rw] multi_az
        #   Indicates if the reservation applies to Multi-AZ deployments.
        #   @return [Boolean]

        # @!attribute [rw] state
        #   The state of the reserved DB instance.
        #   @return [String]

        # @!attribute [rw] recurring_charges
        #   The recurring price charged to run this reserved DB instance.
        #   @return [Array<Types::RecurringCharge>]

      end

      # Contains the result of a successful invocation of the
      # DescribeReservedDBInstances action.
      class ReservedDBInstanceMessage < Aws::Structure.new(
        :marker,
        :reserved_db_instances)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] reserved_db_instances
        #   A list of reserved DB instances.
        #   @return [Array<Types::ReservedDBInstance>]

      end

      # This data type is used as a response element in the
      # DescribeReservedDBInstancesOfferings action.
      class ReservedDBInstancesOffering < Aws::Structure.new(
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

        # @!attribute [rw] reserved_db_instances_offering_id
        #   The offering identifier.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The DB instance class for the reserved DB instance.
        #   @return [String]

        # @!attribute [rw] duration
        #   The duration of the offering in seconds.
        #   @return [Integer]

        # @!attribute [rw] fixed_price
        #   The fixed price charged for this offering.
        #   @return [Float]

        # @!attribute [rw] usage_price
        #   The hourly price charged for this offering.
        #   @return [Float]

        # @!attribute [rw] currency_code
        #   The currency code for the reserved DB instance offering.
        #   @return [String]

        # @!attribute [rw] product_description
        #   The database engine used by the offering.
        #   @return [String]

        # @!attribute [rw] offering_type
        #   The offering type.
        #   @return [String]

        # @!attribute [rw] multi_az
        #   Indicates if the offering applies to Multi-AZ deployments.
        #   @return [Boolean]

        # @!attribute [rw] recurring_charges
        #   The recurring price charged to run this reserved DB instance.
        #   @return [Array<Types::RecurringCharge>]

      end

      # Contains the result of a successful invocation of the
      # DescribeReservedDBInstancesOfferings action.
      class ReservedDBInstancesOfferingMessage < Aws::Structure.new(
        :marker,
        :reserved_db_instances_offerings)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] reserved_db_instances_offerings
        #   A list of reserved DB instance offerings.
        #   @return [Array<Types::ReservedDBInstancesOffering>]

      end

      # @note When making an API call, pass ResetDBClusterParameterGroupMessage
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
      #           },
      #         ],
      #       }
      class ResetDBClusterParameterGroupMessage < Aws::Structure.new(
        :db_cluster_parameter_group_name,
        :reset_all_parameters,
        :parameters)

        # @!attribute [rw] db_cluster_parameter_group_name
        #   The name of the DB cluster parameter group to reset.
        #   @return [String]

        # @!attribute [rw] reset_all_parameters
        #   A value that is set to `true` to reset all parameters in the DB
        #   cluster parameter group to their default values, and `false`
        #   otherwise. You cannot use this parameter if there is a list of
        #   parameter names specified for the `Parameters` parameter.
        #   @return [Boolean]

        # @!attribute [rw] parameters
        #   A list of parameter names in the DB cluster parameter group to reset
        #   to the default values. You cannot use this parameter if the
        #   `ResetAllParameters` parameter is set to `true`.
        #   @return [Array<Types::Parameter>]

      end

      # @note When making an API call, pass ResetDBParameterGroupMessage
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
      #           },
      #         ],
      #       }
      class ResetDBParameterGroupMessage < Aws::Structure.new(
        :db_parameter_group_name,
        :reset_all_parameters,
        :parameters)

        # @!attribute [rw] db_parameter_group_name
        #   The name of the DB parameter group.
        #
        #   Constraints:
        #
        #   * Must be 1 to 255 alphanumeric characters
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] reset_all_parameters
        #   Specifies whether (`true`) or not (`false`) to reset all parameters
        #   in the DB parameter group to default values.
        #
        #   Default: `true`
        #   @return [Boolean]

        # @!attribute [rw] parameters
        #   An array of parameter names, values, and the apply method for the
        #   parameter update. At least one parameter name, value, and apply
        #   method must be supplied; subsequent arguments are optional. A
        #   maximum of 20 parameters can be modified in a single request.
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

      end

      # Describes the pending maintenance actions for a resource.
      class ResourcePendingMaintenanceActions < Aws::Structure.new(
        :resource_identifier,
        :pending_maintenance_action_details)

        # @!attribute [rw] resource_identifier
        #   The ARN of the resource that has pending maintenance actions.
        #   @return [String]

        # @!attribute [rw] pending_maintenance_action_details
        #   A list that provides details about the pending maintenance actions
        #   for the resource.
        #   @return [Array<Types::PendingMaintenanceAction>]

      end

      # @note When making an API call, pass RestoreDBClusterFromSnapshotMessage
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
      #       }
      class RestoreDBClusterFromSnapshotMessage < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] availability_zones
        #   Provides the list of EC2 Availability Zones that instances in the
        #   restored DB cluster can be created in.
        #   @return [Array<String>]

        # @!attribute [rw] db_cluster_identifier
        #   The name of the DB cluster to create from the DB cluster snapshot.
        #   This parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-snapshot-id`
        #   @return [String]

        # @!attribute [rw] snapshot_identifier
        #   The identifier for the DB cluster snapshot to restore from.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] engine
        #   The database engine to use for the new DB cluster.
        #
        #   Default: The same as source
        #
        #   Constraint: Must be compatible with the engine of the source
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The version of the database engine to use for the new DB cluster.
        #   @return [String]

        # @!attribute [rw] port
        #   The port number on which the new DB cluster accepts connections.
        #
        #   Constraints: Value must be `1150-65535`
        #
        #   Default: The same port as the original DB cluster.
        #   @return [Integer]

        # @!attribute [rw] db_subnet_group_name
        #   The name of the DB subnet group to use for the new DB cluster.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] database_name
        #   The database name for the restored DB cluster.
        #   @return [String]

        # @!attribute [rw] option_group_name
        #   The name of the option group to use for the restored DB cluster.
        #   @return [String]

        # @!attribute [rw] vpc_security_group_ids
        #   A list of VPC security groups that the new DB cluster will belong
        #   to.
        #   @return [Array<String>]

        # @!attribute [rw] tags
        #   The tags to be assigned to the restored DB cluster.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier to use when restoring an encrypted DB cluster
        #   from an encrypted DB cluster snapshot.
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
        #   * If the DB cluster snapshot is encrypted, then the restored DB
        #     cluster is encrypted using the KMS key that was used to encrypt
        #     the DB cluster snapshot.
        #
        #   * If the DB cluster snapshot is not encrypted, then the restored DB
        #     cluster is not encrypted.
        #
        #   If `SnapshotIdentifier` refers to a DB cluster snapshot that is not
        #   encrypted, and you specify a value for the `KmsKeyId` parameter,
        #   then the restore request is rejected.
        #   @return [String]

      end

      class RestoreDBClusterFromSnapshotResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # @note When making an API call, pass RestoreDBClusterToPointInTimeMessage
      #   data as a hash:
      #
      #       {
      #         db_cluster_identifier: "String", # required
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
      #       }
      class RestoreDBClusterToPointInTimeMessage < Aws::Structure.new(
        :db_cluster_identifier,
        :source_db_cluster_identifier,
        :restore_to_time,
        :use_latest_restorable_time,
        :port,
        :db_subnet_group_name,
        :option_group_name,
        :vpc_security_group_ids,
        :tags,
        :kms_key_id)

        # @!attribute [rw] db_cluster_identifier
        #   The name of the new DB cluster to be created.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] source_db_cluster_identifier
        #   The identifier of the source DB cluster from which to restore.
        #
        #   Constraints:
        #
        #   * Must be the identifier of an existing database instance
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

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
        #   * Cannot be specified if `UseLatestRestorableTime` parameter is true
        #
        #   Example: `2015-03-07T23:45:00Z`
        #   @return [Time]

        # @!attribute [rw] use_latest_restorable_time
        #   A value that is set to `true` to restore the DB cluster to the
        #   latest restorable backup time, and `false` otherwise.
        #
        #   Default: `false`
        #
        #   Constraints: Cannot be specified if `RestoreToTime` parameter is
        #   provided.
        #   @return [Boolean]

        # @!attribute [rw] port
        #   The port number on which the new DB cluster accepts connections.
        #
        #   Constraints: Value must be `1150-65535`
        #
        #   Default: The same port as the original DB cluster.
        #   @return [Integer]

        # @!attribute [rw] db_subnet_group_name
        #   The DB subnet group name to use for the new DB cluster.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] option_group_name
        #   The name of the option group for the new DB cluster.
        #   @return [String]

        # @!attribute [rw] vpc_security_group_ids
        #   A lst of VPC security groups that the new DB cluster belongs to.
        #   @return [Array<String>]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier to use when restoring an encrypted DB cluster
        #   from an encrypted DB cluster.
        #
        #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
        #   encryption key. If you are restoring a DB cluster with the same AWS
        #   account that owns the KMS encryption key used to encrypt the new DB
        #   cluster, then you can use the KMS key alias instead of the ARN for
        #   the KMS encryption key.
        #
        #   You can restore to a new DB cluster and encrypt the new DB cluster
        #   with a KMS key that is different than the KMS key used to encrypt
        #   the source DB cluster. The new DB cluster will be encrypted with the
        #   KMS key identified by the `KmsKeyId` parameter.
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
        #   If `DBClusterIdentifier` refers to a DB cluster that is note
        #   encrypted, then the restore request is rejected.
        #   @return [String]

      end

      class RestoreDBClusterToPointInTimeResult < Aws::Structure.new(
        :db_cluster)

        # @!attribute [rw] db_cluster
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBCluster
        #
        #   * DeleteDBCluster
        #
        #   * FailoverDBCluster
        #
        #   * ModifyDBCluster
        #
        #   * RestoreDBClusterFromSnapshot
        #
        #   * RestoreDBClusterToPointInTime
        #
        #   This data type is used as a response element in the
        #   DescribeDBClusters action.
        #   @return [Types::DBCluster]

      end

      # @note When making an API call, pass RestoreDBInstanceFromDBSnapshotMessage
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
      #       }
      class RestoreDBInstanceFromDBSnapshotMessage < Aws::Structure.new(
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
        :domain_iam_role_name)

        # @!attribute [rw] db_instance_identifier
        #   Name of the DB instance to create from the DB snapshot. This
        #   parameter isn\'t case-sensitive.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens (1 to
        #     15 for SQL Server)
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   Example: `my-snapshot-id`
        #   @return [String]

        # @!attribute [rw] db_snapshot_identifier
        #   The identifier for the DB snapshot to restore from.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 255 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #
        #   If you are restoring from a shared manual DB snapshot, the
        #   `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
        #   @return [String]

        # @!attribute [rw] db_instance_class
        #   The compute and memory capacity of the Amazon RDS DB instance.
        #
        #   Valid Values: `db.t1.micro | db.m1.small | db.m1.medium |
        #   db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge |
        #   db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge |
        #   db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge |
        #   db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge |
        #   db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small |
        #   db.t2.medium | db.t2.large`
        #   @return [String]

        # @!attribute [rw] port
        #   The port number on which the database accepts connections.
        #
        #   Default: The same port as the original DB instance
        #
        #   Constraints: Value must be `1150-65535`
        #   @return [Integer]

        # @!attribute [rw] availability_zone
        #   The EC2 Availability Zone that the database instance will be created
        #   in.
        #
        #   Default: A random, system-chosen Availability Zone.
        #
        #   Constraint: You cannot specify the AvailabilityZone parameter if the
        #   MultiAZ parameter is set to `true`.
        #
        #   Example: `us-east-1a`
        #   @return [String]

        # @!attribute [rw] db_subnet_group_name
        #   The DB subnet group name to use for the new instance.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] multi_az
        #   Specifies if the DB instance is a Multi-AZ deployment.
        #
        #   Constraint: You cannot specify the AvailabilityZone parameter if the
        #   MultiAZ parameter is set to `true`.
        #   @return [Boolean]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the DB instance. A value of
        #   true specifies an Internet-facing instance with a publicly
        #   resolvable DNS name, which resolves to a public IP address. A value
        #   of false specifies an internal instance with a DNS name that
        #   resolves to a private IP address.
        #
        #   Default: The default behavior varies depending on whether a VPC has
        #   been requested or not. The following list shows the default behavior
        #   in each case.
        #
        #   * **Default VPC:** true
        #
        #   * **VPC:** false
        #
        #   If no DB subnet group has been specified as part of the request and
        #   the PubliclyAccessible value has not been set, the DB instance will
        #   be publicly accessible. If a specific DB subnet group has been
        #   specified as part of the request and the PubliclyAccessible value
        #   has not been set, the DB instance will be private.
        #   @return [Boolean]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor version upgrades will be applied automatically
        #   to the DB instance during the maintenance window.
        #   @return [Boolean]

        # @!attribute [rw] license_model
        #   License model information for the restored DB instance.
        #
        #   Default: Same as source.
        #
        #   Valid values: `license-included` \| `bring-your-own-license` \|
        #   `general-public-license`
        #   @return [String]

        # @!attribute [rw] db_name
        #   The database name for the restored DB instance.
        #
        #   <note markdown="1"> This parameter doesn\'t apply to the MySQL or MariaDB engines.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] engine
        #   The database engine to use for the new instance.
        #
        #   Default: The same as source
        #
        #   Constraint: Must be compatible with the engine of the source
        #
        #   Valid Values: `MySQL` \| `mariadb` \| `oracle-se1` \| `oracle-se` \|
        #   `oracle-ee` \| `sqlserver-ee` \| `sqlserver-se` \| `sqlserver-ex` \|
        #   `sqlserver-web` \| `postgres` \| `aurora`
        #   @return [String]

        # @!attribute [rw] iops
        #   Specifies the amount of provisioned IOPS for the DB instance,
        #   expressed in I/O operations per second. If this parameter is not
        #   specified, the IOPS value will be taken from the backup. If this
        #   parameter is set to 0, the new instance will be converted to a
        #   non-PIOPS instance, which will take additional time, though your DB
        #   instance will be available for connections before the conversion
        #   starts.
        #
        #   Constraints: Must be an integer greater than 1000.
        #
        #   **SQL Server**
        #
        #   Setting the IOPS value for the SQL Server database engine is not
        #   supported.
        #   @return [Integer]

        # @!attribute [rw] option_group_name
        #   The name of the option group to be used for the restored DB
        #   instance.
        #
        #   Permanent options, such as the TDE option for Oracle Advanced
        #   Security TDE, cannot be removed from an option group, and that
        #   option group cannot be removed from a DB instance once it is
        #   associated with a DB instance
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] storage_type
        #   Specifies the storage type to be associated with the DB instance.
        #
        #   Valid values: `standard | gp2 | io1`
        #
        #   If you specify `io1`, you must also include a value for the `Iops`
        #   parameter.
        #
        #   Default: `io1` if the `Iops` parameter is specified; otherwise
        #   `standard`
        #   @return [String]

        # @!attribute [rw] tde_credential_arn
        #   The ARN from the Key Store with which to associate the instance for
        #   TDE encryption.
        #   @return [String]

        # @!attribute [rw] tde_credential_password
        #   The password for the given ARN from the Key Store in order to access
        #   the device.
        #   @return [String]

        # @!attribute [rw] domain
        #   Specify the Active Directory Domain to restore the instance in.
        #   @return [String]

        # @!attribute [rw] copy_tags_to_snapshot
        #   True to copy all tags from the restored DB instance to snapshots of
        #   the DB instance; otherwise false. The default is false.
        #   @return [Boolean]

        # @!attribute [rw] domain_iam_role_name
        #   Specify the name of the IAM role to be used when making API calls to
        #   the Directory Service.
        #   @return [String]

      end

      class RestoreDBInstanceFromDBSnapshotResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # @note When making an API call, pass RestoreDBInstanceToPointInTimeMessage
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
      #       }
      class RestoreDBInstanceToPointInTimeMessage < Aws::Structure.new(
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
        :domain_iam_role_name)

        # @!attribute [rw] source_db_instance_identifier
        #   The identifier of the source DB instance from which to restore.
        #
        #   Constraints:
        #
        #   * Must be the identifier of an existing database instance
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

        # @!attribute [rw] target_db_instance_identifier
        #   The name of the new database instance to be created.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens
        #
        #   * First character must be a letter
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens
        #   @return [String]

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

        # @!attribute [rw] use_latest_restorable_time
        #   Specifies whether (`true`) or not (`false`) the DB instance is
        #   restored from the latest backup time.
        #
        #   Default: `false`
        #
        #   Constraints: Cannot be specified if RestoreTime parameter is
        #   provided.
        #   @return [Boolean]

        # @!attribute [rw] db_instance_class
        #   The compute and memory capacity of the Amazon RDS DB instance.
        #
        #   Valid Values: `db.t1.micro | db.m1.small | db.m1.medium |
        #   db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge |
        #   db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge |
        #   db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge |
        #   db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge |
        #   db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small |
        #   db.t2.medium | db.t2.large`
        #
        #   Default: The same DBInstanceClass as the original DB instance.
        #   @return [String]

        # @!attribute [rw] port
        #   The port number on which the database accepts connections.
        #
        #   Constraints: Value must be `1150-65535`
        #
        #   Default: The same port as the original DB instance.
        #   @return [Integer]

        # @!attribute [rw] availability_zone
        #   The EC2 Availability Zone that the database instance will be created
        #   in.
        #
        #   Default: A random, system-chosen Availability Zone.
        #
        #   Constraint: You cannot specify the AvailabilityZone parameter if the
        #   MultiAZ parameter is set to true.
        #
        #   Example: `us-east-1a`
        #   @return [String]

        # @!attribute [rw] db_subnet_group_name
        #   The DB subnet group name to use for the new instance.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, underscores, spaces, or hyphens. Must not be default.
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] multi_az
        #   Specifies if the DB instance is a Multi-AZ deployment.
        #
        #   Constraint: You cannot specify the AvailabilityZone parameter if the
        #   MultiAZ parameter is set to `true`.
        #   @return [Boolean]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the DB instance. A value of
        #   true specifies an Internet-facing instance with a publicly
        #   resolvable DNS name, which resolves to a public IP address. A value
        #   of false specifies an internal instance with a DNS name that
        #   resolves to a private IP address.
        #
        #   Default: The default behavior varies depending on whether a VPC has
        #   been requested or not. The following list shows the default behavior
        #   in each case.
        #
        #   * **Default VPC:**true
        #
        #   * **VPC:**false
        #
        #   If no DB subnet group has been specified as part of the request and
        #   the PubliclyAccessible value has not been set, the DB instance will
        #   be publicly accessible. If a specific DB subnet group has been
        #   specified as part of the request and the PubliclyAccessible value
        #   has not been set, the DB instance will be private.
        #   @return [Boolean]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor version upgrades will be applied automatically
        #   to the DB instance during the maintenance window.
        #   @return [Boolean]

        # @!attribute [rw] license_model
        #   License model information for the restored DB instance.
        #
        #   Default: Same as source.
        #
        #   Valid values: `license-included` \| `bring-your-own-license` \|
        #   `general-public-license`
        #   @return [String]

        # @!attribute [rw] db_name
        #   The database name for the restored DB instance.
        #
        #   <note markdown="1"> This parameter is not used for the MySQL or MariaDB engines.
        #
        #    </note>
        #   @return [String]

        # @!attribute [rw] engine
        #   The database engine to use for the new instance.
        #
        #   Default: The same as source
        #
        #   Constraint: Must be compatible with the engine of the source
        #
        #   Valid Values: `MySQL` \| `mariadb` \| `oracle-se1` \| `oracle-se` \|
        #   `oracle-ee` \| `sqlserver-ee` \| `sqlserver-se` \| `sqlserver-ex` \|
        #   `sqlserver-web` \| `postgres` \| `aurora`
        #   @return [String]

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

        # @!attribute [rw] option_group_name
        #   The name of the option group to be used for the restored DB
        #   instance.
        #
        #   Permanent options, such as the TDE option for Oracle Advanced
        #   Security TDE, cannot be removed from an option group, and that
        #   option group cannot be removed from a DB instance once it is
        #   associated with a DB instance
        #   @return [String]

        # @!attribute [rw] copy_tags_to_snapshot
        #   True to copy all tags from the restored DB instance to snapshots of
        #   the DB instance; otherwise false. The default is false.
        #   @return [Boolean]

        # @!attribute [rw] tags
        #   A list of tags.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] storage_type
        #   Specifies the storage type to be associated with the DB instance.
        #
        #   Valid values: `standard | gp2 | io1`
        #
        #   If you specify `io1`, you must also include a value for the `Iops`
        #   parameter.
        #
        #   Default: `io1` if the `Iops` parameter is specified; otherwise
        #   `standard`
        #   @return [String]

        # @!attribute [rw] tde_credential_arn
        #   The ARN from the Key Store with which to associate the instance for
        #   TDE encryption.
        #   @return [String]

        # @!attribute [rw] tde_credential_password
        #   The password for the given ARN from the Key Store in order to access
        #   the device.
        #   @return [String]

        # @!attribute [rw] domain
        #   Specify the Active Directory Domain to restore the instance in.
        #   @return [String]

        # @!attribute [rw] domain_iam_role_name
        #   Specify the name of the IAM role to be used when making API calls to
        #   the Directory Service.
        #   @return [String]

      end

      class RestoreDBInstanceToPointInTimeResult < Aws::Structure.new(
        :db_instance)

        # @!attribute [rw] db_instance
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * CreateDBInstance
        #
        #   * DeleteDBInstance
        #
        #   * ModifyDBInstance
        #
        #   This data type is used as a response element in the
        #   DescribeDBInstances action.
        #   @return [Types::DBInstance]

      end

      # @note When making an API call, pass RevokeDBSecurityGroupIngressMessage
      #   data as a hash:
      #
      #       {
      #         db_security_group_name: "String", # required
      #         cidrip: "String",
      #         ec2_security_group_name: "String",
      #         ec2_security_group_id: "String",
      #         ec2_security_group_owner_id: "String",
      #       }
      class RevokeDBSecurityGroupIngressMessage < Aws::Structure.new(
        :db_security_group_name,
        :cidrip,
        :ec2_security_group_name,
        :ec2_security_group_id,
        :ec2_security_group_owner_id)

        # @!attribute [rw] db_security_group_name
        #   The name of the DB security group to revoke ingress from.
        #   @return [String]

        # @!attribute [rw] cidrip
        #   The IP range to revoke access from. Must be a valid CIDR range. If
        #   `CIDRIP` is specified, `EC2SecurityGroupName`, `EC2SecurityGroupId`
        #   and `EC2SecurityGroupOwnerId` cannot be provided.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_name
        #   The name of the EC2 security group to revoke access from. For VPC DB
        #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
        #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
        #   `EC2SecurityGroupId` must be provided.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_id
        #   The id of the EC2 security group to revoke access from. For VPC DB
        #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
        #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
        #   `EC2SecurityGroupId` must be provided.
        #   @return [String]

        # @!attribute [rw] ec2_security_group_owner_id
        #   The AWS Account Number of the owner of the EC2 security group
        #   specified in the `EC2SecurityGroupName` parameter. The AWS Access
        #   Key ID is not an acceptable value. For VPC DB security groups,
        #   `EC2SecurityGroupId` must be provided. Otherwise,
        #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
        #   `EC2SecurityGroupId` must be provided.
        #   @return [String]

      end

      class RevokeDBSecurityGroupIngressResult < Aws::Structure.new(
        :db_security_group)

        # @!attribute [rw] db_security_group
        #   Contains the result of a successful invocation of the following
        #   actions:
        #
        #   * DescribeDBSecurityGroups
        #
        #   * AuthorizeDBSecurityGroupIngress
        #
        #   * CreateDBSecurityGroup
        #
        #   * RevokeDBSecurityGroupIngress
        #
        #   This data type is used as a response element in the
        #   DescribeDBSecurityGroups action.
        #   @return [Types::DBSecurityGroup]

      end

      # This data type is used as a response element in the
      # DescribeDBSubnetGroups action.
      class Subnet < Aws::Structure.new(
        :subnet_identifier,
        :subnet_availability_zone,
        :subnet_status)

        # @!attribute [rw] subnet_identifier
        #   Specifies the identifier of the subnet.
        #   @return [String]

        # @!attribute [rw] subnet_availability_zone
        #   Contains Availability Zone information.
        #
        #   This data type is used as an element in the following data type:
        #
        #   * OrderableDBInstanceOption
        #
        #   ^
        #   @return [Types::AvailabilityZone]

        # @!attribute [rw] subnet_status
        #   Specifies the status of the subnet.
        #   @return [String]

      end

      # Metadata assigned to an Amazon RDS resource consisting of a key-value
      # pair.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "String",
      #         value: "String",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   A key is the required name of the tag. The string value can be from
        #   1 to 128 Unicode characters in length and cannot be prefixed with
        #   \"aws:\" or \"rds:\". The string can only contain only the set of
        #   Unicode letters, digits, white-space, \'\_\', \'.\', \'/\', \'=\',
        #   \'+\', \'-\' (Java regex:
        #   \"^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]\*)$\").
        #   @return [String]

        # @!attribute [rw] value
        #   A value is the optional value of the tag. The string value can be
        #   from 1 to 256 Unicode characters in length and cannot be prefixed
        #   with \"aws:\" or \"rds:\". The string can only contain only the set
        #   of Unicode letters, digits, white-space, \'\_\', \'.\', \'/\',
        #   \'=\', \'+\', \'-\' (Java regex:
        #   \"^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]\*)$\").
        #   @return [String]

      end

      class TagListMessage < Aws::Structure.new(
        :tag_list)

        # @!attribute [rw] tag_list
        #   List of tags returned by the ListTagsForResource operation.
        #   @return [Array<Types::Tag>]

      end

      # The version of the database engine that a DB instance can be upgraded
      # to.
      class UpgradeTarget < Aws::Structure.new(
        :engine,
        :engine_version,
        :description,
        :auto_upgrade,
        :is_major_version_upgrade)

        # @!attribute [rw] engine
        #   The name of the upgrade target database engine.
        #   @return [String]

        # @!attribute [rw] engine_version
        #   The version number of the upgrade target database engine.
        #   @return [String]

        # @!attribute [rw] description
        #   The version of the database engine that a DB instance can be
        #   upgraded to.
        #   @return [String]

        # @!attribute [rw] auto_upgrade
        #   A value that indicates whether the target version will be applied to
        #   any source DB instances that have AutoMinorVersionUpgrade set to
        #   true.
        #   @return [Boolean]

        # @!attribute [rw] is_major_version_upgrade
        #   A value that indicates whether a database engine will be upgraded to
        #   a major version.
        #   @return [Boolean]

      end

      # This data type is used as a response element for queries on VPC
      # security group membership.
      class VpcSecurityGroupMembership < Aws::Structure.new(
        :vpc_security_group_id,
        :status)

        # @!attribute [rw] vpc_security_group_id
        #   The name of the VPC security group.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the VPC security group.
        #   @return [String]

      end

    end
  end
end
