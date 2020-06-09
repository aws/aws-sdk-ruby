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
    #   A list of `AccountQuota` objects. Within this list, each quota has a
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

    # Describes a quota for an AWS account.
    #
    # The following are account quotas:
    #
    # * `AllocatedStorage` - The total allocated storage per account, in
    #   GiB. The used value is the total allocated storage in the account,
    #   in GiB.
    #
    # * `AuthorizationsPerDBSecurityGroup` - The number of ingress rules per
    #   DB security group. The used value is the highest number of ingress
    #   rules in a DB security group in the account. Other DB security
    #   groups in the account might have a lower number of ingress rules.
    #
    # * `CustomEndpointsPerDBCluster` - The number of custom endpoints per
    #   DB cluster. The used value is the highest number of custom endpoints
    #   in a DB clusters in the account. Other DB clusters in the account
    #   might have a lower number of custom endpoints.
    #
    # * `DBClusterParameterGroups` - The number of DB cluster parameter
    #   groups per account, excluding default parameter groups. The used
    #   value is the count of nondefault DB cluster parameter groups in the
    #   account.
    #
    # * `DBClusterRoles` - The number of associated AWS Identity and Access
    #   Management (IAM) roles per DB cluster. The used value is the highest
    #   number of associated IAM roles for a DB cluster in the account.
    #   Other DB clusters in the account might have a lower number of
    #   associated IAM roles.
    #
    # * `DBClusters` - The number of DB clusters per account. The used value
    #   is the count of DB clusters in the account.
    #
    # * `DBInstanceRoles` - The number of associated IAM roles per DB
    #   instance. The used value is the highest number of associated IAM
    #   roles for a DB instance in the account. Other DB instances in the
    #   account might have a lower number of associated IAM roles.
    #
    # * `DBInstances` - The number of DB instances per account. The used
    #   value is the count of the DB instances in the account.
    #
    #   Amazon RDS DB instances, Amazon Aurora DB instances, Amazon Neptune
    #   instances, and Amazon DocumentDB instances apply to this quota.
    #
    # * `DBParameterGroups` - The number of DB parameter groups per account,
    #   excluding default parameter groups. The used value is the count of
    #   nondefault DB parameter groups in the account.
    #
    # * `DBSecurityGroups` - The number of DB security groups (not VPC
    #   security groups) per account, excluding the default security group.
    #   The used value is the count of nondefault DB security groups in the
    #   account.
    #
    # * `DBSubnetGroups` - The number of DB subnet groups per account. The
    #   used value is the count of the DB subnet groups in the account.
    #
    # * `EventSubscriptions` - The number of event subscriptions per
    #   account. The used value is the count of the event subscriptions in
    #   the account.
    #
    # * `ManualSnapshots` - The number of manual DB snapshots per account.
    #   The used value is the count of the manual DB snapshots in the
    #   account.
    #
    # * `OptionGroups` - The number of DB option groups per account,
    #   excluding default option groups. The used value is the count of
    #   nondefault DB option groups in the account.
    #
    # * `ReadReplicasPerMaster` - The number of read replicas per DB
    #   instance. The used value is the highest number of read replicas for
    #   a DB instance in the account. Other DB instances in the account
    #   might have a lower number of read replicas.
    #
    # * `ReservedDBInstances` - The number of reserved DB instances per
    #   account. The used value is the count of the active reserved DB
    #   instances in the account.
    #
    # * `SubnetsPerDBSubnetGroup` - The number of subnets per DB subnet
    #   group. The used value is highest number of subnets for a DB subnet
    #   group in the account. Other DB subnet groups in the account might
    #   have a lower number of subnets.
    #
    # For more information, see [Quotas for Amazon RDS][1] in the *Amazon
    # RDS User Guide* and [Quotas for Amazon Aurora][2] in the *Amazon
    # Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Limits.html
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
    #         feature_name: "String",
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
    # @!attribute [rw] feature_name
    #   The name of the feature for the DB cluster that the IAM role is to
    #   be associated with. For the list of supported feature names, see
    #   DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBClusterMessage AWS API Documentation
    #
    class AddRoleToDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddRoleToDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         role_arn: "String", # required
    #         feature_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The name of the DB instance to associate the IAM role with.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   DB instance, for example
    #   `arn:aws:iam::123456789012:role/AccessRole`.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature for the DB instance that the IAM role is to
    #   be associated with. For the list of supported feature names, see
    #   DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBInstanceMessage AWS API Documentation
    #
    class AddRoleToDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :role_arn,
      :feature_name)
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
    #   `DescribeEventSubscriptions` action.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `system-update`, `db-upgrade`, `hardware-maintenance`,
    #   `ca-certificate-rotation`
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

    # The specified CIDR IP range or Amazon EC2 security group is already
    # authorized for the specified DB security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizationAlreadyExistsFault AWS API Documentation
    #
    class AuthorizationAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified CIDR IP range or Amazon EC2 security group might not be
    # authorized for the specified DB security group.
    #
    # Or, RDS might not be authorized to perform necessary actions using IAM
    # on your behalf.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizationNotFoundFault AWS API Documentation
    #
    class AuthorizationNotFoundFault < Aws::EmptyStructure; end

    # The DB security group authorization quota has been reached.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AuthorizationQuotaExceededFault AWS API Documentation
    #
    class AuthorizationQuotaExceededFault < Aws::EmptyStructure; end

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
    #   in the `EC2SecurityGroupName` parameter. The AWS access key ID
    #   isn't an acceptable value. For VPC DB security groups,
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
    #   `DescribeDBSecurityGroups` action.
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
    # This data type is used as an element in the
    # `OrderableDBInstanceOption` data type.
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
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] backtrack_to
    #   The timestamp of the time to backtrack the DB cluster to, specified
    #   in ISO 8601 format. For more information about ISO 8601, see the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   <note markdown="1"> If the specified time isn't a consistent time for the DB cluster,
    #   Aurora automatically chooses the nearest possible consistent time
    #   for the DB cluster.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must contain a valid ISO 8601 timestamp.
    #
    #   * Can't contain a timestamp set in the future.
    #
    #   Example: `2017-07-08T18:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] force
    #   A value that indicates whether to force the DB cluster to backtrack
    #   when binary logging is enabled. Otherwise, an error occurs when
    #   binary logging is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_earliest_time_on_point_in_time_unavailable
    #   A value that indicates whether to backtrack the DB cluster to the
    #   earliest possible backtrack time when *BacktrackTo* is set to a
    #   timestamp earlier than the earliest backtrack time. When this
    #   parameter is disabled and *BacktrackTo* is set to a timestamp
    #   earlier than the earliest backtrack time, an error occurs.
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

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BackupPolicyNotFoundFault AWS API Documentation
    #
    class BackupPolicyNotFoundFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelExportTaskMessage
    #   data as a hash:
    #
    #       {
    #         export_task_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] export_task_identifier
    #   The identifier of the snapshot export task to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CancelExportTaskMessage AWS API Documentation
    #
    class CancelExportTaskMessage < Struct.new(
      :export_task_identifier)
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
    # @!attribute [rw] customer_override
    #   Whether there is an override for the default certificate identifier.
    #   @return [Boolean]
    #
    # @!attribute [rw] customer_override_valid_till
    #   If there is an override for the default certificate identifier, when
    #   the override expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_identifier,
      :certificate_type,
      :thumbprint,
      :valid_from,
      :valid_till,
      :certificate_arn,
      :customer_override,
      :customer_override_valid_till)
      include Aws::Structure
    end

    # Data returned by the **DescribeCertificates** action.
    #
    # @!attribute [rw] certificates
    #   The list of `Certificate` objects for the AWS account.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeCertificates` request. If this parameter is specified, the
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

    # `CertificateIdentifier` doesn't refer to an existing certificate.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CertificateNotFoundFault AWS API Documentation
    #
    class CertificateNotFoundFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the action
    # `DescribeDBEngineVersions`.
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
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
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

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Specifies the settings that control the size and behavior of the
    # connection pool associated with a `DBProxyTargetGroup`.
    #
    # @note When making an API call, you may pass ConnectionPoolConfiguration
    #   data as a hash:
    #
    #       {
    #         max_connections_percent: 1,
    #         max_idle_connections_percent: 1,
    #         connection_borrow_timeout: 1,
    #         session_pinning_filters: ["String"],
    #         init_query: "String",
    #       }
    #
    # @!attribute [rw] max_connections_percent
    #   The maximum size of the connection pool for each target in a target
    #   group. For Aurora MySQL, it is expressed as a percentage of the
    #   `max_connections` setting for the RDS DB instance or Aurora DB
    #   cluster used by the target group.
    #
    #   Default: 100
    #
    #   Constraints: between 1 and 100
    #   @return [Integer]
    #
    # @!attribute [rw] max_idle_connections_percent
    #   Controls how actively the proxy closes idle database connections in
    #   the connection pool. A high value enables the proxy to leave a high
    #   percentage of idle connections open. A low value causes the proxy to
    #   close idle client connections and return the underlying database
    #   connections to the connection pool. For Aurora MySQL, it is
    #   expressed as a percentage of the `max_connections` setting for the
    #   RDS DB instance or Aurora DB cluster used by the target group.
    #
    #   Default: 50
    #
    #   Constraints: between 0 and `MaxConnectionsPercent`
    #   @return [Integer]
    #
    # @!attribute [rw] connection_borrow_timeout
    #   The number of seconds for a proxy to wait for a connection to become
    #   available in the connection pool. Only applies when the proxy has
    #   opened its maximum number of connections and all connections are
    #   busy with client sessions.
    #
    #   Default: 120
    #
    #   Constraints: between 1 and 3600, or 0 representing unlimited
    #   @return [Integer]
    #
    # @!attribute [rw] session_pinning_filters
    #   Each item in the list represents a class of SQL operations that
    #   normally cause all later statements in a session using a proxy to be
    #   pinned to the same underlying database connection. Including an item
    #   in the list exempts that class of SQL operations from the pinning
    #   behavior.
    #
    #   Default: no session pinning filters
    #   @return [Array<String>]
    #
    # @!attribute [rw] init_query
    #   One or more SQL statements for the proxy to run when opening each
    #   new database connection. Typically used with `SET` statements to
    #   make sure that each connection has identical settings such as time
    #   zone and character set. For multiple statements, use semicolons as
    #   the separator. You can also include multiple variables in a single
    #   `SET` statement, such as `SET x=1, y=2`.
    #
    #   `InitQuery` is not currently supported for PostgreSQL.
    #
    #   Default: no initialization query
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ConnectionPoolConfiguration AWS API Documentation
    #
    class ConnectionPoolConfiguration < Struct.new(
      :max_connections_percent,
      :max_idle_connections_percent,
      :connection_borrow_timeout,
      :session_pinning_filters,
      :init_query)
      include Aws::Structure
    end

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Displays the settings that control the size and behavior of the
    # connection pool associated with a `DBProxyTarget`.
    #
    # @!attribute [rw] max_connections_percent
    #   The maximum size of the connection pool for each target in a target
    #   group. For Aurora MySQL, it is expressed as a percentage of the
    #   `max_connections` setting for the RDS DB instance or Aurora DB
    #   cluster used by the target group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_idle_connections_percent
    #   Controls how actively the proxy closes idle database connections in
    #   the connection pool. A high value enables the proxy to leave a high
    #   percentage of idle connections open. A low value causes the proxy to
    #   close idle client connections and return the underlying database
    #   connections to the connection pool. For Aurora MySQL, it is
    #   expressed as a percentage of the `max_connections` setting for the
    #   RDS DB instance or Aurora DB cluster used by the target group.
    #   @return [Integer]
    #
    # @!attribute [rw] connection_borrow_timeout
    #   The number of seconds for a proxy to wait for a connection to become
    #   available in the connection pool. Only applies when the proxy has
    #   opened its maximum number of connections and all connections are
    #   busy with client sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] session_pinning_filters
    #   Each item in the list represents a class of SQL operations that
    #   normally cause all later statements in a session using a proxy to be
    #   pinned to the same underlying database connection. Including an item
    #   in the list exempts that class of SQL operations from the pinning
    #   behavior. Currently, the only allowed value is
    #   `EXCLUDE_VARIABLE_SETS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] init_query
    #   One or more SQL statements for the proxy to run when opening each
    #   new database connection. Typically used with `SET` statements to
    #   make sure that each connection has identical settings such as time
    #   zone and character set. This setting is empty by default. For
    #   multiple statements, use semicolons as the separator. You can also
    #   include multiple variables in a single `SET` statement, such as `SET
    #   x=1, y=2`.
    #
    #   `InitQuery` is not currently supported for PostgreSQL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ConnectionPoolConfigurationInfo AWS API Documentation
    #
    class ConnectionPoolConfigurationInfo < Struct.new(
      :max_connections_percent,
      :max_idle_connections_percent,
      :connection_borrow_timeout,
      :session_pinning_filters,
      :init_query)
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_identifier
    #   The identifier for the copied DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Can't be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   `DescribeDBClusterParameterGroups` action.
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
    #   The identifier of the DB cluster snapshot to copy. This parameter
    #   isn't case-sensitive.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html#USER_CopySnapshot.AcrossRegions
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_snapshot_identifier
    #   The identifier of the new DB cluster snapshot to create from the
    #   source DB cluster snapshot. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key
    #   ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS
    #   key alias for the KMS encryption key.
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
    #   another AWS Region. Don't specify `PreSignedUrl` when you are
    #   copying an encrypted DB cluster snapshot in the same AWS Region.
    #
    #   The pre-signed URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API action that can be executed in the
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
    #     cluster snapshot is to be created in.
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
    #   <note markdown="1"> If you are using an AWS SDK tool or the AWS CLI, you can specify
    #   `SourceRegion` (or `--source-region` for the AWS CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a pre-signed URL that is a valid request for the
    #   operation that can be executed in the source AWS Region.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   A value that indicates whether to copy all tags from the source DB
    #   cluster snapshot to the target DB cluster snapshot. By default, tags
    #   are not copied.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   `DescribeDBClusterSnapshots` action.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_db_parameter_group_identifier
    #   The identifier for the copied DB parameter group.
    #
    #   Constraints:
    #
    #   * Can't be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   `DescribeDBParameterGroups` action.
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
    #   * Can't be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] copy_tags
    #   A value that indicates whether to copy all tags from the source DB
    #   snapshot to the target DB snapshot. By default, tags are not copied.
    #   @return [Boolean]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBSnapshot` API action in the source AWS Region that contains
    #   the source DB snapshot to copy.
    #
    #   You must specify this parameter when you copy an encrypted DB
    #   snapshot from another AWS Region by using the Amazon RDS API. Don't
    #   specify `PreSignedUrl` when you are copying an encrypted DB snapshot
    #   in the same AWS Region.
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
    #   <note markdown="1"> If you are using an AWS SDK tool or the AWS CLI, you can specify
    #   `SourceRegion` (or `--source-region` for the AWS CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a pre-signed URL that is a valid request for the
    #   operation that can be executed in the source AWS Region.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options
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
    #   `DescribeDBSnapshots` action.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_option_group_identifier
    #   The identifier for the copied option group.
    #
    #   Constraints:
    #
    #   * Can't be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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

    # @note When making an API call, you may pass CreateCustomAvailabilityZoneMessage
    #   data as a hash:
    #
    #       {
    #         custom_availability_zone_name: "String", # required
    #         existing_vpn_id: "String",
    #         new_vpn_tunnel_name: "String",
    #         vpn_tunnel_originator_ip: "String",
    #       }
    #
    # @!attribute [rw] custom_availability_zone_name
    #   The name of the custom Availability Zone (AZ).
    #   @return [String]
    #
    # @!attribute [rw] existing_vpn_id
    #   The ID of an existing virtual private network (VPN) between the
    #   Amazon RDS website and the VMware vSphere cluster.
    #   @return [String]
    #
    # @!attribute [rw] new_vpn_tunnel_name
    #   The name of a new VPN tunnel between the Amazon RDS website and the
    #   VMware vSphere cluster.
    #
    #   Specify this parameter only if `ExistingVpnId` isn't specified.
    #   @return [String]
    #
    # @!attribute [rw] vpn_tunnel_originator_ip
    #   The IP address of network traffic from your on-premises data center.
    #   A custom AZ receives the network traffic.
    #
    #   Specify this parameter only if `ExistingVpnId` isn't specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateCustomAvailabilityZoneMessage AWS API Documentation
    #
    class CreateCustomAvailabilityZoneMessage < Struct.new(
      :custom_availability_zone_name,
      :existing_vpn_id,
      :new_vpn_tunnel_name,
      :vpn_tunnel_originator_ip)
      include Aws::Structure
    end

    # @!attribute [rw] custom_availability_zone
    #   A custom Availability Zone (AZ) is an on-premises AZ that is
    #   integrated with a VMware vSphere cluster.
    #
    #   For more information about RDS on VMware, see the [ *RDS on VMware
    #   User Guide.* ][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html
    #   @return [Types::CustomAvailabilityZone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateCustomAvailabilityZoneResult AWS API Documentation
    #
    class CreateCustomAvailabilityZoneResult < Struct.new(
      :custom_availability_zone)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBClusterEndpointMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         db_cluster_endpoint_identifier: "String", # required
    #         endpoint_type: "String", # required
    #         static_members: ["String"],
    #         excluded_members: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier to use for the new endpoint. This parameter is stored
    #   as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon RDS resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterEndpointMessage AWS API Documentation
    #
    class CreateDBClusterEndpointMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_endpoint_identifier,
      :endpoint_type,
      :static_members,
      :excluded_members,
      :tags)
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
    #           timeout_action: "String",
    #         },
    #         deletion_protection: false,
    #         global_cluster_identifier: "String",
    #         enable_http_endpoint: false,
    #         copy_tags_to_snapshot: false,
    #         domain: "String",
    #         domain_iam_role_name: "String",
    #         source_region: "String",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones (AZs) where instances in the DB cluster
    #   can be created. For information on AWS Regions and Availability
    #   Zones, see [Choosing the Regions and Availability Zones][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained.
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
    #   The name for your database of up to 64 alphanumeric characters. If
    #   you do not provide a name, Amazon RDS doesn't create a database in
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If you do not specify a value, then the default DB cluster
    #   parameter group for the specified DB engine and version is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DB cluster
    #     parameter group.
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
    #   To list all of the available engine versions for `aurora` (for MySQL
    #   5.6-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for `aurora-mysql` (for
    #   MySQL 5.7-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for
    #   `aurora-postgresql`, use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`, `5.6.mysql_aurora.1.19.2`, `5.7.12`,
    #   `5.7.mysql_aurora.2.04.5`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`, `10.7`
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
    #   * Can't be a reserved word for the chosen database engine.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB
    #   cluster if this DB cluster is created as a read replica.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to assign to the DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   A value that indicates whether the DB cluster is encrypted.
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
    #   If an encryption key isn't specified in `KmsKeyId`\:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon RDS will use the encryption key used to encrypt the
    #     source. Otherwise, Amazon RDS will use your default encryption
    #     key.
    #
    #   * If the `StorageEncrypted` parameter is enabled and
    #     `ReplicationSourceIdentifier` isn't specified, then Amazon RDS
    #     will use your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
    #
    #   If you create a read replica of an encrypted DB cluster in another
    #   AWS Region, you must set `KmsKeyId` to a KMS key ID that is valid in
    #   the destination AWS Region. This key is used to encrypt the read
    #   replica in that AWS Region.
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
    #   * `DestinationRegion` - The name of the AWS Region that Aurora read
    #     replica will be created in.
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
    #   <note markdown="1"> If you are using an AWS SDK tool or the AWS CLI, you can specify
    #   `SourceRegion` (or `--source-region` for the AWS CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a pre-signed URL that is a valid request for the
    #   operation that can be executed in the source AWS Region.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, `parallelquery`, `global`, or `multimaster`.
    #
    #   <note markdown="1"> `global` engine mode only applies for global database clusters
    #   created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL
    #   versions, the clusters in a global database use `provisioned` engine
    #   mode.
    #
    #    </note>
    #
    #   Limitations and requirements apply to some DB engine modes. For more
    #   information, see the following sections in the *Amazon Aurora User
    #   Guide*\:
    #
    #   * [ Limitations of Aurora Serverless][1]
    #
    #   * [ Limitations of Parallel Query][2]
    #
    #   * [ Requirements for Aurora Global Databases][3]
    #
    #   * [ Limitations of Multi-Master Clusters][4]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html#aurora-mysql-parallel-query-limitations
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database.limitations
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html#aurora-multi-master-limitations
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_cluster_identifier
    #   The global cluster ID of an Aurora cluster that becomes the primary
    #   cluster in the new global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] enable_http_endpoint
    #   A value that indicates whether to enable the HTTP endpoint for an
    #   Aurora Serverless DB cluster. By default, the HTTP endpoint is
    #   disabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web
    #   service API for running SQL queries on the Aurora Serverless DB
    #   cluster. You can also query your database from inside the RDS
    #   console with the query editor.
    #
    #   For more information, see [Using the Data API for Aurora
    #   Serverless][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the DB cluster
    #   to snapshots of the DB cluster. The default is not to copy them.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to create the DB cluster in.
    #
    #   For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
    #   Authentication to authenticate users that connect to the DB cluster.
    #   For more information, see [Kerberos Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
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
      :deletion_protection,
      :global_cluster_identifier,
      :enable_http_endpoint,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name,
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
    #   * Must match the name of an existing DB cluster parameter group.
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
    #   Tags to assign to the DB cluster parameter group.
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
    #   `DescribeDBClusterParameterGroups` action.
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster to create a snapshot for. This
    #   parameter isn't case-sensitive.
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
    #   `DescribeDBClusterSnapshots` action.
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
    #         deletion_protection: false,
    #         max_allocated_storage: 1,
    #       }
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
    #
    #   **MySQL**
    #
    #   The name of the database to create when the DB instance is created.
    #   If this parameter isn't specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Can't be a word reserved by the specified database engine
    #
    #   **MariaDB**
    #
    #   The name of the database to create when the DB instance is created.
    #   If this parameter isn't specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Can't be a word reserved by the specified database engine
    #
    #   **PostgreSQL**
    #
    #   The name of the database to create when the DB instance is created.
    #   If this parameter isn't specified, the default "postgres"
    #   database is created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 63 letters, numbers, or underscores.
    #
    #   * Must begin with a letter or an underscore. Subsequent characters
    #     can be letters, underscores, or digits (0-9).
    #
    #   * Can't be a word reserved by the specified database engine
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
    #   * Can't be longer than 8 characters
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
    #   DB cluster is created. If this parameter isn't specified, no
    #   database is created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Can't be a word reserved by the specified database engine
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
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
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **MariaDB**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **PostgreSQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **Oracle**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
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
    #   cluster.
    #
    #   **MariaDB**
    #
    #   Constraints:
    #
    #   * Required for MariaDB.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * Can't be a reserved word for the chosen database engine.
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
    #   * Can't be a reserved word for the chosen database engine.
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
    #   * Can't be a reserved word for the chosen database engine.
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
    #   * Can't be a reserved word for the chosen database engine.
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
    #   * Can't be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the
    #   DB cluster.
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
    #   A list of Amazon EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone (AZ) where the database will be created. For
    #   information on AWS Regions and Availability Zones, see [Regions and
    #   Availability Zones][1].
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's AWS Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The `AvailabilityZone` parameter can't be specified if
    #   the DB instance is a Multi-AZ deployment. The specified Availability
    #   Zone must be in the same AWS Region as the current endpoint.
    #
    #   <note markdown="1"> If you're creating a DB instance in an RDS on VMware environment,
    #   specify the identifier of the custom Availability Zone to create the
    #   DB instance in.
    #
    #    For more information about RDS on VMware, see the [ *RDS on VMware
    #   User Guide.* ][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance. If you do not specify a value, then the default DB
    #   parameter group for the specified DB engine and version is used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   managed by the DB cluster.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Can't be set to 0 if the DB instance is a source to read replicas
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
    #   is managed by the DB cluster.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the database accepts connections.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid values: `1150-65535` except `1234`, `1434`, `3260`, `3343`,
    #   `3389`, `47001`, and `49152-49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment. You can't set the `AvailabilityZone` parameter if the
    #   DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   For a list of valid engine versions, use the
    #   `DescribeDBEngineVersions` action.
    #
    #   The following are the database engines and links to information
    #   about the major and minor versions that are available with Amazon
    #   RDS. Not every database engine is available for every AWS Region.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The version number of the database engine to be used
    #   by the DB instance is managed by the DB cluster.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [5]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the DB instance during the maintenance window. By
    #   default, minor engine upgrades are applied automatically.
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
    #   valid Iops values, see [Amazon RDS Provisioned IOPS Storage to
    #   Improve Performance][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB
    #   instances, must be a multiple between .5 and 50 of the storage
    #   amount for the DB instance. For SQL Server DB instances, must be a
    #   multiple between 1 and 50 of the storage amount for the DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   Indicates that the DB instance should be associated with the
    #   specified option group.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group. Also, that
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
    #   more information, see `CreateDBCluster`.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible. When the DB instance is publicly accessible, it is an
    #   Internet-facing instance with a publicly resolvable DNS name, which
    #   resolves to a public IP address. When the DB instance isn't
    #   publicly accessible, it is an internal instance with a DNS name that
    #   resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target region doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target region has an Internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
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
    #   Tags to assign to the DB instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
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
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
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
    #   A value that indicates whether the DB instance is encrypted. By
    #   default, it isn't encrypted.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The encryption for DB instances is managed by the DB
    #   cluster.
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
    #   For more information, see `CreateDBCluster`.
    #
    #   If `StorageEncrypted` is enabled, and you do not specify a value for
    #   the `KmsKeyId` parameter, then Amazon RDS will use your default
    #   encryption key. AWS KMS creates the default encryption key for your
    #   AWS account. Your AWS account has a different default encryption key
    #   for each AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to create the DB instance in.
    #   Currently, only Microsoft SQL Server and Oracle DB instances can be
    #   created in an Active Directory Domain.
    #
    #   For Microsoft SQL Server DB instances, Amazon RDS can use Windows
    #   Authentication to authenticate users that connect to the DB
    #   instance. For more information, see [ Using Windows Authentication
    #   with an Amazon RDS DB Instance Running Microsoft SQL Server][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   For Oracle DB instances, Amazon RDS can use Kerberos Authentication
    #   to authenticate users that connect to the DB instance. For more
    #   information, see [ Using Kerberos Authentication with Amazon RDS for
    #   Oracle][2] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy tags from the DB instance to
    #   snapshots of the DB instance. By default, tags are not copied.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Copying tags to snapshots is managed by the DB
    #   cluster. Setting this value for an Aurora DB instance has no effect
    #   on the DB cluster setting.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB instance. The time zone parameter is
    #   currently supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled.
    #
    #   You can enable IAM database authentication for the following
    #   database engines:
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * For MySQL 8.0, minor version 8.0.16 or higher
    #
    #   **PostgreSQL**
    #
    #   * For PostgreSQL 9.5, minor version 9.5.15 or higher
    #
    #   * For PostgreSQL 9.6, minor version 9.6.11 or higher
    #
    #   * PostgreSQL 10.6, 10.7, and 10.9
    #
    #   For more information, see [ IAM Database Authentication for MySQL
    #   and PostgreSQL][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for
    #   the DB instance.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default encryption key. AWS KMS creates
    #   the default encryption key for your AWS account. Your AWS account
    #   has a different default encryption key for each AWS Region.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. You can enable or disable deletion protection for
    #   the DB cluster. For more information, see `CreateDBCluster`. DB
    #   instances in a DB cluster can be deleted even when deletion
    #   protection is enabled for the DB cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit to which Amazon RDS can automatically scale the
    #   storage of the DB instance.
    #   @return [Integer]
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
      :processor_features,
      :deletion_protection,
      :max_allocated_storage)
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
    #         db_parameter_group_name: "String",
    #         publicly_accessible: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         db_subnet_group_name: "String",
    #         vpc_security_group_ids: ["String"],
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
    #         deletion_protection: false,
    #         domain: "String",
    #         domain_iam_role_name: "String",
    #         source_region: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier of the read replica. This identifier is
    #   the unique key that identifies a DB instance. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] source_db_instance_identifier
    #   The identifier of the DB instance that will act as the source for
    #   the read replica. Each DB instance can have up to five read
    #   replicas.
    #
    #   Constraints:
    #
    #   * Must be the identifier of an existing MySQL, MariaDB, Oracle,
    #     PostgreSQL, or SQL Server DB instance.
    #
    #   * Can specify a DB instance that is a MySQL read replica only if the
    #     source is running MySQL 5.6 or later.
    #
    #   * For the limitations of Oracle read replicas, see [Read Replica
    #     Limitations with Oracle][1] in the *Amazon RDS User Guide*.
    #
    #   * For the limitations of SQL Server read replicas, see [Read Replica
    #     Limitations with Microsoft SQL Server][2] in the *Amazon RDS User
    #     Guide*.
    #
    #   * Can specify a PostgreSQL DB instance only if the source is running
    #     PostgreSQL 9.3.5 or later (9.4.7 and higher for cross-region
    #     replication).
    #
    #   * The specified DB instance must have automatic backups enabled,
    #     that is, its backup retention period must be greater than 0.
    #
    #   * If the source DB instance is in the same AWS Region as the read
    #     replica, specify a valid DB instance identifier.
    #
    #   * If the source DB instance is in a different AWS Region from the
    #     read replica, specify a valid DB instance ARN. For more
    #     information, see [Constructing an ARN for Amazon RDS][3] in the
    #     *Amazon RDS User Guide*. This doesn't apply to SQL Server, which
    #     doesn't support cross-region replicas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.Limitations.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the read replica, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: Inherits from the source DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone (AZ) where the read replica will be created.
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
    #   A value that indicates whether the read replica is in a Multi-AZ
    #   deployment.
    #
    #   You can create a read replica as a Multi-AZ DB instance. RDS creates
    #   a standby of your replica in another Availability Zone for failover
    #   support for the replica. Creating your read replica as a Multi-AZ DB
    #   instance is independent of whether the source database is a Multi-AZ
    #   DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the read replica during the maintenance window.
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
    #   option group associated with the source instance is used.
    #
    #   <note markdown="1"> For SQL Server, you must use the option group associated with the
    #   source instance.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then
    #   Amazon RDS uses the `DBParameterGroup` of source DB instance for a
    #   same region read replica, or the default `DBParameterGroup` for the
    #   specified DB engine for a cross region read replica.
    #
    #   <note markdown="1"> Currently, specifying a parameter group for this operation is only
    #   supported for Oracle DB instances.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible. When the DB instance is publicly accessible, it is an
    #   Internet-facing instance with a publicly resolvable DNS name, which
    #   resolves to a public IP address. When the DB instance isn't
    #   publicly accessible, it is an internal instance with a DNS name that
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   Specifies a DB subnet group for the DB instance. The new DB instance
    #   is created in the VPC associated with the DB subnet group. If no DB
    #   subnet group is specified, then the new DB instance isn't created
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
    #   * All read replicas in one AWS Region that are created from the same
    #     source DB instance must either:&gt;
    #
    #     * Specify DB subnet groups from the same VPC. All these read
    #       replicas are created in the same VPC.
    #
    #     * Not specify a DB subnet group. All these read replicas are
    #       created outside of any VPC.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the read
    #   replica.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the read replica.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the read
    #   replica to snapshots of the read replica. By default, tags are not
    #   copied.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the read replica. To disable collecting
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID for an encrypted read replica. The KMS key ID is
    #   the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
    #   alias for the KMS encryption key.
    #
    #   If you create an encrypted read replica in the same AWS Region as
    #   the source DB instance, then you do not have to specify a value for
    #   this parameter. The read replica is encrypted with the same KMS key
    #   as the source DB instance.
    #
    #   If you create an encrypted read replica in a different AWS Region,
    #   then you must specify a KMS key for the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in
    #   another AWS Region.
    #
    #   You can't create an encrypted read replica from an unencrypted DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CreateDBInstanceReadReplica` API action in the source AWS Region
    #   that contains the source DB instance.
    #
    #   You must specify this parameter when you create an encrypted read
    #   replica from another AWS Region by using the Amazon RDS API. Don't
    #   specify `PreSignedUrl` when you are creating an encrypted read
    #   replica in the same AWS Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CreateDBInstanceReadReplica` API action that can be executed in the
    #   source AWS Region that contains the encrypted source DB instance.
    #   The presigned URL request must contain the following parameter
    #   values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted read
    #     replica is created in. This AWS Region is the same one where the
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
    #     encrypt the read replica in the destination AWS Region. This is
    #     the same identifier for both the `CreateDBInstanceReadReplica`
    #     action that is called in the destination AWS Region, and the
    #     action contained in the presigned URL.
    #
    #   * `SourceDBInstanceIdentifier` - The DB instance identifier for the
    #     encrypted DB instance to be replicated. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source AWS Region.
    #     For example, if you are creating an encrypted read replica from a
    #     DB instance in the us-west-2 AWS Region, then your
    #     `SourceDBInstanceIdentifier` looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #   <note markdown="1"> If you are using an AWS SDK tool or the AWS CLI, you can specify
    #   `SourceRegion` (or `--source-region` for the AWS CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can be executed in the source AWS Region.
    #
    #    `SourceRegion` isn't supported for SQL Server, because SQL Server
    #   on Amazon RDS doesn't support cross-region read replicas.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled. For information about the supported DB engines,
    #   see CreateDBInstance.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for
    #   the read replica.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default encryption key. AWS KMS creates
    #   the default encryption key for your AWS account. Your AWS account
    #   has a different default encryption key for each AWS Region.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to create the DB instance in.
    #
    #   For Oracle DB instances, Amazon RDS can use Kerberos Authentication
    #   to authenticate users that connect to the DB instance. For more
    #   information, see [ Using Kerberos Authentication with Amazon RDS for
    #   Oracle][1] in the *Amazon RDS User Guide*.
    #
    #   For Microsoft SQL Server DB instances, Amazon RDS can use Windows
    #   Authentication to authenticate users that connect to the DB
    #   instance. For more information, see [ Using Windows Authentication
    #   with an Amazon RDS DB Instance Running Microsoft SQL Server][2] in
    #   the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
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
      :db_parameter_group_name,
      :publicly_accessible,
      :tags,
      :db_subnet_group_name,
      :vpc_security_group_ids,
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
      :deletion_protection,
      :domain,
      :domain_iam_role_name,
      :destination_region,
      :source_region)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBInstances` action.
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
    #   `DescribeDBInstances` action.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   Tags to assign to the DB parameter group.
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
    #   `DescribeDBParameterGroups` action.
    #   @return [Types::DBParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBParameterGroupResult AWS API Documentation
    #
    class CreateDBParameterGroupResult < Struct.new(
      :db_parameter_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDBProxyRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #         engine_family: "MYSQL", # required, accepts MYSQL, POSTGRESQL
    #         auth: [ # required
    #           {
    #             description: "String",
    #             user_name: "String",
    #             auth_scheme: "SECRETS", # accepts SECRETS
    #             secret_arn: "String",
    #             iam_auth: "DISABLED", # accepts DISABLED, REQUIRED
    #           },
    #         ],
    #         role_arn: "String", # required
    #         vpc_subnet_ids: ["String"], # required
    #         vpc_security_group_ids: ["String"],
    #         require_tls: false,
    #         idle_client_timeout: 1,
    #         debug_logging: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier for the proxy. This name must be unique for all
    #   proxies owned by your AWS account in the specified AWS Region. An
    #   identifier must begin with a letter and must contain only ASCII
    #   letters, digits, and hyphens; it can't end with a hyphen or contain
    #   two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] engine_family
    #   The kinds of databases that the proxy can connect to. This value
    #   determines which database network protocol the proxy recognizes when
    #   it interprets network traffic to and from the database. The engine
    #   family applies to MySQL and PostgreSQL for both RDS and Aurora.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   The authorization mechanism that the proxy uses.
    #   @return [Array<Types::UserAuthConfig>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the proxy uses
    #   to access secrets in AWS Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   One or more VPC subnet IDs to associate with the new proxy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   One or more VPC security group IDs to associate with the new proxy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] require_tls
    #   A Boolean parameter that specifies whether Transport Layer Security
    #   (TLS) encryption is required for connections to the proxy. By
    #   enabling this setting, you can enforce encrypted TLS connections to
    #   the proxy.
    #   @return [Boolean]
    #
    # @!attribute [rw] idle_client_timeout
    #   The number of seconds that a connection to the proxy can be inactive
    #   before the proxy disconnects it. You can set this value higher or
    #   lower than the connection timeout limit for the associated database.
    #   @return [Integer]
    #
    # @!attribute [rw] debug_logging
    #   Whether the proxy includes detailed information about SQL statements
    #   in its logs. This information helps you to debug issues involving
    #   SQL behavior or the performance and scalability of the proxy
    #   connections. The debug information includes the text of SQL
    #   statements that you submit through the proxy. Thus, only enable this
    #   setting when needed for debugging, and only when you have security
    #   measures in place to safeguard any sensitive information that
    #   appears in the logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   An optional set of key-value pairs to associate arbitrary data of
    #   your choosing with the proxy.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBProxyRequest AWS API Documentation
    #
    class CreateDBProxyRequest < Struct.new(
      :db_proxy_name,
      :engine_family,
      :auth,
      :role_arn,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :require_tls,
      :idle_client_timeout,
      :debug_logging,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy
    #   The `DBProxy` structure corresponding to the new proxy.
    #   @return [Types::DBProxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBProxyResponse AWS API Documentation
    #
    class CreateDBProxyResponse < Struct.new(
      :db_proxy)
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   Tags to assign to the DB security group.
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
    #   `DescribeDBSecurityGroups` action.
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
    #   * Can't be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   `DescribeDBSnapshots` action.
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
    #   Tags to assign to the DB subnet group.
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
    #   `DescribeDBSubnetGroups` action.
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
    #   would set this parameter to db-instance. if this value isn't
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_ids
    #   The list of identifiers of the event sources for which events are
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain
    #   only ASCII letters, digits, and hyphens. It can't end with a hyphen
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
    #   A value that indicates whether to activate the subscription. If the
    #   event notification subscription isn't activated, the subscription
    #   is created but not active.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   `DescribeEventSubscriptions` action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateEventSubscriptionResult AWS API Documentation
    #
    class CreateEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGlobalClusterMessage
    #   data as a hash:
    #
    #       {
    #         global_cluster_identifier: "String",
    #         source_db_cluster_identifier: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         deletion_protection: false,
    #         database_name: "String",
    #         storage_encrypted: false,
    #       }
    #
    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier of the new global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   The Amazon Resource Name (ARN) to use as the primary cluster of the
    #   global database. This parameter is optional.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version of the Aurora global database.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   The deletion protection setting for the new global database. The
    #   global database can't be deleted when deletion protection is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] database_name
    #   The name for your database of up to 64 alpha-numeric characters. If
    #   you do not provide a name, Amazon Aurora will not create a database
    #   in the global database cluster you are creating.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   The storage encryption setting for the new global database cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateGlobalClusterMessage AWS API Documentation
    #
    class CreateGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :source_db_cluster_identifier,
      :engine,
      :engine_version,
      :deletion_protection,
      :database_name,
      :storage_encrypted)
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   A data type representing an Aurora global database.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateGlobalClusterResult AWS API Documentation
    #
    class CreateGlobalClusterResult < Struct.new(
      :global_cluster)
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   Tags to assign to the option group.
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

    # A custom Availability Zone (AZ) is an on-premises AZ that is
    # integrated with a VMware vSphere cluster.
    #
    # For more information about RDS on VMware, see the [ *RDS on VMware
    # User Guide.* ][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html
    #
    # @!attribute [rw] custom_availability_zone_id
    #   The identifier of the custom AZ.
    #
    #   Amazon RDS generates a unique identifier when a custom AZ is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] custom_availability_zone_name
    #   The name of the custom AZ.
    #   @return [String]
    #
    # @!attribute [rw] custom_availability_zone_status
    #   The status of the custom AZ.
    #   @return [String]
    #
    # @!attribute [rw] vpn_details
    #   Information about the virtual private network (VPN) between the
    #   VMware vSphere cluster and the AWS website.
    #   @return [Types::VpnDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomAvailabilityZone AWS API Documentation
    #
    class CustomAvailabilityZone < Struct.new(
      :custom_availability_zone_id,
      :custom_availability_zone_name,
      :custom_availability_zone_status,
      :vpn_details)
      include Aws::Structure
    end

    # `CustomAvailabilityZoneName` is already used by an existing custom
    # Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomAvailabilityZoneAlreadyExistsFault AWS API Documentation
    #
    class CustomAvailabilityZoneAlreadyExistsFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeCustomAvailabilityZones` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] custom_availability_zones
    #   The list of CustomAvailabilityZone objects for the AWS account.
    #   @return [Array<Types::CustomAvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomAvailabilityZoneMessage AWS API Documentation
    #
    class CustomAvailabilityZoneMessage < Struct.new(
      :marker,
      :custom_availability_zones)
      include Aws::Structure
    end

    # `CustomAvailabilityZoneId` doesn't refer to an existing custom
    # Availability Zone identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomAvailabilityZoneNotFoundFault AWS API Documentation
    #
    class CustomAvailabilityZoneNotFoundFault < Aws::EmptyStructure; end

    # You have exceeded the maximum number of custom Availability Zones.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomAvailabilityZoneQuotaExceededFault AWS API Documentation
    #
    class CustomAvailabilityZoneQuotaExceededFault < Aws::EmptyStructure; end

    # Contains the details of an Amazon Aurora DB cluster.
    #
    # This data type is used as a response element in the
    # `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
    #
    # @!attribute [rw] allocated_storage
    #   For all database engines except Amazon Aurora, `AllocatedStorage`
    #   specifies the allocated storage size in gibibytes (GiB). For Aurora,
    #   `AllocatedStorage` always returns 1, because Aurora DB cluster
    #   storage size isn't fixed, but instead automatically adjusts as
    #   needed.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Availability Zones (AZs) where instances in the
    #   DB cluster can be created.
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
    # @!attribute [rw] custom_endpoints
    #   Identifies all custom endpoints associated with the cluster.
    #   @return [Array<String>]
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
    #   is a read replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_identifiers
    #   Contains one or more identifiers of the read replicas associated
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
    #   If `StorageEncrypted` is enabled, the AWS KMS key identifier for the
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
    #   A value that indicates whether the mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts is enabled.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] capacity
    #   The current capacity of an Aurora Serverless DB cluster. The
    #   capacity is 0 (zero) when the cluster is paused.
    #
    #   For more information about Aurora Serverless, see [Using Amazon
    #   Aurora Serverless][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #   @return [Integer]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, `parallelquery`, `global`, or `multimaster`.
    #
    #   <note markdown="1"> `global` engine mode only applies for global database clusters
    #   created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL
    #   versions, the clusters in a global database use `provisioned` engine
    #   mode. To check if a DB cluster is part of a global database, use
    #   `DescribeGlobalClusters` instead of checking the `EngineMode` return
    #   value from `DescribeDBClusters`.
    #
    #    </note>
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #   @return [Types::ScalingConfigurationInfo]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates if the DB cluster has deletion protection enabled. The
    #   database can't be deleted when deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] http_endpoint_enabled
    #   A value that indicates whether the HTTP endpoint for an Aurora
    #   Serverless DB cluster is enabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web
    #   service API for running SQL queries on the Aurora Serverless DB
    #   cluster. You can also query your database from inside the RDS
    #   console with the query editor.
    #
    #   For more information, see [Using the Data API for Aurora
    #   Serverless][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    #   @return [Boolean]
    #
    # @!attribute [rw] activity_stream_mode
    #   The mode of the database activity stream. Database events such as a
    #   change or access generate an activity stream event. The database
    #   session can handle these events either synchronously or
    #   asynchronously.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_status
    #   The status of the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_kms_key_id
    #   The AWS KMS key identifier used for encrypting messages in the
    #   database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_kinesis_stream_name
    #   The name of the Amazon Kinesis data stream used for the database
    #   activity stream.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether tags are copied from the DB cluster to snapshots
    #   of the DB cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_clone
    #   Specifies whether the DB cluster is a clone of a DB cluster owned by
    #   a different AWS account.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory Domain membership records associated with the
    #   DB cluster.
    #   @return [Array<Types::DomainMembership>]
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
      :custom_endpoints,
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
      :scaling_configuration_info,
      :deletion_protection,
      :http_endpoint_enabled,
      :activity_stream_mode,
      :activity_stream_status,
      :activity_stream_kms_key_id,
      :activity_stream_kinesis_stream_name,
      :copy_tags_to_snapshot,
      :cross_account_clone,
      :domain_memberships)
      include Aws::Structure
    end

    # The user already has a DB cluster with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterAlreadyExistsFault AWS API Documentation
    #
    class DBClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the
    # `DescribeDBClusterBacktracks` action.
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
    # `DescribeDBClusterBacktracks` action.
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later
    #   `DescribeDBClusterBacktracks` request.
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

    # `BacktrackIdentifier` doesn't refer to an existing backtrack.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterBacktrackNotFoundFault AWS API Documentation
    #
    class DBClusterBacktrackNotFoundFault < Aws::EmptyStructure; end

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

    # This data type represents the information you need to connect to an
    # Amazon Aurora DB cluster. This data type is used as a response element
    # in the following actions:
    #
    # * `CreateDBClusterEndpoint`
    #
    # * `DescribeDBClusterEndpoints`
    #
    # * `ModifyDBClusterEndpoint`
    #
    # * `DeleteDBClusterEndpoint`
    #
    # For the data structure that represents Amazon RDS DB instance
    # endpoints, see `Endpoint`.
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the endpoint. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_resource_identifier
    #   A unique system-generated identifier for an endpoint. It remains the
    #   same for the whole life of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The DNS address of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint. One of: `creating`, `available`,
    #   `deleting`, `modifying`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_type
    #   The type associated with a custom endpoint. One of: `READER`,
    #   `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_endpoint_arn
    #   The Amazon Resource Name (ARN) for the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterEndpoint AWS API Documentation
    #
    class DBClusterEndpoint < Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn)
      include Aws::Structure
    end

    # The specified custom endpoint can't be created because it already
    # exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterEndpointAlreadyExistsFault AWS API Documentation
    #
    class DBClusterEndpointAlreadyExistsFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterEndpoints` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoints
    #   Contains the details of the endpoints associated with the cluster
    #   and matching any filter conditions.
    #   @return [Array<Types::DBClusterEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterEndpointMessage AWS API Documentation
    #
    class DBClusterEndpointMessage < Struct.new(
      :marker,
      :db_cluster_endpoints)
      include Aws::Structure
    end

    # The specified custom endpoint doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterEndpointNotFoundFault AWS API Documentation
    #
    class DBClusterEndpointNotFoundFault < Aws::EmptyStructure; end

    # The cluster already has the maximum number of custom endpoints.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterEndpointQuotaExceededFault AWS API Documentation
    #
    class DBClusterEndpointQuotaExceededFault < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
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
    # `DescribeDBClusters` action.
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later DescribeDBClusters
    #   request.
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

    # `DBClusterIdentifier` doesn't refer to an existing DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterNotFoundFault AWS API Documentation
    #
    class DBClusterNotFoundFault < Aws::EmptyStructure; end

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
    # `DescribeDBClusterParameterGroups` action.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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

    # `DBClusterParameterGroupName` doesn't refer to an existing DB cluster
    # parameter group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterParameterGroupNotFoundFault AWS API Documentation
    #
    class DBClusterParameterGroupNotFoundFault < Aws::EmptyStructure; end

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

    # The user attempted to create a new DB cluster and the user has already
    # reached the maximum allowed DB cluster quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterQuotaExceededFault AWS API Documentation
    #
    class DBClusterQuotaExceededFault < Aws::EmptyStructure; end

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
    #   The name of the feature associated with the AWS Identity and Access
    #   Management (IAM) role. For the list of supported feature names, see
    #   DBEngineVersion.
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

    # The specified IAM role Amazon Resource Name (ARN) is already
    # associated with the specified DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterRoleAlreadyExistsFault AWS API Documentation
    #
    class DBClusterRoleAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified IAM role Amazon Resource Name (ARN) isn't associated
    # with the specified DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterRoleNotFoundFault AWS API Documentation
    #
    class DBClusterRoleNotFoundFault < Aws::EmptyStructure; end

    # You have exceeded the maximum number of IAM roles that can be
    # associated with the specified DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterRoleQuotaExceededFault AWS API Documentation
    #
    class DBClusterRoleQuotaExceededFault < Aws::EmptyStructure; end

    # Contains the details for an Amazon RDS DB cluster snapshot
    #
    # This data type is used as a response element in the
    # `DescribeDBClusterSnapshots` action.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Availability Zones (AZs) where instances in the
    #   DB cluster snapshot can be restored.
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

    # The user already has a DB cluster snapshot with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBClusterSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the name and values of a manual DB cluster snapshot
    # attribute.
    #
    # Manual DB cluster snapshot attributes are used to authorize other AWS
    # accounts to restore a manual DB cluster snapshot. For more
    # information, see the `ModifyDBClusterSnapshotAttribute` API action.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB cluster snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of AWS accounts
    #   that have permission to copy or restore the manual DB cluster
    #   snapshot. For more information, see the
    #   `ModifyDBClusterSnapshotAttribute` API action.
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
    # `DescribeDBClusterSnapshotAttributes` API action.
    #
    # Manual DB cluster snapshot attributes are used to authorize other AWS
    # accounts to copy or restore a manual DB cluster snapshot. For more
    # information, see the `ModifyDBClusterSnapshotAttribute` API action.
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
    # a call to the `DescribeDBClusterSnapshots` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterSnapshots` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
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

    # `DBClusterSnapshotIdentifier` doesn't refer to an existing DB cluster
    # snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshotNotFoundFault AWS API Documentation
    #
    class DBClusterSnapshotNotFoundFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the action
    # `DescribeDBEngineVersions`.
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
    #   if the `CharacterSetName` parameter of the CreateDBInstance API
    #   isn't specified.
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
    #
    #   <note markdown="1"> `global` engine mode only applies for global database clusters
    #   created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL
    #   versions, the clusters in a global database use `provisioned` engine
    #   mode.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_feature_names
    #   A list of features supported by the DB engine. Supported feature
    #   names include the following.
    #
    #   * s3Import
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the DB engine version, either `available` or
    #   `deprecated`.
    #   @return [String]
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
      :supported_engine_modes,
      :supported_feature_names,
      :status)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeDBEngineVersions` action.
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
    # `DescribeDBInstances` action.
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
    #
    #   For information about DB instance statuses, see [DB Instance
    #   Status][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   Contains the master username for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
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
    #   A list of DB security group elements containing
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
    #   instance is a read replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_db_instance_identifiers
    #   Contains one or more identifiers of the read replicas associated
    #   with this DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] read_replica_db_cluster_identifiers
    #   Contains one or more identifiers of Aurora DB clusters to which the
    #   RDS DB instance is replicated as a read replica. For example, when
    #   you create an Aurora read replica of an RDS MySQL DB instance, the
    #   Aurora MySQL DB cluster for the Aurora read replica is shown. This
    #   output does not contain information about cross region Aurora read
    #   replicas.
    #
    #   <note markdown="1"> Currently, each RDS DB instance can have only one Aurora read
    #   replica.
    #
    #    </note>
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
    #   The status of a read replica. If the instance isn't a read replica,
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
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Copying tags to snapshots is managed by the DB
    #   cluster. Setting this value for an Aurora DB instance has no effect
    #   on the DB cluster setting. For more information, see `DBCluster`.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates if the DB instance has deletion protection enabled. The
    #   database can't be deleted when deletion protection is enabled. For
    #   more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] associated_roles
    #   The AWS Identity and Access Management (IAM) roles associated with
    #   the DB instance.
    #   @return [Array<Types::DBInstanceRole>]
    #
    # @!attribute [rw] listener_endpoint
    #   Specifies the listener connection endpoint for SQL Server Always On.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit to which Amazon RDS can automatically scale the
    #   storage of the DB instance.
    #   @return [Integer]
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
      :processor_features,
      :deletion_protection,
      :associated_roles,
      :listener_endpoint,
      :max_allocated_storage)
      include Aws::Structure
    end

    # The user already has a DB instance with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAlreadyExistsFault AWS API Documentation
    #
    class DBInstanceAlreadyExistsFault < Aws::EmptyStructure; end

    # An automated backup of a DB instance. It it consists of system
    # backups, transaction logs, and the database instance properties that
    # existed at the time you deleted the source instance.
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) for the automated backup.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The identifier for the source DB instance, which can't be changed
    #   and which is unique to an AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region associated with the automated backup.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The customer id of the instance that is/was associated with the
    #   automated backup.
    #   @return [String]
    #
    # @!attribute [rw] restore_window
    #   Earliest and latest time an instance can be restored to.
    #   @return [Types::RestoreWindow]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Provides a list of status information for an automated backup:
    #
    #   * `active` - automated backups for current instances
    #
    #   * `retained` - automated backups for deleted instances
    #
    #   * `creating` - automated backups that are waiting for the first
    #     automated snapshot to be available.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number that the automated backup used for connections.
    #
    #   Default: Inherits from the source DB instance
    #
    #   Valid Values: `1150-65535`
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that the automated backup was created in. For
    #   information on AWS Regions and Availability Zones, see [Regions and
    #   Availability Zones][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID associated with the DB instance
    #   @return [String]
    #
    # @!attribute [rw] instance_create_time
    #   Provides the date and time that the DB instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   The license model of an automated backup.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine for this automated backup.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine for the automated backup.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   License model information for the automated backup.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The IOPS (I/O operations per second) value for the automated backup.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The option group the automated backup is associated with. If
    #   omitted, the default option group for the engine specified is used.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the automated backup is
    #   associated for TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the automated backup is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type associated with the automated backup.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID for an automated backup. The KMS key ID is the
    #   Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
    #   for the KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of the automated backup. In most cases, the `Timezone`
    #   element is empty. `Timezone` content appears only for Microsoft SQL
    #   Server DB instances that were created with a time zone specified.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAutomatedBackup AWS API Documentation
    #
    class DBInstanceAutomatedBackup < Struct.new(
      :db_instance_arn,
      :dbi_resource_id,
      :region,
      :db_instance_identifier,
      :restore_window,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine,
      :engine_version,
      :license_model,
      :iops,
      :option_group_name,
      :tde_credential_arn,
      :encrypted,
      :storage_type,
      :kms_key_id,
      :timezone,
      :iam_database_authentication_enabled)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeDBInstanceAutomatedBackups` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] db_instance_automated_backups
    #   A list of `DBInstanceAutomatedBackup` instances.
    #   @return [Array<Types::DBInstanceAutomatedBackup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAutomatedBackupMessage AWS API Documentation
    #
    class DBInstanceAutomatedBackupMessage < Struct.new(
      :marker,
      :db_instance_automated_backups)
      include Aws::Structure
    end

    # No automated backup for this DB instance was found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAutomatedBackupNotFoundFault AWS API Documentation
    #
    class DBInstanceAutomatedBackupNotFoundFault < Aws::EmptyStructure; end

    # The quota for retained automated backups was exceeded. This prevents
    # you from retaining any additional automated backups. The retained
    # automated backups quota is the same as your DB Instance quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAutomatedBackupQuotaExceededFault AWS API Documentation
    #
    class DBInstanceAutomatedBackupQuotaExceededFault < Aws::EmptyStructure; end

    # Contains the result of a successful invocation of the
    # `DescribeDBInstances` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] db_instances
    #   A list of `DBInstance` instances.
    #   @return [Array<Types::DBInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceMessage AWS API Documentation
    #
    class DBInstanceMessage < Struct.new(
      :marker,
      :db_instances)
      include Aws::Structure
    end

    # `DBInstanceIdentifier` doesn't refer to an existing DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceNotFoundFault AWS API Documentation
    #
    class DBInstanceNotFoundFault < Aws::EmptyStructure; end

    # Describes an AWS Identity and Access Management (IAM) role that is
    # associated with a DB instance.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the AWS Identity and Access
    #   Management (IAM) role. For the list of supported feature names, see
    #   `DBEngineVersion`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of association between the IAM role and the DB
    #   instance. The Status property returns one of the following values:
    #
    #   * `ACTIVE` - the IAM role ARN is associated with the DB instance and
    #     can be used to access other AWS services on your behalf.
    #
    #   * `PENDING` - the IAM role ARN is being associated with the DB
    #     instance.
    #
    #   * `INVALID` - the IAM role ARN is associated with the DB instance,
    #     but the DB instance is unable to assume the IAM role in order to
    #     access other AWS services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceRole AWS API Documentation
    #
    class DBInstanceRole < Struct.new(
      :role_arn,
      :feature_name,
      :status)
      include Aws::Structure
    end

    # The specified `RoleArn` or `FeatureName` value is already associated
    # with the DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceRoleAlreadyExistsFault AWS API Documentation
    #
    class DBInstanceRoleAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified `RoleArn` value doesn't match the specified feature for
    # the DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceRoleNotFoundFault AWS API Documentation
    #
    class DBInstanceRoleNotFoundFault < Aws::EmptyStructure; end

    # You can't associate any more AWS Identity and Access Management (IAM)
    # roles with the DB instance because the quota has been reached.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceRoleQuotaExceededFault AWS API Documentation
    #
    class DBInstanceRoleQuotaExceededFault < Aws::EmptyStructure; end

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
    #   instance isn't in an error state, this value is blank.
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

    # `LogFileName` doesn't refer to an existing DB log file.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBLogFileNotFoundFault AWS API Documentation
    #
    class DBLogFileNotFoundFault < Aws::EmptyStructure; end

    # Contains the details of an Amazon RDS DB parameter group.
    #
    # This data type is used as a response element in the
    # `DescribeDBParameterGroups` action.
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

    # A DB parameter group with the same name exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupAlreadyExistsFault AWS API Documentation
    #
    class DBParameterGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the result of a successful invocation of the
    # `DescribeDBParameters` action.
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` values.
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
    # `ModifyDBParameterGroup` or `ResetDBParameterGroup` action.
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

    # `DBParameterGroupName` doesn't refer to an existing DB parameter
    # group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupNotFoundFault AWS API Documentation
    #
    class DBParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # The request would result in the user exceeding the allowed number of
    # DB parameter groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupQuotaExceededFault AWS API Documentation
    #
    class DBParameterGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The status of the DB parameter group.
    #
    # This data type is used as a response element in the following actions:
    #
    # * `CreateDBInstance`
    #
    # * `CreateDBInstanceReadReplica`
    #
    # * `DeleteDBInstance`
    #
    # * `ModifyDBInstance`
    #
    # * `RebootDBInstance`
    #
    # * `RestoreDBInstanceFromDBSnapshot`
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
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
    # `DescribeDBParameterGroups` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_groups
    #   A list of `DBParameterGroup` instances.
    #   @return [Array<Types::DBParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupsMessage AWS API Documentation
    #
    class DBParameterGroupsMessage < Struct.new(
      :marker,
      :db_parameter_groups)
      include Aws::Structure
    end

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # The data structure representing a proxy managed by the RDS Proxy.
    #
    # This data type is used as a response element in the
    # `DescribeDBProxies` action.
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier for the proxy. This name must be unique for all
    #   proxies owned by your AWS account in the specified AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_arn
    #   The Amazon Resource Name (ARN) for the proxy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this proxy. A status of `available` means the
    #   proxy is ready to handle requests. Other values indicate that you
    #   must wait for the proxy to be ready, or take some action to resolve
    #   an issue.
    #   @return [String]
    #
    # @!attribute [rw] engine_family
    #   The engine family applies to MySQL and PostgreSQL for both RDS and
    #   Aurora.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Provides a list of VPC security groups that the proxy belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   The EC2 subnet IDs for the proxy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auth
    #   One or more data structures specifying the authorization mechanism
    #   to connect to the associated RDS DB instance or Aurora DB cluster.
    #   @return [Array<Types::UserAuthConfigInfo>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that the proxy uses
    #   to access Amazon Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint that you can use to connect to the proxy. You include
    #   the endpoint value in the connection string for a database client
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] require_tls
    #   Indicates whether Transport Layer Security (TLS) encryption is
    #   required for connections to the proxy.
    #   @return [Boolean]
    #
    # @!attribute [rw] idle_client_timeout
    #   The number of seconds a connection to the proxy can have no activity
    #   before the proxy drops the client connection. The proxy keeps the
    #   underlying database connection open and puts it back into the
    #   connection pool for reuse by later connection requests.
    #
    #   Default: 1800 (30 minutes)
    #
    #   Constraints: 1 to 28,800
    #   @return [Integer]
    #
    # @!attribute [rw] debug_logging
    #   Whether the proxy includes detailed information about SQL statements
    #   in its logs. This information helps you to debug issues involving
    #   SQL behavior or the performance and scalability of the proxy
    #   connections. The debug information includes the text of SQL
    #   statements that you submit through the proxy. Thus, only enable this
    #   setting when needed for debugging, and only when you have security
    #   measures in place to safeguard any sensitive information that
    #   appears in the logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The date and time when the proxy was first created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The date and time when the proxy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxy AWS API Documentation
    #
    class DBProxy < Struct.new(
      :db_proxy_name,
      :db_proxy_arn,
      :status,
      :engine_family,
      :vpc_security_group_ids,
      :vpc_subnet_ids,
      :auth,
      :role_arn,
      :endpoint,
      :require_tls,
      :idle_client_timeout,
      :debug_logging,
      :created_date,
      :updated_date)
      include Aws::Structure
    end

    # The specified proxy name must be unique for all proxies owned by your
    # AWS account in the specified AWS Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyAlreadyExistsFault AWS API Documentation
    #
    class DBProxyAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified proxy name doesn't correspond to a proxy owned by your
    # AWS accoutn in the specified AWS Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyNotFoundFault AWS API Documentation
    #
    class DBProxyNotFoundFault < Aws::EmptyStructure; end

    # Your AWS account already has the maximum number of proxies in the
    # specified AWS Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyQuotaExceededFault AWS API Documentation
    #
    class DBProxyQuotaExceededFault < Aws::EmptyStructure; end

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Contains the details for an RDS Proxy target. It represents an RDS DB
    # instance or Aurora DB cluster that the proxy can connect to. One or
    # more targets are associated with an RDS Proxy target group.
    #
    # This data type is used as a response element in the
    # `DescribeDBProxyTargets` action.
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) for the RDS DB instance or Aurora DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The writer endpoint for the RDS DB instance or Aurora DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] tracked_cluster_id
    #   The DB cluster identifier when the target represents an Aurora DB
    #   cluster. This field is blank when the target represents an RDS DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] rds_resource_id
    #   The identifier representing the target. It can be the instance
    #   identifier for an RDS DB instance, or the cluster identifier for an
    #   Aurora DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the RDS Proxy uses to connect to the target RDS DB
    #   instance or Aurora DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Specifies the kind of database, such as an RDS DB instance or an
    #   Aurora DB cluster, that the target represents.
    #   @return [String]
    #
    # @!attribute [rw] target_health
    #   Information about the connection health of the RDS Proxy target.
    #   @return [Types::TargetHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTarget AWS API Documentation
    #
    class DBProxyTarget < Struct.new(
      :target_arn,
      :endpoint,
      :tracked_cluster_id,
      :rds_resource_id,
      :port,
      :type,
      :target_health)
      include Aws::Structure
    end

    # The proxy is already associated with the specified RDS DB instance or
    # Aurora DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTargetAlreadyRegisteredFault AWS API Documentation
    #
    class DBProxyTargetAlreadyRegisteredFault < Aws::EmptyStructure; end

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Represents a set of RDS DB instances, Aurora DB clusters, or both that
    # a proxy can connect to. Currently, each target group is associated
    # with exactly one RDS DB instance or Aurora DB cluster.
    #
    # This data type is used as a response element in the
    # `DescribeDBProxyTargetGroups` action.
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier for the RDS proxy associated with this target group.
    #   @return [String]
    #
    # @!attribute [rw] target_group_name
    #   The identifier for the target group. This name must be unique for
    #   all target groups owned by your AWS account in the specified AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) representing the target group.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Whether this target group is the first one used for connection
    #   requests by the associated proxy. Because each proxy is currently
    #   associated with a single target group, currently this setting is
    #   always `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of this target group. A status of `available`
    #   means the target group is correctly associated with a database.
    #   Other values indicate that you must wait for the target group to be
    #   ready, or take some action to resolve an issue.
    #   @return [String]
    #
    # @!attribute [rw] connection_pool_config
    #   The settings that determine the size and behavior of the connection
    #   pool for the target group.
    #   @return [Types::ConnectionPoolConfigurationInfo]
    #
    # @!attribute [rw] created_date
    #   The date and time when the target group was first created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The date and time when the target group was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTargetGroup AWS API Documentation
    #
    class DBProxyTargetGroup < Struct.new(
      :db_proxy_name,
      :target_group_name,
      :target_group_arn,
      :is_default,
      :status,
      :connection_pool_config,
      :created_date,
      :updated_date)
      include Aws::Structure
    end

    # The specified target group isn't available for a proxy owned by your
    # AWS account in the specified AWS Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTargetGroupNotFoundFault AWS API Documentation
    #
    class DBProxyTargetGroupNotFoundFault < Aws::EmptyStructure; end

    # The specified RDS DB instance or Aurora DB cluster isn't available
    # for a proxy owned by your AWS account in the specified AWS Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTargetNotFoundFault AWS API Documentation
    #
    class DBProxyTargetNotFoundFault < Aws::EmptyStructure; end

    # Contains the details for an Amazon RDS DB security group.
    #
    # This data type is used as a response element in the
    # `DescribeDBSecurityGroups` action.
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
    #   Contains a list of `EC2SecurityGroup` elements.
    #   @return [Array<Types::EC2SecurityGroup>]
    #
    # @!attribute [rw] ip_ranges
    #   Contains a list of `IPRange` elements.
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

    # A DB security group with the name specified in `DBSecurityGroupName`
    # already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupAlreadyExistsFault AWS API Documentation
    #
    class DBSecurityGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the following actions:
    #
    # * `ModifyDBInstance`
    #
    # * `RebootDBInstance`
    #
    # * `RestoreDBInstanceFromDBSnapshot`
    #
    # * `RestoreDBInstanceToPointInTime`
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
    # `DescribeDBSecurityGroups` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of `DBSecurityGroup` instances.
    #   @return [Array<Types::DBSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupMessage AWS API Documentation
    #
    class DBSecurityGroupMessage < Struct.new(
      :marker,
      :db_security_groups)
      include Aws::Structure
    end

    # `DBSecurityGroupName` doesn't refer to an existing DB security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupNotFoundFault AWS API Documentation
    #
    class DBSecurityGroupNotFoundFault < Aws::EmptyStructure; end

    # A DB security group isn't allowed for this action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupNotSupportedFault AWS API Documentation
    #
    class DBSecurityGroupNotSupportedFault < Aws::EmptyStructure; end

    # The request would result in the user exceeding the allowed number of
    # DB security groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSecurityGroupQuotaExceededFault AWS API Documentation
    #
    class DBSecurityGroupQuotaExceededFault < Aws::EmptyStructure; end

    # Contains the details of an Amazon RDS DB snapshot.
    #
    # This data type is used as a response element in the
    # `DescribeDBSnapshots` action.
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
    # @!attribute [rw] dbi_resource_id
    #   The identifier for the source DB instance, which can't be changed
    #   and which is unique to an AWS Region.
    #   @return [String]
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
      :processor_features,
      :dbi_resource_id)
      include Aws::Structure
    end

    # `DBSnapshotIdentifier` is already used by an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the name and values of a manual DB snapshot attribute
    #
    # Manual DB snapshot attributes are used to authorize other AWS accounts
    # to restore a manual DB snapshot. For more information, see the
    # `ModifyDBSnapshotAttribute` API.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of AWS accounts
    #   that have permission to copy or restore the manual DB cluster
    #   snapshot. For more information, see the `ModifyDBSnapshotAttribute`
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
    # `DescribeDBSnapshotAttributes` API action.
    #
    # Manual DB snapshot attributes are used to authorize other AWS accounts
    # to copy or restore a manual DB snapshot. For more information, see the
    # `ModifyDBSnapshotAttribute` API action.
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
    # `DescribeDBSnapshots` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_snapshots
    #   A list of `DBSnapshot` instances.
    #   @return [Array<Types::DBSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotMessage AWS API Documentation
    #
    class DBSnapshotMessage < Struct.new(
      :marker,
      :db_snapshots)
      include Aws::Structure
    end

    # `DBSnapshotIdentifier` doesn't refer to an existing DB snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotNotFoundFault AWS API Documentation
    #
    class DBSnapshotNotFoundFault < Aws::EmptyStructure; end

    # Contains the details of an Amazon RDS DB subnet group.
    #
    # This data type is used as a response element in the
    # `DescribeDBSubnetGroups` action.
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
    #   Contains a list of `Subnet` elements.
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

    # `DBSubnetGroupName` is already used by an existing DB subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupAlreadyExistsFault AWS API Documentation
    #
    class DBSubnetGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # Subnets in the DB subnet group should cover at least two Availability
    # Zones unless there is only one Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupDoesNotCoverEnoughAZs AWS API Documentation
    #
    class DBSubnetGroupDoesNotCoverEnoughAZs < Aws::EmptyStructure; end

    # Contains the result of a successful invocation of the
    # `DescribeDBSubnetGroups` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_groups
    #   A list of `DBSubnetGroup` instances.
    #   @return [Array<Types::DBSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupMessage AWS API Documentation
    #
    class DBSubnetGroupMessage < Struct.new(
      :marker,
      :db_subnet_groups)
      include Aws::Structure
    end

    # The DBSubnetGroup shouldn't be specified while creating read replicas
    # that lie in the same region as the source instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupNotAllowedFault AWS API Documentation
    #
    class DBSubnetGroupNotAllowedFault < Aws::EmptyStructure; end

    # `DBSubnetGroupName` doesn't refer to an existing DB subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupNotFoundFault AWS API Documentation
    #
    class DBSubnetGroupNotFoundFault < Aws::EmptyStructure; end

    # The request would result in the user exceeding the allowed number of
    # DB subnet groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroupQuotaExceededFault AWS API Documentation
    #
    class DBSubnetGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The request would result in the user exceeding the allowed number of
    # subnets in a DB subnet groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetQuotaExceededFault AWS API Documentation
    #
    class DBSubnetQuotaExceededFault < Aws::EmptyStructure; end

    # The DB upgrade failed because a resource the DB depends on can't be
    # modified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBUpgradeDependencyFailureFault AWS API Documentation
    #
    class DBUpgradeDependencyFailureFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteCustomAvailabilityZoneMessage
    #   data as a hash:
    #
    #       {
    #         custom_availability_zone_id: "String", # required
    #       }
    #
    # @!attribute [rw] custom_availability_zone_id
    #   The custom AZ identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteCustomAvailabilityZoneMessage AWS API Documentation
    #
    class DeleteCustomAvailabilityZoneMessage < Struct.new(
      :custom_availability_zone_id)
      include Aws::Structure
    end

    # @!attribute [rw] custom_availability_zone
    #   A custom Availability Zone (AZ) is an on-premises AZ that is
    #   integrated with a VMware vSphere cluster.
    #
    #   For more information about RDS on VMware, see the [ *RDS on VMware
    #   User Guide.* ][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html
    #   @return [Types::CustomAvailabilityZone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteCustomAvailabilityZoneResult AWS API Documentation
    #
    class DeleteCustomAvailabilityZoneResult < Struct.new(
      :custom_availability_zone)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBClusterEndpointMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_endpoint_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the custom endpoint. This parameter
    #   is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterEndpointMessage AWS API Documentation
    #
    class DeleteDBClusterEndpointMessage < Struct.new(
      :db_cluster_endpoint_identifier)
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
    #   A value that indicates whether to skip the creation of a final DB
    #   cluster snapshot before the DB cluster is deleted. If skip is
    #   specified, no DB cluster snapshot is created. If skip isn't
    #   specified, a DB cluster snapshot is created before the DB cluster is
    #   deleted. By default, skip isn't specified, and the DB cluster
    #   snapshot is created. By default, this parameter is disabled.
    #
    #   <note markdown="1"> You must specify a `FinalDBSnapshotIdentifier` parameter if
    #   `SkipFinalSnapshot` is disabled.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is disabled.
    #
    #   <note markdown="1"> Specifying this parameter and also skipping the creation of a final
    #   DB cluster snapshot with the `SkipFinalShapshot` parameter results
    #   in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   * Can't be associated with any DB clusters.
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #   `DescribeDBClusterSnapshots` action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterSnapshotResult AWS API Documentation
    #
    class DeleteDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      include Aws::Structure
    end

    # Parameter input for the `DeleteDBInstanceAutomatedBackup` operation.
    #
    # @note When making an API call, you may pass DeleteDBInstanceAutomatedBackupMessage
    #   data as a hash:
    #
    #       {
    #         dbi_resource_id: "String", # required
    #       }
    #
    # @!attribute [rw] dbi_resource_id
    #   The identifier for the source DB instance, which can't be changed
    #   and which is unique to an AWS Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceAutomatedBackupMessage AWS API Documentation
    #
    class DeleteDBInstanceAutomatedBackupMessage < Struct.new(
      :dbi_resource_id)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_automated_backup
    #   An automated backup of a DB instance. It it consists of system
    #   backups, transaction logs, and the database instance properties that
    #   existed at the time you deleted the source instance.
    #   @return [Types::DBInstanceAutomatedBackup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceAutomatedBackupResult AWS API Documentation
    #
    class DeleteDBInstanceAutomatedBackupResult < Struct.new(
      :db_instance_automated_backup)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         skip_final_snapshot: false,
    #         final_db_snapshot_identifier: "String",
    #         delete_automated_backups: false,
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
    #   A value that indicates whether to skip the creation of a final DB
    #   snapshot before the DB instance is deleted. If skip is specified, no
    #   DB snapshot is created. If skip isn't specified, a DB snapshot is
    #   created before the DB instance is deleted. By default, skip isn't
    #   specified, and the DB snapshot is created.
    #
    #   When a DB instance is in a failure state and has a status of
    #   'failed', 'incompatible-restore', or 'incompatible-network',
    #   it can only be deleted when skip is specified.
    #
    #   Specify skip when deleting a read replica.
    #
    #   <note markdown="1"> The FinalDBSnapshotIdentifier parameter must be specified if skip
    #   isn't specified.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The `DBSnapshotIdentifier` of the new `DBSnapshot` created when the
    #   `SkipFinalSnapshot` parameter is disabled.
    #
    #   <note markdown="1"> Specifying this parameter and also specifying to skip final DB
    #   snapshot creation in SkipFinalShapshot results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   * Can't be specified when deleting a read replica.
    #   @return [String]
    #
    # @!attribute [rw] delete_automated_backups
    #   A value that indicates whether to remove automated backups
    #   immediately after the DB instance is deleted. This parameter isn't
    #   case-sensitive. The default is to remove automated backups
    #   immediately after the DB instance is deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceMessage AWS API Documentation
    #
    class DeleteDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier,
      :delete_automated_backups)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBInstances` action.
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
    #   * Can't be associated with any DB instances
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBParameterGroupMessage AWS API Documentation
    #
    class DeleteDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDBProxyRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_proxy_name
    #   The name of the DB proxy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBProxyRequest AWS API Documentation
    #
    class DeleteDBProxyRequest < Struct.new(
      :db_proxy_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy
    #   The data structure representing the details of the DB proxy that you
    #   delete.
    #   @return [Types::DBProxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBProxyResponse AWS API Documentation
    #
    class DeleteDBProxyResponse < Struct.new(
      :db_proxy)
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   The DB snapshot identifier.
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
    #   `DescribeDBSnapshots` action.
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
    #   `DescribeEventSubscriptions` action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteEventSubscriptionResult AWS API Documentation
    #
    class DeleteEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGlobalClusterMessage
    #   data as a hash:
    #
    #       {
    #         global_cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier of the global database cluster being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteGlobalClusterMessage AWS API Documentation
    #
    class DeleteGlobalClusterMessage < Struct.new(
      :global_cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   A data type representing an Aurora global database.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteGlobalClusterResult AWS API Documentation
    #
    class DeleteGlobalClusterResult < Struct.new(
      :global_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstallationMediaMessage
    #   data as a hash:
    #
    #       {
    #         installation_media_id: "String", # required
    #       }
    #
    # @!attribute [rw] installation_media_id
    #   The installation medium ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteInstallationMediaMessage AWS API Documentation
    #
    class DeleteInstallationMediaMessage < Struct.new(
      :installation_media_id)
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

    # @note When making an API call, you may pass DeregisterDBProxyTargetsRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #         target_group_name: "String",
    #         db_instance_identifiers: ["String"],
    #         db_cluster_identifiers: ["String"],
    #       }
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier of the `DBProxy` that is associated with the
    #   `DBProxyTargetGroup`.
    #   @return [String]
    #
    # @!attribute [rw] target_group_name
    #   The identifier of the `DBProxyTargetGroup`.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifiers
    #   One or more DB instance identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_identifiers
    #   One or more DB cluster identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeregisterDBProxyTargetsRequest AWS API Documentation
    #
    class DeregisterDBProxyTargetsRequest < Struct.new(
      :db_proxy_name,
      :target_group_name,
      :db_instance_identifiers,
      :db_cluster_identifiers)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeregisterDBProxyTargetsResponse AWS API Documentation
    #
    class DeregisterDBProxyTargetsResponse < Aws::EmptyStructure; end

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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeCertificates` request. If this parameter is specified, the
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

    # @note When making an API call, you may pass DescribeCustomAvailabilityZonesMessage
    #   data as a hash:
    #
    #       {
    #         custom_availability_zone_id: "String",
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
    # @!attribute [rw] custom_availability_zone_id
    #   The custom AZ identifier. If this parameter is specified,
    #   information from only the specific custom AZ is returned.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more custom AZs to describe.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeCustomAvailabilityZones` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeCustomAvailabilityZonesMessage AWS API Documentation
    #
    class DescribeCustomAvailabilityZonesMessage < Struct.new(
      :custom_availability_zone_id,
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
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
    #     identified by these values.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterBacktracks` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
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

    # @note When making an API call, you may pass DescribeDBClusterEndpointsMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         db_cluster_endpoint_identifier: "String",
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
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier of the endpoint to describe. This parameter is stored
    #   as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A set of name-value pairs that define which endpoints to include in
    #   the output. The filters are specified as name-value pairs, in the
    #   format
    #   `Name=endpoint_type,Values=endpoint_type1,endpoint_type2,...`.
    #   `Name` can be one of: `db-cluster-endpoint-type`,
    #   `db-cluster-endpoint-custom-type`, `db-cluster-endpoint-id`,
    #   `db-cluster-endpoint-status`. `Values` for the `
    #   db-cluster-endpoint-type` filter can be one or more of: `reader`,
    #   `writer`, `custom`. `Values` for the
    #   `db-cluster-endpoint-custom-type` filter can be one or more of:
    #   `reader`, `any`. `Values` for the `db-cluster-endpoint-status`
    #   filter can be one or more of: `available`, `creating`, `deleting`,
    #   `modifying`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterEndpoints` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterEndpointsMessage AWS API Documentation
    #
    class DescribeDBClusterEndpointsMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_endpoint_identifier,
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
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
    #   `DescribeDBClusterSnapshotAttributes` API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   AWS accounts to copy or restore a manual DB cluster snapshot. For
    #   more information, see the `ModifyDBClusterSnapshotAttribute` API
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
    #   `DBClusterSnapshotIdentifier` parameter. This parameter isn't
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
    #   DB cluster snapshots with these results by enabling the
    #   `IncludeShared` parameter. You can include public DB cluster
    #   snapshots with these results by enabling the `IncludePublic`
    #   parameter.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The
    #   `IncludePublic` parameter doesn't apply when `SnapshotType` is set
    #   to `shared`. The `IncludeShared` parameter doesn't apply when
    #   `SnapshotType` is set to `public`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB cluster snapshots to
    #   describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs).
    #
    #   * `db-cluster-snapshot-id` - Accepts DB cluster snapshot
    #     identifiers.
    #
    #   * `snapshot-type` - Accepts types of DB cluster snapshots.
    #
    #   * `engine` - Accepts names of database engines.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
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
    #   A value that indicates whether to include shared manual DB cluster
    #   snapshots from other AWS accounts that this AWS account has been
    #   given permission to copy or restore. By default, these snapshots are
    #   not included.
    #
    #   You can give an AWS account permission to restore a manual DB
    #   cluster snapshot from another AWS account by the
    #   `ModifyDBClusterSnapshotAttribute` API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   A value that indicates whether to include manual DB cluster
    #   snapshots that are public and can be copied or restored by any AWS
    #   account. By default, the public snapshots are not included.
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
    #         include_shared: false,
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
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusters` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] include_shared
    #   Optional Boolean parameter that specifies whether the output
    #   includes information about clusters shared from other AWS accounts.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClustersMessage AWS API Documentation
    #
    class DescribeDBClustersMessage < Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker,
      :include_shared)
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
    #         include_all: false,
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so you can retrieve the
    #   remaining results.
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
    #   A value that indicates whether only the default version of the
    #   specified engine or engine and major version combination is
    #   returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_character_sets
    #   A value that indicates whether to list the supported character sets
    #   for each engine version.
    #
    #   If this parameter is enabled and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_timezones
    #   A value that indicates whether to list the supported time zones for
    #   each engine version.
    #
    #   If this parameter is enabled and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_all
    #   A value that indicates whether to include engine versions that
    #   aren't available in the list. The default is to list only available
    #   engine versions.
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
      :list_supported_timezones,
      :include_all)
      include Aws::Structure
    end

    # Parameter input for DescribeDBInstanceAutomatedBackups.
    #
    # @note When making an API call, you may pass DescribeDBInstanceAutomatedBackupsMessage
    #   data as a hash:
    #
    #       {
    #         dbi_resource_id: "String",
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
    # @!attribute [rw] dbi_resource_id
    #   The resource ID of the DB instance that is the source of the
    #   automated backup. This parameter isn't case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   (Optional) The user-supplied instance identifier. If this parameter
    #   is specified, it must match the identifier of an existing DB
    #   instance. It returns information from the specific DB instance'
    #   automated backup. This parameter isn't case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies which resources to return based on status.
    #
    #   Supported filters are the following:
    #
    #   * `status`
    #
    #     * `active` - automated backups for current instances
    #
    #     * `retained` - automated backups for deleted instances
    #
    #     * `creating` - automated backups that are waiting for the first
    #       automated snapshot to be available
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and Amazon
    #     Resource Names (ARNs) for DB instances. The results list includes
    #     only information about the DB instance automated backupss
    #     identified by these ARNs.
    #
    #   * `dbi-resource-id` - Accepts DB instance resource identifiers and
    #     DB Amazon Resource Names (ARNs) for DB instances. The results list
    #     includes only information about the DB instance resources
    #     identified by these ARNs.
    #
    #   Returns all resources by default. The status for each resource is
    #   specified in the response.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The pagination token provided in the previous request. If this
    #   parameter is specified the response includes only records beyond the
    #   marker, up to `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBInstanceAutomatedBackupsMessage AWS API Documentation
    #
    class DescribeDBInstanceAutomatedBackupsMessage < Struct.new(
      :dbi_resource_id,
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker)
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
    #
    #   * `dbi-resource-id` - Accepts DB instance resource identifiers. The
    #     results list will only include information about the DB instances
    #     identified by these DB instance resource identifiers.
    #
    #   * `domain` - Accepts Active Directory directory IDs. The results
    #     list will only include information about the DB instances
    #     associated with these domains.
    #
    #   * `engine` - Accepts engine names. The results list will only
    #     include information about the DB instances for these engines.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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

    # This data type is used as a response element to `DescribeDBLogFiles`.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
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

    # The response from a call to `DescribeDBLogFiles`.
    #
    # @!attribute [rw] describe_db_log_files
    #   The DB log files returned.
    #   @return [Array<Types::DescribeDBLogFilesDetails>]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later DescribeDBLogFiles
    #   request.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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

    # @note When making an API call, you may pass DescribeDBProxiesRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String",
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
    # @!attribute [rw] db_proxy_name
    #   The name of the DB proxy.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxiesRequest AWS API Documentation
    #
    class DescribeDBProxiesRequest < Struct.new(
      :db_proxy_name,
      :filters,
      :marker,
      :max_records)
      include Aws::Structure
    end

    # @!attribute [rw] db_proxies
    #   A return value representing an arbitrary number of `DBProxy` data
    #   structures.
    #   @return [Array<Types::DBProxy>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxiesResponse AWS API Documentation
    #
    class DescribeDBProxiesResponse < Struct.new(
      :db_proxies,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBProxyTargetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #         target_group_name: "String",
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
    # @!attribute [rw] db_proxy_name
    #   The identifier of the `DBProxy` associated with the target group.
    #   @return [String]
    #
    # @!attribute [rw] target_group_name
    #   The identifier of the `DBProxyTargetGroup` to describe.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxyTargetGroupsRequest AWS API Documentation
    #
    class DescribeDBProxyTargetGroupsRequest < Struct.new(
      :db_proxy_name,
      :target_group_name,
      :filters,
      :marker,
      :max_records)
      include Aws::Structure
    end

    # @!attribute [rw] target_groups
    #   An arbitrary number of `DBProxyTargetGroup` objects, containing
    #   details of the corresponding target groups.
    #   @return [Array<Types::DBProxyTargetGroup>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxyTargetGroupsResponse AWS API Documentation
    #
    class DescribeDBProxyTargetGroupsResponse < Struct.new(
      :target_groups,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDBProxyTargetsRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #         target_group_name: "String",
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
    # @!attribute [rw] db_proxy_name
    #   The identifier of the `DBProxyTarget` to describe.
    #   @return [String]
    #
    # @!attribute [rw] target_group_name
    #   The identifier of the `DBProxyTargetGroup` to describe.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxyTargetsRequest AWS API Documentation
    #
    class DescribeDBProxyTargetsRequest < Struct.new(
      :db_proxy_name,
      :target_group_name,
      :filters,
      :marker,
      :max_records)
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   An arbitrary number of `DBProxyTarget` objects, containing details
    #   of the corresponding targets.
    #   @return [Array<Types::DBProxyTarget>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxyTargetsResponse AWS API Documentation
    #
    class DescribeDBProxyTargetsResponse < Struct.new(
      :targets,
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #   `DescribeDBSnapshotAttributes` API action.
    #
    #   Manual DB snapshot attributes are used to authorize other AWS
    #   accounts to copy or restore a manual DB snapshot. For more
    #   information, see the `ModifyDBSnapshotAttribute` API action.
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
    #         dbi_resource_id: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The ID of the DB instance to retrieve the list of DB snapshots for.
    #   This parameter can't be used in conjunction with
    #   `DBSnapshotIdentifier`. This parameter isn't case-sensitive.
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
    #   * `awsbackup` - Return the DB snapshots managed by the AWS Backup
    #     service.
    #
    #     For information about AWS Backup, see the [ *AWS Backup Developer
    #     Guide.* ][1]
    #
    #     The `awsbackup` type does not apply to Aurora.
    #
    #   If you don't specify a `SnapshotType` value, then both automated
    #   and manual snapshots are returned. Shared and public DB snapshots
    #   are not included in the returned results by default. You can include
    #   shared snapshots with these results by enabling the `IncludeShared`
    #   parameter. You can include public snapshots with these results by
    #   enabling the `IncludePublic` parameter.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The
    #   `IncludePublic` parameter doesn't apply when `SnapshotType` is set
    #   to `shared`. The `IncludeShared` parameter doesn't apply when
    #   `SnapshotType` is set to `public`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB snapshots to describe.
    #
    #   Supported filters:
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs).
    #
    #   * `db-snapshot-id` - Accepts DB snapshot identifiers.
    #
    #   * `dbi-resource-id` - Accepts identifiers of source DB instances.
    #
    #   * `snapshot-type` - Accepts types of DB snapshots.
    #
    #   * `engine` - Accepts names of database engines.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #   A value that indicates whether to include shared manual DB cluster
    #   snapshots from other AWS accounts that this AWS account has been
    #   given permission to copy or restore. By default, these snapshots are
    #   not included.
    #
    #   You can give an AWS account permission to restore a manual DB
    #   snapshot from another AWS account by using the
    #   `ModifyDBSnapshotAttribute` API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   A value that indicates whether to include manual DB cluster
    #   snapshots that are public and can be copied or restored by any AWS
    #   account. By default, the public snapshots are not included.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    #   @return [Boolean]
    #
    # @!attribute [rw] dbi_resource_id
    #   A specific DB resource ID to describe.
    #   @return [String]
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
      :include_public,
      :dbi_resource_id)
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
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
    #   `DescribeEngineDefaultParameters` action.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
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
    #   `DescribeEngineDefaultParameters` action.
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
    #   This parameter isn't currently supported.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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

    # @note When making an API call, you may pass DescribeExportTasksMessage
    #   data as a hash:
    #
    #       {
    #         export_task_identifier: "String",
    #         source_arn: "String",
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
    # @!attribute [rw] export_task_identifier
    #   The identifier of the snapshot export task to be described.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the snapshot exported to Amazon
    #   S3.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters specify one or more snapshot exports to describe. The
    #   filters are specified as name-value pairs that define what to
    #   include in the output.
    #
    #   Supported filters include the following:
    #
    #   * `export-task-identifier` - An identifier for the snapshot export
    #     task.
    #
    #   * `s3-bucket` - The Amazon S3 bucket the snapshot is exported to.
    #
    #   * `source-arn` - The Amazon Resource Name (ARN) of the snapshot
    #     exported to Amazon S3
    #
    #   * `status` - The status of the export task.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeExportTasks` request. If you specify this parameter, the
    #   response includes only records beyond the marker, up to the value
    #   specified by the `MaxRecords` parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified value, a pagination token called a
    #   marker is included in the response. You can use the marker in a
    #   later `DescribeExportTasks` request to retrieve the remaining
    #   results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeExportTasksMessage AWS API Documentation
    #
    class DescribeExportTasksMessage < Struct.new(
      :export_task_identifier,
      :source_arn,
      :filters,
      :marker,
      :max_records)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGlobalClustersMessage
    #   data as a hash:
    #
    #       {
    #         global_cluster_identifier: "String",
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
    # @!attribute [rw] global_cluster_identifier
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
    #   A filter that specifies one or more global DB clusters to describe.
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
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeGlobalClusters` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeGlobalClustersMessage AWS API Documentation
    #
    class DescribeGlobalClustersMessage < Struct.new(
      :global_cluster_identifier,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstallationMediaMessage
    #   data as a hash:
    #
    #       {
    #         installation_media_id: "String",
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
    # @!attribute [rw] installation_media_id
    #   The installation medium ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more installation media to describe.
    #   Supported filters include the following:
    #
    #   * `custom-availability-zone-id` - Accepts custom Availability Zone
    #     (AZ) identifiers. The results list includes information about only
    #     the custom AZs identified by these identifiers.
    #
    #   * `engine` - Accepts database engines. The results list includes
    #     information about only the database engines identified by these
    #     identifiers.
    #
    #     For more information about the valid engines for installation
    #     media, see ImportInstallationMedia.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   An optional pagination token provided by a previous
    #   DescribeInstallationMedia request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeInstallationMediaMessage AWS API Documentation
    #
    class DescribeInstallationMediaMessage < Struct.new(
      :installation_media_id,
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
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #   The name of the option group to describe. Can't be supplied
    #   together with EngineName or MajorEngineVersion.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter isn't currently supported.
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
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #         availability_zone_group: "String",
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
    # @!attribute [rw] availability_zone_group
    #   The Availability Zone group associated with a Local Zone. Specify
    #   this parameter to retrieve available offerings for the Local Zones
    #   in the group.
    #
    #   Omit this parameter to show the available offerings in the specified
    #   AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   A value that indicates whether to show only VPC or non-VPC
    #   offerings.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
      :availability_zone_group,
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
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
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
    #         lease_id: "String",
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
    #   A value that indicates whether to show only those reservations that
    #   support Multi-AZ.
    #   @return [Boolean]
    #
    # @!attribute [rw] lease_id
    #   The lease identifier filter value. Specify this parameter to show
    #   only the reservation that matches the specified lease ID.
    #
    #   <note markdown="1"> AWS Support might request the lease ID for an issue related to a
    #   reserved DB instance.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so you can retrieve the
    #   remaining results.
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
      :lease_id,
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
    #   A value that indicates whether to show only those reservations that
    #   support Multi-AZ.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter isn't currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so you can retrieve the
    #   remaining results.
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
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeSourceRegions` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter isn't currently supported.
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
    #   `DescribeValidDBInstanceModifications` action. You can use this
    #   information when you call `ModifyDBInstance`.
    #   @return [Types::ValidDBInstanceModificationsMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeValidDBInstanceModificationsResult AWS API Documentation
    #
    class DescribeValidDBInstanceModificationsResult < Struct.new(
      :valid_db_instance_modifications_message)
      include Aws::Structure
    end

    # An Active Directory Domain membership record associated with the DB
    # instance or cluster.
    #
    # @!attribute [rw] domain
    #   The identifier of the Active Directory Domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Active Directory Domain membership for the DB
    #   instance or cluster. Values include joined, pending-join, failed,
    #   and so on.
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

    # `Domain` doesn't refer to an existing Active Directory domain.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DomainNotFoundFault AWS API Documentation
    #
    class DomainNotFoundFault < Aws::EmptyStructure; end

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
    # `DownloadDBLogFilePortion`.
    #
    # @!attribute [rw] log_file_data
    #   Entries from the specified log file.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later
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
    #   * If NumberOfLines is specified and Marker isn't specified, then
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
    # * `AuthorizeDBSecurityGroupIngress`
    #
    # * `DescribeDBSecurityGroups`
    #
    # * `RevokeDBSecurityGroupIngress`
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

    # This data type represents the information you need to connect to an
    # Amazon RDS DB instance. This data type is used as a response element
    # in the following actions:
    #
    # * `CreateDBInstance`
    #
    # * `DescribeDBInstances`
    #
    # * `DeleteDBInstance`
    #
    # For the data structure that represents Amazon Aurora DB cluster
    # endpoints, see `DBClusterEndpoint`.
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
    # `DescribeEngineDefaultParameters` action.
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

    # This data type is used as a response element in the `DescribeEvents`
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
    # `DescribeEventCategories` action.
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
    # `DescribeEventSubscriptions` action.
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

    # You have reached the maximum number of event subscriptions.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventSubscriptionQuotaExceededFault AWS API Documentation
    #
    class EventSubscriptionQuotaExceededFault < Aws::EmptyStructure; end

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

    # Contains the result of a successful invocation of the `DescribeEvents`
    # action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous Events request.
    #   If this parameter is specified, the response includes only records
    #   beyond the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of `Event` instances.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      include Aws::Structure
    end

    # Contains the details of a snapshot export to Amazon S3.
    #
    # This data type is used as a response element in the
    # `DescribeExportTasks` action.
    #
    # @!attribute [rw] export_task_identifier
    #   A unique identifier for the snapshot export task. This ID isn't an
    #   identifier for the Amazon S3 bucket where the snapshot is exported
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the snapshot exported to Amazon
    #   S3.
    #   @return [String]
    #
    # @!attribute [rw] export_only
    #   The data exported from the snapshot. Valid values are the following:
    #
    #   * `database` - Export all the data from a specified database.
    #
    #   * `database.table` *table-name* - Export a table of the snapshot.
    #     This format is valid only for RDS for MySQL, RDS for MariaDB, and
    #     Aurora MySQL.
    #
    #   * `database.schema` *schema-name* - Export a database schema of the
    #     snapshot. This format is valid only for RDS for PostgreSQL and
    #     Aurora PostgreSQL.
    #
    #   * `database.schema.table` *table-name* - Export a table of the
    #     database schema. This format is valid only for RDS for PostgreSQL
    #     and Aurora PostgreSQL.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_time
    #   The time that the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] task_start_time
    #   The time that the snapshot export task started.
    #   @return [Time]
    #
    # @!attribute [rw] task_end_time
    #   The time that the snapshot export task completed.
    #   @return [Time]
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket that the snapshot is exported to.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The Amazon S3 bucket prefix that is the file name and path of the
    #   exported snapshot.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The name of the IAM role that is used to write to Amazon S3 when
    #   exporting a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the AWS KMS key that is used to encrypt the snapshot when
    #   it's exported to Amazon S3. The KMS key ID is the Amazon Resource
    #   Name (ARN), the KMS key identifier, or the KMS key alias for the KMS
    #   encryption key. The IAM role used for the snapshot export must have
    #   encryption and decryption permissions to use this KMS key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The progress status of the export task.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   The progress of the snapshot export task as a percentage.
    #   @return [Integer]
    #
    # @!attribute [rw] total_extracted_data_in_gb
    #   The total amount of data exported, in gigabytes.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_cause
    #   The reason the export failed, if it failed.
    #   @return [String]
    #
    # @!attribute [rw] warning_message
    #   A warning about the snapshot export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ExportTask AWS API Documentation
    #
    class ExportTask < Struct.new(
      :export_task_identifier,
      :source_arn,
      :export_only,
      :snapshot_time,
      :task_start_time,
      :task_end_time,
      :s3_bucket,
      :s3_prefix,
      :iam_role_arn,
      :kms_key_id,
      :status,
      :percent_progress,
      :total_extracted_data_in_gb,
      :failure_cause,
      :warning_message)
      include Aws::Structure
    end

    # You can't start an export task that's already running.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ExportTaskAlreadyExistsFault AWS API Documentation
    #
    class ExportTaskAlreadyExistsFault < Aws::EmptyStructure; end

    # The export task doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ExportTaskNotFoundFault AWS API Documentation
    #
    class ExportTaskNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   A pagination token that can be used in a later `DescribeExportTasks`
    #   request. A marker is used for pagination to identify the location to
    #   begin output for the next response of `DescribeExportTasks`.
    #   @return [String]
    #
    # @!attribute [rw] export_tasks
    #   Information about an export of a snapshot to Amazon S3.
    #   @return [Array<Types::ExportTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ExportTasksMessage AWS API Documentation
    #
    class ExportTasksMessage < Struct.new(
      :marker,
      :export_tasks)
      include Aws::Structure
    end

    # @note When making an API call, you may pass FailoverDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         target_db_instance_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   A DB cluster identifier to force a failover for. This parameter
    #   isn't case-sensitive.
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    # * `DescribeDBClusterBacktracks`
    #
    # * `DescribeDBClusterEndpoints`
    #
    # * `DescribeDBClusters`
    #
    # * `DescribeDBInstances`
    #
    # * `DescribePendingMaintenanceActions`
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

    # A data type representing an Aurora global database.
    #
    # @!attribute [rw] global_cluster_identifier
    #   Contains a user-supplied global database cluster identifier. This
    #   identifier is the unique key that identifies a global database
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] global_cluster_resource_id
    #   The AWS Region-unique, immutable identifier for the global database
    #   cluster. This identifier is found in AWS CloudTrail log entries
    #   whenever the AWS KMS key for the DB cluster is accessed.
    #   @return [String]
    #
    # @!attribute [rw] global_cluster_arn
    #   The Amazon Resource Name (ARN) for the global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current state of this global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Aurora database engine used by the global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The default database name within the new global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   The storage encryption setting for the global database cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   The deletion protection setting for the new global database cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_cluster_members
    #   The list of cluster IDs for secondary clusters within the global
    #   database cluster. Currently limited to 1 item.
    #   @return [Array<Types::GlobalClusterMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalCluster AWS API Documentation
    #
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
      :global_cluster_members)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClusterAlreadyExistsFault AWS API Documentation
    #
    class GlobalClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # A data structure with information about any primary and secondary
    # clusters associated with an Aurora global database.
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for each Aurora cluster.
    #   @return [String]
    #
    # @!attribute [rw] readers
    #   The Amazon Resource Name (ARN) for each read-only secondary cluster
    #   associated with the Aurora global database.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_writer
    #   Specifies whether the Aurora cluster is the primary cluster (that
    #   is, has read-write capability) for the Aurora global database with
    #   which it is associated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClusterMember AWS API Documentation
    #
    class GlobalClusterMember < Struct.new(
      :db_cluster_arn,
      :readers,
      :is_writer)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClusterNotFoundFault AWS API Documentation
    #
    class GlobalClusterNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClusterQuotaExceededFault AWS API Documentation
    #
    class GlobalClusterQuotaExceededFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeGlobalClusters` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] global_clusters
    #   The list of global clusters returned by this request.
    #   @return [Array<Types::GlobalCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClustersMessage AWS API Documentation
    #
    class GlobalClustersMessage < Struct.new(
      :marker,
      :global_clusters)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # `DescribeDBSecurityGroups` action.
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

    # The IAM role requires additional permissions to export to an Amazon S3
    # bucket.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/IamRoleMissingPermissionsFault AWS API Documentation
    #
    class IamRoleMissingPermissionsFault < Aws::EmptyStructure; end

    # The IAM role is missing for exporting to an Amazon S3 bucket.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/IamRoleNotFoundFault AWS API Documentation
    #
    class IamRoleNotFoundFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ImportInstallationMediaMessage
    #   data as a hash:
    #
    #       {
    #         custom_availability_zone_id: "String", # required
    #         engine: "String", # required
    #         engine_version: "String", # required
    #         engine_installation_media_path: "String", # required
    #         os_installation_media_path: "String", # required
    #       }
    #
    # @!attribute [rw] custom_availability_zone_id
    #   The identifier of the custom Availability Zone (AZ) to import the
    #   installation media to.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this instance.
    #
    #   The list only includes supported DB engines that require an
    #   on-premises customer provided license.
    #
    #   Valid Values:
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
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   For a list of valid engine versions, call DescribeDBEngineVersions.
    #
    #   The following are the database engines and links to information
    #   about the major and minor versions. The list only includes DB
    #   engines that require an on-premises customer provided license.
    #
    #   **Microsoft SQL Server**
    #
    #   See [Version and Feature Support on Amazon RDS][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport
    #   @return [String]
    #
    # @!attribute [rw] engine_installation_media_path
    #   The path to the installation medium for the specified DB engine.
    #
    #   Example:
    #   `SQLServerISO/en_sql_server_2016_enterprise_x64_dvd_8701793.iso`
    #   @return [String]
    #
    # @!attribute [rw] os_installation_media_path
    #   The path to the installation medium for the operating system
    #   associated with the specified DB engine.
    #
    #   Example: `WindowsISO/en_windows_server_2016_x64_dvd_9327751.iso`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ImportInstallationMediaMessage AWS API Documentation
    #
    class ImportInstallationMediaMessage < Struct.new(
      :custom_availability_zone_id,
      :engine,
      :engine_version,
      :engine_installation_media_path,
      :os_installation_media_path)
      include Aws::Structure
    end

    # Contains the installation media for a DB engine that requires an
    # on-premises customer provided license, such as Microsoft SQL Server.
    #
    # @!attribute [rw] installation_media_id
    #   The installation medium ID.
    #   @return [String]
    #
    # @!attribute [rw] custom_availability_zone_id
    #   The custom Availability Zone (AZ) that contains the installation
    #   media.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The DB engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version of the DB engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_installation_media_path
    #   The path to the installation medium for the DB engine.
    #   @return [String]
    #
    # @!attribute [rw] os_installation_media_path
    #   The path to the installation medium for the operating system
    #   associated with the DB engine.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the installation medium.
    #   @return [String]
    #
    # @!attribute [rw] failure_cause
    #   If an installation media failure occurred, the cause of the failure.
    #   @return [Types::InstallationMediaFailureCause]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstallationMedia AWS API Documentation
    #
    class InstallationMedia < Struct.new(
      :installation_media_id,
      :custom_availability_zone_id,
      :engine,
      :engine_version,
      :engine_installation_media_path,
      :os_installation_media_path,
      :status,
      :failure_cause)
      include Aws::Structure
    end

    # The specified installation medium has already been imported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstallationMediaAlreadyExistsFault AWS API Documentation
    #
    class InstallationMediaAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the cause of an installation media failure. Installation
    # media is used for a DB engine that requires an on-premises customer
    # provided license, such as Microsoft SQL Server.
    #
    # @!attribute [rw] message
    #   The reason that an installation media import failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstallationMediaFailureCause AWS API Documentation
    #
    class InstallationMediaFailureCause < Struct.new(
      :message)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeInstallationMedia request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] installation_media
    #   The list of InstallationMedia objects for the AWS account.
    #   @return [Array<Types::InstallationMedia>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstallationMediaMessage AWS API Documentation
    #
    class InstallationMediaMessage < Struct.new(
      :marker,
      :installation_media)
      include Aws::Structure
    end

    # `InstallationMediaID` doesn't refer to an existing installation
    # medium.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstallationMediaNotFoundFault AWS API Documentation
    #
    class InstallationMediaNotFoundFault < Aws::EmptyStructure; end

    # The request would result in the user exceeding the allowed number of
    # DB instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstanceQuotaExceededFault AWS API Documentation
    #
    class InstanceQuotaExceededFault < Aws::EmptyStructure; end

    # The DB cluster doesn't have enough capacity for the current
    # operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InsufficientDBClusterCapacityFault AWS API Documentation
    #
    class InsufficientDBClusterCapacityFault < Aws::EmptyStructure; end

    # The specified DB instance class isn't available in the specified
    # Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InsufficientDBInstanceCapacityFault AWS API Documentation
    #
    class InsufficientDBInstanceCapacityFault < Aws::EmptyStructure; end

    # There is insufficient storage available for the current action. You
    # might be able to resolve this error by updating your subnet group to
    # use different Availability Zones that have more storage available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InsufficientStorageClusterCapacityFault AWS API Documentation
    #
    class InsufficientStorageClusterCapacityFault < Aws::EmptyStructure; end

    # `Capacity` isn't a valid Aurora Serverless DB cluster capacity. Valid
    # capacity values are `2`, `4`, `8`, `16`, `32`, `64`, `128`, and `256`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBClusterCapacityFault AWS API Documentation
    #
    class InvalidDBClusterCapacityFault < Aws::EmptyStructure; end

    # The requested operation can't be performed on the endpoint while the
    # endpoint is in this state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBClusterEndpointStateFault AWS API Documentation
    #
    class InvalidDBClusterEndpointStateFault < Aws::EmptyStructure; end

    # The supplied value isn't a valid DB cluster snapshot state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBClusterSnapshotStateFault AWS API Documentation
    #
    class InvalidDBClusterSnapshotStateFault < Aws::EmptyStructure; end

    # The requested operation can't be performed while the cluster is in
    # this state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBClusterStateFault AWS API Documentation
    #
    class InvalidDBClusterStateFault < Aws::EmptyStructure; end

    # The automated backup is in an invalid state. For example, this
    # automated backup is associated with an active instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBInstanceAutomatedBackupStateFault AWS API Documentation
    #
    class InvalidDBInstanceAutomatedBackupStateFault < Aws::EmptyStructure; end

    # The DB instance isn't in a valid state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBInstanceStateFault AWS API Documentation
    #
    class InvalidDBInstanceStateFault < Aws::EmptyStructure; end

    # The DB parameter group is in use or is in an invalid state. If you are
    # attempting to delete the parameter group, you can't delete it when
    # the parameter group is in this state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBParameterGroupStateFault AWS API Documentation
    #
    class InvalidDBParameterGroupStateFault < Aws::EmptyStructure; end

    # The requested operation can't be performed while the proxy is in this
    # state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBProxyStateFault AWS API Documentation
    #
    class InvalidDBProxyStateFault < Aws::EmptyStructure; end

    # The state of the DB security group doesn't allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBSecurityGroupStateFault AWS API Documentation
    #
    class InvalidDBSecurityGroupStateFault < Aws::EmptyStructure; end

    # The state of the DB snapshot doesn't allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBSnapshotStateFault AWS API Documentation
    #
    class InvalidDBSnapshotStateFault < Aws::EmptyStructure; end

    # The DBSubnetGroup doesn't belong to the same VPC as that of an
    # existing cross-region read replica of the same source instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBSubnetGroupFault AWS API Documentation
    #
    class InvalidDBSubnetGroupFault < Aws::EmptyStructure; end

    # The DB subnet group cannot be deleted because it's in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBSubnetGroupStateFault AWS API Documentation
    #
    class InvalidDBSubnetGroupStateFault < Aws::EmptyStructure; end

    # The DB subnet isn't in the *available* state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBSubnetStateFault AWS API Documentation
    #
    class InvalidDBSubnetStateFault < Aws::EmptyStructure; end

    # This error can occur if someone else is modifying a subscription. You
    # should retry the action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidEventSubscriptionStateFault AWS API Documentation
    #
    class InvalidEventSubscriptionStateFault < Aws::EmptyStructure; end

    # The export is invalid for exporting to an Amazon S3 bucket.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidExportOnlyFault AWS API Documentation
    #
    class InvalidExportOnlyFault < Aws::EmptyStructure; end

    # The state of the export snapshot is invalid for exporting to an Amazon
    # S3 bucket.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidExportSourceStateFault AWS API Documentation
    #
    class InvalidExportSourceStateFault < Aws::EmptyStructure; end

    # You can't cancel an export task that has completed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidExportTaskStateFault AWS API Documentation
    #
    class InvalidExportTaskStateFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidGlobalClusterStateFault AWS API Documentation
    #
    class InvalidGlobalClusterStateFault < Aws::EmptyStructure; end

    # The option group isn't in the *available* state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidOptionGroupStateFault AWS API Documentation
    #
    class InvalidOptionGroupStateFault < Aws::EmptyStructure; end

    # Cannot restore from VPC backup to non-VPC DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidRestoreFault AWS API Documentation
    #
    class InvalidRestoreFault < Aws::EmptyStructure; end

    # The specified Amazon S3 bucket name can't be found or Amazon RDS
    # isn't authorized to access the specified Amazon S3 bucket. Verify the
    # **SourceS3BucketName** and **S3IngestionRoleArn** values and try
    # again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidS3BucketFault AWS API Documentation
    #
    class InvalidS3BucketFault < Aws::EmptyStructure; end

    # The requested subnet is invalid, or multiple subnets were requested
    # that are not all in a common VPC.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Aws::EmptyStructure; end

    # The DB subnet group doesn't cover all Availability Zones after it's
    # created because of users' change.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidVPCNetworkStateFault AWS API Documentation
    #
    class InvalidVPCNetworkStateFault < Aws::EmptyStructure; end

    # An error occurred accessing an AWS KMS key.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/KMSKeyNotAccessibleFault AWS API Documentation
    #
    class KMSKeyNotAccessibleFault < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter isn't currently supported.
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

    # @note When making an API call, you may pass ModifyCertificatesMessage
    #   data as a hash:
    #
    #       {
    #         certificate_identifier: "String",
    #         remove_customer_override: false,
    #       }
    #
    # @!attribute [rw] certificate_identifier
    #   The new default certificate identifier to override the current one
    #   with.
    #
    #   To determine the valid values, use the `describe-certificates` AWS
    #   CLI command or the `DescribeCertificates` API operation.
    #   @return [String]
    #
    # @!attribute [rw] remove_customer_override
    #   A value that indicates whether to remove the override for the
    #   default certificate. If the override is removed, the default
    #   certificate is the system default.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyCertificatesMessage AWS API Documentation
    #
    class ModifyCertificatesMessage < Struct.new(
      :certificate_identifier,
      :remove_customer_override)
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   A CA certificate for an AWS account.
    #   @return [Types::Certificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyCertificatesResult AWS API Documentation
    #
    class ModifyCertificatesResult < Struct.new(
      :certificate)
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
    #   parameter isn't case-sensitive.
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
    #   When you change the capacity of a paused Aurora Serverless DB
    #   cluster, it automatically resumes.
    #
    #   Constraints:
    #
    #   * For Aurora MySQL, valid capacity values are `1`, `2`, `4`, `8`,
    #     `16`, `32`, `64`, `128`, and `256`.
    #
    #   * For Aurora PostgreSQL, valid capacity values are `2`, `4`, `8`,
    #     `16`, `32`, `64`, `192`, and `384`.
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
    #   point isn't found in the timeout period.
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

    # @note When making an API call, you may pass ModifyDBClusterEndpointMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_endpoint_identifier: "String", # required
    #         endpoint_type: "String",
    #         static_members: ["String"],
    #         excluded_members: ["String"],
    #       }
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier of the endpoint to modify. This parameter is stored
    #   as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterEndpointMessage AWS API Documentation
    #
    class ModifyDBClusterEndpointMessage < Struct.new(
      :db_cluster_endpoint_identifier,
      :endpoint_type,
      :static_members,
      :excluded_members)
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
    #         allow_major_version_upgrade: false,
    #         db_instance_parameter_group_name: "String",
    #         domain: "String",
    #         domain_iam_role_name: "String",
    #         scaling_configuration: {
    #           min_capacity: 1,
    #           max_capacity: 1,
    #           auto_pause: false,
    #           seconds_until_auto_pause: 1,
    #           timeout_action: "String",
    #         },
    #         deletion_protection: false,
    #         enable_http_endpoint: false,
    #         copy_tags_to_snapshot: false,
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints: This identifier must match the identifier of an
    #   existing DB cluster.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   A value that indicates whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB cluster. If this parameter is disabled, changes to the DB
    #   cluster are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter only affects the
    #   `EnableIAMDatabaseAuthentication`, `MasterUserPassword`, and
    #   `NewDBClusterIdentifier` values. If the `ApplyImmediately` parameter
    #   is disabled, then changes to the `EnableIAMDatabaseAuthentication`,
    #   `MasterUserPassword`, and `NewDBClusterIdentifier` values are
    #   applied during the next maintenance window. All other changes are
    #   applied immediately, regardless of the value of the
    #   `ApplyImmediately` parameter.
    #
    #   By default, this parameter is disabled.
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
    #   during the next maintenance window unless the `ApplyImmediately` is
    #   enabled for this request. If the parameter change results in an
    #   option group that enables OEM, this change can cause a brief
    #   (sub-second) period during which new connections are rejected but
    #   existing connections are not interrupted.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   applied during the next maintenance window unless `ApplyImmediately`
    #   is enabled.
    #
    #   To list all of the available engine versions for `aurora` (for MySQL
    #   5.6-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for `aurora-mysql` (for
    #   MySQL 5.7-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for
    #   `aurora-postgresql`, use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   A value that indicates whether major version upgrades are allowed.
    #
    #   Constraints: You must allow major version upgrades when specifying a
    #   value for the `EngineVersion` parameter that is a different major
    #   version than the DB cluster's current version.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_instance_parameter_group_name
    #   The name of the DB parameter group to apply to all instances of the
    #   DB cluster.
    #
    #   <note markdown="1"> When you apply a parameter group using the
    #   `DBInstanceParameterGroupName` parameter, the DB cluster isn't
    #   rebooted automatically. Also, parameter changes aren't applied
    #   during the next maintenance window but instead are applied
    #   immediately.
    #
    #    </note>
    #
    #   Default: The existing name setting
    #
    #   Constraints:
    #
    #   * The DB parameter group must be in the same DB parameter group
    #     family as this DB cluster.
    #
    #   * The `DBInstanceParameterGroupName` parameter is only valid in
    #     combination with the `AllowMajorVersionUpgrade` parameter.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to move the DB cluster to. Specify
    #   `none` to remove the cluster from its current domain. The domain
    #   must be created prior to this operation.
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   The scaling properties of the DB cluster. You can only modify
    #   scaling properties for DB clusters in `serverless` DB engine mode.
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_http_endpoint
    #   A value that indicates whether to enable the HTTP endpoint for an
    #   Aurora Serverless DB cluster. By default, the HTTP endpoint is
    #   disabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web
    #   service API for running SQL queries on the Aurora Serverless DB
    #   cluster. You can also query your database from inside the RDS
    #   console with the query editor.
    #
    #   For more information, see [Using the Data API for Aurora
    #   Serverless][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the DB cluster
    #   to snapshots of the DB cluster. The default is not to copy them.
    #   @return [Boolean]
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
      :allow_major_version_upgrade,
      :db_instance_parameter_group_name,
      :domain,
      :domain_iam_role_name,
      :scaling_configuration,
      :deletion_protection,
      :enable_http_endpoint,
      :copy_tags_to_snapshot)
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #   `DescribeDBClusterSnapshotAttributes` API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   AWS accounts to copy or restore a manual DB cluster snapshot. For
    #   more information, see the `ModifyDBClusterSnapshotAttribute` API
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
    #         deletion_protection: false,
    #         max_allocated_storage: 1,
    #         certificate_rotation_restart: false,
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
    #   `CreateDBInstance`.
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
    #   unless `ApplyImmediately` is enabled for this request.
    #
    #   Default: Uses existing setting
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC. If your DB
    #   instance isn't in a VPC, you can also use this parameter to move
    #   your DB instance into a VPC. For more information, see [Updating the
    #   VPC for a DB Instance][1] in the *Amazon RDS User Guide.*
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   enable `ApplyImmediately`.
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
    #   `ModifyDBCluster`.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VpcSecurityGroupIds.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   A value that indicates whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB instance. By default, this parameter is disabled.
    #
    #   If this parameter is disabled, changes to the DB instance are
    #   applied during the next maintenance window. Some parameter changes
    #   can cause an outage and are applied on the next call to
    #   RebootDBInstance, or the next failure reboot. Review the table of
    #   parameters in [Modifying a DB Instance][1] in the *Amazon RDS User
    #   Guide.* to see the impact of enabling or disabling
    #   `ApplyImmediately` for each modified parameter and to determine when
    #   the changes are applied.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
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
    #   DB cluster. For more information, see `ModifyDBCluster`.
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
    #   failover. In this case, the DB instance isn't rebooted
    #   automatically and the parameter changes isn't applied during the
    #   next maintenance window.
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
    #   `ApplyImmediately` parameter is enabled for this request. If you
    #   change the parameter from one non-zero value to another non-zero
    #   value, the change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is
    #   managed by the DB cluster. For more information, see
    #   `ModifyDBCluster`.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Can be specified for a MySQL read replica only if the source is
    #     running MySQL 5.6 or later
    #
    #   * Can be specified for a PostgreSQL read replica only if the source
    #     is running PostgreSQL 9.3.5
    #
    #   * Can't be set to 0 if the DB instance is a source to read replicas
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
    #   `ModifyDBCluster`.
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
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment. Changing this parameter doesn't result in an outage and
    #   the change is applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is enabled for this request.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to upgrade to. Changing
    #   this parameter results in an outage and the change is applied during
    #   the next maintenance window unless the `ApplyImmediately` parameter
    #   is eanbled for this request.
    #
    #   For major version upgrades, if a nondefault DB parameter group is
    #   currently in use, a new DB parameter group in the DB parameter group
    #   family for the new engine version must be specified. The new DB
    #   parameter group can be the default for that DB parameter group
    #   family.
    #
    #   For information about valid engine versions, see `CreateDBInstance`,
    #   or call `DescribeDBEngineVersions`.
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   A value that indicates whether major version upgrades are allowed.
    #   Changing this parameter doesn't result in an outage and the change
    #   is asynchronously applied as soon as possible.
    #
    #   Constraints: Major version upgrades must be allowed when specifying
    #   a value for the EngineVersion parameter that is a different major
    #   version than the DB instance's current version.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
    #   Changing this parameter doesn't result in an outage except in the
    #   following case and the change is asynchronously applied as soon as
    #   possible. An outage results if this parameter is enabled during the
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
    #   `ApplyImmediately` parameter is enabled for this request. If you are
    #   migrating from Provisioned IOPS to standard storage, set this value
    #   to 0. The DB instance will require a reboot for the change in
    #   storage type to take effect.
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
    #   read replica for the instance, and creating a DB snapshot of the
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
    #   parameter is enabled for this request. If the parameter change
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
    #   reboot occurs immediately if you enable `ApplyImmediately`, or will
    #   occur during the next maintenance window if you disable Apply
    #   Immediately. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
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
    #   read replica for the instance, and creating a DB snapshot of the
    #   instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
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
    #   The Active Directory directory ID to move the DB instance to.
    #   Specify `none` to remove the instance from its current domain. The
    #   domain must be created prior to this operation. Currently, only
    #   Microsoft SQL Server and Oracle DB instances can be created in an
    #   Active Directory Domain.
    #
    #   For Microsoft SQL Server DB instances, Amazon RDS can use Windows
    #   Authentication to authenticate users that connect to the DB
    #   instance. For more information, see [ Using Windows Authentication
    #   with an Amazon RDS DB Instance Running Microsoft SQL Server][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   For Oracle DB instances, Amazon RDS can use Kerberos Authentication
    #   to authenticate users that connect to the DB instance. For more
    #   information, see [ Using Kerberos Authentication with Amazon RDS for
    #   Oracle][2] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the DB instance
    #   to snapshots of the DB instance. By default, tags are not copied.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Copying tags to snapshots is managed by the DB
    #   cluster. Setting this value for an Aurora DB instance has no effect
    #   on the DB cluster setting. For more information, see
    #   `ModifyDBCluster`.
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
    #   Valid values: `1150-65535`
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid values: `1150-65535` except `1234`, `1434`, `3260`, `3343`,
    #   `3389`, `47001`, and `49152-49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible. When the DB instance is publicly accessible, it is an
    #   Internet-facing instance with a publicly resolvable DNS name, which
    #   resolves to a public IP address. When the DB instance isn't
    #   publicly accessible, it is an internal instance with a DNS name that
    #   resolves to a private IP address.
    #
    #   `PubliclyAccessible` only applies to DB instances in a VPC. The DB
    #   instance must be part of a public subnet and `PubliclyAccessible`
    #   must be enabled for it to be publicly accessible.
    #
    #   Changes to the `PubliclyAccessible` parameter are applied
    #   immediately regardless of the value of the `ApplyImmediately`
    #   parameter.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled. For information about the supported DB engines,
    #   see CreateDBInstance.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for
    #   the DB instance.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default encryption key. AWS KMS creates
    #   the default encryption key for your AWS account. Your AWS account
    #   has a different default encryption key for each AWS Region.
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
    #
    #   A change to the `CloudwatchLogsExportConfiguration` parameter is
    #   always applied to the DB instance immediately. Therefore, the
    #   `ApplyImmediately` parameter has no effect.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit to which Amazon RDS can automatically scale the
    #   storage of the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] certificate_rotation_restart
    #   A value that indicates whether the DB instance is restarted when you
    #   rotate your SSL/TLS certificate.
    #
    #   By default, the DB instance is restarted when you rotate your
    #   SSL/TLS certificate. The certificate is not updated until the DB
    #   instance is restarted.
    #
    #   Set this parameter only if you are *not* using SSL/TLS to connect to
    #   the DB instance.
    #
    #   If you are using SSL/TLS to connect to the DB instance, follow the
    #   appropriate instructions for your DB engine to rotate your SSL/TLS
    #   certificate:
    #
    #   * For more information about rotating your SSL/TLS certificate for
    #     RDS DB engines, see [ Rotating Your SSL/TLS Certificate.][1] in
    #     the *Amazon RDS User Guide.*
    #
    #   * For more information about rotating your SSL/TLS certificate for
    #     Aurora DB engines, see [ Rotating Your SSL/TLS Certificate][2] in
    #     the *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html
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
      :use_default_processor_features,
      :deletion_protection,
      :max_allocated_storage,
      :certificate_rotation_restart)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBInstances` action.
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
    #   * If supplied, must match the name of an existing
    #     `DBParameterGroup`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An array of parameter names, values, and the apply method for the
    #   parameter update. At least one parameter name, value, and apply
    #   method must be supplied; later arguments are optional. A maximum of
    #   20 parameters can be modified in a single request.
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

    # @note When making an API call, you may pass ModifyDBProxyRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #         new_db_proxy_name: "String",
    #         auth: [
    #           {
    #             description: "String",
    #             user_name: "String",
    #             auth_scheme: "SECRETS", # accepts SECRETS
    #             secret_arn: "String",
    #             iam_auth: "DISABLED", # accepts DISABLED, REQUIRED
    #           },
    #         ],
    #         require_tls: false,
    #         idle_client_timeout: 1,
    #         debug_logging: false,
    #         role_arn: "String",
    #         security_groups: ["String"],
    #       }
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier for the `DBProxy` to modify.
    #   @return [String]
    #
    # @!attribute [rw] new_db_proxy_name
    #   The new identifier for the `DBProxy`. An identifier must begin with
    #   a letter and must contain only ASCII letters, digits, and hyphens;
    #   it can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   The new authentication settings for the `DBProxy`.
    #   @return [Array<Types::UserAuthConfig>]
    #
    # @!attribute [rw] require_tls
    #   Whether Transport Layer Security (TLS) encryption is required for
    #   connections to the proxy. By enabling this setting, you can enforce
    #   encrypted TLS connections to the proxy, even if the associated
    #   database doesn't use TLS.
    #   @return [Boolean]
    #
    # @!attribute [rw] idle_client_timeout
    #   The number of seconds that a connection to the proxy can be inactive
    #   before the proxy disconnects it. You can set this value higher or
    #   lower than the connection timeout limit for the associated database.
    #   @return [Integer]
    #
    # @!attribute [rw] debug_logging
    #   Whether the proxy includes detailed information about SQL statements
    #   in its logs. This information helps you to debug issues involving
    #   SQL behavior or the performance and scalability of the proxy
    #   connections. The debug information includes the text of SQL
    #   statements that you submit through the proxy. Thus, only enable this
    #   setting when needed for debugging, and only when you have security
    #   measures in place to safeguard any sensitive information that
    #   appears in the logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the proxy uses
    #   to access secrets in AWS Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The new list of security groups for the `DBProxy`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBProxyRequest AWS API Documentation
    #
    class ModifyDBProxyRequest < Struct.new(
      :db_proxy_name,
      :new_db_proxy_name,
      :auth,
      :require_tls,
      :idle_client_timeout,
      :debug_logging,
      :role_arn,
      :security_groups)
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy
    #   The `DBProxy` object representing the new settings for the proxy.
    #   @return [Types::DBProxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBProxyResponse AWS API Documentation
    #
    class ModifyDBProxyResponse < Struct.new(
      :db_proxy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDBProxyTargetGroupRequest
    #   data as a hash:
    #
    #       {
    #         target_group_name: "String", # required
    #         db_proxy_name: "String", # required
    #         connection_pool_config: {
    #           max_connections_percent: 1,
    #           max_idle_connections_percent: 1,
    #           connection_borrow_timeout: 1,
    #           session_pinning_filters: ["String"],
    #           init_query: "String",
    #         },
    #         new_name: "String",
    #       }
    #
    # @!attribute [rw] target_group_name
    #   The name of the new target group to assign to the proxy.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_name
    #   The name of the new proxy to which to assign the target group.
    #   @return [String]
    #
    # @!attribute [rw] connection_pool_config
    #   The settings that determine the size and behavior of the connection
    #   pool for the target group.
    #   @return [Types::ConnectionPoolConfiguration]
    #
    # @!attribute [rw] new_name
    #   The new name for the modified `DBProxyTarget`. An identifier must
    #   begin with a letter and must contain only ASCII letters, digits, and
    #   hyphens; it can't end with a hyphen or contain two consecutive
    #   hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBProxyTargetGroupRequest AWS API Documentation
    #
    class ModifyDBProxyTargetGroupRequest < Struct.new(
      :target_group_name,
      :db_proxy_name,
      :connection_pool_config,
      :new_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_target_group
    #   The settings of the modified `DBProxyTarget`.
    #   @return [Types::DBProxyTargetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBProxyTargetGroupResponse AWS API Documentation
    #
    class ModifyDBProxyTargetGroupResponse < Struct.new(
      :db_proxy_target_group)
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
    #   `DescribeDBSnapshotAttributes` API action.
    #
    #   Manual DB snapshot attributes are used to authorize other AWS
    #   accounts to copy or restore a manual DB snapshot. For more
    #   information, see the `ModifyDBSnapshotAttribute` API action.
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
    #
    #   **PostgreSQL**
    #
    #   For the list of engine versions that are available for upgrading a
    #   DB snapshot, see [ Upgrading the PostgreSQL DB Engine for Amazon
    #   RDS][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html#USER_UpgradeDBInstance.PostgreSQL.MajorVersion
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
    #   `DescribeDBSnapshots` action.
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
    #   `DescribeDBSubnetGroups` action.
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
    #   would set this parameter to db-instance. If this value isn't
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A value that indicates whether to activate the subscription.
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
    #   `DescribeEventSubscriptions` action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyEventSubscriptionResult AWS API Documentation
    #
    class ModifyEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyGlobalClusterMessage
    #   data as a hash:
    #
    #       {
    #         global_cluster_identifier: "String",
    #         new_global_cluster_identifier: "String",
    #         deletion_protection: false,
    #       }
    #
    # @!attribute [rw] global_cluster_identifier
    #   The DB cluster identifier for the global cluster being modified.
    #   This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing global database cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] new_global_cluster_identifier
    #   The new cluster identifier for the global database cluster when
    #   modifying a global database cluster. This value is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * The first character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates if the global database cluster has deletion protection
    #   enabled. The global database cluster can't be deleted when deletion
    #   protection is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyGlobalClusterMessage AWS API Documentation
    #
    class ModifyGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :new_global_cluster_identifier,
      :deletion_protection)
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   A data type representing an Aurora global database.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyGlobalClusterResult AWS API Documentation
    #
    class ModifyGlobalClusterResult < Struct.new(
      :global_cluster)
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
    #   A value that indicates whether to apply the change immediately or
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
    #   A list of DBSecurityGroupMembership name strings used for this
    #   option.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_memberships
    #   A list of VpcSecurityGroupMembership name strings used for this
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

    # The option group you are trying to create already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupAlreadyExistsFault AWS API Documentation
    #
    class OptionGroupAlreadyExistsFault < Aws::EmptyStructure; end

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

    # The specified option group could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupNotFoundFault AWS API Documentation
    #
    class OptionGroupNotFoundFault < Aws::EmptyStructure; end

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

    # The quota of 20 option groups was exceeded for this AWS account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OptionGroupQuotaExceededFault AWS API Documentation
    #
    class OptionGroupQuotaExceededFault < Aws::EmptyStructure; end

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
    # by the `DescribeOptionGroupOptions` action.
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
    # `DescribeOrderableDBInstanceOptions` action.
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
    # @!attribute [rw] availability_zone_group
    #   The Availability Zone group for a DB instance.
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
    #   Indicates whether a DB instance can have a read replica.
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
    #
    #   <note markdown="1"> `global` engine mode only applies for global database clusters
    #   created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL
    #   versions, the clusters in a global database use `provisioned` engine
    #   mode.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_storage_autoscaling
    #   Whether Amazon RDS can automatically scale storage for DB instances
    #   that use the specified DB instance class.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_kerberos_authentication
    #   Whether a DB instance supports Kerberos Authentication.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OrderableDBInstanceOption AWS API Documentation
    #
    class OrderableDBInstanceOption < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zone_group,
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
      :supported_engine_modes,
      :supports_storage_autoscaling,
      :supports_kerberos_authentication)
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeOrderableDBInstanceOptions` action.
    #
    # @!attribute [rw] orderable_db_instance_options
    #   An `OrderableDBInstanceOption` structure containing information
    #   about orderable options for the DB instance.
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
    # `ModifyDBParameterGroup` and `ResetDBParameterGroup` actions.
    #
    # This data type is used as a response element in the
    # `DescribeEngineDefaultParameters` and `DescribeDBParameters` actions.
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
    #   resource. Valid actions are `system-update`, `db-upgrade`,
    #   `hardware-maintenance`, and `ca-certificate-rotation`.
    #   @return [String]
    #
    # @!attribute [rw] auto_applied_after_date
    #   The date of the maintenance window when the action is applied. The
    #   maintenance action is applied to the resource during its first
    #   maintenance window after this date.
    #   @return [Time]
    #
    # @!attribute [rw] forced_apply_date
    #   The date when the maintenance action is automatically applied. The
    #   maintenance action is applied to the resource on this date
    #   regardless of the maintenance window for the resource.
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
    #   from the `ApplyPendingMaintenanceAction` API, the
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

    # This data type is used as a response element in the `ModifyDBInstance`
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

    # `SourceDBInstanceIdentifier` refers to a DB instance with
    # `BackupRetentionPeriod` equal to 0.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PointInTimeRestoreNotEnabledFault AWS API Documentation
    #
    class PointInTimeRestoreNotEnabledFault < Aws::EmptyStructure; end

    # Contains the processor features of a DB instance class.
    #
    # To specify the number of CPU cores, use the `coreCount` feature name
    # for the `Name` parameter. To specify the number of threads per core,
    # use the `threadsPerCore` feature name for the `Name` parameter.
    #
    # You can set the processor features of the DB instance class for a DB
    # instance when you call one of the following actions:
    #
    # * `CreateDBInstance`
    #
    # * `ModifyDBInstance`
    #
    # * `RestoreDBInstanceFromDBSnapshot`
    #
    # * `RestoreDBInstanceFromS3`
    #
    # * `RestoreDBInstanceToPointInTime`
    #
    # You can view the valid processor values for a particular instance
    # class by calling the `DescribeOrderableDBInstanceOptions` action and
    # specifying the instance class for the `DBInstanceClass` parameter.
    #
    # In addition, you can use the following actions for DB instance class
    # processor information:
    #
    # * `DescribeDBInstances`
    #
    # * `DescribeDBSnapshots`
    #
    # * `DescribeValidDBInstanceModifications`
    #
    # For more information, see [Configuring the Processor of the DB
    # Instance Class][1] in the <i>Amazon RDS User Guide. </i>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor
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
    #   The identifier of the DB cluster read replica to promote. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB cluster read replica.
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #   * Must match the identifier of an existing read replica DB instance.
    #
    #   ^
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35.
    #
    #   * Can't be set to 0 if the DB instance is a source to read
    #     replicas.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
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
    #   `DescribeDBInstances` action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaResult AWS API Documentation
    #
    class PromoteReadReplicaResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # Provisioned IOPS not available in the specified Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ProvisionedIopsNotAvailableInAZFault AWS API Documentation
    #
    class ProvisionedIopsNotAvailableInAZFault < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   `DescribeReservedDBInstances` and
    #   `PurchaseReservedDBInstancesOffering` actions.
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
    #   A value that indicates whether the reboot is conducted through a
    #   Multi-AZ failover.
    #
    #   Constraint: You can't enable force failover if the instance isn't
    #   configured for Multi-AZ.
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
    #   `DescribeDBInstances` action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBInstanceResult AWS API Documentation
    #
    class RebootDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # `DescribeReservedDBInstances` and
    # `DescribeReservedDBInstancesOfferings` actions.
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

    # @note When making an API call, you may pass RegisterDBProxyTargetsRequest
    #   data as a hash:
    #
    #       {
    #         db_proxy_name: "String", # required
    #         target_group_name: "String",
    #         db_instance_identifiers: ["String"],
    #         db_cluster_identifiers: ["String"],
    #       }
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier of the `DBProxy` that is associated with the
    #   `DBProxyTargetGroup`.
    #   @return [String]
    #
    # @!attribute [rw] target_group_name
    #   The identifier of the `DBProxyTargetGroup`.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifiers
    #   One or more DB instance identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_identifiers
    #   One or more DB cluster identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RegisterDBProxyTargetsRequest AWS API Documentation
    #
    class RegisterDBProxyTargetsRequest < Struct.new(
      :db_proxy_name,
      :target_group_name,
      :db_instance_identifiers,
      :db_cluster_identifiers)
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_targets
    #   One or more `DBProxyTarget` objects that are created when you
    #   register targets with a target group.
    #   @return [Array<Types::DBProxyTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RegisterDBProxyTargetsResponse AWS API Documentation
    #
    class RegisterDBProxyTargetsResponse < Struct.new(
      :db_proxy_targets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveFromGlobalClusterMessage
    #   data as a hash:
    #
    #       {
    #         global_cluster_identifier: "String",
    #         db_cluster_identifier: "String",
    #       }
    #
    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier to detach from the Aurora global database
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The Amazon Resource Name (ARN) identifying the cluster that was
    #   detached from the Aurora global database cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveFromGlobalClusterMessage AWS API Documentation
    #
    class RemoveFromGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :db_cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   A data type representing an Aurora global database.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveFromGlobalClusterResult AWS API Documentation
    #
    class RemoveFromGlobalClusterResult < Struct.new(
      :global_cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveRoleFromDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         role_arn: "String", # required
    #         feature_name: "String",
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
    # @!attribute [rw] feature_name
    #   The name of the feature for the DB cluster that the IAM role is to
    #   be disassociated from. For the list of supported feature names, see
    #   DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBClusterMessage AWS API Documentation
    #
    class RemoveRoleFromDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveRoleFromDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         role_arn: "String", # required
    #         feature_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The name of the DB instance to disassociate the IAM role from.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to disassociate from
    #   the DB instance, for example
    #   `arn:aws:iam::123456789012:role/AccessRole`.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature for the DB instance that the IAM role is to
    #   be disassociated from. For the list of supported feature names, see
    #   `DBEngineVersion`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBInstanceMessage AWS API Documentation
    #
    class RemoveRoleFromDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :role_arn,
      :feature_name)
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
    #   `DescribeEventSubscriptions` action.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
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
    # `DescribeReservedDBInstances` and
    # `PurchaseReservedDBInstancesOffering` actions.
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
    # @!attribute [rw] lease_id
    #   The unique identifier for the lease associated with the reserved DB
    #   instance.
    #
    #   <note markdown="1"> AWS Support might request the lease ID for an issue related to a
    #   reserved DB instance.
    #
    #    </note>
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
      :reserved_db_instance_arn,
      :lease_id)
      include Aws::Structure
    end

    # User already has a reservation with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstanceAlreadyExistsFault AWS API Documentation
    #
    class ReservedDBInstanceAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the result of a successful invocation of the
    # `DescribeReservedDBInstances` action.
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

    # The specified reserved DB Instance not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstanceNotFoundFault AWS API Documentation
    #
    class ReservedDBInstanceNotFoundFault < Aws::EmptyStructure; end

    # Request would exceed the user's DB Instance quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstanceQuotaExceededFault AWS API Documentation
    #
    class ReservedDBInstanceQuotaExceededFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the
    # `DescribeReservedDBInstancesOfferings` action.
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
    # `DescribeReservedDBInstancesOfferings` action.
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

    # Specified offering does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstancesOfferingNotFoundFault AWS API Documentation
    #
    class ReservedDBInstancesOfferingNotFoundFault < Aws::EmptyStructure; end

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
    #   A value that indicates whether to reset all parameters in the DB
    #   cluster parameter group to their default values. You can't use this
    #   parameter if there is a list of parameter names specified for the
    #   `Parameters` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of parameter names in the DB cluster parameter group to reset
    #   to the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is enabled.
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
    #   * Must match the name of an existing `DBParameterGroup`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   A value that indicates whether to reset all parameters in the DB
    #   parameter group to default values. By default, all parameters in the
    #   DB parameter group are reset to default values.
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

    # The specified resource ID was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ResourceNotFoundFault AWS API Documentation
    #
    class ResourceNotFoundFault < Aws::EmptyStructure; end

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
    #         deletion_protection: false,
    #         copy_tags_to_snapshot: false,
    #         domain: "String",
    #         domain_iam_role_name: "String",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones (AZs) where instances in the restored
    #   DB cluster can be created.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
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
    #   To list all of the available engine versions for `aurora` (for MySQL
    #   5.6-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for `aurora-mysql` (for
    #   MySQL 5.7-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for
    #   `aurora-postgresql`, use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`, `5.6.mysql_aurora.1.19.2`, `5.7.12`,
    #   `5.7.mysql_aurora.2.04.5`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`, `10.7`
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
    #   * Can't be a reserved word for the chosen database engine.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   A value that indicates whether the restored DB cluster is encrypted.
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
    #   If the StorageEncrypted parameter is enabled, and you do not specify
    #   a value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key
    #   for your AWS account. Your AWS account has a different default
    #   encryption key for each AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not
    #   to copy them.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory directory ID to restore the DB cluster
    #   in. The domain must be created prior to this operation.
    #
    #   For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
    #   Authentication to authenticate users that connect to the DB cluster.
    #   For more information, see [Kerberos Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
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
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #           timeout_action: "String",
    #         },
    #         db_cluster_parameter_group_name: "String",
    #         deletion_protection: false,
    #         copy_tags_to_snapshot: false,
    #         domain: "String",
    #         domain_iam_role_name: "String",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Availability Zones (AZs) where instances in the
    #   restored DB cluster can be created.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #
    #   To list all of the available engine versions for `aurora` (for MySQL
    #   5.6-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for `aurora-mysql` (for
    #   MySQL 5.7-compatible Aurora), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for
    #   `aurora-postgresql`, use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   <note markdown="1"> If you aren't using the default engine version, then you must
    #   specify the engine version.
    #
    #    </note>
    #
    #   **Aurora MySQL**
    #
    #   Example: `5.6.10a`, `5.6.mysql_aurora.1.19.2`, `5.7.12`,
    #   `5.7.mysql_aurora.2.04.5`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `9.6.3`, `10.7`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: This value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing DB
    #   subnet group.
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
    #   If you don't specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is encrypted, then the restored DB cluster is encrypted using the
    #     KMS key that was used to encrypt the DB snapshot or DB cluster
    #     snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     isn't encrypted, then the restored DB cluster isn't encrypted.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   The list of logs that the restored DB cluster is to export to Amazon
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used. For more information, see [Publishing Database Logs to
    #   Amazon CloudWatch Logs ][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, `parallelquery`, `global`, or `multimaster`.
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, the default DB cluster
    #   parameter group for the specified engine is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing default DB cluster
    #     parameter group.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not
    #   to copy them.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory directory ID to restore the DB cluster
    #   in. The domain must be created prior to this operation.
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
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
      :scaling_configuration,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #         db_cluster_parameter_group_name: "String",
    #         deletion_protection: false,
    #         copy_tags_to_snapshot: false,
    #         domain: "String",
    #         domain_iam_role_name: "String",
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   * Must be specified if `UseLatestRestorableTime` parameter isn't
    #     provided
    #
    #   * Can't be specified if the `UseLatestRestorableTime` parameter is
    #     enabled
    #
    #   * Can't be specified if the `RestoreType` parameter is
    #     `copy-on-write`
    #
    #   Example: `2015-03-07T23:45:00Z`
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   A value that indicates whether to restore the DB cluster to the
    #   latest restorable backup time. By default, the DB cluster isn't
    #   restored to the latest restorable backup time.
    #
    #   Constraints: Can't be specified if `RestoreToTime` parameter is
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   If you don't specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the KMS key that was used to encrypt the source DB
    #     cluster.
    #
    #   * If the DB cluster isn't encrypted, then the restored DB cluster
    #     isn't encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that isn't
    #   encrypted, then the restore request is rejected.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, the default DB cluster
    #   parameter group for the specified engine is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DB cluster
    #     parameter group.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not
    #   to copy them.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory directory ID to restore the DB cluster
    #   in. The domain must be created prior to this operation.
    #
    #   For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
    #   Authentication to authenticate users that connect to the DB cluster.
    #   For more information, see [Kerberos Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
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
      :enable_cloudwatch_logs_exports,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #         vpc_security_group_ids: ["String"],
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
    #         db_parameter_group_name: "String",
    #         deletion_protection: false,
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
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
    #   The Availability Zone (AZ) where the DB instance will be created.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if
    #   the DB instance is a Multi-AZ deployment.
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
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if
    #   the DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible. When the DB instance is publicly accessible, it is an
    #   Internet-facing instance with a publicly resolvable DNS name, which
    #   resolves to a public IP address. When the DB instance isn't
    #   publicly accessible, it is an internal instance with a DNS name that
    #   resolves to a private IP address. For more information, see
    #   CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
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
    #   expressed in I/O operations per second. If this parameter isn't
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
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
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory directory ID to restore the DB instance
    #   in. The domain must be created prior to this operation. Currently,
    #   only Microsoft SQL Server and Oracle DB instances can be created in
    #   an Active Directory Domain.
    #
    #   For Microsoft SQL Server DB instances, Amazon RDS can use Windows
    #   Authentication to authenticate users that connect to the DB
    #   instance. For more information, see [ Using Windows Authentication
    #   with an Amazon RDS DB Instance Running Microsoft SQL Server][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   For Oracle DB instances, Amazon RDS can use Kerberos Authentication
    #   to authenticate users that connect to the DB instance. For more
    #   information, see [ Using Kerberos Authentication with Amazon RDS for
    #   Oracle][2] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   instance to snapshots of the DB instance. By default, tags are not
    #   copied.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled. For information about the supported DB engines,
    #   see CreateDBInstance.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then the
    #   default `DBParameterGroup` for the specified DB engine is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
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
      :vpc_security_group_ids,
      :domain,
      :copy_tags_to_snapshot,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :db_parameter_group_name,
      :deletion_protection)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBInstances` action.
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
    #         deletion_protection: false,
    #       }
    #
    # @!attribute [rw] db_name
    #   The name of the database to create when the DB instance is created.
    #   Follow the naming rules specified in `CreateDBInstance`.
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
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to allocate initially for the
    #   DB instance. Follow the allocation rules specified in
    #   `CreateDBInstance`.
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
    #   Importing from Amazon S3 isn't supported on the db.t2.micro DB
    #   instance class.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
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
    #   * Can't be a reserved word for the chosen database engine.
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
    #   Constraint: The `AvailabilityZone` parameter can't be specified if
    #   the DB instance is a Multi-AZ deployment. The specified Availability
    #   Zone must be in the same AWS Region as the current endpoint.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then the
    #   default `DBParameterGroup` for the specified DB engine is used.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. For more
    #   information, see `CreateDBInstance`.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
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
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment. If the DB instance is a Multi-AZ deployment, you can't
    #   set the `AvailabilityZone` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use. Choose the latest
    #   minor version of your database engine. For information about engine
    #   versions, see `CreateDBInstance`, or call
    #   `DescribeDBEngineVersions`.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the DB instance during the maintenance window. By
    #   default, minor engine upgrades are not applied automatically.
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
    #   valid Iops values, see [Amazon RDS Provisioned IOPS Storage to
    #   Improve Performance][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to associate with this DB instance. If
    #   this argument is omitted, the default option group for the specified
    #   engine is used.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible. When the DB instance is publicly accessible, it is an
    #   Internet-facing instance with a publicly resolvable DNS name, which
    #   resolves to a public IP address. When the DB instance isn't
    #   publicly accessible, it is an internal instance with a DNS name that
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   Default: `io1` if the `Iops` parameter is specified; otherwise `gp2`
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   A value that indicates whether the new DB instance is encrypted or
    #   not.
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
    #   If the `StorageEncrypted` parameter is enabled, and you do not
    #   specify a value for the `KmsKeyId` parameter, then Amazon RDS will
    #   use your default encryption key. AWS KMS creates the default
    #   encryption key for your AWS account. Your AWS account has a
    #   different default encryption key for each AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the DB instance
    #   to snapshots of the DB instance. By default, tags are not copied.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled. For information about the supported DB engines,
    #   see CreateDBInstance.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   A value that indicates whether to enable Performance Insights for
    #   the DB instance.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), the KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default encryption key. AWS KMS creates
    #   the default encryption key for your AWS account. Your AWS account
    #   has a different default encryption key for each AWS Region.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
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
      :use_default_processor_features,
      :deletion_protection)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBInstances` action.
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
    #         source_db_instance_identifier: "String",
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
    #         vpc_security_group_ids: ["String"],
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
    #         db_parameter_group_name: "String",
    #         deletion_protection: false,
    #         source_dbi_resource_id: "String",
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
    #   * Can't end with a hyphen or contain two consecutive hyphens
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
    #   * Can't be specified if the `UseLatestRestorableTime` parameter is
    #     enabled
    #
    #   Example: `2009-09-07T23:45:00Z`
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   A value that indicates whether the DB instance is restored from the
    #   latest backup time. By default, the DB instance isn't restored from
    #   the latest backup time.
    #
    #   Constraints: Can't be specified if the `RestoreTime` parameter is
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
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
    #   The Availability Zone (AZ) where the DB instance will be created.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if
    #   the DB instance is a Multi-AZ deployment.
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
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if
    #   the DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible. When the DB instance is publicly accessible, it is an
    #   Internet-facing instance with a publicly resolvable DNS name, which
    #   resolves to a public IP address. When the DB instance isn't
    #   publicly accessible, it is an internal instance with a DNS name that
    #   resolves to a private IP address. For more information, see
    #   CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
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
    #   <note markdown="1"> This parameter isn't used for the MySQL or MariaDB engines.
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
    #   Setting the IOPS value for the SQL Server database engine isn't
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
    #   A value that indicates whether to copy all tags from the restored DB
    #   instance to snapshots of the DB instance. By default, tags are not
    #   copied.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
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
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory directory ID to restore the DB instance
    #   in. The domain must be created prior to this operation. Currently,
    #   only Microsoft SQL Server and Oracle DB instances can be created in
    #   an Active Directory Domain.
    #
    #   For Microsoft SQL Server DB instances, Amazon RDS can use Windows
    #   Authentication to authenticate users that connect to the DB
    #   instance. For more information, see [ Using Windows Authentication
    #   with an Amazon RDS DB Instance Running Microsoft SQL Server][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   For Oracle DB instances, Amazon RDS can use Kerberos Authentication
    #   to authenticate users that connect to the DB instance. For more
    #   information, see [ Using Kerberos Authentication with Amazon RDS for
    #   Oracle][2] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_SQLServerWinAuth.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-kerberos.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts. By default,
    #   mapping is disabled. For information about the supported DB engines,
    #   see CreateDBInstance.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then the
    #   default `DBParameterGroup` for the specified DB engine is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] source_dbi_resource_id
    #   The resource ID of the source DB instance from which to restore.
    #   @return [String]
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
      :vpc_security_group_ids,
      :domain,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :db_parameter_group_name,
      :deletion_protection,
      :source_dbi_resource_id)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the
    #   `DescribeDBInstances` action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceToPointInTimeResult AWS API Documentation
    #
    class RestoreDBInstanceToPointInTimeResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # Earliest and latest time an instance can be restored to:
    #
    # @!attribute [rw] earliest_time
    #   The earliest time you can restore an instance to.
    #   @return [Time]
    #
    # @!attribute [rw] latest_time
    #   The latest time you can restore an instance to.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreWindow AWS API Documentation
    #
    class RestoreWindow < Struct.new(
      :earliest_time,
      :latest_time)
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
    #   The AWS account number of the owner of the EC2 security group
    #   specified in the `EC2SecurityGroupName` parameter. The AWS access
    #   key ID isn't an acceptable value. For VPC DB security groups,
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
    #   `DescribeDBSecurityGroups` action.
    #   @return [Types::DBSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RevokeDBSecurityGroupIngressResult AWS API Documentation
    #
    class RevokeDBSecurityGroupIngressResult < Struct.new(
      :db_security_group)
      include Aws::Structure
    end

    # SNS has responded that there is a problem with the SND topic
    # specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SNSInvalidTopicFault AWS API Documentation
    #
    class SNSInvalidTopicFault < Aws::EmptyStructure; end

    # You do not have permission to publish to the SNS topic ARN.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SNSNoAuthorizationFault AWS API Documentation
    #
    class SNSNoAuthorizationFault < Aws::EmptyStructure; end

    # The SNS topic ARN does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SNSTopicArnNotFoundFault AWS API Documentation
    #
    class SNSTopicArnNotFoundFault < Aws::EmptyStructure; end

    # Contains the scaling configuration of an Aurora Serverless DB cluster.
    #
    # For more information, see [Using Amazon Aurora Serverless][1] in the
    # *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #
    # @note When making an API call, you may pass ScalingConfiguration
    #   data as a hash:
    #
    #       {
    #         min_capacity: 1,
    #         max_capacity: 1,
    #         auto_pause: false,
    #         seconds_until_auto_pause: 1,
    #         timeout_action: "String",
    #       }
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity for an Aurora DB cluster in `serverless` DB
    #   engine mode.
    #
    #   For Aurora MySQL, valid capacity values are `1`, `2`, `4`, `8`,
    #   `16`, `32`, `64`, `128`, and `256`.
    #
    #   For Aurora PostgreSQL, valid capacity values are `2`, `4`, `8`,
    #   `16`, `32`, `64`, `192`, and `384`.
    #
    #   The minimum capacity must be less than or equal to the maximum
    #   capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity for an Aurora DB cluster in `serverless` DB
    #   engine mode.
    #
    #   For Aurora MySQL, valid capacity values are `1`, `2`, `4`, `8`,
    #   `16`, `32`, `64`, `128`, and `256`.
    #
    #   For Aurora PostgreSQL, valid capacity values are `2`, `4`, `8`,
    #   `16`, `32`, `64`, `192`, and `384`.
    #
    #   The maximum capacity must be greater than or equal to the minimum
    #   capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_pause
    #   A value that indicates whether to allow or disallow automatic pause
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
    # @!attribute [rw] timeout_action
    #   The action to take when the timeout is reached, either
    #   `ForceApplyCapacityChange` or `RollbackCapacityChange`.
    #
    #   `ForceApplyCapacityChange` sets the capacity to the specified value
    #   as soon as possible.
    #
    #   `RollbackCapacityChange`, the default, ignores the capacity change
    #   if a scaling point isn't found in the timeout period.
    #
    #   If you specify `ForceApplyCapacityChange`, connections that prevent
    #   Aurora Serverless from finding a scaling point might be dropped.
    #
    #   For more information, see [ Autoscaling for Aurora Serverless][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ScalingConfiguration AWS API Documentation
    #
    class ScalingConfiguration < Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause,
      :timeout_action)
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
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
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
    #
    #   When the value is set to false for an Aurora Serverless DB cluster,
    #   the DB cluster automatically resumes.
    #   @return [Boolean]
    #
    # @!attribute [rw] seconds_until_auto_pause
    #   The remaining amount of time, in seconds, before the Aurora DB
    #   cluster in `serverless` mode is paused. A DB cluster can be paused
    #   only when it's idle (it has no connections).
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_action
    #   The timeout action of a call to `ModifyCurrentDBClusterCapacity`,
    #   either `ForceApplyCapacityChange` or `RollbackCapacityChange`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ScalingConfigurationInfo AWS API Documentation
    #
    class ScalingConfigurationInfo < Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause,
      :timeout_action)
      include Aws::Structure
    end

    # You have exceeded the maximum number of accounts that you can share a
    # manual DB snapshot with.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SharedSnapshotQuotaExceededFault AWS API Documentation
    #
    class SharedSnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # The request would result in the user exceeding the allowed number of
    # DB snapshots.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SnapshotQuotaExceededFault AWS API Documentation
    #
    class SnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # The requested source could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceNotFoundFault AWS API Documentation
    #
    class SourceNotFoundFault < Aws::EmptyStructure; end

    # Contains an AWS Region name as the result of a successful call to the
    # `DescribeSourceRegions` action.
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
    # `DescribeSourceRegions` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] source_regions
    #   A list of SourceRegion instances that contains each source AWS
    #   Region that the current AWS Region can get a read replica or a DB
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

    # @note When making an API call, you may pass StartActivityStreamRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         mode: "sync", # required, accepts sync, async
    #         kms_key_id: "String", # required
    #         apply_immediately: false,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the DB cluster, for example
    #   `arn:aws:rds:us-east-1:12345667890:cluster:das-cluster`.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   Specifies the mode of the database activity stream. Database events
    #   such as a change or access generate an activity stream event. The
    #   database session can handle these events either synchronously or
    #   asynchronously.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for encrypting messages in the database
    #   activity stream. The key identifier can be either a key ID, a key
    #   ARN, or a key alias.
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether or not the database activity stream is to start as
    #   soon as possible, regardless of the maintenance window for the
    #   database.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartActivityStreamRequest AWS API Documentation
    #
    class StartActivityStreamRequest < Struct.new(
      :resource_arn,
      :mode,
      :kms_key_id,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for encryption of messages in the
    #   database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_name
    #   The name of the Amazon Kinesis data stream to be used for the
    #   database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates whether or not the database activity stream will start as
    #   soon as possible, regardless of the maintenance window for the
    #   database.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartActivityStreamResponse AWS API Documentation
    #
    class StartActivityStreamResponse < Struct.new(
      :kms_key_id,
      :kinesis_stream_name,
      :status,
      :mode,
      :apply_immediately)
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #   `DescribeDBInstances` action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceResult AWS API Documentation
    #
    class StartDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartExportTaskMessage
    #   data as a hash:
    #
    #       {
    #         export_task_identifier: "String", # required
    #         source_arn: "String", # required
    #         s3_bucket_name: "String", # required
    #         iam_role_arn: "String", # required
    #         kms_key_id: "String", # required
    #         s3_prefix: "String",
    #         export_only: ["String"],
    #       }
    #
    # @!attribute [rw] export_task_identifier
    #   A unique identifier for the snapshot export task. This ID isn't an
    #   identifier for the Amazon S3 bucket where the snapshot is to be
    #   exported to.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the snapshot to export to Amazon
    #   S3.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket to export the snapshot to.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The name of the IAM role to use for writing to the Amazon S3 bucket
    #   when exporting a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the AWS KMS key to use to encrypt the snapshot exported to
    #   Amazon S3. The KMS key ID is the Amazon Resource Name (ARN), the KMS
    #   key identifier, or the KMS key alias for the KMS encryption key. The
    #   IAM role used for the snapshot export must have encryption and
    #   decryption permissions to use this KMS key.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The Amazon S3 bucket prefix to use as the file name and path of the
    #   exported snapshot.
    #   @return [String]
    #
    # @!attribute [rw] export_only
    #   The data to be exported from the snapshot. If this parameter is not
    #   provided, all the snapshot data is exported. Valid values are the
    #   following:
    #
    #   * `database` - Export all the data from a specified database.
    #
    #   * `database.table` *table-name* - Export a table of the snapshot.
    #     This format is valid only for RDS for MySQL, RDS for MariaDB, and
    #     Aurora MySQL.
    #
    #   * `database.schema` *schema-name* - Export a database schema of the
    #     snapshot. This format is valid only for RDS for PostgreSQL and
    #     Aurora PostgreSQL.
    #
    #   * `database.schema.table` *table-name* - Export a table of the
    #     database schema. This format is valid only for RDS for PostgreSQL
    #     and Aurora PostgreSQL.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartExportTaskMessage AWS API Documentation
    #
    class StartExportTaskMessage < Struct.new(
      :export_task_identifier,
      :source_arn,
      :s3_bucket_name,
      :iam_role_arn,
      :kms_key_id,
      :s3_prefix,
      :export_only)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopActivityStreamRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         apply_immediately: false,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the DB cluster for the database
    #   activity stream. For example,
    #   `arn:aws:rds:us-east-1:12345667890:cluster:das-cluster`.
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether or not the database activity stream is to stop as
    #   soon as possible, regardless of the maintenance window for the
    #   database.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopActivityStreamRequest AWS API Documentation
    #
    class StopActivityStreamRequest < Struct.new(
      :resource_arn,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier used for encrypting messages in the
    #   database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_name
    #   The name of the Amazon Kinesis data stream used for the database
    #   activity stream.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the database activity stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopActivityStreamResponse AWS API Documentation
    #
    class StopActivityStreamResponse < Struct.new(
      :kms_key_id,
      :kinesis_stream_name,
      :status)
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
    #   `DescribeDBClusters`, `StopDBCluster`, and `StartDBCluster` actions.
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
    #   `DescribeDBInstances` action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstanceResult AWS API Documentation
    #
    class StopDBInstanceResult < Struct.new(
      :db_instance)
      include Aws::Structure
    end

    # The request would result in the user exceeding the allowed amount of
    # storage available across all DB instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StorageQuotaExceededFault AWS API Documentation
    #
    class StorageQuotaExceededFault < Aws::EmptyStructure; end

    # Storage of the `StorageType` specified can't be associated with the
    # DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StorageTypeNotSupportedFault AWS API Documentation
    #
    class StorageTypeNotSupportedFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the
    # `DescribeDBSubnetGroups` action.
    #
    # @!attribute [rw] subnet_identifier
    #   Specifies the identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Contains Availability Zone information.
    #
    #   This data type is used as an element in the
    #   `OrderableDBInstanceOption` data type.
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

    # The DB subnet is already in use in the Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SubnetAlreadyInUse AWS API Documentation
    #
    class SubnetAlreadyInUse < Aws::EmptyStructure; end

    # The supplied subscription name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SubscriptionAlreadyExistFault AWS API Documentation
    #
    class SubscriptionAlreadyExistFault < Aws::EmptyStructure; end

    # The supplied category does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SubscriptionCategoryNotFoundFault AWS API Documentation
    #
    class SubscriptionCategoryNotFoundFault < Aws::EmptyStructure; end

    # The subscription name does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SubscriptionNotFoundFault AWS API Documentation
    #
    class SubscriptionNotFoundFault < Aws::EmptyStructure; end

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

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Information about the connection health of an RDS Proxy target.
    #
    # @!attribute [rw] state
    #   The current state of the connection health lifecycle for the RDS
    #   Proxy target. The following is a typical lifecycle example for the
    #   states of an RDS Proxy target:
    #
    #   `registering` &gt; `unavailable` &gt; `available` &gt; `unavailable`
    #   &gt; `available`
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the current health `State` of the RDS Proxy target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the health of the RDS Proxy target. If the `State`
    #   is `AVAILABLE`, a description is not included.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/TargetHealth AWS API Documentation
    #
    class TargetHealth < Struct.new(
      :state,
      :reason,
      :description)
      include Aws::Structure
    end

    # A time zone associated with a `DBInstance` or a `DBSnapshot`. This
    # data type is an element in the response to the `DescribeDBInstances`,
    # the `DescribeDBSnapshots`, and the `DescribeDBEngineVersions` actions.
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
    #   source DB instances that have `AutoMinorVersionUpgrade` set to true.
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

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Specifies the details of authentication used by a proxy to log in as a
    # specific database user.
    #
    # @note When making an API call, you may pass UserAuthConfig
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         user_name: "String",
    #         auth_scheme: "SECRETS", # accepts SECRETS
    #         secret_arn: "String",
    #         iam_auth: "DISABLED", # accepts DISABLED, REQUIRED
    #       }
    #
    # @!attribute [rw] description
    #   A user-specified description about the authentication used by a
    #   proxy to log in as a specific database user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the database user to which the proxy connects.
    #   @return [String]
    #
    # @!attribute [rw] auth_scheme
    #   The type of authentication that the proxy uses for connections from
    #   the proxy to the underlying database.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) representing the secret that the
    #   proxy uses to authenticate to the RDS DB instance or Aurora DB
    #   cluster. These secrets are stored within Amazon Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] iam_auth
    #   Whether to require or disallow AWS Identity and Access Management
    #   (IAM) authentication for connections to the proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/UserAuthConfig AWS API Documentation
    #
    class UserAuthConfig < Struct.new(
      :description,
      :user_name,
      :auth_scheme,
      :secret_arn,
      :iam_auth)
      include Aws::Structure
    end

    # <note markdown="1"> This is prerelease documentation for the RDS Database Proxy feature in
    # preview release. It is subject to change.
    #
    #  </note>
    #
    # Returns the details of authentication used by a proxy to log in as a
    # specific database user.
    #
    # @!attribute [rw] description
    #   A user-specified description about the authentication used by a
    #   proxy to log in as a specific database user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the database user to which the proxy connects.
    #   @return [String]
    #
    # @!attribute [rw] auth_scheme
    #   The type of authentication that the proxy uses for connections from
    #   the proxy to the underlying database.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) representing the secret that the
    #   proxy uses to authenticate to the RDS DB instance or Aurora DB
    #   cluster. These secrets are stored within Amazon Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] iam_auth
    #   Whether to require or disallow AWS Identity and Access Management
    #   (IAM) authentication for connections to the proxy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/UserAuthConfigInfo AWS API Documentation
    #
    class UserAuthConfigInfo < Struct.new(
      :description,
      :user_name,
      :auth_scheme,
      :secret_arn,
      :iam_auth)
      include Aws::Structure
    end

    # Information about valid modifications that you can make to your DB
    # instance. Contains the result of a successful call to the
    # `DescribeValidDBInstanceModifications` action. You can use this
    # information when you call `ModifyDBInstance`.
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
    # `DescribeValidDBInstanceModifications` action.
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
    # @!attribute [rw] supports_storage_autoscaling
    #   Whether or not Amazon RDS can automatically scale storage for DB
    #   instances that use the new instance class.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ValidStorageOptions AWS API Documentation
    #
    class ValidStorageOptions < Struct.new(
      :storage_type,
      :storage_size,
      :provisioned_iops,
      :iops_to_storage_ratio,
      :supports_storage_autoscaling)
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

    # Information about the virtual private network (VPN) between the VMware
    # vSphere cluster and the AWS website.
    #
    # For more information about RDS on VMware, see the [ *RDS on VMware
    # User Guide.* ][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html
    #
    # @!attribute [rw] vpn_id
    #   The ID of the VPN.
    #   @return [String]
    #
    # @!attribute [rw] vpn_tunnel_originator_ip
    #   The IP address of network traffic from your on-premises data center.
    #   A custom AZ receives the network traffic.
    #   @return [String]
    #
    # @!attribute [rw] vpn_gateway_ip
    #   The IP address of network traffic from AWS to your on-premises data
    #   center.
    #   @return [String]
    #
    # @!attribute [rw] vpn_psk
    #   The preshared key (PSK) for the VPN.
    #   @return [String]
    #
    # @!attribute [rw] vpn_name
    #   The name of the VPN.
    #   @return [String]
    #
    # @!attribute [rw] vpn_state
    #   The state of the VPN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/VpnDetails AWS API Documentation
    #
    class VpnDetails < Struct.new(
      :vpn_id,
      :vpn_tunnel_originator_ip,
      :vpn_gateway_ip,
      :vpn_psk,
      :vpn_name,
      :vpn_state)
      include Aws::Structure
    end

  end
end
