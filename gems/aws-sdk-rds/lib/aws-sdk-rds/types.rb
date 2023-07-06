# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a quota for an Amazon Web Services account.
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
    # * `DBClusterRoles` - The number of associated Amazon Web Services
    #   Identity and Access Management (IAM) roles per DB cluster. The used
    #   value is the highest number of associated IAM roles for a DB cluster
    #   in the account. Other DB clusters in the account might have a lower
    #   number of associated IAM roles.
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
    # * `ManualClusterSnapshots` - The number of manual DB cluster snapshots
    #   per account. The used value is the count of the manual DB cluster
    #   snapshots in the account.
    #
    # * `ManualSnapshots` - The number of manual DB instance snapshots per
    #   account. The used value is the count of the manual DB instance
    #   snapshots in the account.
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
    #   The name of the Amazon RDS quota for this Amazon Web Services
    #   account.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   be associated with. For information about supported feature names,
    #   see DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBClusterMessage AWS API Documentation
    #
    class AddRoleToDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   be associated with. For information about supported feature names,
    #   see DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddRoleToDBInstanceMessage AWS API Documentation
    #
    class AddRoleToDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :role_arn,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * If the source type is a DB instance, a `DBInstanceIdentifier`
    #     value must be supplied.
    #
    #   * If the source type is a DB cluster, a `DBClusterIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` value must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier`
    #     value must be supplied.
    #
    #   * If the source type is a DB cluster snapshot, a
    #     `DBClusterSnapshotIdentifier` value must be supplied.
    #
    #   * If the source type is an RDS Proxy, a `DBProxyName` value must be
    #     supplied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/AddSourceIdentifierToSubscriptionMessage AWS API Documentation
    #
    class AddSourceIdentifierToSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Amazon Web Services account number of the owner of the EC2 security
    #   group specified in the `EC2SecurityGroupName` parameter. The Amazon
    #   Web Services access key ID isn't an acceptable value. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BackupPolicyNotFoundFault AWS API Documentation
    #
    class BackupPolicyNotFoundFault < Aws::EmptyStructure; end

    # Contains the details about a blue/green deployment.
    #
    # For more information, see [Using Amazon RDS Blue/Green Deployments for
    # database updates][1] in the *Amazon RDS User Guide* and [ Using Amazon
    # RDS Blue/Green Deployments for database updates][2] in the *Amazon
    # Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
    #
    # @!attribute [rw] blue_green_deployment_identifier
    #   The system-generated identifier of the blue/green deployment.
    #   @return [String]
    #
    # @!attribute [rw] blue_green_deployment_name
    #   The user-supplied name of the blue/green deployment.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source database for the blue/green deployment.
    #
    #   Before switchover, the source database is the production database in
    #   the blue environment.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target database for the blue/green deployment.
    #
    #   Before switchover, the target database is the clone database in the
    #   green environment.
    #   @return [String]
    #
    # @!attribute [rw] switchover_details
    #   The details about each source and target resource in the blue/green
    #   deployment.
    #   @return [Array<Types::SwitchoverDetail>]
    #
    # @!attribute [rw] tasks
    #   Either tasks to be performed or tasks that have been completed on
    #   the target database before switchover.
    #   @return [Array<Types::BlueGreenDeploymentTask>]
    #
    # @!attribute [rw] status
    #   The status of the blue/green deployment.
    #
    #   Values:
    #
    #   * `PROVISIONING` - Resources are being created in the green
    #     environment.
    #
    #   * `AVAILABLE` - Resources are available in the green environment.
    #
    #   * `SWITCHOVER_IN_PROGRESS` - The deployment is being switched from
    #     the blue environment to the green environment.
    #
    #   * `SWITCHOVER_COMPLETED` - Switchover from the blue environment to
    #     the green environment is complete.
    #
    #   * `INVALID_CONFIGURATION` - Resources in the green environment are
    #     invalid, so switchover isn't possible.
    #
    #   * `SWITCHOVER_FAILED` - Switchover was attempted but failed.
    #
    #   * `DELETING` - The blue/green deployment is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Additional information about the status of the blue/green
    #   deployment.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Specifies the time when the blue/green deployment was created, in
    #   Universal Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] delete_time
    #   Specifies the time when the blue/green deployment was deleted, in
    #   Universal Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] tag_list
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BlueGreenDeployment AWS API Documentation
    #
    class BlueGreenDeployment < Struct.new(
      :blue_green_deployment_identifier,
      :blue_green_deployment_name,
      :source,
      :target,
      :switchover_details,
      :tasks,
      :status,
      :status_details,
      :create_time,
      :delete_time,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A blue/green deployment with the specified name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BlueGreenDeploymentAlreadyExistsFault AWS API Documentation
    #
    class BlueGreenDeploymentAlreadyExistsFault < Aws::EmptyStructure; end

    # `BlueGreenDeploymentIdentifier` doesn't refer to an existing
    # blue/green deployment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BlueGreenDeploymentNotFoundFault AWS API Documentation
    #
    class BlueGreenDeploymentNotFoundFault < Aws::EmptyStructure; end

    # Contains the details about a task for a blue/green deployment.
    #
    # For more information, see [Using Amazon RDS Blue/Green Deployments for
    # database updates][1] in the *Amazon RDS User Guide* and [ Using Amazon
    # RDS Blue/Green Deployments for database updates][2] in the *Amazon
    # Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
    #
    # @!attribute [rw] name
    #   The name of the blue/green deployment task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the blue/green deployment task.
    #
    #   Values:
    #
    #   * `PENDING` - The resources are being prepared for deployment.
    #
    #   * `IN_PROGRESS` - The resource is being deployed.
    #
    #   * `COMPLETED` - The resource has been deployed.
    #
    #   * `FAILED` - Deployment of the resource failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/BlueGreenDeploymentTask AWS API Documentation
    #
    class BlueGreenDeploymentTask < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_task_identifier
    #   The identifier of the snapshot or cluster export task to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CancelExportTaskMessage AWS API Documentation
    #
    class CancelExportTaskMessage < Struct.new(
      :export_task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CA certificate for an Amazon Web Services account.
    #
    # For more information, see [Using SSL/TLS to encrypt a connection to a
    # DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS to
    # encrypt a connection to a DB cluster][2] in the *Amazon Aurora User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the details of the DB instance’s server certificate.
    #
    # For more information, see [Using SSL/TLS to encrypt a connection to a
    # DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS to
    # encrypt a connection to a DB cluster][2] in the *Amazon Aurora User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    #
    # @!attribute [rw] ca_identifier
    #   The CA identifier of the CA certificate used for the DB instance's
    #   server certificate.
    #   @return [String]
    #
    # @!attribute [rw] valid_till
    #   The expiration date of the DB instance’s server certificate.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CertificateDetails AWS API Documentation
    #
    class CertificateDetails < Struct.new(
      :ca_identifier,
      :valid_till)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data returned by the **DescribeCertificates** action.
    #
    # @!attribute [rw] certificates
    #   The list of `Certificate` objects for the Amazon Web Services
    #   account.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration setting for the log types to be enabled for export
    # to CloudWatch Logs for a specific DB instance or DB cluster.
    #
    # The `EnableLogTypes` and `DisableLogTypes` arrays determine which logs
    # will be exported (or not exported) to CloudWatch Logs. The values
    # within these arrays depend on the DB engine being used.
    #
    # For more information about exporting CloudWatch Logs for Amazon RDS DB
    # instances, see [Publishing Database Logs to Amazon CloudWatch Logs
    # ][1] in the *Amazon RDS User Guide*.
    #
    # For more information about exporting CloudWatch Logs for Amazon Aurora
    # DB clusters, see [Publishing Database Logs to Amazon CloudWatch
    # Logs][2] in the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element in the `ModifyDBCluster`
    # operation and contains changes that will be applied during the next
    # maintenance window.
    #
    # @!attribute [rw] pending_cloudwatch_logs_exports
    #   A list of the log types whose configuration is still pending. In
    #   other words, these log types are in the process of being activated
    #   or deactivated.
    #   @return [Types::PendingCloudwatchLogsExports]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DBClusterIdentifier value for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The master credentials for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   A value that indicates whether mapping of Amazon Web Services
    #   Identity and Access Management (IAM) accounts to database accounts
    #   is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The database engine version.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic DB snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_storage
    #   The allocated storage size in gibibytes (GiB) for all database
    #   engines except Amazon Aurora. For Aurora, `AllocatedStorage` always
    #   returns 1, because Aurora DB cluster storage size isn't fixed, but
    #   instead automatically adjusts as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The Provisioned IOPS (I/O operations per second) value. This setting
    #   is only for non-Aurora Multi-AZ DB clusters.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   The storage type for the DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ClusterPendingModifiedValues AWS API Documentation
    #
    class ClusterPendingModifiedValues < Struct.new(
      :pending_cloudwatch_logs_exports,
      :db_cluster_identifier,
      :master_user_password,
      :iam_database_authentication_enabled,
      :engine_version,
      :backup_retention_period,
      :allocated_storage,
      :iops,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the settings that control the size and behavior of the
    # connection pool associated with a `DBProxyTargetGroup`.
    #
    # @!attribute [rw] max_connections_percent
    #   The maximum size of the connection pool for each target in a target
    #   group. The value is expressed as a percentage of the
    #   `max_connections` setting for the RDS DB instance or Aurora DB
    #   cluster used by the target group.
    #
    #   If you specify `MaxIdleConnectionsPercent`, then you must also
    #   include a value for this parameter.
    #
    #   Default: 10 for RDS for Microsoft SQL Server, and 100 for all other
    #   engines
    #
    #   Constraints: Must be between 1 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] max_idle_connections_percent
    #   Controls how actively the proxy closes idle database connections in
    #   the connection pool. The value is expressed as a percentage of the
    #   `max_connections` setting for the RDS DB instance or Aurora DB
    #   cluster used by the target group. With a high value, the proxy
    #   leaves a high percentage of idle database connections open. A low
    #   value causes the proxy to close more idle connections and return
    #   them to the database.
    #
    #   If you specify this parameter, then you must also include a value
    #   for `MaxConnectionsPercent`.
    #
    #   Default: The default value is half of the value of
    #   `MaxConnectionsPercent`. For example, if `MaxConnectionsPercent` is
    #   80, then the default value of `MaxIdleConnectionsPercent` is 40. If
    #   the value of `MaxConnectionsPercent` isn't specified, then for SQL
    #   Server, `MaxIdleConnectionsPercent` is 5, and for all other engines,
    #   the default is 50.
    #
    #   Constraints: Must be between 0 and the value of
    #   `MaxConnectionsPercent`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Displays the settings that control the size and behavior of the
    # connection pool associated with a `DBProxyTarget`.
    #
    # @!attribute [rw] max_connections_percent
    #   The maximum size of the connection pool for each target in a target
    #   group. The value is expressed as a percentage of the
    #   `max_connections` setting for the RDS DB instance or Aurora DB
    #   cluster used by the target group.
    #   @return [Integer]
    #
    # @!attribute [rw] max_idle_connections_percent
    #   Controls how actively the proxy closes idle database connections in
    #   the connection pool. The value is expressed as a percentage of the
    #   `max_connections` setting for the RDS DB instance or Aurora DB
    #   cluster used by the target group. With a high value, the proxy
    #   leaves a high percentage of idle database connections open. A low
    #   value causes the proxy to close more idle connections and return
    #   them to the database.
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
    #   behavior. This setting is only supported for MySQL engine family
    #   databases. Currently, the only allowed value is
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   ^
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to copy. This parameter
    #   isn't case-sensitive.
    #
    #   You can't copy an encrypted, shared DB cluster snapshot from one
    #   Amazon Web Services Region to another.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   * If the source snapshot is in the same Amazon Web Services Region
    #     as the copy, specify a valid DB snapshot identifier.
    #
    #   * If the source snapshot is in a different Amazon Web Services
    #     Region than the copy, specify a valid DB cluster snapshot ARN. For
    #     more information, go to [ Copying Snapshots Across Amazon Web
    #     Services Regions][1] in the *Amazon Aurora User Guide*.
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
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   cluster snapshot. The Amazon Web Services KMS key identifier is the
    #   key ARN, key ID, alias ARN, or alias name for the Amazon Web
    #   Services KMS key.
    #
    #   If you copy an encrypted DB cluster snapshot from your Amazon Web
    #   Services account, you can specify a value for `KmsKeyId` to encrypt
    #   the copy with a new KMS key. If you don't specify a value for
    #   `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted
    #   with the same KMS key as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another Amazon Web Services account, then you must specify a value
    #   for `KmsKeyId`.
    #
    #   To copy an encrypted DB cluster snapshot to another Amazon Web
    #   Services Region, you must set `KmsKeyId` to the Amazon Web Services
    #   KMS key identifier you want to use to encrypt the copy of the DB
    #   cluster snapshot in the destination Amazon Web Services Region. KMS
    #   keys are specific to the Amazon Web Services Region that they are
    #   created in, and you can't use KMS keys from one Amazon Web Services
    #   Region in another Amazon Web Services Region.
    #
    #   If you copy an unencrypted DB cluster snapshot and specify a value
    #   for the `KmsKeyId` parameter, an error is returned.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   When you are copying a DB cluster snapshot from one Amazon Web
    #   Services GovCloud (US) Region to another, the URL that contains a
    #   Signature Version 4 signed request for the `CopyDBClusterSnapshot`
    #   API operation in the Amazon Web Services Region that contains the
    #   source DB cluster snapshot to copy. Use the `PreSignedUrl` parameter
    #   when copying an encrypted DB cluster snapshot from another Amazon
    #   Web Services Region. Don't specify `PreSignedUrl` when copying an
    #   encrypted DB cluster snapshot in the same Amazon Web Services
    #   Region.
    #
    #   This setting applies only to Amazon Web Services GovCloud (US)
    #   Regions. It's ignored in other Amazon Web Services Regions.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API operation that can run in the source
    #   Amazon Web Services Region that contains the encrypted DB cluster
    #   snapshot to copy. The presigned URL request must contain the
    #   following parameter values:
    #
    #   * `KmsKeyId` - The KMS key identifier for the KMS key to use to
    #     encrypt the copy of the DB cluster snapshot in the destination
    #     Amazon Web Services Region. This is the same identifier for both
    #     the `CopyDBClusterSnapshot` operation that is called in the
    #     destination Amazon Web Services Region, and the operation
    #     contained in the presigned URL.
    #
    #   * `DestinationRegion` - The name of the Amazon Web Services Region
    #     that the DB cluster snapshot is to be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied.
    #     This identifier must be in the Amazon Resource Name (ARN) format
    #     for the source Amazon Web Services Region. For example, if you are
    #     copying an encrypted DB cluster snapshot from the us-west-2 Amazon
    #     Web Services Region, then your `SourceDBClusterSnapshotIdentifier`
    #     looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [ Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
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
      :source_region)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_parameter_group_identifier
    #   The identifier or ARN for the source DB parameter group. For
    #   information about creating an ARN, see [ Constructing an ARN for
    #   Amazon RDS][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must specify a valid DB parameter group.
    #
    #   ^
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_snapshot_identifier
    #   The identifier for the source DB snapshot.
    #
    #   If the source snapshot is in the same Amazon Web Services Region as
    #   the copy, specify a valid DB snapshot identifier. For example, you
    #   might specify `rds:mysql-instance1-snapshot-20130805`.
    #
    #   If the source snapshot is in a different Amazon Web Services Region
    #   than the copy, specify a valid DB snapshot ARN. For example, you
    #   might specify
    #   `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805`.
    #
    #   If you are copying from a shared manual DB snapshot, this parameter
    #   must be the Amazon Resource Name (ARN) of the shared DB snapshot.
    #
    #   If you are copying an encrypted snapshot this parameter must be in
    #   the ARN format for the source Amazon Web Services Region.
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
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   snapshot. The Amazon Web Services KMS key identifier is the key ARN,
    #   key ID, alias ARN, or alias name for the KMS key.
    #
    #   If you copy an encrypted DB snapshot from your Amazon Web Services
    #   account, you can specify a value for this parameter to encrypt the
    #   copy with a new KMS key. If you don't specify a value for this
    #   parameter, then the copy of the DB snapshot is encrypted with the
    #   same Amazon Web Services KMS key as the source DB snapshot.
    #
    #   If you copy an encrypted DB snapshot that is shared from another
    #   Amazon Web Services account, then you must specify a value for this
    #   parameter.
    #
    #   If you specify this parameter when you copy an unencrypted snapshot,
    #   the copy is encrypted.
    #
    #   If you copy an encrypted snapshot to a different Amazon Web Services
    #   Region, then you must specify an Amazon Web Services KMS key
    #   identifier for the destination Amazon Web Services Region. KMS keys
    #   are specific to the Amazon Web Services Region that they are created
    #   in, and you can't use KMS keys from one Amazon Web Services Region
    #   in another Amazon Web Services Region.
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
    #   snapshot to the target DB snapshot. By default, tags aren't copied.
    #   @return [Boolean]
    #
    # @!attribute [rw] pre_signed_url
    #   When you are copying a snapshot from one Amazon Web Services
    #   GovCloud (US) Region to another, the URL that contains a Signature
    #   Version 4 signed request for the `CopyDBSnapshot` API operation in
    #   the source Amazon Web Services Region that contains the source DB
    #   snapshot to copy.
    #
    #   This setting applies only to Amazon Web Services GovCloud (US)
    #   Regions. It's ignored in other Amazon Web Services Regions.
    #
    #   You must specify this parameter when you copy an encrypted DB
    #   snapshot from another Amazon Web Services Region by using the Amazon
    #   RDS API. Don't specify `PreSignedUrl` when you are copying an
    #   encrypted DB snapshot in the same Amazon Web Services Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API operation that can run in the source
    #   Amazon Web Services Region that contains the encrypted DB cluster
    #   snapshot to copy. The presigned URL request must contain the
    #   following parameter values:
    #
    #   * `DestinationRegion` - The Amazon Web Services Region that the
    #     encrypted DB snapshot is copied to. This Amazon Web Services
    #     Region is the same one where the `CopyDBSnapshot` operation is
    #     called that contains this presigned URL.
    #
    #     For example, if you copy an encrypted DB snapshot from the
    #     us-west-2 Amazon Web Services Region to the us-east-1 Amazon Web
    #     Services Region, then you call the `CopyDBSnapshot` operation in
    #     the us-east-1 Amazon Web Services Region and provide a presigned
    #     URL that contains a call to the `CopyDBSnapshot` operation in the
    #     us-west-2 Amazon Web Services Region. For this example, the
    #     `DestinationRegion` in the presigned URL must be set to the
    #     us-east-1 Amazon Web Services Region.
    #
    #   * `KmsKeyId` - The KMS key identifier for the KMS key to use to
    #     encrypt the copy of the DB snapshot in the destination Amazon Web
    #     Services Region. This is the same identifier for both the
    #     `CopyDBSnapshot` operation that is called in the destination
    #     Amazon Web Services Region, and the operation contained in the
    #     presigned URL.
    #
    #   * `SourceDBSnapshotIdentifier` - The DB snapshot identifier for the
    #     encrypted snapshot to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source Amazon Web
    #     Services Region. For example, if you are copying an encrypted DB
    #     snapshot from the us-west-2 Amazon Web Services Region, then your
    #     `SourceDBSnapshotIdentifier` looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (Amazon Web
    #   Services Signature Version 4)][1] and [Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
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
    #   Specify this option if you are copying a snapshot from one Amazon
    #   Web Services Region to another, and your DB instance uses a
    #   nondefault option group. If your source DB instance uses Transparent
    #   Data Encryption for Oracle or Microsoft SQL Server, you must specify
    #   this option when copying across Amazon Web Services Regions. For
    #   more information, see [Option group considerations][1] in the
    #   *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options
    #   @return [String]
    #
    # @!attribute [rw] target_custom_availability_zone
    #   The external custom Availability Zone (CAZ) identifier for the
    #   target CAZ.
    #
    #   Example: `rds-caz-aiqhTgQv`.
    #   @return [String]
    #
    # @!attribute [rw] copy_option_group
    #   A value that indicates whether to copy the DB option group
    #   associated with the source DB snapshot to the target Amazon Web
    #   Services account and associate with the target DB snapshot. The
    #   associated option group can be copied only with cross-account
    #   snapshot copy calls.
    #   @return [Boolean]
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
      :target_custom_availability_zone,
      :copy_option_group,
      :source_region)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_option_group_identifier
    #   The identifier for the source option group.
    #
    #   Constraints:
    #
    #   * Must specify a valid option group.
    #
    #   ^
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] option_group
    #   @return [Types::OptionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CopyOptionGroupResult AWS API Documentation
    #
    class CopyOptionGroupResult < Struct.new(
      :option_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blue_green_deployment_name
    #   The name of the blue/green deployment.
    #
    #   Constraints:
    #
    #   * Can't be the same as an existing blue/green deployment name in
    #     the same account and Amazon Web Services Region.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon Resource Name (ARN) of the source production database.
    #
    #   Specify the database that you want to clone. The blue/green
    #   deployment creates this database in the green environment. You can
    #   make updates to the database in the green environment, such as an
    #   engine version upgrade. When you are ready, you can switch the
    #   database in the green environment to be the production database.
    #   @return [String]
    #
    # @!attribute [rw] target_engine_version
    #   The engine version of the database in the green environment.
    #
    #   Specify the engine version to upgrade to in the green environment.
    #   @return [String]
    #
    # @!attribute [rw] target_db_parameter_group_name
    #   The DB parameter group associated with the DB instance in the green
    #   environment.
    #
    #   To test parameter changes, specify a DB parameter group that is
    #   different from the one associated with the source DB instance.
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_name
    #   The DB cluster parameter group associated with the Aurora DB cluster
    #   in the green environment.
    #
    #   To test parameter changes, specify a DB cluster parameter group that
    #   is different from the one associated with the source DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to assign to the blue/green deployment.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateBlueGreenDeploymentRequest AWS API Documentation
    #
    class CreateBlueGreenDeploymentRequest < Struct.new(
      :blue_green_deployment_name,
      :source,
      :target_engine_version,
      :target_db_parameter_group_name,
      :target_db_cluster_parameter_group_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blue_green_deployment
    #   Contains the details about a blue/green deployment.
    #
    #   For more information, see [Using Amazon RDS Blue/Green Deployments
    #   for database updates][1] in the *Amazon RDS User Guide* and [ Using
    #   Amazon RDS Blue/Green Deployments for database updates][2] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
    #   @return [Types::BlueGreenDeployment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateBlueGreenDeploymentResponse AWS API Documentation
    #
    class CreateBlueGreenDeploymentResponse < Struct.new(
      :blue_green_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred while trying to create the CEV.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateCustomDBEngineVersionFault AWS API Documentation
    #
    class CreateCustomDBEngineVersionFault < Aws::EmptyStructure; end

    # @!attribute [rw] engine
    #   The database engine to use for your custom engine version (CEV). The
    #   only supported value is `custom-oracle-ee`.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The name of your CEV. The name format is 19.*customized\_string*.
    #   For example, a valid CEV name is `19.my_cev1`. This setting is
    #   required for RDS Custom for Oracle, but optional for Amazon RDS. The
    #   combination of `Engine` and `EngineVersion` is unique per customer
    #   per Region.
    #   @return [String]
    #
    # @!attribute [rw] database_installation_files_s3_bucket_name
    #   The name of an Amazon S3 bucket that contains database installation
    #   files for your CEV. For example, a valid bucket name is
    #   `my-custom-installation-files`.
    #   @return [String]
    #
    # @!attribute [rw] database_installation_files_s3_prefix
    #   The Amazon S3 directory that contains the database installation
    #   files for your CEV. For example, a valid bucket name is
    #   `123456789012/cev1`. If this setting isn't specified, no prefix is
    #   assumed.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI). For RDS Custom for SQL
    #   Server, an AMI ID is required to create a CEV. For RDS Custom for
    #   Oracle, the default is the most recent AMI available, but you can
    #   specify an AMI ID that was used in a different Oracle CEV. Find the
    #   AMIs used by your CEVs by calling the [DescribeDBEngineVersions][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBEngineVersions.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted CEV. A
    #   symmetric encryption KMS key is required for RDS Custom, but
    #   optional for Amazon RDS.
    #
    #   If you have an existing symmetric encryption KMS key in your
    #   account, you can use it with RDS Custom. No further action is
    #   necessary. If you don't already have a symmetric encryption KMS key
    #   in your account, follow the instructions in [ Creating a symmetric
    #   encryption KMS key][1] in the *Amazon Web Services Key Management
    #   Service Developer Guide*.
    #
    #   You can choose the same symmetric encryption key when you create a
    #   CEV and a DB instance, or choose different keys.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html#create-symmetric-cmk
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of your CEV.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   The CEV manifest, which is a JSON document that describes the
    #   installation .zip files stored in Amazon S3. Specify the name/value
    #   pairs in a file or a quoted string. RDS Custom applies the patches
    #   in the order in which they are listed.
    #
    #   The following JSON fields are valid:
    #
    #   MediaImportTemplateVersion
    #
    #   : Version of the CEV manifest. The date is in the format
    #     `YYYY-MM-DD`.
    #
    #   databaseInstallationFileNames
    #
    #   : Ordered list of installation files for the CEV.
    #
    #   opatchFileNames
    #
    #   : Ordered list of OPatch installers used for the Oracle DB engine.
    #
    #   psuRuPatchFileNames
    #
    #   : The PSU and RU patches for this CEV.
    #
    #   OtherPatchFileNames
    #
    #   : The patches that are not in the list of PSU and RU patches. Amazon
    #     RDS applies these patches after applying the PSU and RU patches.
    #
    #   For more information, see [ Creating the CEV manifest][1] in the
    #   *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.preparing.manifest
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateCustomDBEngineVersionMessage AWS API Documentation
    #
    class CreateCustomDBEngineVersionMessage < Struct.new(
      :engine,
      :engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :image_id,
      :kms_key_id,
      :description,
      :manifest,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The type of the endpoint, one of: `READER`, `WRITER`, `ANY`.
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
    #   the custom endpoint. This parameter is relevant only if the list of
    #   static members is empty.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   A list of Availability Zones (AZs) where DB instances in the DB
    #   cluster can be created.
    #
    #   For information on Amazon Web Services Regions and Availability
    #   Zones, see [Choosing the Regions and Availability Zones][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Default: `1`
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   The name of the character set (`CharacterSet`) to associate the DB
    #   cluster with.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name for your database of up to 64 alphanumeric characters. If
    #   you don't provide a name, Amazon RDS doesn't create a database in
    #   the DB cluster you are creating.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier for this DB cluster. This parameter is stored as a
    #   lowercase string.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
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
    #   cluster. If you don't specify a value, then the default DB cluster
    #   parameter group for the specified DB engine and version is used.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
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
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB subnet group.
    #
    #   * Must not be `default`.
    #
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for this DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values: `aurora-mysql | aurora-postgresql | mysql | postgres`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   To list all of the available engine versions for Aurora MySQL
    #   version 2 (5.7-compatible) and version 3 (MySQL 8.0-compatible), use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   You can supply either `5.7` or `8.0` to use the default engine
    #   version for Aurora MySQL version 2 or version 3, respectively.
    #
    #   To list all of the available engine versions for Aurora PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   For information about a specific engine, see the following topics:
    #
    #   * Aurora MySQL - see [Database engine updates for Amazon Aurora
    #     MySQL][1] in the *Amazon Aurora User Guide*.
    #
    #   * Aurora PostgreSQL - see [Amazon Aurora PostgreSQL releases and
    #     engine versions][2] in the *Amazon Aurora User Guide*.
    #
    #   * RDS for MySQL - see [Amazon RDS for MySQL][3] in the *Amazon RDS
    #     User Guide*.
    #
    #   * RDS for PostgreSQL - see [Amazon RDS for PostgreSQL][4] in the
    #     *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values: `1150-65535`
    #
    #   Default:
    #
    #   * RDS for MySQL and Aurora MySQL - `3306`
    #
    #   * RDS for PostgreSQL and Aurora PostgreSQL - `5432`
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
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
    #   The password for the master database user.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 8 to 41 characters.
    #
    #   * Can contain any printable ASCII character except "/", """, or
    #     "@".
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The option group to associate the DB cluster with.
    #
    #   DB clusters are associated with a default option group that can't
    #   be modified.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region. To view the time
    #   blocks available, see [ Backup window][1] in the *Amazon Aurora User
    #   Guide*.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week. To see the time blocks available, see [
    #   Adjusting the Preferred DB Cluster Maintenance Window][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * Days must be one of `Mon | Tue | Wed | Thu | Fri | Sat | Sun`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB
    #   cluster if this DB cluster is created as a read replica.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to assign to the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   When a KMS key isn't specified in `KmsKeyId`:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon RDS uses the KMS key used to encrypt the source.
    #     Otherwise, Amazon RDS uses your default KMS key.
    #
    #   * If the `StorageEncrypted` parameter is enabled and
    #     `ReplicationSourceIdentifier` isn't specified, then Amazon RDS
    #     uses your default KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #
    #   If you create a read replica of an encrypted DB cluster in another
    #   Amazon Web Services Region, make sure to set `KmsKeyId` to a KMS key
    #   identifier that is valid in the destination Amazon Web Services
    #   Region. This KMS key is used to encrypt the read replica in that
    #   Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   When you are replicating a DB cluster from one Amazon Web Services
    #   GovCloud (US) Region to another, an URL that contains a Signature
    #   Version 4 signed request for the `CreateDBCluster` operation to be
    #   called in the source Amazon Web Services Region where the DB cluster
    #   is replicated from. Specify `PreSignedUrl` only when you are
    #   performing cross-Region replication from an encrypted DB cluster.
    #
    #   The presigned URL must be a valid request for the `CreateDBCluster`
    #   API operation that can run in the source Amazon Web Services Region
    #   that contains the encrypted DB cluster to copy.
    #
    #   The presigned URL request must contain the following parameter
    #   values:
    #
    #   * `KmsKeyId` - The KMS key identifier for the KMS key to use to
    #     encrypt the copy of the DB cluster in the destination Amazon Web
    #     Services Region. This should refer to the same KMS key for both
    #     the `CreateDBCluster` operation that is called in the destination
    #     Amazon Web Services Region, and the operation contained in the
    #     presigned URL.
    #
    #   * `DestinationRegion` - The name of the Amazon Web Services Region
    #     that Aurora read replica will be created in.
    #
    #   * `ReplicationSourceIdentifier` - The DB cluster identifier for the
    #     encrypted DB cluster to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source Amazon Web
    #     Services Region. For example, if you are copying an encrypted DB
    #     cluster from the us-west-2 Amazon Web Services Region, then your
    #     `ReplicationSourceIdentifier` would look like Example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [ Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
    #
    #    </note>
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By
    #   default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to `0`.
    #
    #   Valid for Cluster Type: Aurora MySQL DB clusters only
    #
    #   Default: `0`
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
    #   CloudWatch Logs.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The following values are valid for each DB engine:
    #
    #   * Aurora MySQL - `audit | error | general | slowquery`
    #
    #   * Aurora PostgreSQL - `postgresql`
    #
    #   * RDS for MySQL - `error | general | slowquery`
    #
    #   * RDS for PostgreSQL - `postgresql | upgrade`
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2]
    #   in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   The `serverless` engine mode only applies for Aurora Serverless v1
    #   DB clusters.
    #
    #   For information about limitations and requirements for Serverless DB
    #   clusters, see the following sections in the *Amazon Aurora User
    #   Guide*:
    #
    #   * [Limitations of Aurora Serverless v1][1]
    #
    #   * [Requirements for Aurora Serverless v2][2]
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.requirements.html
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the DB cluster has deletion protection enabled.
    #   The database can't be deleted when deletion protection is enabled.
    #   By default, deletion protection isn't enabled.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] global_cluster_identifier
    #   The global cluster ID of an Aurora cluster that becomes the primary
    #   cluster in the new global database cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] enable_http_endpoint
    #   Specifies whether to enable the HTTP endpoint for an Aurora
    #   Serverless v1 DB cluster. By default, the HTTP endpoint is disabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web
    #   service API for running SQL queries on the Aurora Serverless v1 DB
    #   cluster. You can also query your database from inside the RDS
    #   console with the query editor.
    #
    #   For more information, see [Using the Data API for Aurora Serverless
    #   v1][1] in the *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether to copy all tags from the DB cluster to snapshots
    #   of the DB cluster. The default is not to copy them.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to create the DB cluster in.
    #
    #   For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
    #   authentication to authenticate users that connect to the DB cluster.
    #
    #   For more information, see [Kerberos authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] enable_global_write_forwarding
    #   Specifies whether to enable this DB cluster to forward write
    #   operations to the primary cluster of a global cluster (Aurora global
    #   database). By default, write operations are not allowed on Aurora DB
    #   clusters that are secondary clusters in an Aurora global database.
    #
    #   You can set this value only on Aurora DB clusters that are members
    #   of an Aurora global database. With this parameter enabled, a
    #   secondary cluster can forward writes to the current primary cluster,
    #   and the resulting changes are replicated back to this cluster. For
    #   the primary DB cluster of an Aurora global database, this value is
    #   used immediately if the primary is demoted by a global cluster API
    #   operation, but it does nothing until then.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [Boolean]
    #
    # @!attribute [rw] db_cluster_instance_class
    #   The compute and memory capacity of each DB instance in the Multi-AZ
    #   DB cluster, for example `db.m6gd.xlarge`. Not all DB instance
    #   classes are available in all Amazon Web Services Regions, or for all
    #   database engines.
    #
    #   For the full list of DB instance classes and availability for your
    #   engine, see [DB instance class][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage in gibibytes (GiB) to allocate to each DB
    #   instance in the Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Aurora DB clusters, see
    #   [Storage configurations for Amazon Aurora DB clusters][1]. For
    #   information on storage types for Multi-AZ DB clusters, see [Settings
    #   for creating Multi-AZ DB clusters][2].
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values:
    #
    #   * Aurora DB clusters - `aurora | aurora-iopt1`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #   Default:
    #
    #   * Aurora DB clusters - `aurora`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#aurora-storage-type
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html#create-multi-az-db-cluster-settings
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Provisioned IOPS
    #   storage][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Constraints:
    #
    #   * Must be a multiple between .5 and 50 of the storage amount for the
    #     DB cluster.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies whether the DB cluster is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB cluster is public.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Specifies whether minor engine upgrades are applied automatically to
    #   the DB cluster during the maintenance window. By default, minor
    #   engine upgrades are applied automatically.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB cluster. To turn off collecting
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, also set `MonitoringInterval`
    #   to a value other than `0`.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that permits RDS to
    #   send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An
    #   example is `arn:aws:iam:123456789012:role/emaccess`. For information
    #   on creating a monitoring role, see [Setting up and enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than `0`, supply a
    #   `MonitoringRoleArn` value.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #   @return [String]
    #
    # @!attribute [rw] enable_performance_insights
    #   Specifies whether to turn on Performance Insights for the DB
    #   cluster.
    #
    #   For more information, see [ Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you don't specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   Region.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589`
    #     (19 months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #
    #   If you specify a retention period that isn't valid, such as `94`,
    #   Amazon RDS issues an error.
    #   @return [Integer]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB cluster.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] db_system_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Can't manage the master user password with Amazon Web Services
    #     Secrets Manager if `MasterUserPassword` is specified.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that
    #   is automatically generated and managed in Amazon Web Services
    #   Secrets Manager.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If you don't specify `MasterUserSecretKmsKeyId`, then the
    #   `aws/secretsmanager` KMS key is used to encrypt the secret. If the
    #   secret is in a different Amazon Web Services account, then you
    #   can't use the `aws/secretsmanager` KMS key to encrypt the secret,
    #   and you must use a customer managed KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
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
      :enable_global_write_forwarding,
      :db_cluster_instance_class,
      :allocated_storage,
      :storage_type,
      :iops,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :monitoring_interval,
      :monitoring_role_arn,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :serverless_v2_scaling_configuration,
      :network_type,
      :db_system_id,
      :manage_master_user_password,
      :master_user_secret_kms_key_id,
      :source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must not match the name of an existing DB cluster parameter group.
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
    #   Example: `aurora-mysql5.7`, `aurora-mysql8.0`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `aurora-postgresql14`
    #
    #   **RDS for MySQL**
    #
    #   Example: `mysql8.0`
    #
    #   **RDS for PostgreSQL**
    #
    #   Example: `postgres12`
    #
    #   To list all of the available parameter group families for a DB
    #   engine, use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine <engine>`
    #
    #   For example, to list all of the available parameter group families
    #   for the Aurora PostgreSQL DB engine, use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine
    #   aurora-postgresql`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    #
    #   The following are the valid DB engine values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `mysql`
    #
    #   * `postgres`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBClusterResult AWS API Documentation
    #
    class CreateDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_name
    #   The meaning of this parameter differs depending on the database
    #   engine.
    #
    #   Amazon Aurora MySQL
    #
    #   : The name of the database to create when the primary DB instance of
    #     the Aurora MySQL DB cluster is created. If you don't specify a
    #     value, Amazon RDS doesn't create a database in the DB cluster.
    #
    #     Constraints:
    #
    #     * Must contain 1 to 64 alphanumeric characters.
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   Amazon Aurora PostgreSQL
    #
    #   : The name of the database to create when the primary DB instance of
    #     the Aurora PostgreSQL DB cluster is created.
    #
    #     Default: `postgres`
    #
    #     Constraints:
    #
    #     * Must contain 1 to 63 alphanumeric characters.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0 to 9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   Amazon RDS Custom for Oracle
    #
    #   : The Oracle System ID (SID) of the created RDS Custom DB instance.
    #
    #     Default: `ORCL`
    #
    #     Constraints:
    #
    #     * Must contain 1 to 8 alphanumeric characters.
    #
    #     * Must contain a letter.
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   Amazon RDS Custom for SQL Server
    #
    #   : Not applicable. Must be null.
    #
    #   RDS for MariaDB
    #
    #   : The name of the database to create when the DB instance is
    #     created. If you don't specify a value, Amazon RDS doesn't create
    #     a database in the DB instance.
    #
    #     Constraints:
    #
    #     * Must contain 1 to 64 letters or numbers.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0-9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   RDS for MySQL
    #
    #   : The name of the database to create when the DB instance is
    #     created. If you don't specify a value, Amazon RDS doesn't create
    #     a database in the DB instance.
    #
    #     Constraints:
    #
    #     * Must contain 1 to 64 letters or numbers.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0-9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   RDS for Oracle
    #
    #   : The Oracle System ID (SID) of the created DB instance.
    #
    #     Default: `ORCL`
    #
    #     Constraints:
    #
    #     * Can't be longer than 8 characters.
    #
    #     * Can't be a word reserved by the database engine, such as the
    #       string `NULL`.
    #
    #   RDS for PostgreSQL
    #
    #   : The name of the database to create when the DB instance is
    #     created.
    #
    #     Default: `postgres`
    #
    #     Constraints:
    #
    #     * Must contain 1 to 63 letters, numbers, or underscores.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0-9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   RDS for SQL Server
    #
    #   : Not applicable. Must be null.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The identifier for this DB instance. This parameter is stored as a
    #   lowercase string.
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
    #   The amount of storage in gibibytes (GiB) to allocate for the DB
    #   instance.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Aurora
    #   cluster volumes automatically grow as the amount of data in your
    #   database increases, though you are only charged for the space that
    #   you use in an Aurora cluster volume.
    #
    #   Amazon RDS Custom
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer
    #       from 40 to 65536 for RDS Custom for Oracle, 16384 for RDS Custom
    #       for SQL Server.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 40 to
    #       65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL
    #       Server.
    #
    #   RDS for MariaDB
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer
    #       from 20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   RDS for MySQL
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer
    #       from 20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   RDS for Oracle
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer
    #       from 20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 10 to 3072.
    #
    #   RDS for PostgreSQL
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer
    #       from 20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   RDS for SQL Server
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3):
    #
    #       * Enterprise and Standard editions: Must be an integer from 20
    #         to 16384.
    #
    #       * Web and Express editions: Must be an integer from 20 to 16384.
    #
    #     * Provisioned IOPS storage (io1):
    #
    #       * Enterprise and Standard editions: Must be an integer from 100
    #         to 16384.
    #
    #       * Web and Express editions: Must be an integer from 100 to
    #         16384.
    #
    #     * Magnetic storage (standard):
    #
    #       * Enterprise and Standard editions: Must be an integer from 20
    #         to 1024.
    #
    #       * Web and Express editions: Must be an integer from 20 to 1024.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the DB instance, for example
    #   `db.m5.large`. Not all DB instance classes are available in all
    #   Amazon Web Services Regions, or for all database engines. For the
    #   full list of DB instance classes, and availability for your engine,
    #   see [DB instance classes][1] in the *Amazon RDS User Guide* or
    #   [Aurora DB instance classes][2] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for this DB instance.
    #
    #   Not every database engine is available in every Amazon Web Services
    #   Region.
    #
    #   Valid Values:
    #
    #   * `aurora-mysql` (for Aurora MySQL DB instances)
    #
    #   * `aurora-postgresql` (for Aurora PostgreSQL DB instances)
    #
    #   * `custom-oracle-ee` (for RDS Custom for Oracle DB instances)
    #
    #   * `custom-oracle-ee-cdb` (for RDS Custom for Oracle DB instances)
    #
    #   * `custom-sqlserver-ee` (for RDS Custom for SQL Server DB instances)
    #
    #   * `custom-sqlserver-se` (for RDS Custom for SQL Server DB instances)
    #
    #   * `custom-sqlserver-web` (for RDS Custom for SQL Server DB
    #     instances)
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
    #   This setting doesn't apply to Amazon Aurora DB instances. The name
    #   for the master user is managed by the DB cluster.
    #
    #   This setting is required for RDS DB instances.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters, numbers, or underscores.
    #
    #   * First character must be a letter.
    #
    #   * Can't be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   password for the master user is managed by the DB cluster.
    #
    #   Constraints:
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    #
    #   * Can include any printable ASCII character except "/", """, or
    #     "@".
    #
    #   Length Constraints:
    #
    #   * RDS for MariaDB - Must contain from 8 to 41 characters.
    #
    #   * RDS for Microsoft SQL Server - Must contain from 8 to 128
    #     characters.
    #
    #   * RDS for MySQL - Must contain from 8 to 41 characters.
    #
    #   * RDS for Oracle - Must contain from 8 to 30 characters.
    #
    #   * RDS for PostgreSQL - Must contain from 8 to 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   This setting applies to the legacy EC2-Classic platform, which is no
    #   longer used to create new DB instances. Use the
    #   `VpcSecurityGroupIds` setting instead.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   associated list of EC2 VPC security groups is managed by the DB
    #   cluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone (AZ) where the database will be created. For
    #   information on Amazon Web Services Regions and Availability Zones,
    #   see [Regions and Availability Zones][1].
    #
    #   For Amazon Aurora, each Aurora DB cluster hosts copies of its
    #   storage in three separate Availability Zones. Specify one of these
    #   Availability Zones. Aurora automatically chooses an appropriate
    #   Availability Zone if you don't specify one.
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's Amazon Web Services Region.
    #
    #   Constraints:
    #
    #   * The `AvailabilityZone` parameter can't be specified if the DB
    #     instance is a Multi-AZ deployment.
    #
    #   * The specified Availability Zone must be in the same Amazon Web
    #     Services Region as the current endpoint.
    #
    #   Example: `us-east-1d`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB subnet group.
    #
    #   * Must not be `default`.
    #
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The time range each week during which system maintenance can occur.
    #   For more information, see [Amazon RDS Maintenance Window][1] in the
    #   *Amazon RDS User Guide.*
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * The day values must be `mon | tue | wed | thu | fri | sat | sun`.
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
    #   instance. If you don't specify a value, then Amazon RDS uses the
    #   default DB parameter group for the specified DB engine and version.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to `0` disables automated backups.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   retention period for automated backups is managed by the DB cluster.
    #
    #   Default: `1`
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35.
    #
    #   * Can't be set to 0 if the DB instance is a source to read
    #     replicas.
    #
    #   * Can't be set to 0 for an RDS Custom for Oracle DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter. The default is a 30-minute window selected at random from
    #   an 8-hour block of time for each Amazon Web Services Region. For
    #   more information, see [Backup window][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The daily
    #   time range for creating automated backups is managed by the DB
    #   cluster.
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
    #   This setting doesn't apply to Aurora DB instances. The port number
    #   is managed by the cluster.
    #
    #   Valid Values: `1150-65535`
    #
    #   Default:
    #
    #   * RDS for MariaDB - `3306`
    #
    #   * RDS for Microsoft SQL Server - `1433`
    #
    #   * RDS for MySQL - `3306`
    #
    #   * RDS for Oracle - `1521`
    #
    #   * RDS for PostgreSQL - `5432`
    #
    #   Constraints:
    #
    #   * For RDS for Microsoft SQL Server, the value can't be `1234`,
    #     `1434`, `3260`, `3343`, `3389`, `47001`, or `49152-49156`.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the DB instance is a Multi-AZ deployment. You
    #   can't set the `AvailabilityZone` parameter if the DB instance is a
    #   Multi-AZ deployment.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (DB instance Availability Zones (AZs) are managed by
    #     the DB cluster.)
    #
    #   * RDS Custom
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   version number of the database engine the DB instance uses is
    #   managed by the DB cluster.
    #
    #   For a list of valid engine versions, use the
    #   `DescribeDBEngineVersions` operation.
    #
    #   The following are the database engines and links to information
    #   about the major and minor versions that are available with Amazon
    #   RDS. Not every database engine is available for every Amazon Web
    #   Services Region.
    #
    #   Amazon RDS Custom for Oracle
    #
    #   : A custom engine version (CEV) that you have previously created.
    #     This setting is required for RDS Custom for Oracle. The CEV name
    #     has the following format: 19.*customized\_string*. A valid CEV
    #     name is `19.my_cev1`. For more information, see [ Creating an RDS
    #     Custom for Oracle DB instance][1] in the *Amazon RDS User Guide*.
    #
    #   Amazon RDS Custom for SQL Server
    #
    #   : See [RDS Custom for SQL Server general requirements][2] in the
    #     *Amazon RDS User Guide*.
    #
    #   RDS for MariaDB
    #
    #   : For information, see [MariaDB on Amazon RDS versions][3] in the
    #     *Amazon RDS User Guide*.
    #
    #   RDS for Microsoft SQL Server
    #
    #   : For information, see [Microsoft SQL Server versions on Amazon
    #     RDS][4] in the *Amazon RDS User Guide*.
    #
    #   RDS for MySQL
    #
    #   : For information, see [MySQL on Amazon RDS versions][5] in the
    #     *Amazon RDS User Guide*.
    #
    #   RDS for Oracle
    #
    #   : For information, see [Oracle Database Engine release notes][6] in
    #     the *Amazon RDS User Guide*.
    #
    #   RDS for PostgreSQL
    #
    #   : For information, see [Amazon RDS for PostgreSQL versions and
    #     extensions][7] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-creating.html#custom-creating.create
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport
    #   [5]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [6]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [7]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Specifies whether minor engine upgrades are applied automatically to
    #   the DB instance during the maintenance window. By default, minor
    #   engine upgrades are applied automatically.
    #
    #   If you create an RDS Custom DB instance, you must set
    #   `AutoMinorVersionUpgrade` to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   The license model information for this DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #
    #   Valid Values:
    #
    #   * RDS for MariaDB - `general-public-license`
    #
    #   * RDS for Microsoft SQL Server - `license-included`
    #
    #   * RDS for MySQL - `general-public-license`
    #
    #   * RDS for Oracle - `bring-your-own-license | license-included`
    #
    #   * RDS for PostgreSQL - `postgresql-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to initially allocate for the DB instance. For information about
    #   valid IOPS values, see [Amazon RDS DB instance storage][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Storage
    #   is managed by the DB cluster.
    #
    #   Constraints:
    #
    #   * For RDS for MariaDB, MySQL, Oracle, and PostgreSQL - Must be a
    #     multiple between .5 and 50 of the storage amount for the DB
    #     instance.
    #
    #   * For RDS for SQL Server - Must be a multiple between 1 and 50 of
    #     the storage amount for the DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The option group to associate the DB instance with.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group. Also, that
    #   option group can't be removed from a DB instance after it is
    #   associated with a DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] character_set_name
    #   For supported engines, the character set (`CharacterSet`) to
    #   associate the DB instance with.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora - The character set is managed by the DB cluster.
    #     For more information, see `CreateDBCluster`.
    #
    #   * RDS Custom - However, if you need to change the character set, you
    #     can change it on the database itself.
    #   @return [String]
    #
    # @!attribute [rw] nchar_character_set_name
    #   The name of the NCHAR character set for the Oracle DB instance.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies whether the DB instance is publicly accessible.
    #
    #   When the DB instance is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   instance's virtual private cloud (VPC). It resolves to the public
    #   IP address from outside of the DB instance's VPC. Access to the DB
    #   instance is ultimately controlled by the security group it uses.
    #   That public access is not permitted if the security group assigned
    #   to the DB instance doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB instance is public.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Tags to assign to the DB instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster that this DB instance will belong
    #   to.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type to associate with the DB instance.
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Storage
    #   is managed by the DB cluster.
    #
    #   Valid Values: `gp2 | gp3 | io1 | standard`
    #
    #   Default: `io1`, if the `Iops` parameter is specified. Otherwise,
    #   `gp2`.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifes whether the DB instance is encrypted. By default, it isn't
    #   encrypted.
    #
    #   For RDS Custom DB instances, either enable this setting or leave it
    #   unset. Otherwise, Amazon RDS reports an error.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   encryption for DB instances is managed by the DB cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   Amazon Web Services KMS key identifier is managed by the DB cluster.
    #   For more information, see `CreateDBCluster`.
    #
    #   If `StorageEncrypted` is enabled, and you do not specify a value for
    #   the `KmsKeyId` parameter, then Amazon RDS uses your default KMS key.
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #
    #   For Amazon RDS Custom, a KMS key is required for DB instances. For
    #   most RDS engines, if you leave this parameter empty while enabling
    #   `StorageEncrypted`, the engine uses the default KMS key. However,
    #   RDS Custom doesn't use the default key when this parameter is
    #   empty. You must explicitly specify a key.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to create the DB instance in.
    #   Currently, only Microsoft SQL Server, MySQL, Oracle, and PostgreSQL
    #   DB instances can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (The domain is managed by the DB cluster.)
    #
    #   * RDS Custom
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory
    #   domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_ou
    #   The Active Directory organizational unit for your DB instance to
    #   join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    #   @return [String]
    #
    # @!attribute [rw] domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    #   @return [Array<String>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether to copy tags from the DB instance to snapshots of
    #   the DB instance. By default, tags are not copied.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Copying
    #   tags to snapshots is managed by the DB cluster. Setting this value
    #   for an Aurora DB instance has no effect on the DB cluster setting.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collection of
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, then you must set
    #   `MonitoringInterval` to a value other than `0`.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, see [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than `0`, then you
    #   must supply a `MonitoringRoleArn` value.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (The domain is managed by the DB cluster.)
    #
    #   * RDS Custom
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   The order of priority in which an Aurora Replica is promoted to the
    #   primary instance after a failure of the existing primary instance.
    #   For more information, see [ Fault Tolerance for an Aurora DB
    #   Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Default: `1`
    #
    #   Valid Values: `0 - 15`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html#Aurora.Managing.FaultTolerance
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
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By
    #   default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication for MySQL
    #   and PostgreSQL][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (Mapping Amazon Web Services IAM accounts to
    #     database accounts is managed by the DB cluster.)
    #
    #   * RDS Custom
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   Specifies whether to enable Performance Insights for the DB
    #   instance. For more information, see [Using Amazon Performance
    #   Insights][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you don't specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   Region.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589`
    #     (19 months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #
    #   If you specify a retention period that isn't valid, such as `94`,
    #   Amazon RDS returns an error.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. For more information, see [ Publishing Database
    #   Logs to Amazon CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (CloudWatch Logs exports are managed by the DB
    #     cluster.)
    #
    #   * RDS Custom
    #
    #   The following values are valid for each DB engine:
    #
    #   * RDS for MariaDB - `audit | error | general | slowquery`
    #
    #   * RDS for Microsoft SQL Server - `agent | error`
    #
    #   * RDS for MySQL - `audit | error | general | slowquery`
    #
    #   * RDS for Oracle - `alert | audit | listener | trace | oemagent`
    #
    #   * RDS for PostgreSQL - `postgresql | upgrade`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the DB instance has deletion protection enabled.
    #   The database can't be deleted when deletion protection is enabled.
    #   By default, deletion protection isn't enabled. For more
    #   information, see [ Deleting a DB Instance][1].
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. You can
    #   enable or disable deletion protection for the DB cluster. For more
    #   information, see `CreateDBCluster`. DB instances in a DB cluster can
    #   be deleted even when deletion protection is enabled for the DB
    #   cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (Storage is managed by the DB cluster.)
    #
    #   * RDS Custom
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    #   @return [Integer]
    #
    # @!attribute [rw] enable_customer_owned_ip
    #   Specifies whether to enable a customer-owned IP address (CoIP) for
    #   an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in
    #   your Outpost subnets through your on-premises network. For some use
    #   cases, a CoIP can provide lower latency for connections to the DB
    #   instance from outside of its virtual private cloud (VPC) on your
    #   local network.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP
    #   addresses][2] in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance.
    #
    #   This setting is required for RDS Custom.
    #
    #   Constraints:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions
    #     to assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [
    #   Configure IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    #   @return [String]
    #
    # @!attribute [rw] backup_target
    #   The location for storing automated backups and manual snapshots.
    #
    #   Valie Values:
    #
    #   * `outposts` (Amazon Web Services Outposts)
    #
    #   * `region` (Amazon Web Services Region)
    #
    #   Default: `region`
    #
    #   For more information, see [Working with Amazon RDS on Amazon Web
    #   Services Outposts][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4
    #   protocol or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   The storage throughput value for the DB instance.
    #
    #   This setting applies only to the `gp3` storage type.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #   @return [Integer]
    #
    # @!attribute [rw] manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Can't manage the master user password with Amazon Web Services
    #     Secrets Manager if `MasterUserPassword` is specified.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that
    #   is automatically generated and managed in Amazon Web Services
    #   Secrets Manager.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If you don't specify `MasterUserSecretKmsKeyId`, then the
    #   `aws/secretsmanager` KMS key is used to encrypt the secret. If the
    #   secret is in a different Amazon Web Services account, then you
    #   can't use the `aws/secretsmanager` KMS key to encrypt the secret,
    #   and you must use a customer managed KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The CA certificate identifier to use for the DB instance's server
    #   certificate.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to
    #   a DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS
    #   to encrypt a connection to a DB cluster][2] in the *Amazon Aurora
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    #   @return [String]
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
      :nchar_character_set_name,
      :publicly_accessible,
      :tags,
      :db_cluster_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :storage_encrypted,
      :kms_key_id,
      :domain,
      :domain_fqdn,
      :domain_ou,
      :domain_auth_secret_arn,
      :domain_dns_ips,
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
      :max_allocated_storage,
      :enable_customer_owned_ip,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      :storage_throughput,
      :manage_master_user_password,
      :master_user_secret_kms_key_id,
      :ca_certificate_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier of the read replica. This identifier is
    #   the unique key that identifies a DB instance. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] source_db_instance_identifier
    #   The identifier of the DB instance that will act as the source for
    #   the read replica. Each DB instance can have up to 15 read replicas,
    #   with the exception of Oracle and SQL Server, which can have up to
    #   five.
    #
    #   Constraints:
    #
    #   * Must be the identifier of an existing MySQL, MariaDB, Oracle,
    #     PostgreSQL, or SQL Server DB instance.
    #
    #   * Can't be specified if the `SourceDBClusterIdentifier` parameter
    #     is also specified.
    #
    #   * For the limitations of Oracle read replicas, see [Version and
    #     licensing considerations for RDS for Oracle replicas][1] in the
    #     *Amazon RDS User Guide*.
    #
    #   * For the limitations of SQL Server read replicas, see [Read replica
    #     limitations with SQL Server][2] in the *Amazon RDS User Guide*.
    #
    #   * The specified DB instance must have automatic backups enabled,
    #     that is, its backup retention period must be greater than 0.
    #
    #   * If the source DB instance is in the same Amazon Web Services
    #     Region as the read replica, specify a valid DB instance
    #     identifier.
    #
    #   * If the source DB instance is in a different Amazon Web Services
    #     Region from the read replica, specify a valid DB instance ARN. For
    #     more information, see [Constructing an ARN for Amazon RDS][3] in
    #     the *Amazon RDS User Guide*. This doesn't apply to SQL Server or
    #     RDS Custom, which don't support cross-Region replicas.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.limitations.html#oracle-read-replicas.limitations.versions-and-licenses
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.html#SQLServer.ReadReplicas.Limitations
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the read replica, for example
    #   db.m4.large. Not all DB instance classes are available in all Amazon
    #   Web Services Regions, or for all database engines. For the full list
    #   of DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide*.
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
    #   endpoint's Amazon Web Services Region.
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
    #   instance is independent of whether the source is a Multi-AZ DB
    #   instance or a Multi-AZ DB cluster.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the read replica during the maintenance window.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   option group associated with the source instance or cluster is used.
    #
    #   <note markdown="1"> For SQL Server, you must use the option group associated with the
    #   source.
    #
    #    </note>
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then
    #   Amazon RDS uses the `DBParameterGroup` of source DB instance for a
    #   same Region read replica, or the default `DBParameterGroup` for the
    #   specified DB engine for a cross-Region read replica.
    #
    #   Specifying a parameter group for this operation is only supported
    #   for MySQL and Oracle DB instances. It isn't supported for RDS
    #   Custom.
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
    #   accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
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
    #   * If supplied, must match the name of an existing DBSubnetGroup.
    #
    #   * The specified DB subnet group must be in the same Amazon Web
    #     Services Region in which the operation is running.
    #
    #   * All read replicas in one Amazon Web Services Region that are
    #     created from the same source DB instance must either:&gt;
    #
    #     * Specify DB subnet groups from the same VPC. All these read
    #       replicas are created in the same VPC.
    #
    #     * Not specify a DB subnet group. All these read replicas are
    #       created outside of any VPC.
    #
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to associate with the read
    #   replica.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the read replica.
    #
    #   Valid values: `gp2 | gp3 | io1 | standard`
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
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
    #   This setting doesn't apply to RDS Custom.
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
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted read
    #   replica.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you create an encrypted read replica in the same Amazon Web
    #   Services Region as the source DB instance or Multi-AZ DB cluster,
    #   don't specify a value for this parameter. A read replica in the
    #   same Amazon Web Services Region is always encrypted with the same
    #   KMS key as the source DB instance or cluster.
    #
    #   If you create an encrypted read replica in a different Amazon Web
    #   Services Region, then you must specify a KMS key identifier for the
    #   destination Amazon Web Services Region. KMS keys are specific to the
    #   Amazon Web Services Region that they are created in, and you can't
    #   use KMS keys from one Amazon Web Services Region in another Amazon
    #   Web Services Region.
    #
    #   You can't create an encrypted read replica from an unencrypted DB
    #   instance or Multi-AZ DB cluster.
    #
    #   This setting doesn't apply to RDS Custom, which uses the same KMS
    #   key as the primary replica.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   When you are creating a read replica from one Amazon Web Services
    #   GovCloud (US) Region to another or from one China Amazon Web
    #   Services Region to another, the URL that contains a Signature
    #   Version 4 signed request for the `CreateDBInstanceReadReplica` API
    #   operation in the source Amazon Web Services Region that contains the
    #   source DB instance.
    #
    #   This setting applies only to Amazon Web Services GovCloud (US)
    #   Regions and China Amazon Web Services Regions. It's ignored in
    #   other Amazon Web Services Regions.
    #
    #   This setting applies only when replicating from a source DB
    #   *instance*. Source DB clusters aren't supported in Amazon Web
    #   Services GovCloud (US) Regions and China Amazon Web Services
    #   Regions.
    #
    #   You must specify this parameter when you create an encrypted read
    #   replica from another Amazon Web Services Region by using the Amazon
    #   RDS API. Don't specify `PreSignedUrl` when you are creating an
    #   encrypted read replica in the same Amazon Web Services Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CreateDBInstanceReadReplica` API operation that can run in the
    #   source Amazon Web Services Region that contains the encrypted source
    #   DB instance. The presigned URL request must contain the following
    #   parameter values:
    #
    #   * `DestinationRegion` - The Amazon Web Services Region that the
    #     encrypted read replica is created in. This Amazon Web Services
    #     Region is the same one where the `CreateDBInstanceReadReplica`
    #     operation is called that contains this presigned URL.
    #
    #     For example, if you create an encrypted DB instance in the
    #     us-west-1 Amazon Web Services Region, from a source DB instance in
    #     the us-east-2 Amazon Web Services Region, then you call the
    #     `CreateDBInstanceReadReplica` operation in the us-east-1 Amazon
    #     Web Services Region and provide a presigned URL that contains a
    #     call to the `CreateDBInstanceReadReplica` operation in the
    #     us-west-2 Amazon Web Services Region. For this example, the
    #     `DestinationRegion` in the presigned URL must be set to the
    #     us-east-1 Amazon Web Services Region.
    #
    #   * `KmsKeyId` - The KMS key identifier for the key to use to encrypt
    #     the read replica in the destination Amazon Web Services Region.
    #     This is the same identifier for both the
    #     `CreateDBInstanceReadReplica` operation that is called in the
    #     destination Amazon Web Services Region, and the operation
    #     contained in the presigned URL.
    #
    #   * `SourceDBInstanceIdentifier` - The DB instance identifier for the
    #     encrypted DB instance to be replicated. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source Amazon Web
    #     Services Region. For example, if you are creating an encrypted
    #     read replica from a DB instance in the us-west-2 Amazon Web
    #     Services Region, then your `SourceDBInstanceIdentifier` looks like
    #     the following example:
    #     `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (Amazon Web
    #   Services Signature Version 4)][1] and [Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
    #
    #    `SourceRegion` isn't supported for SQL Server, because Amazon RDS
    #   for SQL Server doesn't support cross-Region read replicas.
    #
    #    </note>
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   Region.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data. The default
    #   is 7 days. The following values are valid:
    #
    #   * 7
    #
    #   * *month* * 31, where *month* is a number of months from 1-23
    #
    #   * 731
    #
    #   For example, the following values are valid:
    #
    #   * 93 (3 months * 31)
    #
    #   * 341 (11 months * 31)
    #
    #   * 589 (19 months * 31)
    #
    #   * 731
    #
    #   If you specify a retention period such as 94, which isn't a valid
    #   value, RDS issues an error.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the new DB instance is to export to CloudWatch
    #   Logs. The values in the list depend on the DB engine being used. For
    #   more information, see [Publishing Database Logs to Amazon CloudWatch
    #   Logs ][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection isn't
    #   enabled. For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to create the DB instance in.
    #   Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL
    #   DB instances can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to be used when making API calls to the
    #   Directory Service.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory
    #   domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_ou
    #   The Active Directory organizational unit for your DB instance to
    #   join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    #   @return [String]
    #
    # @!attribute [rw] domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    #   @return [Array<String>]
    #
    # @!attribute [rw] replica_mode
    #   The open mode of the replica database: mounted or read-only.
    #
    #   <note markdown="1"> This parameter is only supported for Oracle DB instances.
    #
    #    </note>
    #
    #   Mounted DB replicas are included in Oracle Database Enterprise
    #   Edition. The main use case for mounted replicas is cross-Region
    #   disaster recovery. The primary database doesn't use Active Data
    #   Guard to transmit information to the mounted replica. Because it
    #   doesn't accept user connections, a mounted replica can't serve a
    #   read-only workload.
    #
    #   You can create a combination of mounted and read-only DB replicas
    #   for the same primary DB instance. For more information, see [Working
    #   with Oracle Read Replicas for Amazon RDS][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For RDS Custom, you must specify this parameter and set it to
    #   `mounted`. The value won't be set by default. After replica
    #   creation, you can manage the open mode manually.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    #   @return [String]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    #   @return [Integer]
    #
    # @!attribute [rw] custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance. The instance profile must
    #   meet the following requirements:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions
    #     to assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [
    #   Configure IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required for RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   read replica. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   Specifies the storage throughput value for the read replica.
    #
    #   This setting doesn't apply to RDS Custom or Amazon Aurora.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_customer_owned_ip
    #   A value that indicates whether to enable a customer-owned IP address
    #   (CoIP) for an RDS on Outposts read replica.
    #
    #   A *CoIP* provides local or external connectivity to resources in
    #   your Outpost subnets through your on-premises network. For some use
    #   cases, a CoIP can provide lower latency for connections to the read
    #   replica from outside of its virtual private cloud (VPC) on your
    #   local network.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP
    #   addresses][2] in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    #   @return [Boolean]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gibibytes) to allocate initially for the
    #   read replica. Follow the allocation rules specified in
    #   `CreateDBInstance`.
    #
    #   <note markdown="1"> Be sure to allocate enough storage for your read replica so that the
    #   create operation can succeed. You can also allocate additional
    #   storage for future growth.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   The identifier of the Multi-AZ DB cluster that will act as the
    #   source for the read replica. Each DB cluster can have up to 15 read
    #   replicas.
    #
    #   Constraints:
    #
    #   * Must be the identifier of an existing Multi-AZ DB cluster.
    #
    #   * Can't be specified if the `SourceDBInstanceIdentifier` parameter
    #     is also specified.
    #
    #   * The specified DB cluster must have automatic backups enabled, that
    #     is, its backup retention period must be greater than 0.
    #
    #   * The source DB cluster must be in the same Amazon Web Services
    #     Region as the read replica. Cross-Region replication isn't
    #     supported.
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
      :domain_fqdn,
      :domain_ou,
      :domain_auth_secret_arn,
      :domain_dns_ips,
      :replica_mode,
      :max_allocated_storage,
      :custom_iam_instance_profile,
      :network_type,
      :storage_throughput,
      :enable_customer_owned_ip,
      :allocated_storage,
      :source_db_cluster_identifier,
      :source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceReadReplicaResult AWS API Documentation
    #
    class CreateDBInstanceReadReplicaResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBInstanceResult AWS API Documentation
    #
    class CreateDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   To list all of the available parameter group families for a DB
    #   engine, use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine <engine>`
    #
    #   For example, to list all of the available parameter group families
    #   for the MySQL DB engine, use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine mysql`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    #
    #   The following are the valid DB engine values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_name
    #   The name of the DB proxy associated with the DB proxy endpoint that
    #   you create.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_endpoint_name
    #   The name of the DB proxy endpoint to create.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   The VPC subnet IDs for the DB proxy endpoint that you create. You
    #   can specify a different set of subnet IDs than for the original DB
    #   proxy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   The VPC security group IDs for the DB proxy endpoint that you
    #   create. You can specify a different set of security group IDs than
    #   for the original DB proxy. The default is the default security group
    #   for the VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_role
    #   A value that indicates whether the DB proxy endpoint can be used for
    #   read/write or read-only operations. The default is `READ_WRITE`. The
    #   only role that proxies for RDS for Microsoft SQL Server support is
    #   `READ_WRITE`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBProxyEndpointRequest AWS API Documentation
    #
    class CreateDBProxyEndpointRequest < Struct.new(
      :db_proxy_name,
      :db_proxy_endpoint_name,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :target_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_endpoint
    #   The `DBProxyEndpoint` object that is created by the API operation.
    #   The DB proxy endpoint that you create might provide capabilities
    #   such as read/write or read-only operations, or using a different VPC
    #   than the proxy's default VPC.
    #   @return [Types::DBProxyEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateDBProxyEndpointResponse AWS API Documentation
    #
    class CreateDBProxyEndpointResponse < Struct.new(
      :db_proxy_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_name
    #   The identifier for the proxy. This name must be unique for all
    #   proxies owned by your Amazon Web Services account in the specified
    #   Amazon Web Services Region. An identifier must begin with a letter
    #   and must contain only ASCII letters, digits, and hyphens; it can't
    #   end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] engine_family
    #   The kinds of databases that the proxy can connect to. This value
    #   determines which database network protocol the proxy recognizes when
    #   it interprets network traffic to and from the database. For Aurora
    #   MySQL, RDS for MariaDB, and RDS for MySQL databases, specify
    #   `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases,
    #   specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify
    #   `SQLSERVER`.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   The authorization mechanism that the proxy uses.
    #   @return [Array<Types::UserAuthConfig>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the proxy uses
    #   to access secrets in Amazon Web Services Secrets Manager.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain no more than 255 letters, numbers, periods,
    #     underscores, spaces, or hyphens.
    #
    #   * Must not be default.
    #
    #   * First character must be a letter.
    #
    #   Example: `mydbsubnetgroup`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   set this parameter to `db-instance`. For RDS Proxy events, specify
    #   `db-proxy`. If this value isn't specified, all events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group`
    #   \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot` \|
    #   `db-proxy`
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a particular source type
    #   (`SourceType`) that you want to subscribe to. You can see a list of
    #   the categories for a given source type in the "Amazon RDS event
    #   categories and event messages" section of the [ *Amazon RDS User
    #   Guide* ][1] or the [ *Amazon Aurora User Guide* ][2]. You can also
    #   see this list by using the `DescribeEventCategories` operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Messages.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Messages.html
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
    #   * If `SourceIds` are supplied, `SourceType` must also be provided.
    #
    #   * If the source type is a DB instance, a `DBInstanceIdentifier`
    #     value must be supplied.
    #
    #   * If the source type is a DB cluster, a `DBClusterIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` value must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier`
    #     value must be supplied.
    #
    #   * If the source type is a DB cluster snapshot, a
    #     `DBClusterSnapshotIdentifier` value must be supplied.
    #
    #   * If the source type is an RDS Proxy, a `DBProxyName` value must be
    #     supplied.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier for this global database cluster. This
    #   parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   The Amazon Resource Name (ARN) to use as the primary cluster of the
    #   global database.
    #
    #   If you provide a value for this parameter, don't specify values for
    #   the following settings because Amazon Aurora uses the values from
    #   the specified source DB cluster:
    #
    #   * `DatabaseName`
    #
    #   * `Engine`
    #
    #   * `EngineVersion`
    #
    #   * `StorageEncrypted`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for this global database cluster.
    #
    #   Valid Values: `aurora-mysql | aurora-postgresql`
    #
    #   Constraints:
    #
    #   * Can't be specified if `SourceDBClusterIdentifier` is specified.
    #     In this case, Amazon Aurora uses the engine of the source DB
    #     cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version to use for this global database cluster.
    #
    #   Constraints:
    #
    #   * Can't be specified if `SourceDBClusterIdentifier` is specified.
    #     In this case, Amazon Aurora uses the engine version of the source
    #     DB cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether to enable deletion protection for the new global
    #   database cluster. The global database can't be deleted when
    #   deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] database_name
    #   The name for your database of up to 64 alphanumeric characters. If
    #   you don't specify a name, Amazon Aurora doesn't create a database
    #   in the global database cluster.
    #
    #   Constraints:
    #
    #   * Can't be specified if `SourceDBClusterIdentifier` is specified.
    #     In this case, Amazon Aurora uses the database name from the source
    #     DB cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether to enable storage encryption for the new global
    #   database cluster.
    #
    #   Constraints:
    #
    #   * Can't be specified if `SourceDBClusterIdentifier` is specified.
    #     In this case, Amazon Aurora uses the setting from the source DB
    #     cluster.
    #
    #   ^
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] option_group
    #   @return [Types::OptionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CreateOptionGroupResult AWS API Documentation
    #
    class CreateOptionGroupResult < Struct.new(
      :option_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # `CustomAvailabilityZoneId` doesn't refer to an existing custom
    # Availability Zone identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomAvailabilityZoneNotFoundFault AWS API Documentation
    #
    class CustomAvailabilityZoneNotFoundFault < Aws::EmptyStructure; end

    # A value that indicates the AMI information.
    #
    # @!attribute [rw] image_id
    #   A value that indicates the ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A value that indicates the status of a custom engine version (CEV).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomDBEngineVersionAMI AWS API Documentation
    #
    class CustomDBEngineVersionAMI < Struct.new(
      :image_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CEV with the specified name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomDBEngineVersionAlreadyExistsFault AWS API Documentation
    #
    class CustomDBEngineVersionAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified CEV was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomDBEngineVersionNotFoundFault AWS API Documentation
    #
    class CustomDBEngineVersionNotFoundFault < Aws::EmptyStructure; end

    # You have exceeded your CEV quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/CustomDBEngineVersionQuotaExceededFault AWS API Documentation
    #
    class CustomDBEngineVersionQuotaExceededFault < Aws::EmptyStructure; end

    # Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    # cluster.
    #
    # For an Amazon Aurora DB cluster, this data type is used as a response
    # element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    # `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    # `PromoteReadReplicaDBCluster`, `RestoreDBClusterFromS3`,
    # `RestoreDBClusterFromSnapshot`, `RestoreDBClusterToPointInTime`,
    # `StartDBCluster`, and `StopDBCluster`.
    #
    # For a Multi-AZ DB cluster, this data type is used as a response
    # element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    # `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    # `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    # `RestoreDBClusterToPointInTime`.
    #
    # For more information on Amazon Aurora DB clusters, see [ What is
    # Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    # For more information on Multi-AZ DB clusters, see [ Multi-AZ
    # deployments with two readable standby DB instances][2] in the *Amazon
    # RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
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
    #   The list of Availability Zones (AZs) where instances in the DB
    #   cluster can be created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic DB snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   If present, specifies the name of the character set that this
    #   cluster is associated with.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the initial database that was specified for the DB
    #   cluster when it was created, if one was provided. This same name is
    #   returned for the life of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The user-supplied identifier for the DB cluster. This identifier is
    #   the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   The name of the DB cluster parameter group for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Information about the subnet group associated with the DB cluster,
    #   including the name, description, and subnets in the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] automatic_restart_time
    #   The time when a stopped DB cluster is restarted automatically.
    #   @return [Time]
    #
    # @!attribute [rw] percent_progress
    #   The progress of the operation as a percentage.
    #   @return [String]
    #
    # @!attribute [rw] earliest_restorable_time
    #   The earliest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint for the primary instance of the DB cluster.
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
    #   The custom endpoints associated with the DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] multi_az
    #   Indicates whether the DB cluster has instances in multiple
    #   Availability Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   The database engine used for this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] latest_restorable_time
    #   The latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] port
    #   The port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The master username for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_option_group_memberships
    #   The list of option group memberships for this DB cluster.
    #   @return [Array<Types::DBClusterOptionGroupStatus>]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   The identifier of the source DB cluster if this DB cluster is a read
    #   replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_identifiers
    #   Contains one or more identifiers of the read replicas associated
    #   with this DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_members
    #   The list of DB instances that make up the DB cluster.
    #   @return [Array<Types::DBClusterMember>]
    #
    # @!attribute [rw] vpc_security_groups
    #   The list of VPC security groups that the DB cluster belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID that Amazon Route 53 assigns when you create a hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Indicates whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is enabled, the Amazon Web Services KMS key
    #   identifier for the encrypted DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The Amazon Web Services Region-unique, immutable identifier for the
    #   DB cluster. This identifier is found in Amazon Web Services
    #   CloudTrail log entries whenever the KMS key for the DB cluster is
    #   accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   A list of the Amazon Web Services Identity and Access Management
    #   (IAM) roles that are associated with the DB cluster. IAM roles that
    #   are associated with a DB cluster grant permission for the DB cluster
    #   to access other Amazon Web Services on your behalf.
    #   @return [Array<Types::DBClusterRole>]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   Indicates whether the mapping of Amazon Web Services Identity and
    #   Access Management (IAM) accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] clone_group_id
    #   The ID of the clone group with which the DB cluster is associated.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   The time when the DB cluster was created, in Universal Coordinated
    #   Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] earliest_backtrack_time
    #   The earliest time to which a DB cluster can be backtracked.
    #   @return [Time]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. If this value is set to
    #   `0`, backtracking is disabled for the DB cluster. Otherwise,
    #   backtracking is enabled.
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
    #   The current capacity of an Aurora Serverless v1 DB cluster. The
    #   capacity is `0` (zero) when the cluster is paused.
    #
    #   For more information about Aurora Serverless v1, see [Using Amazon
    #   Aurora Serverless v1][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #   @return [Integer]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   For more information, see [ CreateDBCluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration_info
    #   The scaling configuration for an Aurora DB cluster in `serverless`
    #   DB engine mode.
    #
    #   For more information, see [Using Amazon Aurora Serverless v1][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #   @return [Types::ScalingConfigurationInfo]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether the DB cluster has deletion protection enabled.
    #   The database can't be deleted when deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] http_endpoint_enabled
    #   Indicates whether the HTTP endpoint for an Aurora Serverless v1 DB
    #   cluster is enabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web
    #   service API for running SQL queries on the Aurora Serverless v1 DB
    #   cluster. You can also query your database from inside the RDS
    #   console with the query editor.
    #
    #   For more information, see [Using the Data API for Aurora Serverless
    #   v1][1] in the *Amazon Aurora User Guide*.
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
    #   The Amazon Web Services KMS key identifier used for encrypting
    #   messages in the database activity stream.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_kinesis_stream_name
    #   The name of the Amazon Kinesis data stream used for the database
    #   activity stream.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Indicates whether tags are copied from the DB cluster to snapshots
    #   of the DB cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_clone
    #   Indicates whether the DB cluster is a clone of a DB cluster owned by
    #   a different Amazon Web Services account.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory Domain membership records associated with the
    #   DB cluster.
    #   @return [Array<Types::DomainMembership>]
    #
    # @!attribute [rw] tag_list
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] global_write_forwarding_status
    #   The status of write forwarding for a secondary cluster in an Aurora
    #   global database.
    #   @return [String]
    #
    # @!attribute [rw] global_write_forwarding_requested
    #   Specifies whether write forwarding is enabled for a secondary
    #   cluster in an Aurora global database. Because write forwarding takes
    #   time to enable, check the value of `GlobalWriteForwardingStatus` to
    #   confirm that the request has completed before using the write
    #   forwarding feature for this cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] pending_modified_values
    #   Information about pending changes to the DB cluster. This
    #   information is returned only when there are pending changes.
    #   Specific changes are identified by subelements.
    #   @return [Types::ClusterPendingModifiedValues]
    #
    # @!attribute [rw] db_cluster_instance_class
    #   The name of the compute and memory capacity class of the DB
    #   instance.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type associated with the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The Provisioned IOPS (I/O operations per second) value.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates whether the DB cluster is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBCluster.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates whether minor version patches are applied automatically.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB cluster.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send Enhanced
    #   Monitoring metrics to Amazon CloudWatch Logs.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_enabled
    #   Indicates whether Performance Insights is enabled for the DB
    #   cluster.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   This setting is only for non-Aurora Multi-AZ DB clusters.
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589`
    #     (19 months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #   @return [Integer]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   The scaling configuration for an Aurora Serverless v2 DB cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #   @return [Types::ServerlessV2ScalingConfigurationInfo]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon Aurora User Guide.*
    #
    #   This setting is only for Aurora DB clusters.
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] db_system_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] master_user_secret
    #   The secret managed by RDS in Amazon Web Services Secrets Manager for
    #   the master user password.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    #   @return [Types::MasterUserSecret]
    #
    # @!attribute [rw] io_optimized_next_allowed_modification_time
    #   The next time you can modify the DB cluster to use the
    #   `aurora-iopt1` storage type.
    #
    #   This setting is only for Aurora DB clusters.
    #   @return [Time]
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
      :automatic_restart_time,
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
      :domain_memberships,
      :tag_list,
      :global_write_forwarding_status,
      :global_write_forwarding_requested,
      :pending_modified_values,
      :db_cluster_instance_class,
      :storage_type,
      :iops,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :monitoring_interval,
      :monitoring_role_arn,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :serverless_v2_scaling_configuration,
      :network_type,
      :db_system_id,
      :master_user_secret,
      :io_optimized_next_allowed_modification_time)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   `deleting`, `inactive`, `modifying`. The `inactive` state applies to
    #   an endpoint that can't be used for a certain kind of cluster, such
    #   as a `writer` endpoint for a read-only secondary cluster in a global
    #   database.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeDBClusters` action.
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later `DescribeDBClusters`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB cluster parameter group.
    #
    # This data type is used as a response element in the
    # `DescribeDBClusterParameterGroups` action.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family that this DB cluster
    #   parameter group is compatible with.
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
      SENSITIVE = []
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
    #   `DescribeDBClusterParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterParameterGroupDetails AWS API Documentation
    #
    class DBClusterParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The user attempted to create a new DB cluster and the user has already
    # reached the maximum allowed DB cluster quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterQuotaExceededFault AWS API Documentation
    #
    class DBClusterQuotaExceededFault < Aws::EmptyStructure; end

    # Describes an Amazon Web Services Identity and Access Management (IAM)
    # role that is associated with a DB cluster.
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
    #     can be used to access other Amazon Web Services on your behalf.
    #
    #   * `PENDING` - the IAM role ARN is being associated with the DB
    #     cluster.
    #
    #   * `INVALID` - the IAM role ARN is associated with the DB cluster,
    #     but the DB cluster is unable to assume the IAM role in order to
    #     access other Amazon Web Services on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the Amazon Web Services
    #   Identity and Access Management (IAM) role. For information about
    #   supported feature names, see DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterRole AWS API Documentation
    #
    class DBClusterRole < Struct.new(
      :role_arn,
      :status,
      :feature_name)
      SENSITIVE = []
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
    #   Specifies the name of the database engine for this DB cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] engine_mode
    #   Provides the engine mode of the database engine for this DB cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Specifies the status of this DB cluster snapshot. Valid statuses are
    #   the following:
    #
    #   * `available`
    #
    #   * `copying`
    #
    #   * `creating`
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
    #   Provides the master username for this DB cluster snapshot.
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
    #   If `StorageEncrypted` is true, the Amazon Web Services KMS key
    #   identifier for the encrypted DB cluster snapshot.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
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
    #   True if mapping of Amazon Web Services Identity and Access
    #   Management (IAM) accounts to database accounts is enabled, and
    #   otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tag_list
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_system_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type associated with the DB cluster snapshot.
    #
    #   This setting is only for Aurora DB clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshot AWS API Documentation
    #
    class DBClusterSnapshot < Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :engine_mode,
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
      :iam_database_authentication_enabled,
      :tag_list,
      :db_system_id,
      :storage_type)
      SENSITIVE = []
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
    # Manual DB cluster snapshot attributes are used to authorize other
    # Amazon Web Services accounts to restore a manual DB cluster snapshot.
    # For more information, see the `ModifyDBClusterSnapshotAttribute` API
    # action.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB cluster snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of Amazon Web
    #   Services accounts that have permission to copy or restore the manual
    #   DB cluster snapshot. For more information, see the
    #   `ModifyDBClusterSnapshotAttribute` API action.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The value(s) for the manual DB cluster snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the Amazon Web Services accounts that are
    #   authorized to copy or restore the manual DB cluster snapshot. If a
    #   value of `all` is in the list, then the manual DB cluster snapshot
    #   is public and available for any Amazon Web Services account to copy
    #   or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBClusterSnapshotAttribute AWS API Documentation
    #
    class DBClusterSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful call to the
    # `DescribeDBClusterSnapshotAttributes` API action.
    #
    # Manual DB cluster snapshot attributes are used to authorize other
    # Amazon Web Services accounts to copy or restore a manual DB cluster
    # snapshot. For more information, see the
    # `ModifyDBClusterSnapshotAttribute` API action.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] image
    #   The EC2 image
    #   @return [Types::CustomDBEngineVersionAMI]
    #
    # @!attribute [rw] db_engine_media_type
    #   A value that indicates the source media provider of the AMI based on
    #   the usage operation. Applicable for RDS Custom for SQL Server.
    #   @return [String]
    #
    # @!attribute [rw] supported_character_sets
    #   A list of the character sets supported by this engine for the
    #   `CharacterSetName` parameter of the `CreateDBInstance` operation.
    #   @return [Array<Types::CharacterSet>]
    #
    # @!attribute [rw] supported_nchar_character_sets
    #   A list of the character sets supported by the Oracle DB engine for
    #   the `NcharCharacterSetName` parameter of the `CreateDBInstance`
    #   operation.
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
    # @!attribute [rw] supported_feature_names
    #   A list of features supported by the DB engine.
    #
    #   The supported features vary by DB engine and DB engine version.
    #
    #   To determine the supported features for a specific DB engine and DB
    #   engine version using the CLI, use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine <engine_name>
    #   --engine-version <engine_version>`
    #
    #   For example, to determine the supported features for RDS for
    #   PostgreSQL version 13.3 using the CLI, use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres
    #   --engine-version 13.3`
    #
    #   The supported features are listed under `SupportedFeatureNames` in
    #   the output.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the DB engine version, either `available` or
    #   `deprecated`.
    #   @return [String]
    #
    # @!attribute [rw] supports_parallel_query
    #   A value that indicates whether you can use Aurora parallel query
    #   with a specific DB engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_global_databases
    #   A value that indicates whether you can use Aurora global databases
    #   with a specific DB engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] major_engine_version
    #   The major engine version of the CEV.
    #   @return [String]
    #
    # @!attribute [rw] database_installation_files_s3_bucket_name
    #   The name of the Amazon S3 bucket that contains your database
    #   installation files.
    #   @return [String]
    #
    # @!attribute [rw] database_installation_files_s3_prefix
    #   The Amazon S3 directory that contains the database installation
    #   files. If not specified, then no prefix is assumed.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_version_arn
    #   The ARN of the custom engine version.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted CEV.
    #   This parameter is required for RDS Custom, but optional for Amazon
    #   RDS.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The creation time of the DB engine version.
    #   @return [Time]
    #
    # @!attribute [rw] tag_list
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] supports_babelfish
    #   A value that indicates whether the engine version supports Babelfish
    #   for Aurora PostgreSQL.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_db_engine_version_manifest
    #   JSON string that lists the installation files and parameters that
    #   RDS Custom uses to create a custom engine version (CEV). RDS Custom
    #   applies the patches in the order in which they're listed in the
    #   manifest. You can set the Oracle home, Oracle base, and UNIX/Linux
    #   user and group using the installation parameters. For more
    #   information, see [JSON fields in the CEV manifest][1] in the *Amazon
    #   RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.preparing.html#custom-cev.preparing.manifest.fields
    #   @return [String]
    #
    # @!attribute [rw] supports_certificate_rotation_without_restart
    #   A value that indicates whether the engine version supports rotating
    #   the server certificate without rebooting the DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_ca_certificate_identifiers
    #   A list of the supported CA certificate identifiers.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to
    #   a DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS
    #   to encrypt a connection to a DB cluster][2] in the *Amazon Aurora
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
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
      :image,
      :db_engine_media_type,
      :supported_character_sets,
      :supported_nchar_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supported_engine_modes,
      :supported_feature_names,
      :status,
      :supports_parallel_query,
      :supports_global_databases,
      :major_engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :db_engine_version_arn,
      :kms_key_id,
      :create_time,
      :tag_list,
      :supports_babelfish,
      :custom_db_engine_version_manifest,
      :supports_certificate_rotation_without_restart,
      :supported_ca_certificate_identifiers)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB instance.
    #
    # This data type is used as a response element in the operations
    # `CreateDBInstance`, `CreateDBInstanceReadReplica`, `DeleteDBInstance`,
    # `DescribeDBInstances`, `ModifyDBInstance`, `PromoteReadReplica`,
    # `RebootDBInstance`, `RestoreDBInstanceFromDBSnapshot`,
    # `RestoreDBInstanceFromS3`, `RestoreDBInstanceToPointInTime`,
    # `StartDBInstance`, and `StopDBInstance`.
    #
    # @!attribute [rw] db_instance_identifier
    #   The user-supplied database identifier. This identifier is the unique
    #   key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine used for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_status
    #   The current state of this database.
    #
    #   For information about DB instance statuses, see [Viewing DB instance
    #   status][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/accessing-monitoring.html#Overview.DBInstance.Status
    #   @return [String]
    #
    # @!attribute [rw] automatic_restart_time
    #   The time when a stopped DB instance is restarted automatically.
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   The master username for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs depending on the database
    #   engine.
    #
    #   * For RDS for MariaDB, Microsoft SQL Server, MySQL, and PostgreSQL -
    #     The name of the initial database specified for this DB instance
    #     when it was created, if one was provided. This same name is
    #     returned for the life of the DB instance.
    #
    #   * For RDS for Oracle - The Oracle System ID (SID) of the created DB
    #     instance. This value is only returned when the object returned is
    #     an Oracle DB instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint for the DB instance.
    #
    #   <note markdown="1"> The endpoint might not be shown for instances with the status of
    #   `creating`.
    #
    #    </note>
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage in gibibytes (GiB) allocated for the DB
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_create_time
    #   The date and time when the DB instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic DB snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security group elements containing
    #   `DBSecurityGroup.Name` and `DBSecurityGroup.Status` subelements.
    #   @return [Array<Types::DBSecurityGroupMembership>]
    #
    # @!attribute [rw] vpc_security_groups
    #   The list of Amazon EC2 VPC security groups that the DB instance
    #   belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] db_parameter_groups
    #   The list of DB parameter groups applied to this DB instance.
    #   @return [Array<Types::DBParameterGroupStatus>]
    #
    # @!attribute [rw] availability_zone
    #   The name of the Availability Zone where the DB instance is located.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Information about the subnet group associated with the DB instance,
    #   including the name, description, and subnets in the subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Information about pending changes to the DB instance. This
    #   information is returned only when there are pending changes.
    #   Specific changes are identified by subelements.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] latest_restorable_time
    #   The latest time to which a database in this DB instance can be
    #   restored with point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] multi_az
    #   Indicates whether the DB instance is a Multi-AZ deployment. This
    #   setting doesn't apply to RDS Custom DB instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates whether minor version patches are applied automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_source_db_instance_identifier
    #   The identifier of the source DB instance if this DB instance is a
    #   read replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_db_instance_identifiers
    #   The identifiers of the read replicas associated with this DB
    #   instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] read_replica_db_cluster_identifiers
    #   The identifiers of Aurora DB clusters to which the RDS DB instance
    #   is replicated as a read replica. For example, when you create an
    #   Aurora read replica of an RDS for MySQL DB instance, the Aurora
    #   MySQL DB cluster for the Aurora read replica is shown. This output
    #   doesn't contain information about cross-Region Aurora read
    #   replicas.
    #
    #   <note markdown="1"> Currently, each RDS DB instance can have only one Aurora read
    #   replica.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] replica_mode
    #   The open mode of an Oracle read replica. The default is
    #   `open-read-only`. For more information, see [Working with Oracle
    #   Read Replicas for Amazon RDS][1] in the *Amazon RDS User Guide*.
    #
    #   <note markdown="1"> This attribute is only supported in RDS for Oracle.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model information for this DB instance. This setting
    #   doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The Provisioned IOPS (I/O operations per second) value for the DB
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_memberships
    #   The list of option group memberships for this DB instance.
    #   @return [Array<Types::OptionGroupMembership>]
    #
    # @!attribute [rw] character_set_name
    #   If present, specifies the name of the character set that this
    #   instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] nchar_character_set_name
    #   The name of the NCHAR character set for the Oracle DB instance. This
    #   character set specifies the Unicode encoding for data stored in
    #   table columns of type NCHAR, NCLOB, or NVARCHAR2.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   If present, specifies the name of the secondary Availability Zone
    #   for a DB instance with multi-AZ support.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Indicates whether the DB instance is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] status_infos
    #   The status of a read replica. If the DB instance isn't a read
    #   replica, the value is blank.
    #   @return [Array<Types::DBInstanceStatusInfo>]
    #
    # @!attribute [rw] storage_type
    #   The storage type associated with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the instance is associated for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_port
    #   The port that the DB instance listens on. If the DB instance is part
    #   of a DB cluster, this can be a different port than the DB cluster
    #   port.
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_identifier
    #   If the DB instance is a member of a DB cluster, indicates the name
    #   of the DB cluster that the DB instance is a member of.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Indicates whether the DB instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is enabled, the Amazon Web Services KMS key
    #   identifier for the encrypted DB instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The Amazon Web Services Region-unique, immutable identifier for the
    #   DB instance. This identifier is found in Amazon Web Services
    #   CloudTrail log entries whenever the Amazon Web Services KMS key for
    #   the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to
    #   a DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS
    #   to encrypt a connection to a DB cluster][2] in the *Amazon Aurora
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    #   @return [String]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory Domain membership records associated with the
    #   DB instance.
    #   @return [Array<Types::DomainMembership>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Indicates whether tags are copied from the DB instance to snapshots
    #   of the DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Copying
    #   tags to snapshots is managed by the DB cluster. Setting this value
    #   for an Aurora DB instance has no effect on the DB cluster setting.
    #   For more information, see `DBCluster`.
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
    #   The order of priority in which an Aurora Replica is promoted to the
    #   primary instance after a failure of the existing primary instance.
    #   For more information, see [ Fault Tolerance for an Aurora DB
    #   Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html#Aurora.Managing.FaultTolerance
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
    #   Indicates whether mapping of Amazon Web Services Identity and Access
    #   Management (IAM) accounts to database accounts is enabled for the DB
    #   instance.
    #
    #   For a list of engine versions that support IAM database
    #   authentication, see [IAM database authentication][1] in the *Amazon
    #   RDS User Guide* and [IAM database authentication in Aurora][2] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RDS_Fea_Regions_DB-eng.Feature.IamDatabaseAuthentication.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.Aurora_Fea_Regions_DB-eng.Feature.IAMdbauth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_enabled
    #   Indicates whether Performance Insights is enabled for the DB
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589`
    #     (19 months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this DB instance is configured to export to
    #   CloudWatch Logs.
    #
    #   Log types vary by DB engine. For information about the log types for
    #   each DB engine, see [Monitoring Amazon RDS log files][1] in the
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
    #   Indicates whether the DB instance has deletion protection enabled.
    #   The database can't be deleted when deletion protection is enabled.
    #   For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] associated_roles
    #   The Amazon Web Services Identity and Access Management (IAM) roles
    #   associated with the DB instance.
    #   @return [Array<Types::DBInstanceRole>]
    #
    # @!attribute [rw] listener_endpoint
    #   The listener connection endpoint for SQL Server Always On.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] tag_list
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_instance_automated_backups_replications
    #   The list of replicated automated backups associated with the DB
    #   instance.
    #   @return [Array<Types::DBInstanceAutomatedBackupsReplication>]
    #
    # @!attribute [rw] customer_owned_ip_enabled
    #   Indicates whether a customer-owned IP address (CoIP) is enabled for
    #   an RDS on Outposts DB instance.
    #
    #   A <i>CoIP </i>provides local or external connectivity to resources
    #   in your Outpost subnets through your on-premises network. For some
    #   use cases, a CoIP can provide lower latency for connections to the
    #   DB instance from outside of its virtual private cloud (VPC) on your
    #   local network.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP
    #   addresses][2] in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_backup_recovery_point_arn
    #   The Amazon Resource Name (ARN) of the recovery point in Amazon Web
    #   Services Backup.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_status
    #   The status of the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_kms_key_id
    #   The Amazon Web Services KMS key identifier used for encrypting
    #   messages in the database activity stream. The Amazon Web Services
    #   KMS key identifier is the key ARN, key ID, alias ARN, or alias name
    #   for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_kinesis_stream_name
    #   The name of the Amazon Kinesis data stream used for the database
    #   activity stream.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_mode
    #   The mode of the database activity stream. Database events such as a
    #   change or access generate an activity stream event. RDS for Oracle
    #   always handles these events asynchronously.
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_engine_native_audit_fields_included
    #   Indicates whether engine-native audit fields are included in the
    #   database activity stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] automation_mode
    #   The automation mode of the RDS Custom DB instance: `full` or `all
    #   paused`. If `full`, the DB instance automates monitoring and
    #   instance recovery. If `all paused`, the instance pauses automation
    #   for the duration set by `--resume-full-automation-mode-minutes`.
    #   @return [String]
    #
    # @!attribute [rw] resume_full_automation_mode_time
    #   The number of minutes to pause the automation. When the time period
    #   ends, RDS Custom resumes full automation. The minimum value is 60
    #   (default). The maximum value is 1,440.
    #   @return [Time]
    #
    # @!attribute [rw] custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance. The instance profile must
    #   meet the following requirements:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions
    #     to assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [
    #   Configure IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    #   @return [String]
    #
    # @!attribute [rw] backup_target
    #   The location where automated backups and manual snapshots are
    #   stored: Amazon Web Services Outposts or the Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4
    #   protocol or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide* and [ Working with a DB instance in a
    #   VPC][2] in the *Amazon Aurora User Guide.*
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] activity_stream_policy_status
    #   The status of the policy state of the activity stream.
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   The storage throughput for the DB instance.
    #
    #   This setting applies only to the `gp3` storage type.
    #   @return [Integer]
    #
    # @!attribute [rw] db_system_id
    #   The Oracle system ID (Oracle SID) for a container database (CDB).
    #   The Oracle SID is also the name of the CDB. This setting is only
    #   valid for RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] master_user_secret
    #   The secret managed by RDS in Amazon Web Services Secrets Manager for
    #   the master user password.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   @return [Types::MasterUserSecret]
    #
    # @!attribute [rw] certificate_details
    #   The details of the DB instance's server certificate.
    #   @return [Types::CertificateDetails]
    #
    # @!attribute [rw] read_replica_source_db_cluster_identifier
    #   The identifier of the source DB cluster if this DB instance is a
    #   read replica.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstance AWS API Documentation
    #
    class DBInstance < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :automatic_restart_time,
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
      :replica_mode,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :nchar_character_set_name,
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
      :max_allocated_storage,
      :tag_list,
      :db_instance_automated_backups_replications,
      :customer_owned_ip_enabled,
      :aws_backup_recovery_point_arn,
      :activity_stream_status,
      :activity_stream_kms_key_id,
      :activity_stream_kinesis_stream_name,
      :activity_stream_mode,
      :activity_stream_engine_native_audit_fields_included,
      :automation_mode,
      :resume_full_automation_mode_time,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      :activity_stream_policy_status,
      :storage_throughput,
      :db_system_id,
      :master_user_secret,
      :certificate_details,
      :read_replica_source_db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user already has a DB instance with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAlreadyExistsFault AWS API Documentation
    #
    class DBInstanceAlreadyExistsFault < Aws::EmptyStructure; end

    # An automated backup of a DB instance. It consists of system backups,
    # transaction logs, and the database instance properties that existed at
    # the time you deleted the source instance.
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) for the automated backups.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The identifier for the source DB instance, which can't be changed
    #   and which is unique to an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region associated with the automated backup.
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
    #   information on Amazon Web Services Regions and Availability Zones,
    #   see [Regions and Availability Zones][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID associated with the DB instance.
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
    #   The Amazon Web Services KMS key ID for an automated backup.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of the automated backup. In most cases, the `Timezone`
    #   element is empty. `Timezone` content appears only for Microsoft SQL
    #   Server DB instances that were created with a time zone specified.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of Amazon Web Services Identity and Access
    #   Management (IAM) accounts to database accounts is enabled, and
    #   otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_period
    #   The retention period for the automated backups.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_automated_backups_arn
    #   The Amazon Resource Name (ARN) for the replicated automated backups.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_automated_backups_replications
    #   The list of replications to different Amazon Web Services Regions
    #   associated with the automated backup.
    #   @return [Array<Types::DBInstanceAutomatedBackupsReplication>]
    #
    # @!attribute [rw] backup_target
    #   Specifies where automated backups are stored: Amazon Web Services
    #   Outposts or the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   Specifies the storage throughput for the automated backup.
    #   @return [Integer]
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
      :iam_database_authentication_enabled,
      :backup_retention_period,
      :db_instance_automated_backups_arn,
      :db_instance_automated_backups_replications,
      :backup_target,
      :storage_throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeDBInstanceAutomatedBackups` action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
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
      SENSITIVE = []
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

    # Automated backups of a DB instance replicated to another Amazon Web
    # Services Region. They consist of system backups, transaction logs, and
    # database instance properties.
    #
    # @!attribute [rw] db_instance_automated_backups_arn
    #   The Amazon Resource Name (ARN) of the replicated automated backups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceAutomatedBackupsReplication AWS API Documentation
    #
    class DBInstanceAutomatedBackupsReplication < Struct.new(
      :db_instance_automated_backups_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBInstanceIdentifier` doesn't refer to an existing DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceNotFoundFault AWS API Documentation
    #
    class DBInstanceNotFoundFault < Aws::EmptyStructure; end

    # Describes an Amazon Web Services Identity and Access Management (IAM)
    # role that is associated with a DB instance.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the Amazon Web Services
    #   Identity and Access Management (IAM) role. For information about
    #   supported feature names, see `DBEngineVersion`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of association between the IAM role and the DB
    #   instance. The Status property returns one of the following values:
    #
    #   * `ACTIVE` - the IAM role ARN is associated with the DB instance and
    #     can be used to access other Amazon Web Services services on your
    #     behalf.
    #
    #   * `PENDING` - the IAM role ARN is being associated with the DB
    #     instance.
    #
    #   * `INVALID` - the IAM role ARN is associated with the DB instance,
    #     but the DB instance is unable to assume the IAM role in order to
    #     access other Amazon Web Services services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBInstanceRole AWS API Documentation
    #
    class DBInstanceRole < Struct.new(
      :role_arn,
      :feature_name,
      :status)
      SENSITIVE = []
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

    # You can't associate any more Amazon Web Services Identity and Access
    # Management (IAM) roles with the DB instance because the quota has been
    # reached.
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
      SENSITIVE = []
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
    #   The name of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family that this DB parameter
    #   group is compatible with.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `ModifyDBParameterGroup` or `ResetDBParameterGroup` action.
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBParameterGroupNameMessage AWS API Documentation
    #
    class DBParameterGroupNameMessage < Struct.new(
      :db_parameter_group_name)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The data structure representing a proxy managed by the RDS Proxy.
    #
    # This data type is used as a response element in the
    # `DescribeDBProxies` action.
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier for the proxy. This name must be unique for all
    #   proxies owned by your Amazon Web Services account in the specified
    #   Amazon Web Services Region.
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
    #   The kinds of databases that the proxy can connect to. This value
    #   determines which database network protocol the proxy recognizes when
    #   it interprets network traffic to and from the database. `MYSQL`
    #   supports Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases.
    #   `POSTGRESQL` supports Aurora PostgreSQL and RDS for PostgreSQL
    #   databases. `SQLSERVER` supports RDS for Microsoft SQL Server
    #   databases.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID of the DB proxy.
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
    #   The endpoint that you can use to connect to the DB proxy. You
    #   include the endpoint value in the connection string for a database
    #   client application.
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
      :vpc_id,
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified proxy name must be unique for all proxies owned by your
    # Amazon Web Services account in the specified Amazon Web Services
    # Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyAlreadyExistsFault AWS API Documentation
    #
    class DBProxyAlreadyExistsFault < Aws::EmptyStructure; end

    # The data structure representing an endpoint associated with a DB
    # proxy. RDS automatically creates one endpoint for each DB proxy. For
    # Aurora DB clusters, you can associate additional endpoints with the
    # same DB proxy. These endpoints can be read/write or read-only. They
    # can also reside in different VPCs than the associated DB proxy.
    #
    # This data type is used as a response element in the
    # `DescribeDBProxyEndpoints` operation.
    #
    # @!attribute [rw] db_proxy_endpoint_name
    #   The name for the DB proxy endpoint. An identifier must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens; it
    #   can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_endpoint_arn
    #   The Amazon Resource Name (ARN) for the DB proxy endpoint.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_name
    #   The identifier for the DB proxy that is associated with this DB
    #   proxy endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this DB proxy endpoint. A status of
    #   `available` means the endpoint is ready to handle requests. Other
    #   values indicate that you must wait for the endpoint to be ready, or
    #   take some action to resolve an issue.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID of the DB proxy endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Provides a list of VPC security groups that the DB proxy endpoint
    #   belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_subnet_ids
    #   The EC2 subnet IDs for the DB proxy endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint
    #   The endpoint that you can use to connect to the DB proxy. You
    #   include the endpoint value in the connection string for a database
    #   client application.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time when the DB proxy endpoint was first created.
    #   @return [Time]
    #
    # @!attribute [rw] target_role
    #   A value that indicates whether the DB proxy endpoint can be used for
    #   read/write or read-only operations.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   A value that indicates whether this endpoint is the default endpoint
    #   for the associated DB proxy. Default DB proxy endpoints always have
    #   read/write capability. Other endpoints that you associate with the
    #   DB proxy can be either read/write or read-only.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyEndpoint AWS API Documentation
    #
    class DBProxyEndpoint < Struct.new(
      :db_proxy_endpoint_name,
      :db_proxy_endpoint_arn,
      :db_proxy_name,
      :status,
      :vpc_id,
      :vpc_security_group_ids,
      :vpc_subnet_ids,
      :endpoint,
      :created_date,
      :target_role,
      :is_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified DB proxy endpoint name must be unique for all DB proxy
    # endpoints owned by your Amazon Web Services account in the specified
    # Amazon Web Services Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyEndpointAlreadyExistsFault AWS API Documentation
    #
    class DBProxyEndpointAlreadyExistsFault < Aws::EmptyStructure; end

    # The DB proxy endpoint doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyEndpointNotFoundFault AWS API Documentation
    #
    class DBProxyEndpointNotFoundFault < Aws::EmptyStructure; end

    # The DB proxy already has the maximum number of endpoints.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyEndpointQuotaExceededFault AWS API Documentation
    #
    class DBProxyEndpointQuotaExceededFault < Aws::EmptyStructure; end

    # The specified proxy name doesn't correspond to a proxy owned by your
    # Amazon Web Services account in the specified Amazon Web Services
    # Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyNotFoundFault AWS API Documentation
    #
    class DBProxyNotFoundFault < Aws::EmptyStructure; end

    # Your Amazon Web Services account already has the maximum number of
    # proxies in the specified Amazon Web Services Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyQuotaExceededFault AWS API Documentation
    #
    class DBProxyQuotaExceededFault < Aws::EmptyStructure; end

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
    # @!attribute [rw] role
    #   A value that indicates whether the target of the proxy can be used
    #   for read/write or read-only operations.
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
      :role,
      :target_health)
      SENSITIVE = []
      include Aws::Structure
    end

    # The proxy is already associated with the specified RDS DB instance or
    # Aurora DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTargetAlreadyRegisteredFault AWS API Documentation
    #
    class DBProxyTargetAlreadyRegisteredFault < Aws::EmptyStructure; end

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
    #   all target groups owned by your Amazon Web Services account in the
    #   specified Amazon Web Services Region.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified target group isn't available for a proxy owned by your
    # Amazon Web Services account in the specified Amazon Web Services
    # Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBProxyTargetGroupNotFoundFault AWS API Documentation
    #
    class DBProxyTargetGroupNotFoundFault < Aws::EmptyStructure; end

    # The specified RDS DB instance or Aurora DB cluster isn't available
    # for a proxy owned by your Amazon Web Services account in the specified
    # Amazon Web Services Region.
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
    #   Provides the Amazon Web Services ID of the owner of a specific DB
    #   security group.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   Specifies when the snapshot was taken in Coordinated Universal Time
    #   (UTC). Changes for the copy when the snapshot is copied.
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
    #   Specifies the time in Coordinated Universal Time (UTC) when the DB
    #   instance, from which the snapshot was taken, was created.
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
    #   The Amazon Web Services Region that the DB snapshot was created in
    #   or copied from.
    #   @return [String]
    #
    # @!attribute [rw] source_db_snapshot_identifier
    #   The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
    #   copied from. It only has a value in the case of a cross-account or
    #   cross-Region copy.
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
    #   If `Encrypted` is true, the Amazon Web Services KMS key identifier
    #   for the encrypted DB snapshot.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
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
    #   True if mapping of Amazon Web Services Identity and Access
    #   Management (IAM) accounts to database accounts is enabled, and
    #   otherwise false.
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
    #   and which is unique to an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] original_snapshot_create_time
    #   Specifies the time of the CreateDBSnapshot operation in Coordinated
    #   Universal Time (UTC). Doesn't change when the snapshot is copied.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_database_time
    #   The timestamp of the most recent transaction applied to the database
    #   that you're backing up. Thus, if you restore a snapshot,
    #   SnapshotDatabaseTime is the most recent transaction in the restored
    #   DB instance. In contrast, originalSnapshotCreateTime specifies the
    #   system time that the snapshot completed.
    #
    #   If you back up a read replica, you can determine the replica lag by
    #   comparing SnapshotDatabaseTime with originalSnapshotCreateTime. For
    #   example, if originalSnapshotCreateTime is two hours later than
    #   SnapshotDatabaseTime, then the replica lag is two hours.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_target
    #   Specifies where manual snapshots are stored: Amazon Web Services
    #   Outposts or the Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   Specifies the storage throughput for the DB snapshot.
    #   @return [Integer]
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
      :dbi_resource_id,
      :tag_list,
      :original_snapshot_create_time,
      :snapshot_database_time,
      :snapshot_target,
      :storage_throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBSnapshotIdentifier` is already used by an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the name and values of a manual DB snapshot attribute
    #
    # Manual DB snapshot attributes are used to authorize other Amazon Web
    # Services accounts to restore a manual DB snapshot. For more
    # information, see the `ModifyDBSnapshotAttribute` API.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of Amazon Web
    #   Services accounts that have permission to copy or restore the manual
    #   DB cluster snapshot. For more information, see the
    #   `ModifyDBSnapshotAttribute` API action.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The value or values for the manual DB snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the Amazon Web Services accounts that are
    #   authorized to copy or restore the manual DB snapshot. If a value of
    #   `all` is in the list, then the manual DB snapshot is public and
    #   available for any Amazon Web Services account to copy or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSnapshotAttribute AWS API Documentation
    #
    class DBSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful call to the
    # `DescribeDBSnapshotAttributes` API action.
    #
    # Manual DB snapshot attributes are used to authorize other Amazon Web
    # Services accounts to copy or restore a manual DB snapshot. For more
    # information, see the `ModifyDBSnapshotAttribute` API action.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] supported_network_types
    #   The network type of the DB subnet group.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   A `DBSubnetGroup` can support only the IPv4 protocol or the IPv4 and
    #   the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DBSubnetGroup AWS API Documentation
    #
    class DBSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn,
      :supported_network_types)
      SENSITIVE = []
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
      SENSITIVE = []
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

    # @!attribute [rw] blue_green_deployment_identifier
    #   The blue/green deployment identifier of the deployment to be
    #   deleted. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing blue/green deployment identifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] delete_target
    #   A value that indicates whether to delete the resources in the green
    #   environment. You can't specify this option if the blue/green
    #   deployment [status][1] is `SWITCHOVER_COMPLETED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_BlueGreenDeployment.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteBlueGreenDeploymentRequest AWS API Documentation
    #
    class DeleteBlueGreenDeploymentRequest < Struct.new(
      :blue_green_deployment_identifier,
      :delete_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blue_green_deployment
    #   Contains the details about a blue/green deployment.
    #
    #   For more information, see [Using Amazon RDS Blue/Green Deployments
    #   for database updates][1] in the *Amazon RDS User Guide* and [ Using
    #   Amazon RDS Blue/Green Deployments for database updates][2] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
    #   @return [Types::BlueGreenDeployment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteBlueGreenDeploymentResponse AWS API Documentation
    #
    class DeleteBlueGreenDeploymentResponse < Struct.new(
      :blue_green_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The database engine. The only supported engines are
    #   `custom-oracle-ee` and `custom-oracle-ee-cdb`.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The custom engine version (CEV) for your DB instance. This option is
    #   required for RDS Custom, but optional for Amazon RDS. The
    #   combination of `Engine` and `EngineVersion` is unique per customer
    #   per Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteCustomDBEngineVersionMessage AWS API Documentation
    #
    class DeleteCustomDBEngineVersionMessage < Struct.new(
      :engine,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the custom endpoint. This parameter
    #   is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterEndpointMessage AWS API Documentation
    #
    class DeleteDBClusterEndpointMessage < Struct.new(
      :db_cluster_endpoint_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBClusterResult AWS API Documentation
    #
    class DeleteDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter input for the `DeleteDBInstanceAutomatedBackup` operation.
    #
    # @!attribute [rw] dbi_resource_id
    #   The identifier for the source DB instance, which can't be changed
    #   and which is unique to an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_automated_backups_arn
    #   The Amazon Resource Name (ARN) of the automated backups to delete,
    #   for example,
    #   `arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE`.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceAutomatedBackupMessage AWS API Documentation
    #
    class DeleteDBInstanceAutomatedBackupMessage < Struct.new(
      :dbi_resource_id,
      :db_instance_automated_backups_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_automated_backup
    #   An automated backup of a DB instance. It consists of system backups,
    #   transaction logs, and the database instance properties that existed
    #   at the time you deleted the source instance.
    #   @return [Types::DBInstanceAutomatedBackup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceAutomatedBackupResult AWS API Documentation
    #
    class DeleteDBInstanceAutomatedBackupResult < Struct.new(
      :db_instance_automated_backup)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   snapshot before deleting the instance. If you enable this parameter,
    #   RDS doesn't create a DB snapshot. If you don't enable this
    #   parameter, RDS creates a DB snapshot before the DB instance is
    #   deleted. By default, skip isn't enabled, and the DB snapshot is
    #   created.
    #
    #   <note markdown="1"> If you don't enable this parameter, you must specify the
    #   `FinalDBSnapshotIdentifier` parameter.
    #
    #    </note>
    #
    #   When a DB instance is in a failure state and has a status of
    #   `failed`, `incompatible-restore`, or `incompatible-network`, RDS can
    #   delete the instance only if you enable this parameter.
    #
    #   If you delete a read replica or an RDS Custom instance, you must
    #   enable this setting.
    #
    #   This setting is required for RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The `DBSnapshotIdentifier` of the new `DBSnapshot` created when the
    #   `SkipFinalSnapshot` parameter is disabled.
    #
    #   <note markdown="1"> If you enable this parameter and also enable SkipFinalShapshot, the
    #   command results in an error.
    #
    #    </note>
    #
    #   This setting doesn't apply to RDS Custom.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBInstanceResult AWS API Documentation
    #
    class DeleteDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_endpoint_name
    #   The name of the DB proxy endpoint to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBProxyEndpointRequest AWS API Documentation
    #
    class DeleteDBProxyEndpointRequest < Struct.new(
      :db_proxy_endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_endpoint
    #   The data structure representing the details of the DB proxy endpoint
    #   that you delete.
    #   @return [Types::DBProxyEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBProxyEndpointResponse AWS API Documentation
    #
    class DeleteDBProxyEndpointResponse < Struct.new(
      :db_proxy_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_name
    #   The name of the DB proxy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBProxyRequest AWS API Documentation
    #
    class DeleteDBProxyRequest < Struct.new(
      :db_proxy_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name of the database subnet group to delete.
    #
    #   <note markdown="1"> You can't delete the default subnet group.
    #
    #    </note>
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteDBSubnetGroupMessage AWS API Documentation
    #
    class DeleteDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the RDS event notification subscription you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteEventSubscriptionMessage AWS API Documentation
    #
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier of the global database cluster being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DeleteGlobalClusterMessage AWS API Documentation
    #
    class DeleteGlobalClusterMessage < Struct.new(
      :global_cluster_identifier)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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

    # @!attribute [rw] blue_green_deployment_identifier
    #   The blue/green deployment identifier. If this parameter is
    #   specified, information from only the specific blue/green deployment
    #   is returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing blue/green deployment
    #     identifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more blue/green deployments to
    #   describe.
    #
    #   Supported filters:
    #
    #   * `blue-green-deployment-identifier` - Accepts system-generated
    #     identifiers for blue/green deployments. The results list only
    #     includes information about the blue/green deployments with the
    #     specified identifiers.
    #
    #   * `blue-green-deployment-name` - Accepts user-supplied names for
    #     blue/green deployments. The results list only includes information
    #     about the blue/green deployments with the specified names.
    #
    #   * `source` - Accepts source databases for a blue/green deployment.
    #     The results list only includes information about the blue/green
    #     deployments with the specified source databases.
    #
    #   * `target` - Accepts target databases for a blue/green deployment.
    #     The results list only includes information about the blue/green
    #     deployments with the specified target databases.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeBlueGreenDeployments` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeBlueGreenDeploymentsRequest AWS API Documentation
    #
    class DescribeBlueGreenDeploymentsRequest < Struct.new(
      :blue_green_deployment_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blue_green_deployments
    #   Contains a list of blue/green deployments for the user.
    #   @return [Array<Types::BlueGreenDeployment>]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later
    #   DescribeBlueGreenDeployments request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeBlueGreenDeploymentsResponse AWS API Documentation
    #
    class DescribeBlueGreenDeploymentsResponse < Struct.new(
      :blue_green_deployments,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #     more information about UUIDs, see [Universally unique
    #     identifier][1].
    #
    #   ^
    #
    #   Example: `123e4567-e89b-12d3-a456-426655440000`
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Universally_unique_identifier
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   `inactive`, `modifying`.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to describe the
    #   attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   `DescribeDBClusterSnapshotAttributes` API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   Amazon Web Services accounts to copy or restore a manual DB cluster
    #   snapshot. For more information, see the
    #   `ModifyDBClusterSnapshotAttribute` API action.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #     automatically taken by Amazon RDS for my Amazon Web Services
    #     account.
    #
    #   * `manual` - Return all DB cluster snapshots that have been taken by
    #     my Amazon Web Services account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to my Amazon Web Services account.
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
    #   snapshots from other Amazon Web Services accounts that this Amazon
    #   Web Services account has been given permission to copy or restore.
    #   By default, these snapshots are not included.
    #
    #   You can give an Amazon Web Services account permission to restore a
    #   manual DB cluster snapshot from another Amazon Web Services account
    #   by the `ModifyDBClusterSnapshotAttribute` API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   A value that indicates whether to include manual DB cluster
    #   snapshots that are public and can be copied or restored by any
    #   Amazon Web Services account. By default, the public snapshots are
    #   not included.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The user-supplied DB cluster identifier or the Amazon Resource Name
    #   (ARN) of the DB cluster. If this parameter is specified, information
    #   for only the specific DB cluster is returned. This parameter isn't
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DB cluster identifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported Filters:
    #
    #   * `clone-group-id` - Accepts clone group identifiers. The results
    #     list only includes information about the DB clusters associated
    #     with these clone groups.
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB clusters identified by these ARNs.
    #
    #   * `db-cluster-resource-id` - Accepts DB cluster resource
    #     identifiers. The results list will only include information about
    #     the DB clusters identified by these DB cluster resource
    #     identifiers.
    #
    #   * `domain` - Accepts Active Directory directory IDs. The results
    #     list only includes information about the DB clusters associated
    #     with these domains.
    #
    #   * `engine` - Accepts engine names. The results list only includes
    #     information about the DB clusters for these engines.
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
    #   Specifies whether the output includes information about clusters
    #   shared from other Amazon Web Services accounts.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The database engine to return.
    #
    #   Valid Values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `custom-oracle-ee`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
    #   A filter that specifies one or more DB engine versions to describe.
    #
    #   Supported filters:
    #
    #   * `db-parameter-group-family` - Accepts parameter groups family
    #     names. The results list only includes information about the DB
    #     engine versions for these parameter group families.
    #
    #   * `engine` - Accepts engine names. The results list only includes
    #     information about the DB engine versions for these engines.
    #
    #   * `engine-mode` - Accepts DB engine modes. The results list only
    #     includes information about the DB engine versions for these engine
    #     modes. Valid DB engine modes are the following:
    #
    #     * `global`
    #
    #     * `multimaster`
    #
    #     * `parallelquery`
    #
    #     * `provisioned`
    #
    #     * `serverless`
    #
    #   * `engine-version` - Accepts engine versions. The results list only
    #     includes information about the DB engine versions for these engine
    #     versions.
    #
    #   * `status` - Accepts engine version statuses. The results list only
    #     includes information about the DB engine versions for these
    #     statuses. Valid statuses are the following:
    #
    #     * `available`
    #
    #     * `deprecated`
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
    #
    #   For RDS Custom, the default is not to list supported character sets.
    #   If you set `ListSupportedCharacterSets` to `true`, RDS Custom
    #   returns no results.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_timezones
    #   A value that indicates whether to list the supported time zones for
    #   each engine version.
    #
    #   If this parameter is enabled and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #
    #   For RDS Custom, the default is not to list supported time zones. If
    #   you set `ListSupportedTimezones` to `true`, RDS Custom returns no
    #   results.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter input for DescribeDBInstanceAutomatedBackups.
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
    #     * `retained` - automated backups for deleted instances and after
    #       backup replication is stopped
    #
    #     * `creating` - automated backups that are waiting for the first
    #       automated snapshot to be available
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and Amazon
    #     Resource Names (ARNs). The results list includes only information
    #     about the DB instance automated backups identified by these ARNs.
    #
    #   * `dbi-resource-id` - Accepts DB resource identifiers and Amazon
    #     Resource Names (ARNs). The results list includes only information
    #     about the DB instance resources identified by these ARNs.
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
    # @!attribute [rw] db_instance_automated_backups_arn
    #   The Amazon Resource Name (ARN) of the replicated automated backups,
    #   for example,
    #   `arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE`.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBInstanceAutomatedBackupsMessage AWS API Documentation
    #
    class DescribeDBInstanceAutomatedBackupsMessage < Struct.new(
      :dbi_resource_id,
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker,
      :db_instance_automated_backups_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The user-supplied instance identifier or the Amazon Resource Name
    #   (ARN) of the DB instance. If this parameter is specified,
    #   information from only the specific DB instance is returned. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported Filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB instances associated with the DB clusters
    #     identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB instances identified by these ARNs.
    #
    #   * `dbi-resource-id` - Accepts DB instance resource identifiers. The
    #     results list only includes information about the DB instances
    #     identified by these DB instance resource identifiers.
    #
    #   * `domain` - Accepts Active Directory directory IDs. The results
    #     list only includes information about the DB instances associated
    #     with these domains.
    #
    #   * `engine` - Accepts engine names. The results list only includes
    #     information about the DB instances for these engines.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from a call to `DescribeDBLogFiles`.
    #
    # @!attribute [rw] describe_db_log_files
    #   The DB log files returned.
    #   @return [Array<Types::DescribeDBLogFilesDetails>]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a later `DescribeDBLogFiles`
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBLogFilesResponse AWS API Documentation
    #
    class DescribeDBLogFilesResponse < Struct.new(
      :describe_db_log_files,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_name
    #   The name of the DB proxy. If you omit this parameter, the output
    #   includes information about all DB proxies owned by your Amazon Web
    #   Services account ID.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_name
    #   The name of the DB proxy whose endpoints you want to describe. If
    #   you omit this parameter, the output includes information about all
    #   DB proxy endpoints associated with all your DB proxies.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_endpoint_name
    #   The name of a DB proxy endpoint to describe. If you omit this
    #   parameter, the output includes information about all DB proxy
    #   endpoints associated with the specified proxy.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxyEndpointsRequest AWS API Documentation
    #
    class DescribeDBProxyEndpointsRequest < Struct.new(
      :db_proxy_name,
      :db_proxy_endpoint_name,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_endpoints
    #   The list of `ProxyEndpoint` objects returned by the API operation.
    #   @return [Array<Types::DBProxyEndpoint>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBProxyEndpointsResponse AWS API Documentation
    #
    class DescribeDBProxyEndpointsResponse < Struct.new(
      :db_proxy_endpoints,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot_identifier
    #   The identifier for the DB snapshot to describe the attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBSnapshotAttributesMessage < Struct.new(
      :db_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   `DescribeDBSnapshotAttributes` API action.
    #
    #   Manual DB snapshot attributes are used to authorize other Amazon Web
    #   Services accounts to copy or restore a manual DB snapshot. For more
    #   information, see the `ModifyDBSnapshotAttribute` API action.
    #   @return [Types::DBSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeDBSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBSnapshotAttributesResult < Struct.new(
      :db_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The ID of the DB instance to retrieve the list of DB snapshots for.
    #   This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This value is stored
    #   as a lowercase string.
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
    #     taken by Amazon RDS for my Amazon Web Services account.
    #
    #   * `manual` - Return all DB snapshots that have been taken by my
    #     Amazon Web Services account.
    #
    #   * `shared` - Return all manual DB snapshots that have been shared to
    #     my Amazon Web Services account.
    #
    #   * `public` - Return all DB snapshots that have been marked as
    #     public.
    #
    #   * `awsbackup` - Return the DB snapshots managed by the Amazon Web
    #     Services Backup service.
    #
    #     For information about Amazon Web Services Backup, see the [
    #     *Amazon Web Services Backup Developer Guide.* ][1]
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
    #   snapshots from other Amazon Web Services accounts that this Amazon
    #   Web Services account has been given permission to copy or restore.
    #   By default, these snapshots are not included.
    #
    #   You can give an Amazon Web Services account permission to restore a
    #   manual DB snapshot from another Amazon Web Services account by using
    #   the `ModifyDBSnapshotAttribute` API action.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   A value that indicates whether to include manual DB cluster
    #   snapshots that are public and can be copied or restored by any
    #   Amazon Web Services account. By default, the public snapshots are
    #   not included.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    #
    #   This setting doesn't apply to RDS Custom.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family.
    #
    #   Valid Values:
    #
    #   * `aurora-mysql5.7`
    #
    #   * `aurora-mysql8.0`
    #
    #   * `aurora-postgresql10`
    #
    #   * `aurora-postgresql11`
    #
    #   * `aurora-postgresql12`
    #
    #   * `aurora-postgresql13`
    #
    #   * `aurora-postgresql14`
    #
    #   * `custom-oracle-ee-19`
    #
    #   * `mariadb10.2`
    #
    #   * `mariadb10.3`
    #
    #   * `mariadb10.4`
    #
    #   * `mariadb10.5`
    #
    #   * `mariadb10.6`
    #
    #   * `mysql5.7`
    #
    #   * `mysql8.0`
    #
    #   * `oracle-ee-19`
    #
    #   * `oracle-ee-cdb-19`
    #
    #   * `oracle-ee-cdb-21`
    #
    #   * `oracle-se2-19`
    #
    #   * `oracle-se2-cdb-19`
    #
    #   * `oracle-se2-cdb-21`
    #
    #   * `postgres10`
    #
    #   * `postgres11`
    #
    #   * `postgres12`
    #
    #   * `postgres13`
    #
    #   * `postgres14`
    #
    #   * `sqlserver-ee-11.0`
    #
    #   * `sqlserver-ee-12.0`
    #
    #   * `sqlserver-ee-13.0`
    #
    #   * `sqlserver-ee-14.0`
    #
    #   * `sqlserver-ee-15.0`
    #
    #   * `sqlserver-ex-11.0`
    #
    #   * `sqlserver-ex-12.0`
    #
    #   * `sqlserver-ex-13.0`
    #
    #   * `sqlserver-ex-14.0`
    #
    #   * `sqlserver-ex-15.0`
    #
    #   * `sqlserver-se-11.0`
    #
    #   * `sqlserver-se-12.0`
    #
    #   * `sqlserver-se-13.0`
    #
    #   * `sqlserver-se-14.0`
    #
    #   * `sqlserver-se-15.0`
    #
    #   * `sqlserver-web-11.0`
    #
    #   * `sqlserver-web-12.0`
    #
    #   * `sqlserver-web-13.0`
    #
    #   * `sqlserver-web-14.0`
    #
    #   * `sqlserver-web-15.0`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   The type of source that is generating the events. For RDS Proxy
    #   events, specify `db-proxy`.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group`
    #   \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot` \|
    #   `db-proxy`
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If `SourceIdentifier` is supplied, `SourceType` must also be
    #     provided.
    #
    #   * If the source type is a DB instance, a `DBInstanceIdentifier`
    #     value must be supplied.
    #
    #   * If the source type is a DB cluster, a `DBClusterIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` value must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier`
    #     value must be supplied.
    #
    #   * If the source type is a DB cluster snapshot, a
    #     `DBClusterSnapshotIdentifier` value must be supplied.
    #
    #   * If the source type is an RDS Proxy, a `DBProxyName` value must be
    #     supplied.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_task_identifier
    #   The identifier of the snapshot or cluster export task to be
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the snapshot or cluster exported
    #   to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters specify one or more snapshot or cluster exports to describe.
    #   The filters are specified as name-value pairs that define what to
    #   include in the output. Filter names and values are case-sensitive.
    #
    #   Supported filters include the following:
    #
    #   * `export-task-identifier` - An identifier for the snapshot or
    #     cluster export task.
    #
    #   * `s3-bucket` - The Amazon S3 bucket the data is exported to.
    #
    #   * `source-arn` - The Amazon Resource Name (ARN) of the snapshot or
    #     cluster exported to Amazon S3.
    #
    #   * `status` - The status of the export task. Must be lowercase. Valid
    #     statuses are the following:
    #
    #     * `canceled`
    #
    #     * `canceling`
    #
    #     * `complete`
    #
    #     * `failed`
    #
    #     * `in_progress`
    #
    #     * `starting`
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
    # @!attribute [rw] source_type
    #   The type of source for the export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeExportTasksMessage AWS API Documentation
    #
    class DescribeExportTasksMessage < Struct.new(
      :export_task_identifier,
      :source_arn,
      :filters,
      :marker,
      :max_records,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_name
    #   A required parameter. Options available for the given engine name
    #   are described.
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The name of the engine to retrieve DB instance options for.
    #
    #   Valid Values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `custom-oracle-ee`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
    #
    #   RDS Custom supports only the BYOL licensing model.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_group
    #   The Availability Zone group associated with a Local Zone. Specify
    #   this parameter to retrieve available offerings for the Local Zones
    #   in the group.
    #
    #   Omit this parameter to show the available offerings in the specified
    #   Amazon Web Services Region.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   A value that indicates whether to show only VPC or non-VPC
    #   offerings. RDS Custom supports only VPC offerings.
    #
    #   RDS Custom supports only VPC offerings. If you describe non-VPC
    #   offerings for RDS Custom, the output shows VPC offerings.
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
    #   Constraints: Minimum 20, maximum 10000.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #     Amazon Resource Names (ARNs). The results list only includes
    #     pending maintenance actions for the DB clusters identified by
    #     these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list only includes pending maintenance actions
    #     for the DB instances identified by these ARNs.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   <note markdown="1"> Amazon Web Services Support might request the lease ID for an issue
    #   related to a reserved DB instance.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] region_name
    #   The source Amazon Web Services Region name. For example,
    #   `us-east-1`.
    #
    #   Constraints:
    #
    #   * Must specify a valid Amazon Web Services Region name.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The customer identifier or the ARN of your DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DescribeValidDBInstanceModificationsMessage AWS API Documentation
    #
    class DescribeValidDBInstanceModificationsMessage < Struct.new(
      :db_instance_identifier)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   instance or cluster. Values include `joined`, `pending-join`,
    #   `failed`, and so on.
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   The fully qualified domain name (FQDN) of the Active Directory
    #   Domain.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_name
    #   The name of the IAM role used when making API calls to the Directory
    #   Service.
    #   @return [String]
    #
    # @!attribute [rw] ou
    #   The Active Directory organizational unit for the DB instance or
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user that's a member of the domain.
    #   @return [String]
    #
    # @!attribute [rw] dns_ips
    #   The IPv4 DNS IP addresses of the primary and secondary Active
    #   Directory domain controllers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/DomainMembership AWS API Documentation
    #
    class DomainMembership < Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name,
      :ou,
      :auth_secret_arn,
      :dns_ips)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   `DownloadDBLogFilePortion` request.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   Specifies the Amazon Web Services ID of the owner of the EC2
    #   security group specified in the `EC2SecurityGroupName` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EC2SecurityGroup AWS API Documentation
    #
    class EC2SecurityGroup < Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AMI configuration prerequisite has not been met.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Ec2ImagePropertiesNotSupportedFault AWS API Documentation
    #
    class Ec2ImagePropertiesNotSupportedFault < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element in the
    # [DescribeEvents][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeEvents.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful invocation of the
    # [DescribeEventCategories][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeEventCategories.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Data returned from the `DescribeEventCategories` operation.
    #
    # @!attribute [rw] event_categories_map_list
    #   A list of `EventCategoriesMap` data types.
    #   @return [Array<Types::EventCategoriesMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/EventCategoriesMessage AWS API Documentation
    #
    class EventCategoriesMessage < Struct.new(
      :event_categories_map_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful invocation of the
    # `DescribeEventSubscriptions` action.
    #
    # @!attribute [rw] customer_aws_id
    #   The Amazon Web Services customer account associated with the RDS
    #   event notification subscription.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the `DescribeEvents`
    # action.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous Events request.
    #   If this parameter is specified, the response includes only records
    #   beyond the marker, up to the value specified by `MaxRecords`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a snapshot or cluster export to Amazon S3.
    #
    # This data type is used as a response element in the
    # `DescribeExportTasks` action.
    #
    # @!attribute [rw] export_task_identifier
    #   A unique identifier for the snapshot or cluster export task. This ID
    #   isn't an identifier for the Amazon S3 bucket where the data is
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the snapshot or cluster exported
    #   to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] export_only
    #   The data exported from the snapshot or cluster. Valid values are the
    #   following:
    #
    #   * `database` - Export all the data from a specified database.
    #
    #   * `database.table` *table-name* - Export a table of the snapshot or
    #     cluster. This format is valid only for RDS for MySQL, RDS for
    #     MariaDB, and Aurora MySQL.
    #
    #   * `database.schema` *schema-name* - Export a database schema of the
    #     snapshot or cluster. This format is valid only for RDS for
    #     PostgreSQL and Aurora PostgreSQL.
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
    #   The time that the snapshot or cluster export task started.
    #   @return [Time]
    #
    # @!attribute [rw] task_end_time
    #   The time that the snapshot or cluster export task ended.
    #   @return [Time]
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket that the snapshot or cluster is exported to.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The Amazon S3 bucket prefix that is the file name and path of the
    #   exported data.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The name of the IAM role that is used to write to Amazon S3 when
    #   exporting a snapshot or cluster.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The key identifier of the Amazon Web Services KMS key that is used
    #   to encrypt the data when it's exported to Amazon S3. The KMS key
    #   identifier is its key ARN, key ID, alias ARN, or alias name. The IAM
    #   role used for the export must have encryption and decryption
    #   permissions to use this KMS key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The progress status of the export task. The status can be one of the
    #   following:
    #
    #   * `CANCELED`
    #
    #   * `CANCELING`
    #
    #   * `COMPLETE`
    #
    #   * `FAILED`
    #
    #   * `IN_PROGRESS`
    #
    #   * `STARTING`
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   The progress of the snapshot or cluster export task as a percentage.
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
    #   A warning about the snapshot or cluster export task.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source for the export.
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
      :warning_message,
      :source_type)
      SENSITIVE = []
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
    #   Information about an export of a snapshot or cluster to Amazon S3.
    #   @return [Array<Types::ExportTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ExportTasksMessage AWS API Documentation
    #
    class ExportTasksMessage < Struct.new(
      :marker,
      :export_tasks)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The name of the DB instance to promote to the primary DB instance.
    #
    #   Specify the DB instance identifier for an Aurora Replica or a
    #   Multi-AZ readable standby in the DB cluster, for example
    #   `mydbcluster-replica1`.
    #
    #   This setting isn't supported for RDS for MySQL Multi-AZ DB
    #   clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverDBClusterMessage AWS API Documentation
    #
    class FailoverDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverDBClusterResult AWS API Documentation
    #
    class FailoverDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   Identifier of the Aurora global database (GlobalCluster) that should
    #   be failed over. The identifier is the unique key assigned by the
    #   user when the Aurora global database was created. In other words,
    #   it's the name of the Aurora global database that you want to fail
    #   over.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing GlobalCluster (Aurora
    #     global database).
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_identifier
    #   Identifier of the secondary Aurora DB cluster that you want to
    #   promote to primary for the Aurora global database (GlobalCluster.)
    #   Use the Amazon Resource Name (ARN) for the identifier so that Aurora
    #   can locate the cluster in its Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverGlobalClusterMessage AWS API Documentation
    #
    class FailoverGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :target_db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   A data type representing an Aurora global database.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverGlobalClusterResult AWS API Documentation
    #
    class FailoverGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the state of scheduled or in-process failover operations on
    # an Aurora global database (GlobalCluster). This Data type is empty
    # unless a failover operation is scheduled or is currently underway on
    # the Aurora global database.
    #
    # @!attribute [rw] status
    #   The current status of the Aurora global database (GlobalCluster).
    #   Possible values are as follows:
    #
    #   * pending – A request to fail over the Aurora global database
    #     (GlobalCluster) has been received by the service. The
    #     `GlobalCluster`'s primary DB cluster and the specified secondary
    #     DB cluster are being verified before the failover process can
    #     start.
    #
    #   * failing-over – This status covers the range of Aurora internal
    #     operations that take place during the failover process, such as
    #     demoting the primary Aurora DB cluster, promoting the secondary
    #     Aurora DB, and synchronizing replicas.
    #
    #   * cancelling – The request to fail over the Aurora global database
    #     (GlobalCluster) was cancelled and the primary Aurora DB cluster
    #     and the selected secondary Aurora DB cluster are returning to
    #     their previous states.
    #   @return [String]
    #
    # @!attribute [rw] from_db_cluster_arn
    #   The Amazon Resource Name (ARN) of the Aurora DB cluster that is
    #   currently being demoted, and which is associated with this state.
    #   @return [String]
    #
    # @!attribute [rw] to_db_cluster_arn
    #   The Amazon Resource Name (ARN) of the Aurora DB cluster that is
    #   currently being promoted, and which is associated with this state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/FailoverState AWS API Documentation
    #
    class FailoverState < Struct.new(
      :status,
      :from_db_cluster_arn,
      :to_db_cluster_arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The Amazon Web Services Region-unique, immutable identifier for the
    #   global database cluster. This identifier is found in Amazon Web
    #   Services CloudTrail log entries whenever the Amazon Web Services KMS
    #   key for the DB cluster is accessed.
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
    #   The list of primary and secondary clusters within the global
    #   database cluster.
    #   @return [Array<Types::GlobalClusterMember>]
    #
    # @!attribute [rw] failover_state
    #   A data object containing all properties for the current state of an
    #   in-process or pending failover process for this Aurora global
    #   database. This object is empty unless the FailoverGlobalCluster API
    #   operation has been called on this Aurora global database
    #   (GlobalCluster).
    #   @return [Types::FailoverState]
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
      :global_cluster_members,
      :failover_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `GlobalClusterIdentifier` already exists. Choose a new global
    # database identifier (unique name) to create a new global database
    # cluster.
    #
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
    # @!attribute [rw] global_write_forwarding_status
    #   Specifies whether a secondary cluster in an Aurora global database
    #   has write forwarding enabled, not enabled, or is in the process of
    #   enabling it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClusterMember AWS API Documentation
    #
    class GlobalClusterMember < Struct.new(
      :db_cluster_arn,
      :readers,
      :is_writer,
      :global_write_forwarding_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `GlobalClusterIdentifier` doesn't refer to an existing global
    # database cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/GlobalClusterNotFoundFault AWS API Documentation
    #
    class GlobalClusterNotFoundFault < Aws::EmptyStructure; end

    # The number of global database clusters for this account is already at
    # the maximum allowed.
    #
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
      SENSITIVE = []
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
      SENSITIVE = []
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

    # The request would result in the user exceeding the allowed number of
    # DB instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InstanceQuotaExceededFault AWS API Documentation
    #
    class InstanceQuotaExceededFault < Aws::EmptyStructure; end

    # The requested operation can't be performed because there aren't
    # enough available IP addresses in the proxy's subnets. Add more CIDR
    # blocks to the VPC or remove IP address that aren't required from the
    # subnets.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InsufficientAvailableIPsInSubnetFault AWS API Documentation
    #
    class InsufficientAvailableIPsInSubnetFault < Aws::EmptyStructure; end

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

    # The blue/green deployment can't be switched over or deleted because
    # there is an invalid configuration in the green environment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidBlueGreenDeploymentStateFault AWS API Documentation
    #
    class InvalidBlueGreenDeploymentStateFault < Aws::EmptyStructure; end

    # You can't delete the CEV.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidCustomDBEngineVersionStateFault AWS API Documentation
    #
    class InvalidCustomDBEngineVersionStateFault < Aws::EmptyStructure; end

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

    # You can't perform this operation while the DB proxy endpoint is in a
    # particular state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/InvalidDBProxyEndpointStateFault AWS API Documentation
    #
    class InvalidDBProxyEndpointStateFault < Aws::EmptyStructure; end

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

    # The global cluster is in an invalid state and can't perform the
    # requested operation.
    #
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

    # An error occurred accessing an Amazon Web Services KMS key.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/KMSKeyNotAccessibleFault AWS API Documentation
    #
    class KMSKeyNotAccessibleFault < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the secret managed by RDS in Amazon Web Services Secrets
    # Manager for the master user password.
    #
    # For more information, see [Password management with Amazon Web
    # Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    # [Password management with Amazon Web Services Secrets Manager][2] in
    # the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret.
    #   @return [String]
    #
    # @!attribute [rw] secret_status
    #   The status of the secret.
    #
    #   The possible status values include the following:
    #
    #   * `creating` - The secret is being created.
    #
    #   * `active` - The secret is available for normal use and rotation.
    #
    #   * `rotating` - The secret is being rotated.
    #
    #   * `impaired` - The secret can be used to access database
    #     credentials, but it can't be rotated. A secret might have this
    #     status if, for example, permissions are changed so that RDS can no
    #     longer access either the secret or the KMS key for the secret.
    #
    #     When a secret has this status, you can correct the condition that
    #     caused the status. Alternatively, modify the DB instance to turn
    #     off automatic management of database credentials, and then modify
    #     the DB instance again to turn on automatic management of database
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier that is used to encrypt
    #   the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/MasterUserSecret AWS API Documentation
    #
    class MasterUserSecret < Struct.new(
      :secret_arn,
      :secret_status,
      :kms_key_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the RDS for Oracle or Microsoft
    #   SQL Server DB instance. For example,
    #   `arn:aws:rds:us-east-1:12345667890:instance:my-orcl-db`.
    #   @return [String]
    #
    # @!attribute [rw] audit_policy_state
    #   The audit policy state. When a policy is unlocked, it is read/write.
    #   When it is locked, it is read-only. You can edit your audit policy
    #   only when the activity stream is unlocked or stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyActivityStreamRequest AWS API Documentation
    #
    class ModifyActivityStreamRequest < Struct.new(
      :resource_arn,
      :audit_policy_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   messages in the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_name
    #   The name of the Amazon Kinesis data stream to be used for the
    #   database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the modification to the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] engine_native_audit_fields_included
    #   Indicates whether engine-native audit fields are included in the
    #   database activity stream.
    #   @return [Boolean]
    #
    # @!attribute [rw] policy_status
    #   The status of the modification to the policy state of the database
    #   activity stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyActivityStreamResponse AWS API Documentation
    #
    class ModifyActivityStreamResponse < Struct.new(
      :kms_key_id,
      :kinesis_stream_name,
      :status,
      :mode,
      :engine_native_audit_fields_included,
      :policy_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_identifier
    #   The new default certificate identifier to override the current one
    #   with.
    #
    #   To determine the valid values, use the `describe-certificates` CLI
    #   command or the `DescribeCertificates` API operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   A CA certificate for an Amazon Web Services account.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to
    #   a DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS
    #   to encrypt a connection to a DB cluster][2] in the *Amazon Aurora
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    #   @return [Types::Certificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyCertificatesResult AWS API Documentation
    #
    class ModifyCertificatesResult < Struct.new(
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   When you change the capacity of a paused Aurora Serverless v1 DB
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
    #   The amount of time, in seconds, that Aurora Serverless v1 tries to
    #   find a scaling point to perform seamless scaling before enforcing
    #   the timeout action. The default is 300.
    #
    #   Specify a value between 10 and 600 seconds.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The DB engine. The only supported values are `custom-oracle-ee` and
    #   `custom-oracle-ee-cdb`.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The custom engine version (CEV) that you want to modify. This option
    #   is required for RDS Custom for Oracle, but optional for Amazon RDS.
    #   The combination of `Engine` and `EngineVersion` is unique per
    #   customer per Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of your CEV.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The availability status to be assigned to the CEV. Valid values are
    #   as follows:
    #
    #   available
    #
    #   : You can use this CEV to create a new RDS Custom DB instance.
    #
    #   inactive
    #
    #   : You can create a new RDS Custom instance by restoring a DB
    #     snapshot with this CEV. You can't patch or create new instances
    #     with this CEV.
    #
    #   You can change any status to any status. A typical reason to change
    #   status is to prevent the accidental use of a CEV, or to make a
    #   deprecated CEV eligible for use again. For example, you might change
    #   the status of your CEV from `available` to `inactive`, and from
    #   `inactive` back to `available`. To change the availability status of
    #   the CEV, it must not currently be in use by an RDS Custom instance,
    #   snapshot, or automated backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyCustomDBEngineVersionMessage AWS API Documentation
    #
    class ModifyCustomDBEngineVersionMessage < Struct.new(
      :engine,
      :engine_version,
      :description,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter isn't case-sensitive.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   cluster. If this parameter is disabled, changes to the DB cluster
    #   are applied during the next maintenance window.
    #
    #   Most modifications can be applied immediately or during the next
    #   scheduled maintenance window. Some modifications, such as turning on
    #   deletion protection and changing the master password, are applied
    #   immediately—regardless of when you choose to apply them.
    #
    #   By default, this parameter is disabled.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. Specify
    #   a minimum value of `1`.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Default: `1`
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to use for the DB
    #   cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Array<String>]
    #
    # @!attribute [rw] port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Valid Values: `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   The new password for the master database user.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 8 to 41 characters.
    #
    #   * Can contain any printable ASCII character except "/", """, or
    #     "@".
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The option group to associate the DB cluster with.
    #
    #   DB clusters are associated with a default option group that can't
    #   be modified.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region. To view the time
    #   blocks available, see [ Backup window][1] in the *Amazon Aurora User
    #   Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week. To see the time blocks available, see [
    #   Adjusting the Preferred DB Cluster Maintenance Window][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * Days must be one of `Mon | Tue | Wed | Thu | Fri | Sat | Sun`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By
    #   default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to `0`.
    #
    #   Valid for Cluster Type: Aurora MySQL DB clusters only
    #
    #   Default: `0`
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
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The following values are valid for each DB engine:
    #
    #   * Aurora MySQL - `audit | error | general | slowquery`
    #
    #   * Aurora PostgreSQL - `postgresql`
    #
    #   * RDS for MySQL - `error | general | slowquery`
    #
    #   * RDS for PostgreSQL - `postgresql | upgrade`
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [ Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2]
    #   in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless `ApplyImmediately`
    #   is enabled.
    #
    #   If the cluster that you're modifying has one or more read replicas,
    #   all replicas must be running an engine version that's the same or
    #   later than the version you specify.
    #
    #   To list all of the available engine versions for Aurora MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for Aurora PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   Specifies whether major version upgrades are allowed.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Constraints:
    #
    #   * You must allow major version upgrades when specifying a value for
    #     the `EngineVersion` parameter that is a different major version
    #     than the DB cluster's current version.
    #
    #   ^
    #   @return [Boolean]
    #
    # @!attribute [rw] db_instance_parameter_group_name
    #   The name of the DB parameter group to apply to all instances of the
    #   DB cluster.
    #
    #   <note markdown="1"> When you apply a parameter group using the
    #   `DBInstanceParameterGroupName` parameter, the DB cluster isn't
    #   rebooted automatically. Also, parameter changes are applied
    #   immediately rather than during the next maintenance window.
    #
    #    </note>
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Default: The existing name setting
    #
    #   Constraints:
    #
    #   * The DB parameter group must be in the same DB parameter group
    #     family as this DB cluster.
    #
    #   * The `DBInstanceParameterGroupName` parameter is valid in
    #     combination with the `AllowMajorVersionUpgrade` parameter for a
    #     major version upgrade only.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to move the DB cluster to. Specify
    #   `none` to remove the cluster from its current domain. The domain
    #   must be created prior to this operation.
    #
    #   For more information, see [Kerberos Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   The scaling properties of the DB cluster. You can only modify
    #   scaling properties for DB clusters in `serverless` DB engine mode.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the DB cluster has deletion protection enabled.
    #   The database can't be deleted when deletion protection is enabled.
    #   By default, deletion protection isn't enabled.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_http_endpoint
    #   Specifies whether to enable the HTTP endpoint for an Aurora
    #   Serverless v1 DB cluster. By default, the HTTP endpoint is disabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web
    #   service API for running SQL queries on the Aurora Serverless v1 DB
    #   cluster. You can also query your database from inside the RDS
    #   console with the query editor.
    #
    #   For more information, see [Using the Data API for Aurora Serverless
    #   v1][1] in the *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether to copy all tags from the DB cluster to snapshots
    #   of the DB cluster. The default is not to copy them.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_global_write_forwarding
    #   Specifies whether to enable this DB cluster to forward write
    #   operations to the primary cluster of a global cluster (Aurora global
    #   database). By default, write operations are not allowed on Aurora DB
    #   clusters that are secondary clusters in an Aurora global database.
    #
    #   You can set this value only on Aurora DB clusters that are members
    #   of an Aurora global database. With this parameter enabled, a
    #   secondary cluster can forward writes to the current primary cluster,
    #   and the resulting changes are replicated back to this cluster. For
    #   the primary DB cluster of an Aurora global database, this value is
    #   used immediately if the primary is demoted by a global cluster API
    #   operation, but it does nothing until then.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #   @return [Boolean]
    #
    # @!attribute [rw] db_cluster_instance_class
    #   The compute and memory capacity of each DB instance in the Multi-AZ
    #   DB cluster, for example `db.m6gd.xlarge`. Not all DB instance
    #   classes are available in all Amazon Web Services Regions, or for all
    #   database engines.
    #
    #   For the full list of DB instance classes and availability for your
    #   engine, see [ DB Instance Class][1] in the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage in gibibytes (GiB) to allocate to each DB
    #   instance in the Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Aurora DB clusters, see
    #   [Storage configurations for Amazon Aurora DB clusters][1]. For
    #   information on storage types for Multi-AZ DB clusters, see [Settings
    #   for creating Multi-AZ DB clusters][2].
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values:
    #
    #   * Aurora DB clusters - `aurora | aurora-iopt1`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #   Default:
    #
    #   * Aurora DB clusters - `aurora`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#aurora-storage-type
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html#create-multi-az-db-cluster-settings
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Constraints:
    #
    #   * Must be a multiple between .5 and 50 of the storage amount for the
    #     DB cluster.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Specifies whether minor engine upgrades are applied automatically to
    #   the DB cluster during the maintenance window. By default, minor
    #   engine upgrades are applied automatically.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB cluster. To turn off collecting
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, also set `MonitoringInterval`
    #   to a value other than `0`.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that permits RDS to
    #   send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An
    #   example is `arn:aws:iam:123456789012:role/emaccess`. For information
    #   on creating a monitoring role, see [To create an IAM role for Amazon
    #   RDS Enhanced Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than `0`, supply a
    #   `MonitoringRoleArn` value.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #   @return [String]
    #
    # @!attribute [rw] enable_performance_insights
    #   Specifies whether to turn on Performance Insights for the DB
    #   cluster.
    #
    #   For more information, see [ Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you don't specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   Region.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589`
    #     (19 months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #
    #   If you specify a retention period that isn't valid, such as `94`,
    #   Amazon RDS issues an error.
    #   @return [Integer]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB cluster.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   If the DB cluster doesn't manage the master user password with
    #   Amazon Web Services Secrets Manager, you can turn on this
    #   management. In this case, you can't specify `MasterUserPassword`.
    #
    #   If the DB cluster already manages the master user password with
    #   Amazon Web Services Secrets Manager, and you specify that the master
    #   user password is not managed with Amazon Web Services Secrets
    #   Manager, then you must specify `MasterUserPassword`. In this case,
    #   RDS deletes the secret and uses the new password for the master user
    #   specified by `MasterUserPassword`.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] rotate_master_user_password
    #   Specifies whether to rotate the secret managed by Amazon Web
    #   Services Secrets Manager for the master user password.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB cluster. The
    #   secret value contains the updated password.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * You must apply the change immediately when rotating the master
    #     user password.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that
    #   is automatically generated and managed in Amazon Web Services
    #   Secrets Manager.
    #
    #   This setting is valid only if both of the following conditions are
    #   met:
    #
    #   * The DB cluster doesn't manage the master user password in Amazon
    #     Web Services Secrets Manager.
    #
    #     If the DB cluster already manages the master user password in
    #     Amazon Web Services Secrets Manager, you can't change the KMS key
    #     that is used to encrypt the secret.
    #
    #   * You are turning on `ManageMasterUserPassword` to manage the master
    #     user password in Amazon Web Services Secrets Manager.
    #
    #     If you are turning on `ManageMasterUserPassword` and don't
    #     specify `MasterUserSecretKmsKeyId`, then the `aws/secretsmanager`
    #     KMS key is used to encrypt the secret. If the secret is in a
    #     different Amazon Web Services account, then you can't use the
    #     `aws/secretsmanager` KMS key to encrypt the secret, and you must
    #     use a customer managed KMS key.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   <note markdown="1"> The DB engine mode can be modified only from `serverless` to
    #   `provisioned`.
    #
    #    </note>
    #
    #   For more information, see [ CreateDBCluster][1].
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html
    #   @return [String]
    #
    # @!attribute [rw] allow_engine_mode_change
    #   Specifies whether engine mode changes from `serverless` to
    #   `provisioned` are allowed.
    #
    #   Valid for Cluster Type: Aurora Serverless v1 DB clusters only
    #
    #   Constraints:
    #
    #   * You must allow engine mode changes when specifying a different
    #     value for the `EngineMode` parameter from the DB cluster's
    #     current engine mode.
    #
    #   ^
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
      :copy_tags_to_snapshot,
      :enable_global_write_forwarding,
      :db_cluster_instance_class,
      :allocated_storage,
      :storage_type,
      :iops,
      :auto_minor_version_upgrade,
      :monitoring_interval,
      :monitoring_role_arn,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :serverless_v2_scaling_configuration,
      :network_type,
      :manage_master_user_password,
      :rotate_master_user_password,
      :master_user_secret_kms_key_id,
      :engine_mode,
      :allow_engine_mode_change)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters in the DB cluster parameter group to modify.
    #
    #   Valid Values (for the application method): `immediate |
    #   pending-reboot`
    #
    #   <note markdown="1"> You can use the `immediate` value with dynamic parameters only. You
    #   can use the `pending-reboot` value for both dynamic and static
    #   parameters.
    #
    #    When the application method is `immediate`, changes to dynamic
    #   parameters are applied immediately to the DB clusters associated
    #   with the parameter group. When the application method is
    #   `pending-reboot`, changes to dynamic and static parameters are
    #   applied after a reboot without failover to the DB clusters
    #   associated with the parameter group.
    #
    #    </note>
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterParameterGroupMessage AWS API Documentation
    #
    class ModifyDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterResult AWS API Documentation
    #
    class ModifyDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to modify the attributes
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the DB cluster snapshot attribute to modify.
    #
    #   To manage authorization for other Amazon Web Services accounts to
    #   copy or restore a manual DB cluster snapshot, set this value to
    #   `restore`.
    #
    #   <note markdown="1"> To view the list of attributes available to modify, use the
    #   DescribeDBClusterSnapshotAttributes API operation.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of DB cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other Amazon Web Services accounts to copy or restore a
    #   manual DB cluster snapshot, set this list to include one or more
    #   Amazon Web Services account IDs, or `all` to make the manual DB
    #   cluster snapshot restorable by any Amazon Web Services account. Do
    #   not add the `all` value for any manual DB cluster snapshots that
    #   contain private information that you don't want available to all
    #   Amazon Web Services accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of DB cluster snapshot attributes to remove from the
    #   attribute specified by `AttributeName`.
    #
    #   To remove authorization for other Amazon Web Services accounts to
    #   copy or restore a manual DB cluster snapshot, set this list to
    #   include one or more Amazon Web Services account identifiers, or
    #   `all` to remove authorization for any Amazon Web Services account to
    #   copy or restore the DB cluster snapshot. If you specify `all`, an
    #   Amazon Web Services account whose account ID is explicitly added to
    #   the `restore` attribute can still copy or restore a manual DB
    #   cluster snapshot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterSnapshotAttributeMessage AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   `DescribeDBClusterSnapshotAttributes` API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   Amazon Web Services accounts to copy or restore a manual DB cluster
    #   snapshot. For more information, see the
    #   `ModifyDBClusterSnapshotAttribute` API action.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBClusterSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The identifier of DB instance to modify. This value is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The new amount of storage in gibibytes (GiB) to allocate for the DB
    #   instance.
    #
    #   For RDS for MariaDB, RDS for MySQL, RDS for Oracle, and RDS for
    #   PostgreSQL, the value supplied must be at least 10% greater than the
    #   current value. Values that are not at least 10% greater than the
    #   existing value are rounded up so that they are 10% greater than the
    #   current value.
    #
    #   For the valid values for allocated storage for each engine, see
    #   `CreateDBInstance`.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The new compute and memory capacity of the DB instance, for example
    #   `db.m4.large`. Not all DB instance classes are available in all
    #   Amazon Web Services Regions, or for all database engines. For the
    #   full list of DB instance classes, and availability for your engine,
    #   see [DB Instance Class][1] in the *Amazon RDS User Guide* or [Aurora
    #   DB instance classes][2] in the *Amazon Aurora User Guide*. For RDS
    #   Custom, see [DB instance class support for RDS Custom for Oracle][3]
    #   and [ DB instance class support for RDS Custom for SQL Server][4].
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless you specify `ApplyImmediately` in your request.
    #
    #   Default: Uses existing setting
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits.html#custom-reqs-limits.instances
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html#custom-reqs-limits.instancesMS
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC. If your DB
    #   instance isn't in a VPC, you can also use this parameter to move
    #   your DB instance into a VPC. For more information, see [Working with
    #   a DB instance in a VPC][1] in the *Amazon RDS User Guide*.
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   enable `ApplyImmediately`.
    #
    #   This parameter doesn't apply to RDS Custom DB instances.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DB subnet group.
    #
    #   ^
    #
    #   Example: `mydbsubnetgroup`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to authorize on this DB instance.
    #   Changing this setting doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DB security groups.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to associate with this DB
    #   instance. This change is asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (The associated list of EC2 VPC security groups is
    #     managed by the DB cluster. For more information, see
    #     `ModifyDBCluster`.)
    #
    #   * RDS Custom
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VPC security group IDs.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   instance. By default, this parameter is disabled.
    #
    #   If this parameter is disabled, changes to the DB instance are
    #   applied during the next maintenance window. Some parameter changes
    #   can cause an outage and are applied on the next call to
    #   RebootDBInstance, or the next failure reboot. Review the table of
    #   parameters in [Modifying a DB Instance][1] in the *Amazon RDS User
    #   Guide* to see the impact of enabling or disabling `ApplyImmediately`
    #   for each modified parameter and to determine when the changes are
    #   applied.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_password
    #   The new password for the master user.
    #
    #   Changing this parameter doesn't result in an outage and the change
    #   is asynchronously applied as soon as possible. Between the time of
    #   the request and the completion of the request, the
    #   `MasterUserPassword` element exists in the `PendingModifiedValues`
    #   element of the operation response.
    #
    #   <note markdown="1"> Amazon RDS API operations never return the password, so this action
    #   provides a way to regain access to a primary instance user if the
    #   password is lost. This includes restoring privileges that might have
    #   been accidentally revoked.
    #
    #    </note>
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (The password for the master user is managed by the
    #     DB cluster. For more information, see `ModifyDBCluster`.)
    #
    #   * RDS Custom
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    #
    #   * Can include any printable ASCII character except "/", """, or
    #     "@".
    #
    #   Length Constraints:
    #
    #   * RDS for MariaDB - Must contain from 8 to 41 characters.
    #
    #   * RDS for Microsoft SQL Server - Must contain from 8 to 128
    #     characters.
    #
    #   * RDS for MySQL - Must contain from 8 to 41 characters.
    #
    #   * RDS for Oracle - Must contain from 8 to 30 characters.
    #
    #   * RDS for PostgreSQL - Must contain from 8 to 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to apply to the DB instance.
    #
    #   Changing this setting doesn't result in an outage. The parameter
    #   group name itself is changed immediately, but the actual parameter
    #   changes are not applied until you reboot the instance without
    #   failover. In this case, the DB instance isn't rebooted
    #   automatically, and the parameter changes aren't applied during the
    #   next maintenance window. However, if you modify dynamic parameters
    #   in the newly associated DB parameter group, these changes are
    #   applied immediately without a reboot.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be in the same DB parameter group family as the DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days to retain automated backups. Setting this
    #   parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   <note markdown="1"> Enabling and disabling backups can result in a brief I/O suspension
    #   that lasts from a few seconds to a few minutes, depending on the
    #   size and class of your DB instance.
    #
    #    </note>
    #
    #   These changes are applied during the next maintenance window unless
    #   the `ApplyImmediately` parameter is enabled for this request. If you
    #   change the parameter from one non-zero value to another non-zero
    #   value, the change is asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   retention period for automated backups is managed by the DB cluster.
    #   For more information, see `ModifyDBCluster`.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35.
    #
    #   * Can't be set to 0 if the DB instance is a source to read
    #     replicas.
    #
    #   * Can't be set to 0 for an RDS Custom for Oracle DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod` parameter. Changing this parameter doesn't
    #   result in an outage and the change is asynchronously applied as soon
    #   as possible. The default is a 30-minute window selected at random
    #   from an 8-hour block of time for each Amazon Web Services Region.
    #   For more information, see [Backup window][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The daily
    #   time range for creating automated backups is managed by the DB
    #   cluster. For more information, see `ModifyDBCluster`.
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
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur,
    #   which might result in an outage. Changing this parameter doesn't
    #   result in an outage, except in the following situation, and the
    #   change is asynchronously applied as soon as possible. If there are
    #   pending actions that cause a reboot, and the maintenance window is
    #   changed to include the current time, then changing this parameter
    #   causes a reboot of the DB instance. If you change this window to the
    #   current time, there must be at least 30 minutes between the current
    #   time and end of the window to ensure pending changes are applied.
    #
    #   For more information, see [Amazon RDS Maintenance Window][1] in the
    #   *Amazon RDS User Guide.*
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * The day values must be `mon | tue | wed | thu | fri | sat | sun`.
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
    # @!attribute [rw] multi_az
    #   Specifies whether the DB instance is a Multi-AZ deployment. Changing
    #   this parameter doesn't result in an outage. The change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is enabled for this request.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to upgrade to. Changing
    #   this parameter results in an outage and the change is applied during
    #   the next maintenance window unless the `ApplyImmediately` parameter
    #   is enabled for this request.
    #
    #   For major version upgrades, if a nondefault DB parameter group is
    #   currently in use, a new DB parameter group in the DB parameter group
    #   family for the new engine version must be specified. The new DB
    #   parameter group can be the default for that DB parameter group
    #   family.
    #
    #   If you specify only a major version, Amazon RDS updates the DB
    #   instance to the default minor version if the current minor version
    #   is lower. For information about valid engine versions, see
    #   `CreateDBInstance`, or call `DescribeDBEngineVersions`.
    #
    #   If the instance that you're modifying is acting as a read replica,
    #   the engine version that you specify must be the same or higher than
    #   the version that the source DB instance or cluster is running.
    #
    #   In RDS Custom for Oracle, this parameter is supported for read
    #   replicas only if they are in the `PATCH_DB_FAILURE` lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   Specifies whether major version upgrades are allowed. Changing this
    #   parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Constraints:
    #
    #   * Major version upgrades must be allowed when specifying a value for
    #     the `EngineVersion` parameter that's a different major version
    #     than the DB instance's current version.
    #
    #   ^
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Specifies whether minor version upgrades are applied automatically
    #   to the DB instance during the maintenance window. An outage occurs
    #   when all the following conditions are met:
    #
    #   * The automatic upgrade is enabled for the maintenance window.
    #
    #   * A newer minor version is available.
    #
    #   * RDS has enabled automatic patching for the engine version.
    #
    #   If any of the preceding conditions isn't met, Amazon RDS applies
    #   the change as soon as possible and doesn't cause an outage.
    #
    #   For an RDS Custom DB instance, don't enable this setting.
    #   Otherwise, the operation returns an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   The license model for the DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #
    #   Valid Values:
    #
    #   * RDS for MariaDB - `general-public-license`
    #
    #   * RDS for Microsoft SQL Server - `license-included`
    #
    #   * RDS for MySQL - `general-public-license`
    #
    #   * RDS for Oracle - `bring-your-own-license | license-included`
    #
    #   * RDS for PostgreSQL - `postgresql-license`
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
    #   Constraints:
    #
    #   * For RDS for MariaDB, RDS for MySQL, RDS for Oracle, and RDS for
    #     PostgreSQL - The value supplied must be at least 10% greater than
    #     the current value. Values that are not at least 10% greater than
    #     the existing value are rounded up so that they are 10% greater
    #     than the current value.
    #
    #   ^
    #
    #   Default: Uses existing setting
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   The option group to associate the DB instance with.
    #
    #   Changing this parameter doesn't result in an outage, with one
    #   exception. If the parameter change results in an option group that
    #   enables OEM, it can cause a brief period, lasting less than a
    #   second, during which new connections are rejected but existing
    #   connections aren't interrupted.
    #
    #   The change is applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is enabled for this request.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced
    #   Security TDE, can't be removed from an option group, and that
    #   option group can't be removed from a DB instance after it is
    #   associated with a DB instance.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] new_db_instance_identifier
    #   The new identifier for the DB instance when renaming a DB instance.
    #   When you change the DB instance identifier, an instance reboot
    #   occurs immediately if you enable `ApplyImmediately`, or will occur
    #   during the next maintenance window if you disable
    #   `ApplyImmediately`. This value is stored as a lowercase string.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
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
    #   The storage type to associate with the DB instance.
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
    #   Valid Values: `gp2 | gp3 | io1 | standard`
    #
    #   Default: `io1`, if the `Iops` parameter is specified. Otherwise,
    #   `gp2`.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The CA certificate identifier to use for the DB instance6's server
    #   certificate.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to
    #   a DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS
    #   to encrypt a connection to a DB cluster][2] in the *Amazon Aurora
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The Active Directory directory ID to move the DB instance to.
    #   Specify `none` to remove the instance from its current domain. You
    #   must create the domain before this operation. Currently, you can
    #   create only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
    #   instances in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory
    #   domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_ou
    #   The Active Directory organizational unit for your DB instance to
    #   join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    #   @return [String]
    #
    # @!attribute [rw] domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    #   @return [Array<String>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether to copy all tags from the DB instance to snapshots
    #   of the DB instance. By default, tags aren't copied.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Copying
    #   tags to snapshots is managed by the DB cluster. Setting this value
    #   for an Aurora DB instance has no effect on the DB cluster setting.
    #   For more information, see `ModifyDBCluster`.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collection of
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, set `MonitoringInterval` to a
    #   value other than `0`.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] db_port_number
    #   The port number on which the database accepts connections.
    #
    #   The value of the `DBPortNumber` parameter must not match any of the
    #   port values specified for options in the option group for the DB
    #   instance.
    #
    #   If you change the `DBPortNumber` value, your database restarts
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Valid Values: `1150-65535`
    #
    #   Default:
    #
    #   * Amazon Aurora - `3306`
    #
    #   * RDS for MariaDB - `3306`
    #
    #   * RDS for Microsoft SQL Server - `1433`
    #
    #   * RDS for MySQL - `3306`
    #
    #   * RDS for Oracle - `1521`
    #
    #   * RDS for PostgreSQL - `5432`
    #
    #   Constraints:
    #
    #   * For RDS for Microsoft SQL Server, the value can't be `1234`,
    #     `1434`, `3260`, `3343`, `3389`, `47001`, or `49152-49156`.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies whether the DB instance is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
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
    #   creating a monitoring role, see [To create an IAM role for Amazon
    #   RDS Enhanced Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than `0`, supply a
    #   `MonitoringRoleArn` value.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] disable_domain
    #   Specifies whether to remove the DB instance from the Active
    #   Directory domain.
    #   @return [Boolean]
    #
    # @!attribute [rw] promotion_tier
    #   The order of priority in which an Aurora Replica is promoted to the
    #   primary instance after a failure of the existing primary instance.
    #   For more information, see [ Fault Tolerance for an Aurora DB
    #   Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Default: `1`
    #
    #   Valid Values: `0 - 15`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html#Aurora.Managing.FaultTolerance
    #   @return [Integer]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By
    #   default, mapping isn't enabled.
    #
    #   This setting doesn't apply to Amazon Aurora. Mapping Amazon Web
    #   Services IAM accounts to database accounts is managed by the DB
    #   cluster.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   Specifies whether to enable Performance Insights for the DB
    #   instance.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you don't specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   Region.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589`
    #     (19 months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #
    #   If you specify a retention period that isn't valid, such as `94`,
    #   Amazon RDS returns an error.
    #   @return [Integer]
    #
    # @!attribute [rw] cloudwatch_logs_export_configuration
    #   The log types to be enabled for export to CloudWatch Logs for a
    #   specific DB instance.
    #
    #   A change to the `CloudwatchLogsExportConfiguration` parameter is
    #   always applied to the DB instance immediately. Therefore, the
    #   `ApplyImmediately` parameter has no effect.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   Specifies whether the DB instance class of the DB instance uses its
    #   default processor features.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether the DB instance has deletion protection enabled.
    #   The database can't be deleted when deletion protection is enabled.
    #   By default, deletion protection isn't enabled. For more
    #   information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    #   @return [Integer]
    #
    # @!attribute [rw] certificate_rotation_restart
    #   Specifies whether the DB instance is restarted when you rotate your
    #   SSL/TLS certificate.
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
    #     the *Amazon Aurora User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html
    #   @return [Boolean]
    #
    # @!attribute [rw] replica_mode
    #   A value that sets the open mode of a replica database to either
    #   mounted or read-only.
    #
    #   <note markdown="1"> Currently, this parameter is only supported for Oracle DB instances.
    #
    #    </note>
    #
    #   Mounted DB replicas are included in Oracle Enterprise Edition. The
    #   main use case for mounted replicas is cross-Region disaster
    #   recovery. The primary database doesn't use Active Data Guard to
    #   transmit information to the mounted replica. Because it doesn't
    #   accept user connections, a mounted replica can't serve a read-only
    #   workload. For more information, see [Working with Oracle Read
    #   Replicas for Amazon RDS][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    #   @return [String]
    #
    # @!attribute [rw] enable_customer_owned_ip
    #   Specifies whether to enable a customer-owned IP address (CoIP) for
    #   an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in
    #   your Outpost subnets through your on-premises network. For some use
    #   cases, a CoIP can provide lower latency for connections to the DB
    #   instance from outside of its virtual private cloud (VPC) on your
    #   local network.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP
    #   addresses][2] in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_backup_recovery_point_arn
    #   The Amazon Resource Name (ARN) of the recovery point in Amazon Web
    #   Services Backup.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] automation_mode
    #   The automation mode of the RDS Custom DB instance. If `full`, the DB
    #   instance automates monitoring and instance recovery. If `all
    #   paused`, the instance pauses automation for the duration set by
    #   `ResumeFullAutomationModeMinutes`.
    #   @return [String]
    #
    # @!attribute [rw] resume_full_automation_mode_minutes
    #   The number of minutes to pause the automation. When the time period
    #   ends, RDS Custom resumes full automation.
    #
    #   Default: `60`
    #
    #   Constraints:
    #
    #   * Must be at least 60.
    #
    #   * Must be no more than 1,440.
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4
    #   protocol or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   The storage throughput value for the DB instance.
    #
    #   This setting applies only to the `gp3` storage type.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #   @return [Integer]
    #
    # @!attribute [rw] manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   If the DB instance doesn't manage the master user password with
    #   Amazon Web Services Secrets Manager, you can turn on this
    #   management. In this case, you can't specify `MasterUserPassword`.
    #
    #   If the DB instance already manages the master user password with
    #   Amazon Web Services Secrets Manager, and you specify that the master
    #   user password is not managed with Amazon Web Services Secrets
    #   Manager, then you must specify `MasterUserPassword`. In this case,
    #   Amazon RDS deletes the secret and uses the new password for the
    #   master user specified by `MasterUserPassword`.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Can't manage the master user password with Amazon Web Services
    #     Secrets Manager if `MasterUserPassword` is specified.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] rotate_master_user_password
    #   Specifies whether to rotate the secret managed by Amazon Web
    #   Services Secrets Manager for the master user password.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB cluster. The
    #   secret value contains the updated password.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * You must apply the change immediately when rotating the master
    #     user password.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that
    #   is automatically generated and managed in Amazon Web Services
    #   Secrets Manager.
    #
    #   This setting is valid only if both of the following conditions are
    #   met:
    #
    #   * The DB instance doesn't manage the master user password in Amazon
    #     Web Services Secrets Manager.
    #
    #     If the DB instance already manages the master user password in
    #     Amazon Web Services Secrets Manager, you can't change the KMS key
    #     used to encrypt the secret.
    #
    #   * You are turning on `ManageMasterUserPassword` to manage the master
    #     user password in Amazon Web Services Secrets Manager.
    #
    #     If you are turning on `ManageMasterUserPassword` and don't
    #     specify `MasterUserSecretKmsKeyId`, then the `aws/secretsmanager`
    #     KMS key is used to encrypt the secret. If the secret is in a
    #     different Amazon Web Services account, then you can't use the
    #     `aws/secretsmanager` KMS key to encrypt the secret, and you must
    #     use a customer managed KMS key.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The target Oracle DB engine when you convert a non-CDB to a CDB.
    #   This intermediate step is necessary to upgrade an Oracle Database
    #   19c non-CDB to an Oracle Database 21c CDB.
    #
    #   Note the following requirements:
    #
    #   * Make sure that you specify `oracle-ee-cdb` or `oracle-se2-cdb`.
    #
    #   * Make sure that your DB engine runs Oracle Database 19c with an
    #     April 2021 or later RU.
    #
    #   Note the following limitations:
    #
    #   * You can't convert a CDB to a non-CDB.
    #
    #   * You can't convert a replica database.
    #
    #   * You can't convert a non-CDB to a CDB and upgrade the engine
    #     version in the same command.
    #
    #   * You can't convert the existing custom parameter or option group
    #     when it has options or parameters that are permanent or
    #     persistent. In this situation, the DB instance reverts to the
    #     default option and parameter group. To avoid reverting to the
    #     default, specify a new parameter group with
    #     `--db-parameter-group-name` and a new option group with
    #     `--option-group-name`.
    #   @return [String]
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
      :domain_fqdn,
      :domain_ou,
      :domain_auth_secret_arn,
      :domain_dns_ips,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :db_port_number,
      :publicly_accessible,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :disable_domain,
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
      :certificate_rotation_restart,
      :replica_mode,
      :enable_customer_owned_ip,
      :aws_backup_recovery_point_arn,
      :automation_mode,
      :resume_full_automation_mode_minutes,
      :network_type,
      :storage_throughput,
      :manage_master_user_password,
      :rotate_master_user_password,
      :master_user_secret_kms_key_id,
      :engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBInstanceResult AWS API Documentation
    #
    class ModifyDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   An array of parameter names, values, and the application methods for
    #   the parameter update. At least one parameter name, value, and
    #   application method must be supplied; later arguments are optional. A
    #   maximum of 20 parameters can be modified in a single request.
    #
    #   Valid Values (for the application method): `immediate |
    #   pending-reboot`
    #
    #   You can use the `immediate` value with dynamic parameters only. You
    #   can use the `pending-reboot` value for both dynamic and static
    #   parameters.
    #
    #   When the application method is `immediate`, changes to dynamic
    #   parameters are applied immediately to the DB instances associated
    #   with the parameter group.
    #
    #   When the application method is `pending-reboot`, changes to dynamic
    #   and static parameters are applied after a reboot without failover to
    #   the DB instances associated with the parameter group.
    #
    #   <note markdown="1"> You can't use `pending-reboot` with dynamic parameters on RDS for
    #   SQL Server DB instances. Use `immediate`.
    #
    #    </note>
    #
    #   For more information on modifying DB parameters, see [Working with
    #   DB parameter groups][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithParamGroups.html
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBParameterGroupMessage AWS API Documentation
    #
    class ModifyDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_endpoint_name
    #   The name of the DB proxy sociated with the DB proxy endpoint that
    #   you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] new_db_proxy_endpoint_name
    #   The new identifier for the `DBProxyEndpoint`. An identifier must
    #   begin with a letter and must contain only ASCII letters, digits, and
    #   hyphens; it can't end with a hyphen or contain two consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   The VPC security group IDs for the DB proxy endpoint. When the DB
    #   proxy endpoint uses a different VPC than the original proxy, you
    #   also specify a different set of security group IDs than for the
    #   original proxy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBProxyEndpointRequest AWS API Documentation
    #
    class ModifyDBProxyEndpointRequest < Struct.new(
      :db_proxy_endpoint_name,
      :new_db_proxy_endpoint_name,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_proxy_endpoint
    #   The `DBProxyEndpoint` object representing the new settings for the
    #   DB proxy endpoint.
    #   @return [Types::DBProxyEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBProxyEndpointResponse AWS API Documentation
    #
    class ModifyDBProxyEndpointResponse < Struct.new(
      :db_proxy_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   to access secrets in Amazon Web Services Secrets Manager.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_name
    #   The name of the target group to modify.
    #   @return [String]
    #
    # @!attribute [rw] db_proxy_name
    #   The name of the proxy.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot_identifier
    #   The identifier for the DB snapshot to modify the attributes for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the DB snapshot attribute to modify.
    #
    #   To manage authorization for other Amazon Web Services accounts to
    #   copy or restore a manual DB snapshot, set this value to `restore`.
    #
    #   <note markdown="1"> To view the list of attributes available to modify, use the
    #   DescribeDBSnapshotAttributes API operation.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of DB snapshot attributes to add to the attribute specified
    #   by `AttributeName`.
    #
    #   To authorize other Amazon Web Services accounts to copy or restore a
    #   manual snapshot, set this list to include one or more Amazon Web
    #   Services account IDs, or `all` to make the manual DB snapshot
    #   restorable by any Amazon Web Services account. Do not add the `all`
    #   value for any manual DB snapshots that contain private information
    #   that you don't want available to all Amazon Web Services accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of DB snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other Amazon Web Services accounts to
    #   copy or restore a manual snapshot, set this list to include one or
    #   more Amazon Web Services account identifiers, or `all` to remove
    #   authorization for any Amazon Web Services account to copy or restore
    #   the DB snapshot. If you specify `all`, an Amazon Web Services
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   `DescribeDBSnapshotAttributes` API action.
    #
    #   Manual DB snapshot attributes are used to authorize other Amazon Web
    #   Services accounts to copy or restore a manual DB snapshot. For more
    #   information, see the `ModifyDBSnapshotAttribute` API action.
    #   @return [Types::DBSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBSnapshotAttributeResult < Struct.new(
      :db_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * `19.0.0.0.ru-2022-01.rur-2022-01.r1` (supported for 12.2.0.1 DB
    #     snapshots)
    #
    #   * `19.0.0.0.ru-2022-07.rur-2022-07.r1` (supported for 12.1.0.2 DB
    #     snapshots)
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
    #   see [Option group considerations][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyDBSnapshotMessage AWS API Documentation
    #
    class ModifyDBSnapshotMessage < Struct.new(
      :db_snapshot_identifier,
      :engine_version,
      :option_group_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mydbsubnetgroup`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   would set this parameter to db-instance. For RDS Proxy events,
    #   specify `db-proxy`. If this value isn't specified, all events are
    #   returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group`
    #   \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot` \|
    #   `db-proxy`
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a source type (`SourceType`) that you
    #   want to subscribe to. You can see a list of the categories for a
    #   given source type in [Events][1] in the *Amazon RDS User Guide* or
    #   by using the `DescribeEventCategories` operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless `ApplyImmediately`
    #   is enabled.
    #
    #   To list all of the available engine versions for `aurora-mysql` (for
    #   MySQL-based Aurora global databases), use the following command:
    #
    #   `` aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]' ``
    #
    #   To list all of the available engine versions for `aurora-postgresql`
    #   (for PostgreSQL-based Aurora global databases), use the following
    #   command:
    #
    #   `` aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'
    #   ``
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   A value that indicates whether major version upgrades are allowed.
    #
    #   Constraints: You must allow major version upgrades when specifying a
    #   value for the `EngineVersion` parameter that is a different major
    #   version than the DB cluster's current version.
    #
    #   If you upgrade the major version of a global database, the cluster
    #   and DB instance parameter groups are set to the default parameter
    #   groups for the new version. Apply any custom parameter groups after
    #   completing the upgrade.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyGlobalClusterMessage AWS API Documentation
    #
    class ModifyGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :new_global_cluster_identifier,
      :deletion_protection,
      :engine_version,
      :allow_major_version_upgrade)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] option_group
    #   @return [Types::OptionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ModifyOptionGroupResult AWS API Documentation
    #
    class ModifyOptionGroupResult < Struct.new(
      :option_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network type is invalid for the DB instance. Valid nework type
    # values are `IPV4` and `DUAL`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/NetworkTypeNotSupported AWS API Documentation
    #
    class NetworkTypeNotSupported < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of all available options
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
      SENSITIVE = []
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
    #   Specifies the Amazon Resource Name (ARN) for the option group.
    #   @return [String]
    #
    # @!attribute [rw] source_option_group
    #   Specifies the name of the option group from which this option group
    #   is copied.
    #   @return [String]
    #
    # @!attribute [rw] source_account_id
    #   Specifies the Amazon Web Services account ID for the option group
    #   from which this option group is copied.
    #   @return [String]
    #
    # @!attribute [rw] copy_timestamp
    #   Indicates when the option group was copied.
    #   @return [Time]
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
      :option_group_arn,
      :source_option_group,
      :source_account_id,
      :copy_timestamp)
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] copyable_cross_account
    #   Specifies whether the option can be copied across Amazon Web
    #   Services accounts.
    #   @return [Boolean]
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
      :option_group_option_versions,
      :copyable_cross_account)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The quota of 20 option groups was exceeded for this Amazon Web
    # Services account.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Option settings are the actual settings being applied or configured
    # for that option. It is used when you modify an option group or
    # describe option groups. For example, the NATIVE\_NETWORK\_ENCRYPTION
    # option has a setting called SQLNET.ENCRYPTION\_SERVER that can have
    # several different values.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] outpost_capable
    #   Whether a DB instance supports RDS on Outposts.
    #
    #   For more information about RDS on Outposts, see [Amazon RDS on
    #   Amazon Web Services Outposts][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_activity_stream_modes
    #   The list of supported modes for Database Activity Streams. Aurora
    #   PostgreSQL returns the value `[sync, async]`. Aurora MySQL and RDS
    #   for Oracle return `[async]` only. If Database Activity Streams
    #   isn't supported, the return value is an empty list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_global_databases
    #   A value that indicates whether you can use Aurora global databases
    #   with a specific combination of other DB engine attributes.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_clusters
    #   Whether DB instances can be configured as a Multi-AZ DB cluster.
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][1] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_network_types
    #   The network types supported by the DB instance (`IPV4` or `DUAL`).
    #
    #   A DB instance can support only the IPv4 protocol or the IPv4 and the
    #   IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_storage_throughput
    #   Indicates whether a DB instance supports storage throughput.
    #   @return [Boolean]
    #
    # @!attribute [rw] min_storage_throughput_per_db_instance
    #   Minimum storage throughput for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] max_storage_throughput_per_db_instance
    #   Maximum storage throughput for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] min_storage_throughput_per_iops
    #   Minimum storage throughput to provisioned IOPS ratio for a DB
    #   instance.
    #   @return [Float]
    #
    # @!attribute [rw] max_storage_throughput_per_iops
    #   Maximum storage throughput to provisioned IOPS ratio for a DB
    #   instance.
    #   @return [Float]
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
      :supports_kerberos_authentication,
      :outpost_capable,
      :supported_activity_stream_modes,
      :supports_global_databases,
      :supports_clusters,
      :supported_network_types,
      :supports_storage_throughput,
      :min_storage_throughput_per_db_instance,
      :max_storage_throughput_per_db_instance,
      :min_storage_throughput_per_iops,
      :max_storage_throughput_per_iops)
      SENSITIVE = []
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
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/OrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class OrderableDBInstanceOptionsMessage < Struct.new(
      :orderable_db_instance_options,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data type that represents an Outpost.
    #
    # For more information about RDS on Outposts, see [Amazon RDS on Amazon
    # Web Services Outposts][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Outpost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Outpost AWS API Documentation
    #
    class Outpost < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a request parameter in the
    # `ModifyDBParameterGroup` and `ResetDBParameterGroup` actions.
    #
    # This data type is used as a response element in the
    # `DescribeEngineDefaultParameters` and `DescribeDBParameters` actions.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The date when the maintenance action is automatically applied.
    #
    #   On this date, the maintenance action is applied to the resource as
    #   soon as possible, regardless of the maintenance window for the
    #   resource. There might be a delay of one or more days from this date
    #   before the maintenance action is applied.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element in the `ModifyDBInstance`
    # operation and contains changes that will be applied during the next
    # maintenance window.
    #
    # @!attribute [rw] db_instance_class
    #   The name of the compute and memory capacity class for the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The allocated storage size for the DB instance specified in
    #   gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   The master credentials for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   A value that indicates that the Single-AZ DB instance will change to
    #   a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The database engine version.
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
    #   The Provisioned IOPS value for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   The database identifier for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for the DB instance.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to
    #   a DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS
    #   to encrypt a connection to a DB cluster][2] in the *Amazon Aurora
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group for the DB instance.
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
    # @!attribute [rw] iam_database_authentication_enabled
    #   Whether mapping of Amazon Web Services Identity and Access
    #   Management (IAM) accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] automation_mode
    #   The automation mode of the RDS Custom DB instance: `full` or
    #   `all-paused`. If `full`, the DB instance automates monitoring and
    #   instance recovery. If `all-paused`, the instance pauses automation
    #   for the duration set by `--resume-full-automation-mode-minutes`.
    #   @return [String]
    #
    # @!attribute [rw] resume_full_automation_mode_time
    #   The number of minutes to pause the automation. When the time period
    #   ends, RDS Custom resumes full automation. The minimum value is 60
    #   (default). The maximum value is 1,440.
    #   @return [Time]
    #
    # @!attribute [rw] storage_throughput
    #   The storage throughput of the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] engine
    #   The database engine of the DB instance.
    #   @return [String]
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
      :processor_features,
      :iam_database_authentication_enabled,
      :automation_mode,
      :resume_full_automation_mode_time,
      :storage_throughput,
      :engine)
      SENSITIVE = []
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
    # If you call `DescribeDBInstances`, `ProcessorFeature` returns non-null
    # values only if the following conditions are met:
    #
    # * You are accessing an Oracle DB instance.
    #
    # * Your Oracle DB instance class supports configuring the number of CPU
    #   cores and threads per core.
    #
    # * The current number CPU cores and threads is set to a non-default
    #   value.
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
    # @!attribute [rw] value
    #   The value of a processor feature name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ProcessorFeature AWS API Documentation
    #
    class ProcessorFeature < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaDBClusterResult AWS API Documentation
    #
    class PromoteReadReplicaDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   block of time for each Amazon Web Services Region. To see the time
    #   blocks available, see [ Adjusting the Preferred Maintenance
    #   Window][1] in the *Amazon RDS User Guide.*
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/PromoteReadReplicaResult AWS API Documentation
    #
    class PromoteReadReplicaResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provisioned IOPS not available in the specified Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ProvisionedIopsNotAvailableInAZFault AWS API Documentation
    #
    class ProvisionedIopsNotAvailableInAZFault < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBClusterMessage AWS API Documentation
    #
    class RebootDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBClusterResult AWS API Documentation
    #
    class RebootDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RebootDBInstanceResult AWS API Documentation
    #
    class RebootDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   be disassociated from. For information about supported feature
    #   names, see DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBClusterMessage AWS API Documentation
    #
    class RemoveRoleFromDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The name of the DB instance to disassociate the IAM role from.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to disassociate from
    #   the DB instance, for example,
    #   `arn:aws:iam::123456789012:role/AccessRole`.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature for the DB instance that the IAM role is to
    #   be disassociated from. For information about supported feature
    #   names, see `DBEngineVersion`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RemoveRoleFromDBInstanceMessage AWS API Documentation
    #
    class RemoveRoleFromDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :role_arn,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   <note markdown="1"> Amazon Web Services Support might request the lease ID for an issue
    #   related to a reserved DB instance.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Specified offering does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ReservedDBInstancesOfferingNotFoundFault AWS API Documentation
    #
    class ReservedDBInstancesOfferingNotFoundFault < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Amazon S3 bucket. This parameter isn't case-sensitive.
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
    #   restored DB cluster. If this argument is omitted, the default
    #   parameter group for the engine version is used.
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
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this DB cluster.
    #
    #   Valid Values: `aurora-mysql` (for Aurora MySQL)
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #
    #   To list all of the available engine versions for `aurora-mysql`
    #   (Aurora MySQL), use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   **Aurora MySQL**
    #
    #   Examples: `5.7.mysql_aurora.2.07.1`, `8.0.mysql_aurora.3.02.0`
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
    #   Constraints:
    #
    #   * Must contain from 8 to 41 characters.
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
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
    #   block of time for each Amazon Web Services Region. To view the time
    #   blocks available, see [ Backup window][1] in the *Amazon Aurora User
    #   Guide*.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week. To see the time blocks available, see [
    #   Adjusting the Preferred Maintenance Window][1] in the *Amazon Aurora
    #   User Guide*.
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
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If the StorageEncrypted parameter is enabled, and you do not specify
    #   a value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default KMS key. There is a default KMS key for your Amazon Web
    #   Services account. Your Amazon Web Services account has a different
    #   default KMS key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
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
    #   MySQL versions 5.5, 5.6, and 5.7 are supported.
    #
    #   Example: `5.6.40`, `5.7.28`
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
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Identity
    #   and Access Management (IAM) role that authorizes Amazon RDS to
    #   access the Amazon S3 bucket on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking,
    #   set this value to 0.
    #
    #   <note markdown="1"> Currently, Backtrack is only supported for Aurora MySQL DB clusters.
    #
    #    </note>
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
    #   being used.
    #
    #   **Aurora MySQL**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][1]
    #   in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection isn't
    #   enabled.
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
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB cluster.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon Aurora User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] manage_master_user_password
    #   A value that indicates whether to manage the master user password
    #   with Amazon Web Services Secrets Manager.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Constraints:
    #
    #   * Can't manage the master user password with Amazon Web Services
    #     Secrets Manager if `MasterUserPassword` is specified.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that
    #   is automatically generated and managed in Amazon Web Services
    #   Secrets Manager.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If you don't specify `MasterUserSecretKmsKeyId`, then the
    #   `aws/secretsmanager` KMS key is used to encrypt the secret. If the
    #   secret is in a different Amazon Web Services account, then you
    #   can't use the `aws/secretsmanager` KMS key to encrypt the secret,
    #   and you must use a customer managed KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   Valid values: `aurora`, `aurora-iopt1`
    #
    #   Default: `aurora`
    #
    #   Valid for: Aurora DB clusters only
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
      :domain_iam_role_name,
      :serverless_v2_scaling_configuration,
      :network_type,
      :manage_master_user_password,
      :master_user_secret_kms_key_id,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromS3Result AWS API Documentation
    #
    class RestoreDBClusterFromS3Result < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   Provides the list of Availability Zones (AZs) where instances in the
    #   restored DB cluster can be created.
    #
    #   Valid for: Aurora DB clusters only
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use for the new DB cluster. If
    #   you don't specify an engine version, the default version for the
    #   database engine in the Amazon Web Services Region is used.
    #
    #   To list all of the available engine versions for Aurora MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for Aurora PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   **Aurora MySQL**
    #
    #   See [Database engine updates for Amazon Aurora MySQL][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   **Aurora PostgreSQL**
    #
    #   See [Amazon Aurora PostgreSQL releases and engine versions][2] in
    #   the *Amazon Aurora User Guide*.
    #
    #   **MySQL**
    #
    #   See [Amazon RDS for MySQL][3] in the *Amazon RDS User Guide.*
    #
    #   **PostgreSQL**
    #
    #   See [Amazon RDS for PostgreSQL versions and extensions][4] in the
    #   *Amazon RDS User Guide.*
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: This value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing DB
    #   subnet group.
    #
    #   Example: `mydbsubnetgroup`
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database name for the restored DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group to use for the restored DB cluster.
    #
    #   DB clusters are associated with a default option group that can't
    #   be modified.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster will belong
    #   to.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier to use when restoring an
    #   encrypted DB cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   When you don't specify a value for the `KmsKeyId` parameter, then
    #   the following occurs:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is encrypted, then the restored DB cluster is encrypted using the
    #     KMS key that was used to encrypt the DB snapshot or DB cluster
    #     snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     isn't encrypted, then the restored DB cluster isn't encrypted.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters only
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
    #   <note markdown="1"> Currently, Backtrack is only supported for Aurora MySQL DB clusters.
    #
    #    </note>
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    #   Valid for: Aurora DB clusters only
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to Amazon
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used.
    #
    #   **RDS for MySQL**
    #
    #   Possible values are `error`, `general`, and `slowquery`.
    #
    #   **RDS for PostgreSQL**
    #
    #   Possible values are `postgresql` and `upgrade`.
    #
    #   **Aurora MySQL**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   **Aurora PostgreSQL**
    #
    #   Possible value is `postgresql`.
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2]
    #   in the *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   For more information, see [ CreateDBCluster][1].
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #
    #   Valid for: Aurora DB clusters only
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection isn't
    #   enabled.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not
    #   to copy them.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory directory ID to restore the DB cluster
    #   in. The domain must be created prior to this operation. Currently,
    #   only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
    #   instances can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   Valid for: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_instance_class
    #   The compute and memory capacity of the each DB instance in the
    #   Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
    #   classes are available in all Amazon Web Services Regions, or for all
    #   database engines.
    #
    #   For the full list of DB instance classes, and availability for your
    #   engine, see [DB Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #   Valid for: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid values: `aurora`, `aurora-iopt1` (Aurora DB clusters); `io1`
    #   (Multi-AZ DB clusters)
    #
    #   Default: `aurora` (Aurora DB clusters); `io1` (Multi-AZ DB clusters)
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between .5 and 50 of the storage
    #   amount for the DB instance.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB cluster is publicly
    #   accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access is not permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB cluster.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon Aurora User Guide.*
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
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
      :domain_iam_role_name,
      :db_cluster_instance_class,
      :storage_type,
      :iops,
      :publicly_accessible,
      :serverless_v2_scaling_configuration,
      :network_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterFromSnapshotResult AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
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
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   A value that indicates whether to restore the DB cluster to the
    #   latest restorable backup time. By default, the DB cluster isn't
    #   restored to the latest restorable backup time.
    #
    #   Constraints: Can't be specified if `RestoreToTime` parameter is
    #   provided.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: A value from `1150-65535`.
    #
    #   Default: The default port for the engine.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mydbsubnetgroup`
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   The name of the option group for the new DB cluster.
    #
    #   DB clusters are associated with a default option group that can't
    #   be modified.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
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
    #   The Amazon Web Services KMS key identifier to use when restoring an
    #   encrypted DB cluster from an encrypted DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with a KMS key that is different from the KMS key used to encrypt
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters only
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
    #
    #   Valid for: Aurora MySQL DB clusters only
    #   @return [Integer]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine
    #   being used.
    #
    #   **RDS for MySQL**
    #
    #   Possible values are `error`, `general`, and `slowquery`.
    #
    #   **RDS for PostgreSQL**
    #
    #   Possible values are `postgresql` and `upgrade`.
    #
    #   **Aurora MySQL**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   **Aurora PostgreSQL**
    #
    #   Possible value is `postgresql`.
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2]
    #   in the *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
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
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection isn't
    #   enabled.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not
    #   to copy them.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
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
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   Valid for: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling
    #   properties of the DB cluster.
    #
    #   Valid for: Aurora DB clusters only
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] engine_mode
    #   The engine mode of the new cluster. Specify `provisioned` or
    #   `serverless`, depending on the type of the cluster you are creating.
    #   You can create an Aurora Serverless v1 clone from a provisioned
    #   cluster, or a provisioned clone from an Aurora Serverless v1
    #   cluster. To create a clone that is an Aurora Serverless v1 cluster,
    #   the original cluster must be an Aurora Serverless v1 cluster or an
    #   encrypted provisioned cluster.
    #
    #   Valid for: Aurora DB clusters only
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_instance_class
    #   The compute and memory capacity of the each DB instance in the
    #   Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
    #   classes are available in all Amazon Web Services Regions, or for all
    #   database engines.
    #
    #   For the full list of DB instance classes, and availability for your
    #   engine, see [DB instance class][1] in the *Amazon RDS User Guide.*
    #
    #   Valid for: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid values: `aurora`, `aurora-iopt1` (Aurora DB clusters); `io1`
    #   (Multi-AZ DB clusters)
    #
    #   Default: `aurora` (Aurora DB clusters); `io1` (Multi-AZ DB clusters)
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB cluster is publicly
    #   accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access is not permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   Valid for: Multi-AZ DB clusters only
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between .5 and 50 of the storage
    #   amount for the DB instance.
    #
    #   Valid for: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    #   @return [Integer]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB cluster.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon Aurora User Guide.*
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
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
      :domain_iam_role_name,
      :scaling_configuration,
      :engine_mode,
      :db_cluster_instance_class,
      :storage_type,
      :publicly_accessible,
      :iops,
      :serverless_v2_scaling_configuration,
      :network_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBClusterToPointInTimeResult AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * Can't be specified when `DBClusterSnapshotIdentifier` is
    #     specified.
    #
    #   * Must be specified when `DBClusterSnapshotIdentifier` isn't
    #     specified.
    #
    #   * If you are restoring from a shared manual DB snapshot, the
    #     `DBSnapshotIdentifier` must be the ARN of the shared DB snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example db.m4.large. Not all DB instance classes are available in
    #   all Amazon Web Services Regions, or for all database engines. For
    #   the full list of DB instance classes, and availability for your
    #   engine, see [DB Instance Class][1] in the *Amazon RDS User Guide.*
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
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if
    #   the DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible.
    #
    #   When the DB instance is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   instance's virtual private cloud (VPC). It resolves to the public
    #   IP address from outside of the DB instance's VPC. Access to the DB
    #   instance is ultimately controlled by the security group it uses.
    #   That public access is not permitted if the security group assigned
    #   to the DB instance doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
    #
    #   If you restore an RDS Custom DB instance, you must disable this
    #   parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   License model information for the restored DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
    #   engines. It also doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new instance.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
    #   IOPS storage][1] in the *Amazon RDS User Guide.*
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
    #   option group can't be removed from a DB instance after it is
    #   associated with a DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   Valid values: `gp2 | gp3 | io1 | standard`
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   in. The domain/ must be created prior to this operation. Currently,
    #   you can create only MySQL, Microsoft SQL Server, Oracle, and
    #   PostgreSQL DB instances in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory
    #   domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_ou
    #   The Active Directory organizational unit for your DB instance to
    #   join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Constraints:
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    #   @return [String]
    #
    # @!attribute [rw] domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    #   @return [Array<String>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   instance to snapshots of the DB instance.
    #
    #   In most cases, tags aren't copied by default. However, when you
    #   restore a DB instance from a DB snapshot, RDS checks whether you
    #   specify new tags. If yes, the new tags are added to the restored DB
    #   instance. If there are no new tags, RDS looks for the tags from the
    #   source DB instance for the DB snapshot, and then adds those tags to
    #   the restored DB instance.
    #
    #   For more information, see [ Copying tags to DB instance
    #   snapshots][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.CopyTags
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping is disabled.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you don't specify a value for `DBParameterGroupName`, then RDS
    #   uses the default `DBParameterGroup` for the specified DB engine.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   protection is enabled. By default, deletion protection isn't
    #   enabled. For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_customer_owned_ip
    #   A value that indicates whether to enable a customer-owned IP address
    #   (CoIP) for an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in
    #   your Outpost subnets through your on-premises network. For some use
    #   cases, a CoIP can provide lower latency for connections to the DB
    #   instance from outside of its virtual private cloud (VPC) on your
    #   local network.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP
    #   addresses][2] in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance. The instance profile must
    #   meet the following requirements:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions
    #     to assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [
    #   Configure IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required for RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    #   @return [String]
    #
    # @!attribute [rw] backup_target
    #   Specifies where automated backups and manual snapshots are stored
    #   for the restored DB instance.
    #
    #   Possible values are `outposts` (Amazon Web Services Outposts) and
    #   `region` (Amazon Web Services Region). The default is `region`.
    #
    #   For more information, see [Working with Amazon RDS on Amazon Web
    #   Services Outposts][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4
    #   protocol or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   Specifies the storage throughput value for the DB instance.
    #
    #   This setting doesn't apply to RDS Custom or Amazon Aurora.
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the RDS for MySQL Multi-AZ DB cluster snapshot to
    #   restore from.
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ DB
    #   cluster deployments][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Multi-AZ DB cluster
    #     snapshot.
    #
    #   * Can't be specified when `DBSnapshotIdentifier` is specified.
    #
    #   * Must be specified when `DBSnapshotIdentifier` isn't specified.
    #
    #   * If you are restoring from a shared manual Multi-AZ DB cluster
    #     snapshot, the `DBClusterSnapshotIdentifier` must be the ARN of the
    #     shared snapshot.
    #
    #   * Can't be the identifier of an Aurora DB cluster snapshot.
    #
    #   * Can't be the identifier of an RDS for PostgreSQL Multi-AZ DB
    #     cluster snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gibibytes) to allocate initially for the
    #   DB instance. Follow the allocation rules specified in
    #   CreateDBInstance.
    #
    #   <note markdown="1"> Be sure to allocate enough storage for your new DB instance so that
    #   the restore operation can succeed. You can also allocate additional
    #   storage for future growth.
    #
    #    </note>
    #   @return [Integer]
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
      :domain_fqdn,
      :domain_ou,
      :domain_auth_secret_arn,
      :domain_dns_ips,
      :copy_tags_to_snapshot,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :db_parameter_group_name,
      :deletion_protection,
      :enable_customer_owned_ip,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      :storage_throughput,
      :db_cluster_snapshot_identifier,
      :allocated_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromDBSnapshotResult AWS API Documentation
    #
    class RestoreDBInstanceFromDBSnapshotResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The amount of storage (in gibibytes) to allocate initially for the
    #   DB instance. Follow the allocation rules specified in
    #   `CreateDBInstance`.
    #
    #   <note markdown="1"> Be sure to allocate enough storage for your new DB instance so that
    #   the restore operation can succeed. You can also allocate additional
    #   storage for future growth.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the DB instance, for example
    #   db.m4.large. Not all DB instance classes are available in all Amazon
    #   Web Services Regions, or for all database engines. For the full list
    #   of DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide.*
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
    #   Constraints: Can't be specified if `ManageMasterUserPassword` is
    #   turned on.
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
    #   A list of VPC security groups to associate with this DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that the DB instance is created in. For
    #   information about Amazon Web Services Regions and Availability
    #   Zones, see [Regions and Availability Zones][1] in the *Amazon RDS
    #   User Guide.*
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's Amazon Web Services Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The `AvailabilityZone` parameter can't be specified if
    #   the DB instance is a Multi-AZ deployment. The specified Availability
    #   Zone must be in the same Amazon Web Services Region as the current
    #   endpoint.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mydbsubnetgroup`
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
    #   if automated backups are enabled. For more information, see [Backup
    #   window][1] in the *Amazon RDS User Guide.*
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
    #   valid IOPS values, see [Amazon RDS Provisioned IOPS storage][1] in
    #   the *Amazon RDS User Guide.*
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
    #   accessible.
    #
    #   When the DB instance is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   instance's virtual private cloud (VPC). It resolves to the public
    #   IP address from outside of the DB instance's VPC. Access to the DB
    #   instance is ultimately controlled by the security group it uses.
    #   That public access is not permitted if the security group assigned
    #   to the DB instance doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
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
    #   Valid values: `gp2 | gp3 | io1 | standard`
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
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
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If the `StorageEncrypted` parameter is enabled, and you do not
    #   specify a value for the `KmsKeyId` parameter, then Amazon RDS will
    #   use your default KMS key. There is a default KMS key for your Amazon
    #   Web Services account. Your Amazon Web Services account has a
    #   different default KMS key for each Amazon Web Services Region.
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
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
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
    #   The version of the database that the backup files were created from.
    #
    #   MySQL versions 5.6 and 5.7 are supported.
    #
    #   Example: `5.6.40`
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
    #   An Amazon Web Services Identity and Access Management (IAM) role to
    #   allow Amazon RDS to access your Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for
    #   the DB instance.
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
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`,
    #   then Amazon RDS uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data. The default
    #   is 7 days. The following values are valid:
    #
    #   * 7
    #
    #   * *month* * 31, where *month* is a number of months from 1-23
    #
    #   * 731
    #
    #   For example, the following values are valid:
    #
    #   * 93 (3 months * 31)
    #
    #   * 341 (11 months * 31)
    #
    #   * 589 (19 months * 31)
    #
    #   * 731
    #
    #   If you specify a retention period such as 94, which isn't a valid
    #   value, RDS issues an error.
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
    #   protection is enabled. By default, deletion protection isn't
    #   enabled. For more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    #   @return [Integer]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4
    #   protocol or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   Specifies the storage throughput value for the DB instance.
    #
    #   This setting doesn't apply to RDS Custom or Amazon Aurora.
    #   @return [Integer]
    #
    # @!attribute [rw] manage_master_user_password
    #   A value that indicates whether to manage the master user password
    #   with Amazon Web Services Secrets Manager.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Can't manage the master user password with Amazon Web Services
    #     Secrets Manager if `MasterUserPassword` is specified.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that
    #   is automatically generated and managed in Amazon Web Services
    #   Secrets Manager.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If you don't specify `MasterUserSecretKmsKeyId`, then the
    #   `aws/secretsmanager` KMS key is used to encrypt the secret. If the
    #   secret is in a different Amazon Web Services account, then you
    #   can't use the `aws/secretsmanager` KMS key to encrypt the secret,
    #   and you must use a customer managed KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account.
    #   Your Amazon Web Services account has a different default KMS key for
    #   each Amazon Web Services Region.
    #   @return [String]
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
      :deletion_protection,
      :max_allocated_storage,
      :network_type,
      :storage_throughput,
      :manage_master_user_password,
      :master_user_secret_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceFromS3Result AWS API Documentation
    #
    class RestoreDBInstanceFromS3Result < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   example db.m4.large. Not all DB instance classes are available in
    #   all Amazon Web Services Regions, or for all database engines. For
    #   the full list of DB instance classes, and availability for your
    #   engine, see [DB Instance Class][1] in the *Amazon RDS User Guide*.
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
    #   Example: `mydbsubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if
    #   the DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   A value that indicates whether the DB instance is publicly
    #   accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal
    #   DB instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   License model information for the restored DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   <note markdown="1"> This parameter isn't supported for the MySQL or MariaDB engines. It
    #   also doesn't apply to RDS Custom.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new instance.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
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
    #   option group can't be removed from a DB instance after it is
    #   associated with a DB instance
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   Valid values: `gp2 | gp3 | io1 | standard`
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   in. Create the domain before running this command. Currently, you
    #   can create only the MySQL, Microsoft SQL Server, Oracle, and
    #   PostgreSQL DB instances in an Active Directory Domain.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   For more information, see [ Kerberos Authentication][1] in the
    #   *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #   @return [String]
    #
    # @!attribute [rw] domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory
    #   domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_ou
    #   The Active Directory organizational unit for your DB instance to
    #   join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    #   @return [String]
    #
    # @!attribute [rw] domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    #   @return [String]
    #
    # @!attribute [rw] domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Array<Types::ProcessorFeature>]
    #
    # @!attribute [rw] use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then the
    #   default `DBParameterGroup` for the specified DB engine is used.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   protection is enabled. By default, deletion protection isn't
    #   enabled. For more information, see [ Deleting a DB Instance][1].
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
    # @!attribute [rw] max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    #   @return [Integer]
    #
    # @!attribute [rw] source_db_instance_automated_backups_arn
    #   The Amazon Resource Name (ARN) of the replicated automated backups
    #   from which to restore, for example,
    #   `arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE`.
    #
    #   This setting doesn't apply to RDS Custom.
    #   @return [String]
    #
    # @!attribute [rw] enable_customer_owned_ip
    #   A value that indicates whether to enable a customer-owned IP address
    #   (CoIP) for an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in
    #   your Outpost subnets through your on-premises network. For some use
    #   cases, a CoIP can provide lower latency for connections to the DB
    #   instance from outside of its virtual private cloud (VPC) on your
    #   local network.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP
    #   addresses][2] in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance. The instance profile must
    #   meet the following requirements:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions
    #     to assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [
    #   Configure IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required for RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    #   @return [String]
    #
    # @!attribute [rw] backup_target
    #   Specifies where automated backups and manual snapshots are stored
    #   for the restored DB instance.
    #
    #   Possible values are `outposts` (Amazon Web Services Outposts) and
    #   `region` (Amazon Web Services Region). The default is `region`.
    #
    #   For more information, see [Working with Amazon RDS on Amazon Web
    #   Services Outposts][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The network type of the DB instance.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4
    #   protocol or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    #   @return [String]
    #
    # @!attribute [rw] storage_throughput
    #   Specifies the storage throughput value for the DB instance.
    #
    #   This setting doesn't apply to RDS Custom or Amazon Aurora.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gibibytes) to allocate initially for the
    #   DB instance. Follow the allocation rules specified in
    #   `CreateDBInstance`.
    #
    #   <note markdown="1"> Be sure to allocate enough storage for your new DB instance so that
    #   the restore operation can succeed. You can also allocate additional
    #   storage for future growth.
    #
    #    </note>
    #   @return [Integer]
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
      :domain_fqdn,
      :domain_ou,
      :domain_auth_secret_arn,
      :domain_dns_ips,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :db_parameter_group_name,
      :deletion_protection,
      :source_dbi_resource_id,
      :max_allocated_storage,
      :source_db_instance_automated_backups_arn,
      :enable_customer_owned_ip,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      :storage_throughput,
      :allocated_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/RestoreDBInstanceToPointInTimeResult AWS API Documentation
    #
    class RestoreDBInstanceToPointInTimeResult < Struct.new(
      :db_instance)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Amazon Web Services account number of the owner of the EC2
    #   security group specified in the `EC2SecurityGroupName` parameter.
    #   The Amazon Web Services access key ID isn't an acceptable value.
    #   For VPC DB security groups, `EC2SecurityGroupId` must be provided.
    #   Otherwise, EC2SecurityGroupOwnerId and either `EC2SecurityGroupName`
    #   or `EC2SecurityGroupId` must be provided.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # SNS has responded that there is a problem with the SNS topic
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

    # Contains the scaling configuration of an Aurora Serverless v1 DB
    # cluster.
    #
    # For more information, see [Using Amazon Aurora Serverless v1][1] in
    # the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
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
    #
    #   Specify a value between 300 and 86,400 seconds.
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
    #   Aurora Serverless v1 from finding a scaling point might be dropped.
    #
    #   For more information, see [ Autoscaling for Aurora Serverless v1][1]
    #   in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling
    #   @return [String]
    #
    # @!attribute [rw] seconds_before_timeout
    #   The amount of time, in seconds, that Aurora Serverless v1 tries to
    #   find a scaling point to perform seamless scaling before enforcing
    #   the timeout action. The default is 300.
    #
    #   Specify a value between 60 and 600 seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ScalingConfiguration AWS API Documentation
    #
    class ScalingConfiguration < Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause,
      :timeout_action,
      :seconds_before_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scaling configuration for an Aurora DB cluster in `serverless` DB
    # engine mode.
    #
    # For more information, see [Using Amazon Aurora Serverless v1][1] in
    # the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity for an Aurora DB cluster in `serverless` DB
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
    #   When the value is set to false for an Aurora Serverless v1 DB
    #   cluster, the DB cluster automatically resumes.
    #   @return [Boolean]
    #
    # @!attribute [rw] seconds_until_auto_pause
    #   The remaining amount of time, in seconds, before the Aurora DB
    #   cluster in `serverless` mode is paused. A DB cluster can be paused
    #   only when it's idle (it has no connections).
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_action
    #   The action that occurs when Aurora times out while attempting to
    #   change the capacity of an Aurora Serverless v1 cluster. The value is
    #   either `ForceApplyCapacityChange` or `RollbackCapacityChange`.
    #
    #   `ForceApplyCapacityChange`, the default, sets the capacity to the
    #   specified value as soon as possible.
    #
    #   `RollbackCapacityChange` ignores the capacity change if a scaling
    #   point isn't found in the timeout period.
    #   @return [String]
    #
    # @!attribute [rw] seconds_before_timeout
    #   The number of seconds before scaling times out. What happens when an
    #   attempted scaling action times out is determined by the
    #   `TimeoutAction` setting.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ScalingConfigurationInfo AWS API Documentation
    #
    class ScalingConfigurationInfo < Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause,
      :timeout_action,
      :seconds_before_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the scaling configuration of an Aurora Serverless v2 DB
    # cluster.
    #
    # For more information, see [Using Amazon Aurora Serverless v2][1] in
    # the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #
    # @!attribute [rw] min_capacity
    #   The minimum number of Aurora capacity units (ACUs) for a DB instance
    #   in an Aurora Serverless v2 cluster. You can specify ACU values in
    #   half-step increments, such as 8, 8.5, 9, and so on. The smallest
    #   value that you can use is 0.5.
    #   @return [Float]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of Aurora capacity units (ACUs) for a DB instance
    #   in an Aurora Serverless v2 cluster. You can specify ACU values in
    #   half-step increments, such as 40, 40.5, 41, and so on. The largest
    #   value that you can use is 128.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ServerlessV2ScalingConfiguration AWS API Documentation
    #
    class ServerlessV2ScalingConfiguration < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scaling configuration for an Aurora Serverless v2 DB cluster.
    #
    # For more information, see [Using Amazon Aurora Serverless v2][1] in
    # the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    #
    # @!attribute [rw] min_capacity
    #   The minimum number of Aurora capacity units (ACUs) for a DB instance
    #   in an Aurora Serverless v2 cluster. You can specify ACU values in
    #   half-step increments, such as 8, 8.5, 9, and so on. The smallest
    #   value that you can use is 0.5.
    #   @return [Float]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of Aurora capacity units (ACUs) for a DB instance
    #   in an Aurora Serverless v2 cluster. You can specify ACU values in
    #   half-step increments, such as 40, 40.5, 41, and so on. The largest
    #   value that you can use is 128.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ServerlessV2ScalingConfigurationInfo AWS API Documentation
    #
    class ServerlessV2ScalingConfigurationInfo < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
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

    # The source DB cluster isn't supported for a blue/green deployment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceClusterNotSupportedFault AWS API Documentation
    #
    class SourceClusterNotSupportedFault < Aws::EmptyStructure; end

    # The source DB instance isn't supported for a blue/green deployment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceDatabaseNotSupportedFault AWS API Documentation
    #
    class SourceDatabaseNotSupportedFault < Aws::EmptyStructure; end

    # The requested source could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceNotFoundFault AWS API Documentation
    #
    class SourceNotFoundFault < Aws::EmptyStructure; end

    # Contains an Amazon Web Services Region name as the result of a
    # successful call to the `DescribeSourceRegions` action.
    #
    # @!attribute [rw] region_name
    #   The name of the source Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for the source Amazon Web Services Region endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the source Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] supports_db_instance_automated_backups_replication
    #   Whether the source Amazon Web Services Region supports replicating
    #   automated backups to the current Amazon Web Services Region.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceRegion AWS API Documentation
    #
    class SourceRegion < Struct.new(
      :region_name,
      :endpoint,
      :status,
      :supports_db_instance_automated_backups_replication)
      SENSITIVE = []
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
    #   A list of `SourceRegion` instances that contains each source Amazon
    #   Web Services Region that the current Amazon Web Services Region can
    #   get a read replica or a DB snapshot from.
    #   @return [Array<Types::SourceRegion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SourceRegionMessage AWS API Documentation
    #
    class SourceRegionMessage < Struct.new(
      :marker,
      :source_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the DB cluster, for example,
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
    #   The Amazon Web Services KMS key identifier for encrypting messages
    #   in the database activity stream. The Amazon Web Services KMS key
    #   identifier is the key ARN, key ID, alias ARN, or alias name for the
    #   KMS key.
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether or not the database activity stream is to start as
    #   soon as possible, regardless of the maintenance window for the
    #   database.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_native_audit_fields_included
    #   Specifies whether the database activity stream includes
    #   engine-native audit fields. This option applies to an Oracle or
    #   Microsoft SQL Server DB instance. By default, no engine-native audit
    #   fields are included.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartActivityStreamRequest AWS API Documentation
    #
    class StartActivityStreamRequest < Struct.new(
      :resource_arn,
      :mode,
      :kms_key_id,
      :apply_immediately,
      :engine_native_audit_fields_included)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   messages in the database activity stream.
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
    # @!attribute [rw] engine_native_audit_fields_included
    #   Indicates whether engine-native audit fields are included in the
    #   database activity stream.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartActivityStreamResponse AWS API Documentation
    #
    class StartActivityStreamResponse < Struct.new(
      :kms_key_id,
      :kinesis_stream_name,
      :status,
      :mode,
      :apply_immediately,
      :engine_native_audit_fields_included)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the Amazon Aurora DB cluster to be
    #   started. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBClusterMessage AWS API Documentation
    #
    class StartDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBClusterResult AWS API Documentation
    #
    class StartDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_instance_arn
    #   The Amazon Resource Name (ARN) of the source DB instance for the
    #   replicated automated backups, for example,
    #   `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The retention period for the replicated automated backups.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of the
    #   replicated automated backups. The KMS key ID is the Amazon Resource
    #   Name (ARN) for the KMS encryption key in the destination Amazon Web
    #   Services Region, for example,
    #   `arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   In an Amazon Web Services GovCloud (US) Region, an URL that contains
    #   a Signature Version 4 signed request for the
    #   `StartDBInstanceAutomatedBackupsReplication` operation to call in
    #   the Amazon Web Services Region of the source DB instance. The
    #   presigned URL must be a valid request for the
    #   `StartDBInstanceAutomatedBackupsReplication` API operation that can
    #   run in the Amazon Web Services Region that contains the source DB
    #   instance.
    #
    #   This setting applies only to Amazon Web Services GovCloud (US)
    #   Regions. It's ignored in other Amazon Web Services Regions.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [ Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceAutomatedBackupsReplicationMessage AWS API Documentation
    #
    class StartDBInstanceAutomatedBackupsReplicationMessage < Struct.new(
      :source_db_instance_arn,
      :backup_retention_period,
      :kms_key_id,
      :pre_signed_url,
      :source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_automated_backup
    #   An automated backup of a DB instance. It consists of system backups,
    #   transaction logs, and the database instance properties that existed
    #   at the time you deleted the source instance.
    #   @return [Types::DBInstanceAutomatedBackup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceAutomatedBackupsReplicationResult AWS API Documentation
    #
    class StartDBInstanceAutomatedBackupsReplicationResult < Struct.new(
      :db_instance_automated_backup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The user-supplied instance identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceMessage AWS API Documentation
    #
    class StartDBInstanceMessage < Struct.new(
      :db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StartDBInstanceResult AWS API Documentation
    #
    class StartDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_task_identifier
    #   A unique identifier for the export task. This ID isn't an
    #   identifier for the Amazon S3 bucket where the data is to be
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the snapshot or cluster to export
    #   to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket to export the snapshot or cluster
    #   data to.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The name of the IAM role to use for writing to the Amazon S3 bucket
    #   when exporting a snapshot or cluster.
    #
    #   In the IAM policy attached to your IAM role, include the following
    #   required actions to allow the transfer of files from Amazon RDS or
    #   Amazon Aurora to an S3 bucket:
    #
    #   * s3:PutObject*
    #
    #   * s3:GetObject*
    #
    #   * s3:ListBucket
    #
    #   * s3:DeleteObject*
    #
    #   * s3:GetBucketLocation
    #
    #   In the policy, include the resources to identify the S3 bucket and
    #   objects in the bucket. The following list of resources shows the
    #   Amazon Resource Name (ARN) format for accessing S3:
    #
    #   * `arn:aws:s3:::your-s3-bucket `
    #
    #   * `arn:aws:s3:::your-s3-bucket/*`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services KMS key to use to encrypt the data
    #   exported to Amazon S3. The Amazon Web Services KMS key identifier is
    #   the key ARN, key ID, alias ARN, or alias name for the KMS key. The
    #   caller of this operation must be authorized to run the following
    #   operations. These can be set in the Amazon Web Services KMS key
    #   policy:
    #
    #   * kms:Encrypt
    #
    #   * kms:Decrypt
    #
    #   * kms:GenerateDataKey
    #
    #   * kms:GenerateDataKeyWithoutPlaintext
    #
    #   * kms:ReEncryptFrom
    #
    #   * kms:ReEncryptTo
    #
    #   * kms:CreateGrant
    #
    #   * kms:DescribeKey
    #
    #   * kms:RetireGrant
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The Amazon S3 bucket prefix to use as the file name and path of the
    #   exported data.
    #   @return [String]
    #
    # @!attribute [rw] export_only
    #   The data to be exported from the snapshot or cluster. If this
    #   parameter is not provided, all of the data is exported. Valid values
    #   are the following:
    #
    #   * `database` - Export all the data from a specified database.
    #
    #   * `database.table` *table-name* - Export a table of the snapshot or
    #     cluster. This format is valid only for RDS for MySQL, RDS for
    #     MariaDB, and Aurora MySQL.
    #
    #   * `database.schema` *schema-name* - Export a database schema of the
    #     snapshot or cluster. This format is valid only for RDS for
    #     PostgreSQL and Aurora PostgreSQL.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key identifier used for encrypting
    #   messages in the database activity stream.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the Amazon Aurora DB cluster to be
    #   stopped. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBClusterMessage AWS API Documentation
    #
    class StopDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB
    #   cluster.
    #
    #   For an Amazon Aurora DB cluster, this data type is used as a
    #   response element in the operations `CreateDBCluster`,
    #   `DeleteDBCluster`, `DescribeDBClusters`, `FailoverDBCluster`,
    #   `ModifyDBCluster`, `PromoteReadReplicaDBCluster`,
    #   `RestoreDBClusterFromS3`, `RestoreDBClusterFromSnapshot`,
    #   `RestoreDBClusterToPointInTime`, `StartDBCluster`, and
    #   `StopDBCluster`.
    #
    #   For a Multi-AZ DB cluster, this data type is used as a response
    #   element in the operations `CreateDBCluster`, `DeleteDBCluster`,
    #   `DescribeDBClusters`, `FailoverDBCluster`, `ModifyDBCluster`,
    #   `RebootDBCluster`, `RestoreDBClusterFromSnapshot`, and
    #   `RestoreDBClusterToPointInTime`.
    #
    #   For more information on Amazon Aurora DB clusters, see [ What is
    #   Amazon Aurora?][1] in the *Amazon Aurora User Guide.*
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ
    #   deployments with two readable standby DB instances][2] in the
    #   *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBClusterResult AWS API Documentation
    #
    class StopDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_instance_arn
    #   The Amazon Resource Name (ARN) of the source DB instance for which
    #   to stop replicating automate backups, for example,
    #   `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstanceAutomatedBackupsReplicationMessage AWS API Documentation
    #
    class StopDBInstanceAutomatedBackupsReplicationMessage < Struct.new(
      :source_db_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_automated_backup
    #   An automated backup of a DB instance. It consists of system backups,
    #   transaction logs, and the database instance properties that existed
    #   at the time you deleted the source instance.
    #   @return [Types::DBInstanceAutomatedBackup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstanceAutomatedBackupsReplicationResult AWS API Documentation
    #
    class StopDBInstanceAutomatedBackupsReplicationResult < Struct.new(
      :db_instance_automated_backup)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StopDBInstanceResult AWS API Documentation
    #
    class StopDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would result in the user exceeding the allowed amount of
    # storage available across all DB instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StorageQuotaExceededFault AWS API Documentation
    #
    class StorageQuotaExceededFault < Aws::EmptyStructure; end

    # The `aurora-iopt1` storage type isn't available, because you modified
    # the DB cluster to use this storage type less than one month ago.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StorageTypeNotAvailableFault AWS API Documentation
    #
    class StorageTypeNotAvailableFault < Aws::EmptyStructure; end

    # The specified `StorageType` can't be associated with the DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/StorageTypeNotSupportedFault AWS API Documentation
    #
    class StorageTypeNotSupportedFault < Aws::EmptyStructure; end

    # This data type is used as a response element for the
    # `DescribeDBSubnetGroups` operation.
    #
    # @!attribute [rw] subnet_identifier
    #   The identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Contains Availability Zone information.
    #
    #   This data type is used as an element in the
    #   `OrderableDBInstanceOption` data type.
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_outpost
    #   If the subnet is associated with an Outpost, this value specifies
    #   the Outpost.
    #
    #   For more information about RDS on Outposts, see [Amazon RDS on
    #   Amazon Web Services Outposts][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   @return [Types::Outpost]
    #
    # @!attribute [rw] subnet_status
    #   The status of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_outpost,
      :subnet_status)
      SENSITIVE = []
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

    # @!attribute [rw] blue_green_deployment_identifier
    #   The blue/green deployment identifier.
    #
    #   Constraints:
    #
    #   * Must match an existing blue/green deployment identifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] switchover_timeout
    #   The amount of time, in seconds, for the switchover to complete. The
    #   default is 300.
    #
    #   If the switchover takes longer than the specified duration, then any
    #   changes are rolled back, and no changes are made to the
    #   environments.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SwitchoverBlueGreenDeploymentRequest AWS API Documentation
    #
    class SwitchoverBlueGreenDeploymentRequest < Struct.new(
      :blue_green_deployment_identifier,
      :switchover_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blue_green_deployment
    #   Contains the details about a blue/green deployment.
    #
    #   For more information, see [Using Amazon RDS Blue/Green Deployments
    #   for database updates][1] in the *Amazon RDS User Guide* and [ Using
    #   Amazon RDS Blue/Green Deployments for database updates][2] in the
    #   *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
    #   @return [Types::BlueGreenDeployment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SwitchoverBlueGreenDeploymentResponse AWS API Documentation
    #
    class SwitchoverBlueGreenDeploymentResponse < Struct.new(
      :blue_green_deployment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details about a blue/green deployment.
    #
    # For more information, see [Using Amazon RDS Blue/Green Deployments for
    # database updates][1] in the *Amazon RDS User Guide* and [Using Amazon
    # RDS Blue/Green Deployments for database updates][2] in the *Amazon
    # Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/blue-green-deployments.html
    #
    # @!attribute [rw] source_member
    #   The Amazon Resource Name (ARN) of a resource in the blue
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] target_member
    #   The Amazon Resource Name (ARN) of a resource in the green
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The switchover status of a resource in a blue/green deployment.
    #
    #   Values:
    #
    #   * `PROVISIONING` - The resource is being prepared to switch over.
    #
    #   * `AVAILABLE` - The resource is ready to switch over.
    #
    #   * `SWITCHOVER_IN_PROGRESS` - The resource is being switched over.
    #
    #   * `SWITCHOVER_COMPLETED` - The resource has been switched over.
    #
    #   * `SWITCHOVER_FAILED` - The resource attempted to switch over but
    #     failed.
    #
    #   * `MISSING_SOURCE` - The source resource has been deleted.
    #
    #   * `MISSING_TARGET` - The target resource has been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SwitchoverDetail AWS API Documentation
    #
    class SwitchoverDetail < Struct.new(
      :source_member,
      :target_member,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier of the current standby database. This
    #   value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must match the identiﬁer of an existing Oracle read replica DB
    #     instance.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SwitchoverReadReplicaMessage AWS API Documentation
    #
    class SwitchoverReadReplicaMessage < Struct.new(
      :db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon RDS DB instance.
    #
    #   This data type is used as a response element in the operations
    #   `CreateDBInstance`, `CreateDBInstanceReadReplica`,
    #   `DeleteDBInstance`, `DescribeDBInstances`, `ModifyDBInstance`,
    #   `PromoteReadReplica`, `RebootDBInstance`,
    #   `RestoreDBInstanceFromDBSnapshot`, `RestoreDBInstanceFromS3`,
    #   `RestoreDBInstanceToPointInTime`, `StartDBInstance`, and
    #   `StopDBInstance`.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/SwitchoverReadReplicaResult AWS API Documentation
    #
    class SwitchoverReadReplicaResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata assigned to an Amazon RDS resource consisting of a key-value
    # pair.
    #
    # For more information, see [Tagging Amazon RDS Resources][1] in the
    # *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    #
    # @!attribute [rw] key
    #   A key is the required name of the tag. The string value can be from
    #   1 to 128 Unicode characters in length and can't be prefixed with
    #   `aws:` or `rds:`. The string can only contain only the set of
    #   Unicode letters, digits, white-space, '\_', '.', ':', '/',
    #   '=', '+', '-', '@' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-@\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value is the optional value of the tag. The string value can be
    #   from 1 to 256 Unicode characters in length and can't be prefixed
    #   with `aws:` or `rds:`. The string can only contain only the set of
    #   Unicode letters, digits, white-space, '\_', '.', ':', '/',
    #   '=', '+', '-', '@' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-@\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   List of tags returned by the `ListTagsForResource` operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/TagListMessage AWS API Documentation
    #
    class TagListMessage < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   A value that indicates whether upgrading to the target version
    #   requires upgrading the major version of the database engine.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_engine_modes
    #   A list of the supported DB engine modes for the target engine
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_parallel_query
    #   A value that indicates whether you can use Aurora parallel query
    #   with the target engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_global_databases
    #   A value that indicates whether you can use Aurora global databases
    #   with the target engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_babelfish
    #   A value that indicates whether you can use Babelfish for Aurora
    #   PostgreSQL with the target engine version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/UpgradeTarget AWS API Documentation
    #
    class UpgradeTarget < Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade,
      :supported_engine_modes,
      :supports_parallel_query,
      :supports_global_databases,
      :supports_babelfish)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the details of authentication used by a proxy to log in as a
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
    #   Whether to require or disallow Amazon Web Services Identity and
    #   Access Management (IAM) authentication for connections to the proxy.
    #   The `ENABLED` value is valid only for proxies with RDS for Microsoft
    #   SQL Server.
    #   @return [String]
    #
    # @!attribute [rw] client_password_auth_type
    #   The type of authentication the proxy uses for connections from
    #   clients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/UserAuthConfig AWS API Documentation
    #
    class UserAuthConfig < Struct.new(
      :description,
      :user_name,
      :auth_scheme,
      :secret_arn,
      :iam_auth,
      :client_password_auth_type)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Whether to require or disallow Amazon Web Services Identity and
    #   Access Management (IAM) authentication for connections to the proxy.
    #   The `ENABLED` value is valid only for proxies with RDS for Microsoft
    #   SQL Server.
    #   @return [String]
    #
    # @!attribute [rw] client_password_auth_type
    #   The type of authentication the proxy uses for connections from
    #   clients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/UserAuthConfigInfo AWS API Documentation
    #
    class UserAuthConfigInfo < Struct.new(
      :description,
      :user_name,
      :auth_scheme,
      :secret_arn,
      :iam_auth,
      :client_password_auth_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about valid modifications that you can make to your DB
    # instance. Contains the result of a successful call to the
    # `DescribeValidDBInstanceModifications` action.
    #
    # @!attribute [rw] storage_type
    #   The valid storage types for your DB instance. For example: gp2, gp3,
    #   io1.
    #   @return [String]
    #
    # @!attribute [rw] storage_size
    #   The valid range of storage in gibibytes (GiB). For example, 100 to
    #   16,384.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] provisioned_iops
    #   The valid range of provisioned IOPS. For example, 1000-256,000.
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
    # @!attribute [rw] provisioned_storage_throughput
    #   The valid range of provisioned storage throughput. For example,
    #   500-4,000 mebibytes per second (MiBps).
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] storage_throughput_to_iops_ratio
    #   The valid range of storage throughput to provisioned IOPS ratios.
    #   For example, 0-0.25.
    #   @return [Array<Types::DoubleRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/ValidStorageOptions AWS API Documentation
    #
    class ValidStorageOptions < Struct.new(
      :storage_type,
      :storage_size,
      :provisioned_iops,
      :iops_to_storage_ratio,
      :supports_storage_autoscaling,
      :provisioned_storage_throughput,
      :storage_throughput_to_iops_ratio)
      SENSITIVE = []
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
    #   The membership status of the VPC security group.
    #
    #   Currently, the only valid status is `active`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-2014-10-31/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
